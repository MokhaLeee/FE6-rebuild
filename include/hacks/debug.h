#pragma once

#include "prelude.h"
#include <string.h>
#include <stdarg.h>

/**
 * Always print to STDOUT regardless on debug config
 */
#if !defined(CONFIG_DEBUG_LEVEL)
#define CONFIG_DEBUG_LEVEL 0
#endif

#ifndef __PRINTFLIKE
#define __PRINTFLIKE(__fmt,__varargs) __attribute__((__format__ (__printf__, __fmt, __varargs)))
#endif

struct io_handle;

typedef struct FILE {
	const struct io_handle *io;
} FILE;

/**
 * io
 */
#define MGBA_LOG_FATAL 0
#define MGBA_LOG_ERROR 1
#define MGBA_LOG_WARN 2
#define MGBA_LOG_INFO 3
#define MGBA_LOG_DEBUG 4

extern int mgba_print_level;

void mgba_print(const char *buf);
bool mgba_open(void);
void mgba_close(void);

void nocashgba_print(const char *buf);


/**
 * stdio
 */
void io_init(void);
void hang(void);

struct io_handle {
	size_t (*write)(FILE *fp, const char *buf, size_t len);
	size_t (*read)(FILE *fp, char *buf, size_t len);
};

extern FILE __stdio_FILEs[3];

#define stdin  (&__stdio_FILEs[0])
#define stdout (&__stdio_FILEs[1])
#define stderr (&__stdio_FILEs[2])

/**
 * console
 */
int sprintf(char *str, const char *fmt, ...) __PRINTFLIKE(2, 3);
int snprintf(char *str, size_t len, const char *fmt, ...) __PRINTFLIKE(3, 4);
int fprintf(FILE *fp, const char *fmt, ...) __PRINTFLIKE(2, 3);
int printf(const char *fmt, ...) __PRINTFLIKE(1, 2);

/* debug levels */
#define CRITICAL 0
#define ALWAYS 0
#define INFO 1
#define SPEW 2

#define dprintf(level, x...) \
do { \
	if ((level) <= CONFIG_DEBUG_LEVEL) { \
		printf(x); \
	} \
} while (0)

#define fmt_printf(level, format, ...) \
	dprintf(level, "(%s): "format, __func__, ##__VA_ARGS__)

#define LTRACEF(format, ...) \
do { \
	if (LOCAL_TRACE) { \
		fmt_printf(SPEW, format, ##__VA_ARGS__); \
	} \
} while (0)

#define Errorf(format, ...) \
	fmt_printf(CRITICAL, format, ##__VA_ARGS__)

#define Assert(condition) \
do { \
	if (!(condition)) { \
		fmt_printf(CRITICAL, "Assertion failed: " #condition); \
		hang(); \
	} \
} while (0)
