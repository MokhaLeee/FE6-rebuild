/*
 * NDS 移植的桩实现：第一阶段屏蔽声音（m4a）相关接口。
 * 播放器状态变量由 vanilla/sound.c 定义，这里不再重复。
 */
#include "prelude.h"
#include "m4a.h"

void m4aSoundInit(void) {}
void m4aSoundMode(u32 mode) { (void)mode; }
void m4aSoundMain(void) {}
void m4aSoundVSync(void) {}
void m4aSoundVSyncOn(void) {}
void m4aSoundVSyncOff(void) {}

void m4aSongNumStart(u16 n) { (void)n; }
void m4aSongNumStartOrChange(u16 n) { (void)n; }
void m4aSongNumStartOrContinue(u16 n) { (void)n; }
void m4aSongNumStop(u16 n) { (void)n; }
void m4aMPlayAllStop(void) {}

void m4aMPlayStart(struct MusicPlayer *p, struct Song const *s) { (void)p; (void)s; }
void m4aMPlayStop(struct MusicPlayer *p) { (void)p; }
void m4aMPlayContinue(struct MusicPlayer *p) { (void)p; }
void m4aMPlayFadeOut(struct MusicPlayer *p, u16 speed) { (void)p; (void)speed; }
void m4aMPlayFadeOutTemporarily(struct MusicPlayer *p, u16 speed) { (void)p; (void)speed; }
void m4aMPlayFadeIn(struct MusicPlayer *p, u16 speed) { (void)p; (void)speed; }
void m4aMPlayImmInit(struct MusicPlayer *p) { (void)p; }
void m4aMPlayTempoControl(struct MusicPlayer *p, u16 tempo) { (void)p; (void)tempo; }
void m4aMPlayVolumeControl(struct MusicPlayer *p, u16 bits, u16 vol) { (void)p; (void)bits; (void)vol; }
void m4aMPlayPitchControl(struct MusicPlayer *p, u16 bits, i16 pitch) { (void)p; (void)bits; (void)pitch; }
void m4aMPlayPanpotControl(struct MusicPlayer *p, u16 bits, i8 pan) { (void)p; (void)bits; (void)pan; }
void m4aMPlayModDepthSet(struct MusicPlayer *p, u16 bits, u8 d) { (void)p; (void)bits; (void)d; }
void m4aMPlayLFOSpeedSet(struct MusicPlayer *p, u16 bits, u8 s) { (void)p; (void)bits; (void)s; }
