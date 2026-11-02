/*
 * gbarun —— 基于 libmgba 的无头 GBA 运行器，用于 fe6-rebuild 的自动化测试。
 *
 * 特点：
 *   - 不需要 SDL / 窗口 / X11，直接跑核心库并读帧缓冲
 *   - 可按帧脚本注入按键（--hold / --hold-every）
 *   - 可导出 PNG 截图、画面统计（--stats，用于断言"不是黑屏"）
 *   - 可读写 SRAM（--sav / --save-out），用于存档往返测试
 *   - 段错误时打印出错帧号（CRASH 行），便于定位改动引入的问题
 *
 * 编译：见 build.sh
 */

#include <mgba/core/core.h>
#include <mgba/core/config.h>
#include <mgba/core/log.h>
#include <mgba/internal/gba/memory.h>

#include <png.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <sys/stat.h>
#include <time.h>
#include <unistd.h>

#define MAX_EVENTS 65536

enum evtype { EV_SHOT, EV_HOLD, EV_HASH, EV_STATS };

struct event {
	enum evtype type;
	unsigned frame;
	unsigned duration;
	uint32_t keys;
};

static struct event events[MAX_EVENTS];
static size_t nEvents;

/* 自定义日志器：--quiet 时只留 WARN 及以上，避免刷屏拖慢测试 */
static bool g_quietLog = false;

static void _log(struct mLogger* logger, int category, enum mLogLevel level,
                 const char* format, va_list args) {
	(void) logger;
	(void) category;
	if (g_quietLog && level != mLOG_FATAL && level != mLOG_ERROR && level != mLOG_WARN) {
		return;
	}
	vfprintf(stderr, format, args);
	fputc('\n', stderr);
}

static struct mLogger g_logger = { .log = _log, .filter = NULL };

/* 崩溃时用来报告出错帧号 */
static volatile unsigned g_currentFrame;
static volatile int g_inFrameLoop;

static void crashHandler(int sig) {
	char buf[160];
	int n = snprintf(buf, sizeof(buf), "\nCRASH signal=%d frame=%u\n", sig,
	                 g_inFrameLoop ? g_currentFrame : 0);
	if (n > 0) {
		ssize_t ignored = write(STDOUT_FILENO, buf, (size_t) n);
		(void) ignored;
	}
	_exit(128 + sig);
}

static uint32_t parseKeys(const char* spec) {
	uint32_t mask = 0;
	char buf[256];
	strncpy(buf, spec, sizeof(buf) - 1);
	buf[sizeof(buf) - 1] = '\0';
	char* save = NULL;
	for (char* tok = strtok_r(buf, "+", &save); tok; tok = strtok_r(NULL, "+", &save)) {
		if (!strcasecmp(tok, "A")) mask |= 1 << 0;
		else if (!strcasecmp(tok, "B")) mask |= 1 << 1;
		else if (!strcasecmp(tok, "SELECT")) mask |= 1 << 2;
		else if (!strcasecmp(tok, "START")) mask |= 1 << 3;
		else if (!strcasecmp(tok, "RIGHT")) mask |= 1 << 4;
		else if (!strcasecmp(tok, "LEFT")) mask |= 1 << 5;
		else if (!strcasecmp(tok, "UP")) mask |= 1 << 6;
		else if (!strcasecmp(tok, "DOWN")) mask |= 1 << 7;
		else if (!strcasecmp(tok, "R")) mask |= 1 << 8;
		else if (!strcasecmp(tok, "L")) mask |= 1 << 9;
		else {
			fprintf(stderr, "gbarun: unknown button '%s'\n", tok);
			exit(2);
		}
	}
	return mask;
}

static const char* keyNames[10] = {"A", "B", "Select", "Start", "Right", "Left", "Up", "Down", "R", "L"};

static void describeKeys(uint32_t mask, char* out, size_t n) {
	out[0] = '\0';
	size_t len = 0;
	for (int i = 0; i < 10; ++i) {
		if (mask & (1u << i)) {
			len += snprintf(out + len, n - len, "%s%s", len ? "+" : "", keyNames[i]);
			if (len >= n) return;
		}
	}
	if (!len) snprintf(out, n, "(none)");
}

