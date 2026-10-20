#include "prelude.h"
#include "klib.h"

extern char __ewram_end[];
extern char __ewram_top[];

/* size is the whole block, including this header. Bit 0 set means free. */
struct Block {
	u32 size;
	u32 prev_size;
};

struct FreeLink {
	struct Block *next;
	struct Block *prev;
};

#define BLOCK_FREE 1u

static char *IWRAM_DATA sBrk;
static struct Block *IWRAM_DATA sFree;
static u32 IWRAM_DATA sLastSize;

static unsigned block_size(struct Block const *block)
{
	return block->size & ~BLOCK_FREE;
}

static int block_is_free(struct Block const *block)
{
	return block->size & BLOCK_FREE;
}

static struct FreeLink *free_link(struct Block *block)
{
	return (struct FreeLink *)((char *)block + sizeof(struct Block));
}

static unsigned min_block_size(void)
{
	return sizeof(struct Block) + sizeof(struct FreeLink);
}

static char *heap_base(void)
{
	return (char *)(((uintptr_t)__ewram_end + 3u) & ~(uintptr_t)3u);
}

static void heap_init(void)
{
	uintptr_t base;
	uintptr_t top;

	if (sBrk != NULL)
		return;

	base = (uintptr_t)heap_base();
	top = (uintptr_t)__ewram_top;
	if (base > top)
		base = top;

	sBrk = (char *)base;
	sFree = NULL;
	sLastSize = 0;
}

static void freelist_remove(struct Block *block)
{
	struct FreeLink *link = free_link(block);

	if (link->prev != NULL)
		free_link(link->prev)->next = link->next;
	else
		sFree = link->next;

	if (link->next != NULL)
		free_link(link->next)->prev = link->prev;

	block->size &= ~BLOCK_FREE;
}

static void freelist_insert(struct Block *block)
{
	struct FreeLink *link = free_link(block);

	block->size |= BLOCK_FREE;
	link->prev = NULL;
	link->next = sFree;
	if (sFree != NULL)
		free_link(sFree)->prev = block;
	sFree = block;
}

static struct Block *find_block(void *ptr)
{
	char *user = ptr;
	char *base = heap_base();
	struct Block *block;

	if (sBrk == NULL || user < base + sizeof(struct Block) || user >= sBrk)
		return NULL;
	if (((uintptr_t)user & 3u) != 0)
		return NULL;

	for (block = (struct Block *)base; (char *)block < sBrk; ) {
		unsigned size = block_size(block);

		if (size < min_block_size() || (char *)block + size > sBrk)
			return NULL;
		if ((char *)block + sizeof(struct Block) == user)
			return block;

		block = (struct Block *)((char *)block + size);
	}

	return NULL;
}

static void *take_free_block(struct Block *block, unsigned total)
{
	unsigned have = block_size(block);
	unsigned rest = have - total;
	struct Block *split;
	struct Block *next;

	freelist_remove(block);

	if (rest < min_block_size()) {
		block->size = have;
		return (char *)block + sizeof(struct Block);
	}

	block->size = total;
	split = (struct Block *)((char *)block + total);
	split->prev_size = total;
	split->size = rest;

	next = (struct Block *)((char *)split + rest);
	if ((char *)next < sBrk)
		next->prev_size = rest;
	if ((char *)split + rest == sBrk)
		sLastSize = rest;

	freelist_insert(split);
	return (char *)block + sizeof(struct Block);
}

static void *extend_heap(unsigned total)
{
	uintptr_t brk = (uintptr_t)sBrk;
	uintptr_t top = (uintptr_t)__ewram_top;
	struct Block *block;

	if (brk > top || top - brk < total)
		return NULL;

	block = (struct Block *)sBrk;
	block->prev_size = sLastSize;
	block->size = total;
	sLastSize = total;
	sBrk += total;
	return (char *)block + sizeof(struct Block);
}

void *EWRAM_Malloc(unsigned size)
{
	unsigned payload;
	unsigned total;
	struct Block *block;

	if (size == 0)
		return NULL;

	payload = (size + 3u) & ~3u;
	if (payload < size)
		return NULL;
	if (payload < sizeof(struct FreeLink))
		payload = (sizeof(struct FreeLink) + 3u) & ~3u;

	total = sizeof(struct Block) + payload;
	if (total < payload)
		return NULL;

	heap_init();

	for (block = sFree; block != NULL; block = free_link(block)->next) {
		if (block_size(block) >= total)
			return take_free_block(block, total);
	}

	return extend_heap(total);
}

void EWRAM_Free(void *ptr)
{
	struct Block *block;
	struct Block *prev;
	struct Block *next;
	unsigned size;

	if (ptr == NULL)
		return;

	block = find_block(ptr);
	if (block == NULL || block_is_free(block))
		return;

	block->size |= BLOCK_FREE;
	size = block_size(block);

	next = (struct Block *)((char *)block + size);
	if ((char *)next < sBrk && block_is_free(next)) {
		freelist_remove(next);
		size += block_size(next);
		block->size = size | BLOCK_FREE;
		next = (struct Block *)((char *)block + size);
		if ((char *)next < sBrk)
			next->prev_size = size;
	}

	if (block->prev_size != 0) {
		prev = (struct Block *)((char *)block - block->prev_size);
		if ((char *)prev >= heap_base() && block_is_free(prev)) {
			freelist_remove(prev);
			size = block_size(prev) + block_size(block);
			prev->size = size | BLOCK_FREE;
			block = prev;
			next = (struct Block *)((char *)block + size);
			if ((char *)next < sBrk)
				next->prev_size = size;
		}
	}

	if ((char *)block + block_size(block) == sBrk) {
		sLastSize = block->prev_size;
		sBrk = (char *)block;
		return;
	}

	freelist_insert(block);
}