static void addEvent(enum evtype t, unsigned frame, unsigned duration, uint32_t keys) {
	if (nEvents >= MAX_EVENTS) {
		fprintf(stderr, "gbarun: too many events\n");
		exit(2);
	}
	events[nEvents].type = t;
	events[nEvents].frame = frame;
	events[nEvents].duration = duration;
	events[nEvents].keys = keys;
	++nEvents;
}

/* color_t 在 32 位构建下是 0x00BBGGRR（M_COLOR_RED = 0xFF） */
static bool writePNG(const char* path, const uint32_t* buf, unsigned width, unsigned height) {
	FILE* fp = fopen(path, "wb");
	if (!fp) return false;

	png_structp png = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
	if (!png) { fclose(fp); return false; }
	png_infop info = png_create_info_struct(png);
	if (!info) { png_destroy_write_struct(&png, NULL); fclose(fp); return false; }
	if (setjmp(png_jmpbuf(png))) {
		png_destroy_write_struct(&png, &info);
		fclose(fp);
		return false;
	}
	png_init_io(png, fp);
	png_set_IHDR(png, info, width, height, 8, PNG_COLOR_TYPE_RGB, PNG_INTERLACE_NONE,
	             PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);
	png_write_info(png, info);

	png_bytep row = malloc(width * 3);
	if (!row) {
		png_destroy_write_struct(&png, &info);
		fclose(fp);
		return false;
	}
	for (unsigned y = 0; y < height; ++y) {
		for (unsigned x = 0; x < width; ++x) {
			uint32_t c = buf[y * width + x];
			row[x * 3 + 0] = c & 0xFF;
			row[x * 3 + 1] = (c >> 8) & 0xFF;
			row[x * 3 + 2] = (c >> 16) & 0xFF;
		}
		png_write_row(png, row);
	}
	free(row);
	png_write_end(png, NULL);
	png_destroy_write_struct(&png, &info);
	fclose(fp);
	return true;
}

static uint32_t frameHash(const uint32_t* buf, unsigned width, unsigned height) {
	uint32_t h = 2166136261u;
	for (unsigned i = 0; i < width * height; ++i) {
		h = (h ^ buf[i]) * 16777619u;
	}
	return h;
}

static int cmpU32(const void* a, const void* b) {
	uint32_t x = *(const uint32_t*) a, y = *(const uint32_t*) b;
	return (x > y) - (x < y);
}

/* 画面统计：颜色数 / 非黑像素 / 平均亮度，测试脚本据此断言"确实画出了东西" */
static void printStats(const uint32_t* buf, unsigned width, unsigned height, unsigned frame) {
	size_t n = (size_t) width * height;
	uint32_t* tmp = malloc(n * sizeof(uint32_t));
	size_t nonBlack = 0;
	uint64_t lumaSum = 0;
	for (size_t i = 0; i < n; ++i) {
		uint32_t c = buf[i];
		tmp[i] = c & 0x00FFFFFFu;
		unsigned r = c & 0xFF, g = (c >> 8) & 0xFF, b = (c >> 16) & 0xFF;
		lumaSum += (r * 299 + g * 587 + b * 114) / 1000;
		if (c & 0x00FFFFFFu) ++nonBlack;
	}
	qsort(tmp, n, sizeof(uint32_t), cmpU32);
	size_t colors = n ? 1 : 0;
	for (size_t i = 1; i < n; ++i) {
		if (tmp[i] != tmp[i - 1]) ++colors;
	}
	free(tmp);
	printf("STATS frame=%u colors=%zu nonblack=%zu mean=%llu\n", frame, colors, nonBlack,
	       (unsigned long long) (n ? lumaSum / n : 0));
	fflush(stdout);
}

int main(int argc, char** argv) {
	if (argc < 2) {
		fprintf(stderr,
		        "usage: %s ROM [--frames N] [--shot F] [--hold F:KEYS:LEN]\n"
		        "          [--hold-every F0:F1:STEP:KEYS:LEN] [--stats F] [--hash F]\n"
		        "          [--hash-every N] [--out DIR] [--sav FILE] [--save-out FILE]\n"
		        "          [--quiet]\n",
		        argv[0]);
		return 2;
	}
	const char* romPath = argv[1];
	unsigned totalFrames = 600;
	const char* outDir = "shots";
	const char* savPath = NULL;
	const char* saveOutPath = NULL;
	unsigned hashEvery = 0;
	bool quiet = false;

	for (int i = 2; i < argc; ++i) {
		if (!strcmp(argv[i], "--frames") && i + 1 < argc) {
			totalFrames = strtoul(argv[++i], NULL, 10);
		} else if (!strcmp(argv[i], "--shot") && i + 1 < argc) {
			addEvent(EV_SHOT, strtoul(argv[++i], NULL, 10), 0, 0);
		} else if (!strcmp(argv[i], "--stats") && i + 1 < argc) {
			addEvent(EV_STATS, strtoul(argv[++i], NULL, 10), 0, 0);
		} else if (!strcmp(argv[i], "--hash") && i + 1 < argc) {
			addEvent(EV_HASH, strtoul(argv[++i], NULL, 10), 0, 0);
		} else if (!strcmp(argv[i], "--hash-every") && i + 1 < argc) {
			hashEvery = strtoul(argv[++i], NULL, 10);
		} else if (!strcmp(argv[i], "--hold") && i + 1 < argc) {
			char* spec = argv[++i];
			char* c1 = strchr(spec, ':');
			if (!c1) { fprintf(stderr, "gbarun: bad --hold spec\n"); return 2; }
			*c1 = '\0';
			char* c2 = strchr(c1 + 1, ':');
			if (!c2) { fprintf(stderr, "gbarun: bad --hold spec\n"); return 2; }
			*c2 = '\0';
			addEvent(EV_HOLD, strtoul(spec, NULL, 10), strtoul(c2 + 1, NULL, 10),
			         parseKeys(c1 + 1));
		} else if (!strcmp(argv[i], "--hold-every") && i + 1 < argc) {
			/* 形如 700:12000:50:START+DOWN:3 —— 从 F0 到 F1 每 STEP 帧按住 LEN 帧 */
			char* spec = argv[++i];
			char* f[5];
			char* p = spec;
			int ok = 1;
			for (int k = 0; k < 5; ++k) {
				f[k] = p;
				if (k < 4) {
					char* colon = strchr(p, ':');
					if (!colon) { ok = 0; break; }
					*colon = '\0';
					p = colon + 1;
				}
			}
			if (!ok) { fprintf(stderr, "gbarun: bad --hold-every spec\n"); return 2; }
			unsigned f0 = strtoul(f[0], NULL, 10);
			unsigned f1 = strtoul(f[1], NULL, 10);
			unsigned step = strtoul(f[2], NULL, 10);
			unsigned len = strtoul(f[4], NULL, 10);
			if (!step || !len) { fprintf(stderr, "gbarun: bad --hold-every step/len\n"); return 2; }
			uint32_t keys = parseKeys(f[3]);
			for (unsigned fr = f0; fr <= f1; fr += step) {
				addEvent(EV_HOLD, fr, len, keys);
			}
		} else if (!strcmp(argv[i], "--out") && i + 1 < argc) {
			outDir = argv[++i];
		} else if (!strcmp(argv[i], "--sav") && i + 1 < argc) {
			savPath = argv[++i];
		} else if (!strcmp(argv[i], "--save-out") && i + 1 < argc) {
			saveOutPath = argv[++i];
		} else if (!strcmp(argv[i], "--quiet")) {
			quiet = true;
		} else {
			fprintf(stderr, "gbarun: unknown argument '%s'\n", argv[i]);
			return 2;
		}
	}

	g_quietLog = quiet;
	mLogSetDefaultLogger(&g_logger);

	signal(SIGSEGV, crashHandler);
	signal(SIGBUS, crashHandler);
	signal(SIGABRT, crashHandler);

	mkdir(outDir, 0777);

	struct mCoreOptions opts = {0};
	opts.audioSync = false;
	opts.videoSync = false;
	opts.logLevel = quiet ? 0 : mLOG_WARN;

	struct mCore* core = mCoreFind(romPath);
	if (!core) {
		fprintf(stderr, "gbarun: could not identify ROM '%s'\n", romPath);
		return 1;
	}
	core->init(core);

	/* 软件渲染器是在 reset 时挂到 video 上的，所以缓冲区必须先建好 */
	unsigned width, height;
	core->desiredVideoDimensions(core, &width, &height);
	uint32_t* videoBuffer = calloc((size_t) width * height, sizeof(uint32_t));
	if (!videoBuffer) {
		fprintf(stderr, "gbarun: out of memory\n");
		return 1;
	}
	core->setVideoBuffer(core, videoBuffer, width);

	mCoreInitConfig(core, "headless");
	mCoreConfigLoadDefaults(&core->config, &opts);
	mCoreLoadConfig(core);

	if (!mCoreLoadFile(core, romPath)) {
		fprintf(stderr, "gbarun: failed to load ROM '%s'\n", romPath);
		return 1;
	}
	core->reset(core);
	if (savPath && !mCoreLoadSaveFile(core, savPath, false)) {
		fprintf(stderr, "gbarun: failed to load save '%s'\n", savPath);
		return 1;
	}

	char title[256] = {0};
	core->getGameTitle(core, title);
	char code[8] = {0};
	core->getGameCode(core, code);
	if (!quiet) {
		fprintf(stderr, "gbarun: title=\"%s\" code=\"%.4s\" %ux%u rom=%zu bytes\n", title,
		        code, width, height, core->romSize(core));
	}

	uint32_t latched = 0;
	struct timespec t0, t1;
	clock_gettime(CLOCK_MONOTONIC, &t0);
	g_inFrameLoop = 1;

	for (unsigned frame = 0; frame < totalFrames; ++frame) {
		g_currentFrame = frame;
		uint32_t keys = 0;
		for (size_t e = 0; e < nEvents; ++e) {
			struct event* ev = &events[e];
			if (ev->type == EV_HOLD && frame >= ev->frame && frame < ev->frame + ev->duration) {
				keys |= ev->keys;
			}
		}
		if (keys != latched) {
			core->setKeys(core, keys);
			latched = keys;
			if (!quiet) {
				char desc[128];
				describeKeys(keys, desc, sizeof(desc));
				fprintf(stderr, "gbarun: frame %u keys=%s\n", frame, desc);
			}
		}

		core->runFrame(core);

		unsigned shown = frame + 1;
		for (size_t e = 0; e < nEvents; ++e) {
			struct event* ev = &events[e];
			if (ev->frame != shown) continue;
			if (ev->type == EV_SHOT) {
				char path[512];
				snprintf(path, sizeof(path), "%s/frame_%05u.png", outDir, shown);
				bool ok = writePNG(path, videoBuffer, width, height);
				printf("SHOT frame=%u path=%s ok=%d hash=%08x\n", shown, path, ok,
				       frameHash(videoBuffer, width, height));
				fflush(stdout);
			} else if (ev->type == EV_HASH) {
				printf("HASH frame=%u %08x\n", shown,
				       frameHash(videoBuffer, width, height));
				fflush(stdout);
			} else if (ev->type == EV_STATS) {
				printStats(videoBuffer, width, height, shown);
			}
		}
		if (hashEvery && shown % hashEvery == 0) {
			printf("HASH frame=%u %08x\n", shown, frameHash(videoBuffer, width, height));
			fflush(stdout);
		}
	}

	g_inFrameLoop = 0;
	clock_gettime(CLOCK_MONOTONIC, &t1);
	double secs = (t1.tv_sec - t0.tv_sec) + (t1.tv_nsec - t0.tv_nsec) / 1e9;
	printf("DONE frames=%u frameCounter=%u secs=%.2f fps=%.1f\n", totalFrames,
	       core->frameCounter(core), secs, totalFrames / secs);
	fflush(stdout);

	if (saveOutPath) {
		size_t size = 0;
		void* sram = core->getMemoryBlock(core, REGION_CART_SRAM, &size);
		FILE* fp = fopen(saveOutPath, "wb");
		if (fp) {
			if (sram && size) fwrite(sram, 1, size, fp);
			fclose(fp);
		}
		printf("SAVEDATA bytes=%zu path=%s\n", size, saveOutPath);
		fflush(stdout);
	}

	free(videoBuffer);
	mCoreConfigDeinit(&core->config);
	core->deinit(core);
	return 0;
}
