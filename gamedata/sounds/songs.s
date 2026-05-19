.include "MPlayDef.s"
.include "asm_m4a.inc"
.section .rodata

@ ****************************** tracks ******************************
song_05A_track0: @ 08587E04
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 84
    .byte VOL, 80
    .byte PAN, 74
    .byte N03, 72, 127
    .byte W06
    .byte 0x4F
    .byte W06
    .byte 0x4B
    .byte W06
    .byte 0x4F
    .byte W06
    .byte 0x52
    .byte W06
    .byte 0x54
    .byte W06
    .byte N44, 86
    .byte W12
    .byte W24
    .byte W24
    .byte FINE

song_05A_track1: @ 08587E22
    .byte KEYSH, 0
    .byte VOICE, 84
    .byte VOL, 80
    .byte PAN, 54
    .byte N03, 67, 127
    .byte W06
    .byte 0x4A
    .byte W06
    .byte 0x46
    .byte W06
    .byte 0x4A
    .byte W06
    .byte 0x4D
    .byte W06
    .byte 0x4F
    .byte W06
    .byte N44, 81
    .byte W12
    .byte W24
    .byte W24
    .byte FINE

song_05A_track2: @ 08587E3E
    .byte KEYSH, 0
    .byte VOICE, 84
    .byte VOL, 80
    .byte PAN, 84
    .byte N32, 63, 127
    .byte W24
    .byte W12
    .byte N44, 67
    .byte W12
    .byte W24
    .byte W24
    .byte FINE

song_05A_track3: @ 08587E51
    .byte KEYSH, 0
    .byte VOICE, 84
    .byte VOL, 80
    .byte PAN, 44
    .byte N32, 58, 127
    .byte W24
    .byte W12
    .byte N44, 60
    .byte W12
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_05A @ 08587E64
song_05A:
@ ****************************** header ******************************
    .byte 0x04                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x3C                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_05A_track0           @ tracks 0x08587E04
    .word song_05A_track1           @ tracks 0x08587E22
    .word song_05A_track2           @ tracks 0x08587E3E
    .word song_05A_track3           @ tracks 0x08587E51


@ ****************************** tracks ******************************
song_05B_track0: @ 08587E7C
    .byte KEYSH, 0
    .byte TEMPO, 87
    .byte VOICE, 81
    .byte VOL, 100
    .byte PAN, 74
    .byte N22, 72, 127
    .byte W24
    .byte N05, 74
    .byte W08
    .byte 0x48
    .byte W08
    .byte 0x4A
    .byte W08
    .byte N44, 76
    .byte W48
    .byte FINE

song_05B_track1: @ 08587E95
    .byte KEYSH, 0
    .byte VOICE, 80
    .byte VOL, 100
    .byte PAN, 54
    .byte N22, 63, 127
    .byte W24
    .byte N05, 70
    .byte W08
    .byte 0x41
    .byte W08
    .byte 0x46
    .byte W08
    .byte N44, 67
    .byte W48
    .byte FINE

song_05B_track2: @ 08587EAC
    .byte KEYSH, 0
    .byte VOICE, 80
    .byte VOL, 100
    .byte PAN, 84
    .byte N22, 60, 127
    .byte W24
    .byte N22
    .byte W24
    .byte N44, 55
    .byte W48
    .byte FINE

song_05B_track3: @ 08587EBE
    .byte KEYSH, 0
    .byte VOICE, 80
    .byte VOL, 100
    .byte PAN, 44
    .byte N22, 56, 127
    .byte W24
    .byte 0x35
    .byte W24
    .byte N44, 48
    .byte W48
    .byte FINE

.align 2
.global song_05B @ 08587ED0
song_05B:
@ ****************************** header ******************************
    .byte 0x04                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x3C                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_05B_track0           @ tracks 0x08587E7C
    .word song_05B_track1           @ tracks 0x08587E95
    .word song_05B_track2           @ tracks 0x08587EAC
    .word song_05B_track3           @ tracks 0x08587EBE


@ ****************************** tracks ******************************
song_05C_track0: @ 08587EE8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 81
    .byte VOL, 90
    .byte PAN, 54
    .byte W02
    .byte N07, 75, 127
    .byte W09
    .byte 0x4D
    .byte W09
    .byte 0x4B
    .byte W04
    .byte W05
    .byte N12, 74
    .byte W14
    .byte 0x48
    .byte W05
    .byte W09
    .byte N44, 74
    .byte W15
    .byte W24
    .byte W24
    .byte FINE

song_05C_track1: @ 08587F08
    .byte KEYSH, 0
    .byte VOICE, 81
    .byte PAN, 84
    .byte VOL, 56
    .byte BENDR, 1
    .byte BEND, 70
    .byte W05
    .byte N07, 75, 127
    .byte W09
    .byte 0x4D
    .byte W09
    .byte 0x4B
    .byte W01
    .byte W08
    .byte N12, 74
    .byte W14
    .byte 0x48
    .byte W02
    .byte W12
    .byte N44, 74
    .byte W12
    .byte W24
    .byte W24
    .byte FINE

song_05C_track2: @ 08587F2A
    .byte KEYSH, 0
    .byte VOICE, 81
    .byte PAN, 92
    .byte LFOS, 9
    .byte LFODL, 1
    .byte MOD, 4
    .byte W02
    .byte VOL, 14
    .byte TIE, 70, 84
    .byte W02
    .byte VOL, 19
    .byte W02
    .byte 0x1A
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x2D
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x4D
    .byte W02
    .byte 0x52
    .byte W02
    .byte 0x5A
    .byte W22
    .byte W12
    .byte 0x59
    .byte W04
    .byte 0x52
    .byte W04
    .byte 0x4B
    .byte W04
    .byte 0x45
    .byte W04
    .byte 0x3F
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x32
    .byte W04
    .byte 0x2B
    .byte W04
    .byte 0x24
    .byte W04
    .byte 0x1E
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x11
    .byte W04
    .byte EOT
    .byte VOL, 11
    .byte W12
    .byte FINE

song_05C_track3: @ 08587F74
    .byte KEYSH, 0
    .byte VOICE, 81
    .byte PAN, 36
    .byte LFOS, 9
    .byte LFODL, 2
    .byte MOD, 4
    .byte W02
    .byte VOL, 14
    .byte TIE, 68, 84
    .byte W02
    .byte VOL, 19
    .byte W02
    .byte 0x1A
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x2D
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x4D
    .byte W02
    .byte 0x52
    .byte W02
    .byte 0x5A
    .byte W22
    .byte W12
    .byte 0x59
    .byte W04
    .byte 0x52
    .byte W04
    .byte 0x4B
    .byte W04
    .byte 0x45
    .byte W04
    .byte 0x3F
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x32
    .byte W04
    .byte 0x2B
    .byte W04
    .byte 0x24
    .byte W04
    .byte 0x1E
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x11
    .byte W04
    .byte EOT
    .byte VOL, 11
    .byte W12
    .byte FINE

.align 2
.global song_05C @ 08587FC0
song_05C:
@ ****************************** header ******************************
    .byte 0x04                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x3C                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_05C_track0           @ tracks 0x08587EE8
    .word song_05C_track1           @ tracks 0x08587F08
    .word song_05C_track2           @ tracks 0x08587F2A
    .word song_05C_track3           @ tracks 0x08587F74


@ ****************************** tracks ******************************
song_060_track0: @ 08587FD8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 48
    .byte VOL, 127
    .byte N04, 83, 127
    .byte W04
    .byte 0x5C
    .byte W04
    .byte N06, 90
    .byte W06
    .byte N04, 95
    .byte W04
    .byte 0x5A
    .byte W04
    .byte N10, 97
    .byte W02
    .byte W24
    .byte FINE

song_060_track1: @ 08587FF3
    .byte KEYSH, 0
    .byte VOICE, 49
    .byte VOL, 48
    .byte N04, 83, 127
    .byte W04
    .byte 0x5C
    .byte W04
    .byte N06, 90
    .byte W06
    .byte N04, 95
    .byte W04
    .byte 0x5A
    .byte W04
    .byte N10, 97
    .byte W02
    .byte W24
    .byte FINE

.align 2
.global song_060 @ 0858800C
song_060:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_060_track0           @ tracks 0x08587FD8
    .word song_060_track1           @ tracks 0x08587FF3


@ ****************************** tracks ******************************
song_061_track0: @ 0858801C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 50
    .byte BENDR, 5
    .byte VOL, 60
    .byte BEND, 0
    .byte N06, 93, 127
    .byte W01
    .byte BEND, 64
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W02
    .byte VOICE, 51
    .byte BEND, 0
    .byte N16, 98, 112
    .byte W01
    .byte BEND, 64
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W02
    .byte FINE

.align 2
.global song_061 @ 08588060
song_061:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_061_track0           @ tracks 0x0858801C


@ ****************************** tracks ******************************
song_065_track0: @ 0858806C
    .byte VOL, 40
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte N03, 80, 127
    .byte W04
    .byte N05, 78
    .byte W20
    .byte FINE

.align 2
.global song_065 @ 0858807C
song_065:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x1E                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_065_track0           @ tracks 0x0858806C


@ ****************************** tracks ******************************
song_066_track0: @ 08588088
    .byte VOL, 55
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte N04, 81, 127
    .byte W24
    .byte FINE

.align 2
.global song_066 @ 08588098
song_066:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x1E                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_066_track0           @ tracks 0x08588088


@ ****************************** tracks ******************************
song_067_track0: @ 085880A4
    .byte VOL, 55
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte N04, 83, 127
    .byte W24
    .byte FINE

.align 2
.global song_067 @ 085880B4
song_067:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x1E                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_067_track0           @ tracks 0x085880A4


@ ****************************** tracks ******************************
song_068_track0: @ 085880C0
    .byte VOL, 55
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 5
    .byte BENDR, 5
    .byte PRIO, 10
    .byte BEND, 64
    .byte N10, 87, 127
    .byte W02
    .byte BEND, 127
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x7F
    .byte W02
    .byte 0x40
    .byte W02
    .byte PRIO, 0
    .byte W02
    .byte FINE

.align 2
.global song_068 @ 085880E0
song_068:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x1F                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_068_track0           @ tracks 0x085880C0


@ ****************************** tracks ******************************
song_069_track0: @ 085880EC
    .byte VOL, 55
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte BENDR, 5
    .byte PRIO, 10
    .byte N06, 87, 127
    .byte W01
    .byte BEND, 127
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W04
    .byte VOICE, 5
    .byte BEND, 64
    .byte N10
    .byte W02
    .byte BEND, 127
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x7F
    .byte W02
    .byte 0x40
    .byte W02
    .byte PRIO, 0
    .byte W07
    .byte FINE

.align 2
.global song_069 @ 08588118
song_069:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x1F                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_069_track0           @ tracks 0x085880EC


@ ****************************** tracks ******************************
song_06A_track0: @ 08588124
    .byte VOL, 60
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte BENDR, 5
    .byte PRIO, 10
    .byte N02, 95, 127
    .byte W02
    .byte BEND, 0
    .byte N08
    .byte W01
    .byte BEND, 64
    .byte W01
    .byte VOICE, 5
    .byte BEND, 0
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x40
    .byte W01
    .byte PRIO, 0
    .byte W14
    .byte FINE

.align 2
.global song_06A @ 08588150
song_06A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x20                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_06A_track0           @ tracks 0x08588124


@ ****************************** tracks ******************************
song_06B_track0: @ 0858815C
    .byte VOL, 55
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte PRIO, 10
    .byte N04, 89, 127
    .byte W04
    .byte N03, 89, 80
    .byte W03
    .byte 0x59
    .byte 0x3C
    .byte W03
    .byte 0x59
    .byte 0x34
    .byte W03
    .byte 0x59
    .byte 0x28
    .byte W03
    .byte PRIO, 0
    .byte 0x59
    .byte 0x20
    .byte W03
    .byte 0x59
    .byte 0x14
    .byte W05
    .byte FINE

.align 2
.global song_06B @ 08588180
song_06B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x1F                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_06B_track0           @ tracks 0x0858815C


@ ****************************** tracks ******************************
song_06C_track0: @ 0858818C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 3
    .byte PRIO, 10
    .byte VOL, 110
    .byte N02, 48, 127
    .byte W04
    .byte N17, 48, 108
    .byte W12
    .byte PRIO, 0
    .byte W08
    .byte FINE

.align 2
.global song_06C @ 085881A4
song_06C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_06C_track0           @ tracks 0x0858818C


@ ****************************** tracks ******************************
song_06D_track0: @ 085881B0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 26
    .byte VOL, 48
    .byte PAN, 64
    .byte N05, 79, 127
    .byte W05
    .byte 0x56
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W05
    .byte N06, 91
    .byte W04
    .byte W02
    .byte N05, 79, 80
    .byte W05
    .byte 0x56
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W05
    .byte N06, 91
    .byte W02
    .byte W04
    .byte N05, 79, 56
    .byte W05
    .byte 0x56
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W05
    .byte N06, 91
    .byte W06
    .byte N05, 79, 32
    .byte W05
    .byte 0x56
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W03
    .byte W02
    .byte N06, 91
    .byte W22
    .byte FINE

song_06D_track1: @ 085881F2
    .byte KEYSH, 0
    .byte VOICE, 27
    .byte VOL, 32
    .byte PAN, 64
    .byte W04
    .byte N05, 79, 127
    .byte W01
    .byte PAN, 0
    .byte W04
    .byte N05, 86
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W05
    .byte N06, 91
    .byte W06
    .byte N05, 79, 80
    .byte W01
    .byte PAN, 127
    .byte W04
    .byte N05, 86
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W03
    .byte W02
    .byte N06, 91
    .byte W06
    .byte N05, 79, 56
    .byte W01
    .byte PAN, 0
    .byte W04
    .byte N05, 86
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W01
    .byte W04
    .byte N06, 91
    .byte W06
    .byte N05, 79, 32
    .byte W01
    .byte PAN, 127
    .byte W04
    .byte N05, 86
    .byte W05
    .byte 0x54
    .byte W04
    .byte W01
    .byte 0x56
    .byte W05
    .byte N06, 91
    .byte W18
    .byte FINE

song_06D_track2: @ 08588243
    .byte KEYSH, 0
    .byte VOICE, 28
    .byte VOL, 127
    .byte PAN, 64
    .byte N05, 79, 127
    .byte W05
    .byte 0x56
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W05
    .byte N06, 91
    .byte W04
    .byte W02
    .byte N05, 79, 96
    .byte W05
    .byte 0x56
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W05
    .byte N06, 91
    .byte W02
    .byte W04
    .byte N05, 79, 56
    .byte W05
    .byte 0x56
    .byte W05
    .byte 0x54
    .byte W05
    .byte 0x56
    .byte W05
    .byte N06, 91
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_06D @ 08588278
song_06D:
@ ****************************** header ******************************
    .byte 0x03                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_06D_track0           @ tracks 0x085881B0
    .word song_06D_track1           @ tracks 0x085881F2
    .word song_06D_track2           @ tracks 0x08588243


@ ****************************** tracks ******************************
song_06E_track0: @ 0858828C
    .byte VOL, 50
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 8
    .byte N02, 76, 127
    .byte W24
    .byte FINE

.align 2
.global song_06E @ 0858829C
song_06E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_06E_track0           @ tracks 0x0858828C


@ ****************************** tracks ******************************
song_06F_track0: @ 085882A8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 9
    .byte VOL, 60
    .byte BENDR, 8
    .byte BEND, 64
    .byte N12, 73, 127
    .byte W01
    .byte BEND, 104
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x68
    .byte W19
    .byte FINE

.align 2
.global song_06F @ 085882F4
song_06F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_06F_track0           @ tracks 0x085882A8


@ ****************************** tracks ******************************
song_070_track0: @ 08588300
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 32
    .byte VOL, 127
    .byte N06, 81, 127
    .byte W06
    .byte 0x58
    .byte W06
    .byte 0x56
    .byte W06
    .byte 0x58
    .byte W06
    .byte 0x5D
    .byte W24
    .byte FINE

song_070_track1: @ 08588315
    .byte KEYSH, 0
    .byte VOICE, 33
    .byte VOL, 40
    .byte N06, 93, 127
    .byte W06
    .byte 0x64
    .byte W06
    .byte 0x62
    .byte W06
    .byte 0x64
    .byte W06
    .byte 0x69
    .byte W24
    .byte FINE

.align 2
.global song_070 @ 08588328
song_070:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_070_track0           @ tracks 0x08588300
    .word song_070_track1           @ tracks 0x08588315


@ ****************************** tracks ******************************
song_071_track0: @ 08588338
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 32
    .byte VOL, 127
    .byte N06, 93, 127
    .byte W06
    .byte 0x56
    .byte W06
    .byte 0x58
    .byte W06
    .byte 0x51
    .byte W06
    .byte W24
    .byte FINE

song_071_track1: @ 0858834C
    .byte KEYSH, 0
    .byte VOICE, 33
    .byte VOL, 40
    .byte N06, 105, 127
    .byte W06
    .byte 0x62
    .byte W06
    .byte 0x64
    .byte W06
    .byte 0x5D
    .byte W06
    .byte W24
    .byte FINE

.align 2
.global song_071 @ 08588360
song_071:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_071_track0           @ tracks 0x08588338
    .word song_071_track1           @ tracks 0x0858834C


@ ****************************** tracks ******************************
song_072_track0: @ 08588370
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 15
    .byte VOL, 80
    .byte N01, 61, 127
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x47
    .byte W08
    .byte FINE

.align 2
.global song_072 @ 08588390
song_072:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_072_track0           @ tracks 0x08588370


@ ****************************** tracks ******************************
song_073_track0: @ 0858839C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 10
    .byte VOL, 127
    .byte W04
    .byte PAN, 14
    .byte N72, 60, 127
    .byte W02
    .byte PAN, 22
    .byte W02
    .byte 0x1E
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x37
    .byte W02
    .byte 0x40
    .byte W08
    .byte W24
    .byte W10
    .byte 0x40
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x61
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x72
    .byte W02
    .byte W24
    .byte FINE

song_073_track1: @ 085883CA
    .byte KEYSH, 0
    .byte VOICE, 10
    .byte VOL, 127
    .byte PAN, 4
    .byte N88, 55, 80
    .byte W02
    .byte PAN, 9
    .byte W02
    .byte 0x0E
    .byte W02
    .byte 0x13
    .byte W02
    .byte 0x18
    .byte W02
    .byte 0x1D
    .byte W02
    .byte 0x22
    .byte W02
    .byte 0x27
    .byte W02
    .byte 0x2C
    .byte W02
    .byte 0x31
    .byte W02
    .byte 0x36
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x40
    .byte W24
    .byte W14
    .byte 0x40
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x63
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x6D
    .byte W02
    .byte 0x72
    .byte W02
    .byte 0x77
    .byte W02
    .byte 0x7C
    .byte W10
    .byte FINE

.align 2
.global song_073 @ 0858840C
song_073:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x3C                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_073_track0           @ tracks 0x0858839C
    .word song_073_track1           @ tracks 0x085883CA


@ ****************************** tracks ******************************
song_074_track0: @ 0858841C
    .byte VOL, 55
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 6
    .byte BENDR, 5
    .byte BEND, 64
    .byte TIE, 76, 127
    .byte W01
    .byte BEND, 127
    .byte W01
label_song_074_track0_1:
    .byte BEND, 64
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
label_song_074_track0_0:
    .byte BEND, 64
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte PEND
    .byte PATT
    .word label_song_074_track0_0
    .byte PATT
    .word label_song_074_track0_0
    .byte BEND, 64
    .byte W01
    .byte 0x7F
    .byte W01
    .byte GOTO
    .word label_song_074_track0_1
    .byte BEND, 64
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x7F
    .byte W01
    .byte EOT, 76
    .byte W18
    .byte FINE

.align 2
.global song_074 @ 085884B0
song_074:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_074_track0           @ tracks 0x0858841C


@ ****************************** tracks ******************************
song_075_track0: @ 085884BC
    .byte VOL, 100
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 21
    .byte N22, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_075 @ 085884CC
song_075:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_075_track0           @ tracks 0x085884BC


@ ****************************** tracks ******************************
song_076_track0: @ 085884D8
    .byte VOL, 60
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 11
    .byte N04, 98, 127
    .byte W04
    .byte 0x62
    .byte 0x64
    .byte W04
    .byte 0x62
    .byte 0x50
    .byte W04
    .byte 0x62
    .byte 0x3C
    .byte W04
    .byte 0x62
    .byte 0x28
    .byte W04
    .byte 0x62
    .byte 0x14
    .byte W04
    .byte FINE

song_076_track1: @ 085884F4
    .byte KEYSH, 0
    .byte VOICE, 12
    .byte BENDR, 1
    .byte VOL, 45
    .byte BEND, 80
    .byte N04, 98, 127
    .byte W04
    .byte 0x62
    .byte 0x64
    .byte W04
    .byte 0x62
    .byte 0x50
    .byte W04
    .byte 0x62
    .byte 0x3C
    .byte W04
    .byte 0x62
    .byte 0x28
    .byte W04
    .byte 0x62
    .byte 0x14
    .byte W04
    .byte FINE

.align 2
.global song_076 @ 08588514
song_076:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_076_track0           @ tracks 0x085884D8
    .word song_076_track1           @ tracks 0x085884F4


@ ****************************** tracks ******************************
song_077_track0: @ 08588524
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 30
    .byte VOL, 65
    .byte N02, 81, 127
    .byte W02
    .byte 0x51
    .byte 0x48
    .byte W02
    .byte 0x56
    .byte 0x7F
    .byte W02
    .byte 0x56
    .byte 0x48
    .byte W02
    .byte 0x56
    .byte 0x28
    .byte W16
    .byte FINE

song_077_track1: @ 0858853D
    .byte KEYSH, 0
    .byte VOICE, 31
    .byte VOL, 49
    .byte BENDR, 1
    .byte BEND, 80
    .byte N02, 81, 127
    .byte W02
    .byte 0x51
    .byte 0x48
    .byte W02
    .byte 0x56
    .byte 0x7F
    .byte W02
    .byte 0x56
    .byte 0x48
    .byte W02
    .byte 0x56
    .byte 0x28
    .byte W16
    .byte FINE

.align 2
.global song_077 @ 08588558
song_077:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_077_track0           @ tracks 0x08588524
    .word song_077_track1           @ tracks 0x0858853D


@ ****************************** tracks ******************************
song_078_track0: @ 08588568
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 37
    .byte BENDR, 18
    .byte VOL, 40
    .byte BEND, 64
    .byte N20, 55, 127
    .byte W01
    .byte BEND, 65
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x44
    .byte W01
    .byte VOL, 34
    .byte BEND, 70
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x49
    .byte W01
    .byte 0x4B
    .byte W01
    .byte VOL, 28
    .byte BEND, 76
    .byte W01
    .byte 0x4E
    .byte W01
    .byte 0x50
    .byte W01
    .byte 0x50
    .byte W01
    .byte VOL, 22
    .byte BEND, 82
    .byte W01
    .byte 0x55
    .byte W01
    .byte 0x59
    .byte W01
    .byte 0x5E
    .byte W01
    .byte VOL, 16
    .byte BEND, 101
    .byte W01
    .byte 0x6D
    .byte W01
    .byte 0x76
    .byte W01
    .byte 0x7F
    .byte W05
    .byte FINE

song_078_track1: @ 085885AC
    .byte KEYSH, 0
    .byte VOICE, 38
    .byte VOL, 127
    .byte BENDR, 18
    .byte BEND, 63
    .byte N20, 55, 127
    .byte W01
    .byte BEND, 64
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x45
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x49
    .byte W01
    .byte 0x4A
    .byte W01
    .byte 0x4C
    .byte W01
    .byte 0x4D
    .byte W01
    .byte 0x4F
    .byte W01
    .byte 0x50
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x57
    .byte W01
    .byte 0x5E
    .byte W01
    .byte 0x67
    .byte W01
    .byte 0x72
    .byte W01
    .byte 0x7E
    .byte W05
    .byte FINE

.align 2
.global song_078 @ 085885E4
song_078:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x1E                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_078_track0           @ tracks 0x08588568
    .word song_078_track1           @ tracks 0x085885AC


@ ****************************** tracks ******************************
song_079_track0: @ 085885F4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 37
    .byte VOL, 16
    .byte BENDR, 18
    .byte BEND, 127
    .byte N20, 55, 127
    .byte W01
    .byte BEND, 127
    .byte W01
    .byte 0x7F
    .byte W01
    .byte 0x7F
    .byte W01
    .byte VOL, 24
    .byte BEND, 126
    .byte W01
    .byte 0x7D
    .byte W01
    .byte 0x7C
    .byte W01
    .byte 0x7B
    .byte W01
    .byte VOL, 32
    .byte BEND, 122
    .byte W01
    .byte 0x78
    .byte W01
    .byte 0x76
    .byte W01
    .byte 0x75
    .byte W01
    .byte VOL, 40
    .byte BEND, 115
    .byte W01
    .byte 0x6F
    .byte W01
    .byte 0x6B
    .byte W01
    .byte 0x65
    .byte W01
    .byte VOL, 48
    .byte BEND, 93
    .byte W01
    .byte 0x55
    .byte W01
    .byte 0x4B
    .byte W01
    .byte 0x40
    .byte W05
    .byte FINE

song_079_track1: @ 08588638
    .byte KEYSH, 0
    .byte VOICE, 38
    .byte VOL, 127
    .byte BENDR, 18
    .byte BEND, 126
    .byte N20, 55, 127
    .byte W01
    .byte BEND, 126
    .byte W01
    .byte 0x7E
    .byte W01
    .byte 0x7E
    .byte W01
    .byte 0x7D
    .byte W01
    .byte 0x7C
    .byte W01
    .byte 0x7B
    .byte W01
    .byte 0x7A
    .byte W01
    .byte 0x79
    .byte W01
    .byte 0x77
    .byte W01
    .byte 0x75
    .byte W01
    .byte 0x74
    .byte W01
    .byte 0x72
    .byte W01
    .byte 0x6E
    .byte W01
    .byte 0x6A
    .byte W01
    .byte 0x64
    .byte W01
    .byte 0x5C
    .byte W01
    .byte 0x54
    .byte W01
    .byte 0x4A
    .byte W01
    .byte 0x3F
    .byte W05
    .byte FINE

.align 2
.global song_079 @ 08588670
song_079:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x1E                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_079_track0           @ tracks 0x085885F4
    .word song_079_track1           @ tracks 0x08588638


@ ****************************** tracks ******************************
song_07A_track0: @ 08588680
    .byte VOL, 30
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 39
    .byte N02, 76, 127
    .byte W24
    .byte FINE

.align 2
.global song_07A @ 08588690
song_07A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_07A_track0           @ tracks 0x08588680


@ ****************************** tracks ******************************
song_07B_track0: @ 0858869C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 35
    .byte BENDR, 1
    .byte VOL, 95
    .byte BEND, 80
    .byte N06, 48, 127
    .byte W14
    .byte N06
    .byte W10
    .byte W04
    .byte N06
    .byte W14
    .byte N06
    .byte W06
    .byte W08
    .byte N06
    .byte W14
    .byte N06
    .byte W02
    .byte W12
    .byte N06
    .byte W12
    .byte W02
    .byte N06
    .byte W14
    .byte N06
    .byte W08
    .byte W06
    .byte N06
    .byte W18
    .byte FINE

song_07B_track1: @ 085886C4
    .byte KEYSH, 0
    .byte VOICE, 36
    .byte VOL, 71
    .byte N06, 48, 127
    .byte W14
    .byte N06
    .byte W10
    .byte W04
    .byte N06
    .byte W14
    .byte N06
    .byte W06
    .byte W08
    .byte N06
    .byte W14
    .byte N06
    .byte W02
    .byte W12
    .byte N06
    .byte W12
    .byte W02
    .byte N06
    .byte W14
    .byte N06
    .byte W08
    .byte W06
    .byte N06
    .byte W18
    .byte FINE

.align 2
.global song_07B @ 085886E8
song_07B:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x1E                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_07B_track0           @ tracks 0x0858869C
    .word song_07B_track1           @ tracks 0x085886C4


@ ****************************** tracks ******************************
song_07C_track0: @ 085886F8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 34
    .byte VOL, 70
    .byte N02, 108, 127
    .byte W04
    .byte N02
    .byte W04
    .byte N02
    .byte W04
    .byte N02
    .byte W12
    .byte FINE

.align 2
.global song_07C @ 0858870C
song_07C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_07C_track0           @ tracks 0x085886F8


@ ****************************** tracks ******************************
song_07D_track0: @ 08588718
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 41
    .byte VOL, 40
    .byte N04, 73, 127
    .byte W04
    .byte 0x4E
    .byte W20
    .byte FINE

song_07D_track1: @ 08588727
    .byte KEYSH, 0
    .byte VOICE, 42
    .byte BENDR, 2
    .byte VOL, 40
    .byte BEND, 58
    .byte N04, 73, 127
    .byte W04
    .byte 0x4E
    .byte W20
    .byte FINE

.align 2
.global song_07D @ 08588738
song_07D:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_07D_track0           @ tracks 0x08588718
    .word song_07D_track1           @ tracks 0x08588727


@ ****************************** tracks ******************************
song_07E_track0: @ 08588748
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 41
    .byte VOL, 40
    .byte N04, 83, 127
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W18
    .byte FINE

song_07E_track1: @ 08588767
    .byte KEYSH, 0
    .byte VOICE, 42
    .byte BENDR, 2
    .byte VOL, 40
    .byte BEND, 60
    .byte N04, 83, 112
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W06
    .byte N04
    .byte W18
    .byte FINE

.align 2
.global song_07E @ 08588788
song_07E:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_07E_track0           @ tracks 0x08588748
    .word song_07E_track1           @ tracks 0x08588767


@ ****************************** tracks ******************************
song_07F_track0: @ 08588798
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 44
    .byte VOL, 127
    .byte BENDR, 6
    .byte BEND, 64
    .byte N24, 60, 127
    .byte W02
    .byte VOL, 120
    .byte BEND, 64
    .byte W01
    .byte VOL, 110
    .byte W01
    .byte 0x65
    .byte BEND, 66
    .byte W01
    .byte VOL, 92
    .byte W01
    .byte 0x54
    .byte BEND, 68
    .byte W01
    .byte VOL, 76
    .byte W01
    .byte 0x45
    .byte BEND, 72
    .byte W01
    .byte VOL, 62
    .byte W01
    .byte 0x38
    .byte BEND, 77
    .byte W01
    .byte VOL, 50
    .byte W01
    .byte 0x2C
    .byte BEND, 83
    .byte W01
    .byte VOL, 39
    .byte W01
    .byte 0x23
    .byte BEND, 90
    .byte W01
    .byte VOL, 31
    .byte W01
    .byte 0x1B
    .byte BEND, 97
    .byte W01
    .byte VOL, 24
    .byte W01
    .byte 0x15
    .byte BEND, 106
    .byte W01
    .byte VOL, 19
    .byte W01
    .byte 0x12
    .byte BEND, 117
    .byte W01
    .byte VOL, 16
    .byte W01
    .byte BEND, 127
    .byte W02
    .byte FINE

.align 2
.global song_07F @ 085887F4
song_07F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_07F_track0           @ tracks 0x08588798


@ ****************************** tracks ******************************
song_080_track0: @ 08588800
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 43
    .byte VOL, 127
    .byte BENDR, 1
    .byte N04, 60, 127
    .byte W05
    .byte BEND, 80
    .byte N04, 60, 72
    .byte W05
    .byte BEND, 96
    .byte N04, 60, 56
    .byte W05
    .byte BEND, 112
    .byte N04, 60, 40
    .byte W05
    .byte BEND, 127
    .byte N04, 60, 28
    .byte W04
    .byte FINE

.align 2
.global song_080 @ 08588828
song_080:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_080_track0           @ tracks 0x08588800


@ ****************************** tracks ******************************
song_081_track0: @ 08588834
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 45
    .byte VOL, 32
    .byte MODT, 2
    .byte MOD, 40
    .byte LFOS, 10
    .byte TIE, 60, 127
    .byte W02
    .byte VOL, 39
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x37
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x67
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x77
    .byte W02
    .byte 0x7F
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte 0x78
    .byte W06
    .byte 0x74
    .byte W06
    .byte 0x70
    .byte W06
    .byte 0x6C
    .byte W06
    .byte 0x69
    .byte W06
    .byte 0x65
    .byte W06
    .byte 0x61
    .byte W06
    .byte 0x5E
    .byte W06
    .byte 0x5A
    .byte W06
    .byte 0x56
    .byte W06
    .byte 0x53
    .byte W06
    .byte 0x50
    .byte W02
    .byte 0x4E
    .byte W04
label_song_081_track0_0:
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte GOTO
    .word label_song_081_track0_0
    .byte W08
    .byte EOT, 60
    .byte W16
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_081 @ 08588898
song_081:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_081_track0           @ tracks 0x08588834


@ ****************************** tracks ******************************
song_082_track0: @ 085888A4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 30
    .byte BENDR, 1
    .byte VOL, 56
    .byte BEND, 0
    .byte N64, 61, 127
    .byte W02
    .byte VOL, 69
    .byte BEND, 10
    .byte W02
    .byte VOL, 83
    .byte BEND, 21
    .byte W02
    .byte VOL, 97
    .byte BEND, 31
    .byte W02
    .byte VOL, 112
    .byte BEND, 42
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x40
    .byte W12
    .byte W16
    .byte VOL, 105
    .byte W02
    .byte 0x61
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x39
    .byte W02
    .byte 0x31
    .byte W02
    .byte 0x29
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x19
    .byte W02
    .byte 0x11
    .byte W10
    .byte FINE

.align 2
.global song_082 @ 085888E8
song_082:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_082_track0           @ tracks 0x085888A4


@ ****************************** tracks ******************************
song_083_track0: @ 085888F4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 35
    .byte VOL, 64
    .byte N48, 61, 127
    .byte W05
    .byte VOL, 65
    .byte W03
    .byte 0x42
    .byte W04
    .byte 0x44
    .byte W04
    .byte 0x48
    .byte W04
    .byte 0x4D
    .byte W04
    .byte 0x52
    .byte W04
    .byte 0x59
    .byte W04
    .byte 0x61
    .byte W04
    .byte 0x6A
    .byte W04
    .byte 0x74
    .byte W04
    .byte 0x7F
    .byte W04
    .byte FINE

.align 2
.global song_083 @ 08588918
song_083:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_083_track0           @ tracks 0x085888F4


@ ****************************** tracks ******************************
song_084_track0: @ 08588924
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 36
    .byte VOL, 80
    .byte N14, 88, 127
    .byte W24
    .byte FINE

.align 2
.global song_084 @ 08588934
song_084:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_084_track0           @ tracks 0x08588924


@ ****************************** tracks ******************************
song_085_track0: @ 08588940
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 33
    .byte VOL, 110
    .byte N84, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_085 @ 08588950
song_085:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_085_track0           @ tracks 0x08588940


@ ****************************** tracks ******************************
song_086_track0: @ 0858895C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 31
    .byte BENDR, 3
    .byte VOL, 63
    .byte N56, 63, 127
    .byte W02
    .byte VOL, 79
    .byte W02
    .byte 0x5F
    .byte BEND, 64
    .byte W02
    .byte VOL, 111
    .byte W02
    .byte 0x7F
    .byte BEND, 70
    .byte W04
    .byte 0x4C
    .byte W04
    .byte 0x53
    .byte W04
    .byte 0x59
    .byte W04
    .byte 0x5F
    .byte W04
    .byte 0x66
    .byte W04
    .byte 0x6C
    .byte W04
    .byte 0x73
    .byte W04
    .byte VOL, 120
    .byte BEND, 121
    .byte W02
    .byte VOL, 105
    .byte W02
    .byte 0x5B
    .byte BEND, 127
    .byte W02
    .byte VOL, 77
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x30
    .byte W02
    .byte 0x22
    .byte W02
    .byte 0x14
    .byte W18
    .byte FINE

.align 2
.global song_086 @ 085889A0
song_086:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_086_track0           @ tracks 0x0858895C


@ ****************************** tracks ******************************
song_087_track0: @ 085889AC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 34
    .byte BENDR, 8
    .byte VOL, 28
    .byte BEND, 64
    .byte N48, 61, 127
    .byte W01
    .byte VOL, 56
    .byte W01
    .byte 0x54
    .byte BEND, 69
    .byte W01
    .byte VOL, 112
    .byte W01
    .byte BEND, 74
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x6E
    .byte W02
    .byte 0x71
    .byte W02
    .byte 0x73
    .byte W02
    .byte 0x76
    .byte W02
    .byte 0x78
    .byte W02
    .byte VOL, 105
    .byte BEND, 122
    .byte W02
    .byte VOL, 92
    .byte BEND, 123
    .byte W02
    .byte VOL, 80
    .byte BEND, 124
    .byte W02
    .byte VOL, 67
    .byte BEND, 126
    .byte W02
    .byte VOL, 54
    .byte BEND, 126
    .byte W02
    .byte VOL, 42
    .byte BEND, 127
    .byte W02
    .byte VOL, 29
    .byte BEND, 127
    .byte W02
    .byte VOL, 17
    .byte BEND, 127
    .byte W02
    .byte FINE

.align 2
.global song_087 @ 08588A0C
song_087:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_087_track0           @ tracks 0x085889AC


@ ****************************** tracks ******************************
song_088_track0: @ 08588A18
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 32
    .byte BENDR, 3
    .byte VOL, 52
    .byte BEND, 64
    .byte N48, 61, 127
    .byte W02
    .byte VOL, 64
    .byte BEND, 71
    .byte W02
    .byte VOL, 77
    .byte BEND, 79
    .byte W02
    .byte VOL, 90
    .byte BEND, 87
    .byte W02
    .byte VOL, 104
    .byte BEND, 95
    .byte W02
    .byte 0x67
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x77
    .byte W02
    .byte 0x7F
    .byte W08
    .byte W08
    .byte VOL, 98
    .byte W02
    .byte 0x55
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x32
    .byte W02
    .byte 0x27
    .byte W02
    .byte 0x1B
    .byte W02
    .byte 0x10
    .byte W02
    .byte FINE

.align 2
.global song_088 @ 08588A58
song_088:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_088_track0           @ tracks 0x08588A18


@ ****************************** tracks ******************************
song_089_track0: @ 08588A64
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 37
    .byte BENDR, 3
    .byte VOL, 64
    .byte BEND, 64
    .byte N48, 57, 127
    .byte W01
    .byte VOL, 79
    .byte W01
    .byte 0x5F
    .byte BEND, 64
    .byte W01
    .byte VOL, 111
    .byte W01
    .byte 0x7F
    .byte BEND, 64
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x57
    .byte W02
    .byte VOL, 126
    .byte BEND, 92
    .byte W02
    .byte VOL, 107
    .byte BEND, 97
    .byte W02
    .byte VOL, 89
    .byte BEND, 102
    .byte W02
    .byte VOL, 74
    .byte BEND, 108
    .byte W02
    .byte VOL, 60
    .byte BEND, 114
    .byte W02
    .byte VOL, 48
    .byte BEND, 121
    .byte W02
    .byte VOL, 38
    .byte BEND, 127
    .byte W02
    .byte VOL, 30
    .byte W02
    .byte 0x18
    .byte W02
    .byte 0x13
    .byte W02
    .byte 0x10
    .byte W04
    .byte FINE

.align 2
.global song_089 @ 08588AC4
song_089:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_089_track0           @ tracks 0x08588A64


@ ****************************** tracks ******************************
song_08A_track0: @ 08588AD0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 37
    .byte BENDR, 6
    .byte VOL, 64
    .byte BEND, 64
    .byte N48, 60, 127
    .byte W01
    .byte VOL, 79
    .byte W01
    .byte 0x5F
    .byte BEND, 64
    .byte W01
    .byte VOL, 111
    .byte W01
    .byte 0x7F
    .byte BEND, 64
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x57
    .byte W02
    .byte VOL, 126
    .byte BEND, 92
    .byte W02
    .byte VOL, 107
    .byte BEND, 97
    .byte W02
    .byte VOL, 89
    .byte BEND, 102
    .byte W02
    .byte VOL, 74
    .byte BEND, 108
    .byte W02
    .byte VOL, 60
    .byte BEND, 114
    .byte W02
    .byte VOL, 48
    .byte BEND, 121
    .byte W02
    .byte VOL, 38
    .byte BEND, 127
    .byte W02
    .byte VOL, 30
    .byte W02
    .byte 0x18
    .byte W02
    .byte 0x13
    .byte W02
    .byte 0x10
    .byte W04
    .byte FINE

.align 2
.global song_08A @ 08588B30
song_08A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_08A_track0           @ tracks 0x08588AD0


@ ****************************** tracks ******************************
song_08B_track0: @ 08588B3C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 37
    .byte BENDR, 10
    .byte VOL, 64
    .byte BEND, 64
    .byte N48, 60, 127
    .byte W01
    .byte VOL, 79
    .byte W01
    .byte 0x5F
    .byte BEND, 69
    .byte W01
    .byte VOL, 111
    .byte W01
    .byte 0x7F
    .byte BEND, 74
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x6E
    .byte W02
    .byte VOL, 126
    .byte BEND, 113
    .byte W02
    .byte VOL, 107
    .byte BEND, 115
    .byte W02
    .byte VOL, 89
    .byte BEND, 118
    .byte W02
    .byte VOL, 74
    .byte BEND, 120
    .byte W02
    .byte VOL, 60
    .byte BEND, 122
    .byte W02
    .byte VOL, 48
    .byte BEND, 123
    .byte W02
    .byte VOL, 38
    .byte BEND, 124
    .byte W02
    .byte VOL, 30
    .byte BEND, 126
    .byte W02
    .byte VOL, 24
    .byte BEND, 126
    .byte W02
    .byte VOL, 19
    .byte BEND, 127
    .byte W02
    .byte VOL, 16
    .byte BEND, 127
    .byte W02
    .byte 0x7F
    .byte W02
    .byte FINE

.align 2
.global song_08B @ 08588BA8
song_08B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_08B_track0           @ tracks 0x08588B3C


@ ****************************** tracks ******************************
song_08C_track0: @ 08588BB4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 37
    .byte BENDR, 10
    .byte MODT, 1
    .byte LFOS, 60
    .byte MOD, 10
    .byte VOL, 69
    .byte BEND, 0
    .byte N96, 67, 127
    .byte W02
    .byte VOL, 112
    .byte BEND, 10
    .byte W02
    .byte VOL, 127
    .byte BEND, 19
    .byte W02
    .byte 0x1B
    .byte W02
    .byte 0x23
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x34
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x40
    .byte W06
    .byte 0x44
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x41
    .byte W10
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte VOL, 126
    .byte BEND, 64
    .byte W02
    .byte VOL, 125
    .byte BEND, 64
    .byte W02
    .byte VOL, 122
    .byte BEND, 65
    .byte W02
    .byte VOL, 117
    .byte BEND, 66
    .byte W02
    .byte VOL, 111
    .byte BEND, 69
    .byte W02
    .byte VOL, 103
    .byte BEND, 72
    .byte W02
    .byte VOL, 93
    .byte BEND, 75
    .byte W02
    .byte VOL, 81
    .byte BEND, 79
    .byte W02
    .byte VOL, 67
    .byte BEND, 84
    .byte W02
    .byte VOL, 52
    .byte BEND, 89
    .byte W02
    .byte VOL, 34
    .byte BEND, 96
    .byte W02
    .byte VOL, 16
    .byte W02
    .byte FINE

.align 2
.global song_08C @ 08588C48
song_08C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_08C_track0           @ tracks 0x08588BB4


@ ****************************** tracks ******************************
song_08D_track0: @ 08588C54
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 41
    .byte VOL, 100
    .byte BENDR, 12
    .byte W22
    .byte N07, 57, 68
    .byte W02
    .byte W05
    .byte N06, 58
    .byte W06
    .byte 0x3C
    .byte 0x58
    .byte W06
    .byte N07, 62
    .byte W07
    .byte N48, 63, 108
    .byte W24
    .byte VOL, 127
    .byte W02
    .byte 0x6A
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x2B
    .byte W02
    .byte 0x1F
    .byte W02
    .byte 0x16
    .byte W02
    .byte 0x0E
    .byte W02
    .byte xIECV
    .byte W02
    .byte 0x03
    .byte W02
    .byte 0x00
    .byte W02
    .byte W24
    .byte W24
    .byte FINE

song_08D_track1: @ 08588C8D
    .byte KEYSH, 0
    .byte VOICE, 40
    .byte BENDR, 12
    .byte VOL, 127
    .byte BEND, 0
    .byte TIE, 65, 108
    .byte W02
    .byte BEND, 0
    .byte W02
    .byte 0x01
    .byte W02
    .byte 0x04
    .byte W02
    .byte 0x07
    .byte W02
    .byte 0x0B
    .byte W02
    .byte 0x10
    .byte W02
    .byte 0x15
    .byte W02
    .byte 0x1C
    .byte W02
    .byte 0x24
    .byte W02
    .byte 0x2C
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x40
    .byte W24
    .byte 0x40
    .byte W24
    .byte VOL, 127
    .byte W02
    .byte 0x79
    .byte W02
    .byte 0x74
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x25
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x1A
    .byte W02
    .byte 0x15
    .byte W02
    .byte 0x10
    .byte W02
    .byte 0x0A
    .byte W02
    .byte 0x05
    .byte W02
    .byte EOT
    .byte W24
    .byte FINE

.align 2
.global song_08D @ 08588CEC
song_08D:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_08D_track0           @ tracks 0x08588C54
    .word song_08D_track1           @ tracks 0x08588C8D


@ ****************************** tracks ******************************
song_08E_track0: @ 08588CFC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 87
    .byte MODT, 2
    .byte MOD, 30
    .byte LFOS, 10
    .byte VOL, 32
    .byte TIE, 60, 127
    .byte W04
    .byte VOL, 33
    .byte W02
    .byte 0x22
    .byte W02
    .byte 0x24
    .byte W02
    .byte 0x27
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x2E
    .byte W02
    .byte 0x32
    .byte W02
    .byte 0x37
    .byte W02
    .byte 0x3D
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x74
    .byte W02
    .byte 0x7F
    .byte W12
    .byte W24
    .byte 0x7E
    .byte W02
    .byte 0x78
    .byte W02
    .byte 0x73
    .byte W02
    .byte 0x6D
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x5D
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x52
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x41
    .byte W02
label_song_08E_track0_0:
    .byte VOL, 60
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte GOTO
    .word label_song_08E_track0_0
    .byte W08
    .byte EOT, 60
    .byte W16
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_08E @ 08588D6C
song_08E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x32                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_08E_track0           @ tracks 0x08588CFC


@ ****************************** tracks ******************************
song_08F_track0: @ 08588D78
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 87
    .byte MODT, 2
    .byte MOD, 30
    .byte LFOS, 12
    .byte BENDR, 1
    .byte VOL, 64
    .byte BEND, 64
    .byte TIE, 60, 127
    .byte W02
    .byte BEND, 65
    .byte W02
    .byte VOL, 65
    .byte BEND, 67
    .byte W02
    .byte VOL, 67
    .byte BEND, 69
    .byte W02
    .byte VOL, 71
    .byte BEND, 71
    .byte W02
    .byte VOL, 74
    .byte BEND, 72
    .byte W02
    .byte VOL, 79
    .byte BEND, 74
    .byte W02
    .byte VOL, 85
    .byte BEND, 76
    .byte W02
    .byte VOL, 92
    .byte BEND, 78
    .byte W02
    .byte VOL, 99
    .byte BEND, 79
    .byte W02
    .byte VOL, 107
    .byte BEND, 81
    .byte W02
    .byte VOL, 117
    .byte BEND, 83
    .byte W02
    .byte VOL, 127
    .byte BEND, 85
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x60
    .byte W12
    .byte W24
    .byte W24
    .byte W12
    .byte VOL, 126
    .byte W04
    .byte 0x7D
    .byte W05
    .byte 0x7C
    .byte W03
    .byte W02
    .byte 0x7B
    .byte W05
    .byte 0x79
    .byte W05
    .byte 0x77
    .byte W04
    .byte 0x75
    .byte W04
    .byte 0x72
    .byte W04
    .byte 0x6F
    .byte W04
    .byte 0x6C
    .byte W04
    .byte 0x69
    .byte W04
    .byte 0x65
    .byte W04
    .byte 0x60
    .byte W04
    .byte 0x5C
    .byte W04
    .byte 0x57
    .byte W04
    .byte 0x51
    .byte W04
    .byte 0x4C
    .byte W04
    .byte 0x45
    .byte W04
    .byte 0x3F
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x31
    .byte W04
    .byte 0x2A
    .byte W04
    .byte 0x22
    .byte W04
    .byte 0x1A
    .byte W04
    .byte 0x11
    .byte W04
    .byte xIECL
    .byte W04
    .byte EOT
    .byte FINE

.align 2
.global song_08F @ 08588E10
song_08F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x33                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_08F_track0           @ tracks 0x08588D78


@ ****************************** tracks ******************************
song_090_track0: @ 08588E1C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 47
    .byte VOL, 8
    .byte PAN, 64
    .byte TIE, 45, 127
    .byte W04
    .byte VOL, 16
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x40
    .byte W04
    .byte 0x48
    .byte W04
    .byte 0x50
    .byte W04
    .byte 0x58
    .byte W04
    .byte 0x60
    .byte W04
    .byte 0x68
    .byte W04
    .byte 0x70
    .byte W04
    .byte 0x78
    .byte W04
    .byte 0x7F
    .byte W12
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W17
    .byte 0x78
    .byte W05
    .byte 0x70
    .byte W02
    .byte W03
    .byte 0x68
    .byte W05
    .byte 0x60
    .byte W05
    .byte 0x58
    .byte W05
    .byte 0x50
    .byte W05
    .byte 0x48
    .byte W01
    .byte W04
    .byte 0x40
    .byte W05
    .byte 0x38
    .byte W05
    .byte 0x30
    .byte W05
    .byte 0x28
    .byte W05
    .byte 0x20
    .byte W05
    .byte 0x18
    .byte W05
    .byte 0x10
    .byte W05
    .byte xIECV
    .byte W01
    .byte EOT
    .byte W08
    .byte FINE

song_090_track1: @ 08588E76
    .byte KEYSH, 0
    .byte VOICE, 47
    .byte BENDR, 1
    .byte PAN, 64
    .byte MODT, 2
    .byte LFOS, 3
    .byte MOD, 60
    .byte BEND, 69
    .byte W03
    .byte VOL, 8
    .byte TIE, 45, 127
    .byte W04
    .byte VOL, 16
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x30
    .byte W01
    .byte W03
    .byte 0x38
    .byte W04
    .byte 0x40
    .byte W04
    .byte 0x48
    .byte W04
    .byte 0x50
    .byte W04
    .byte 0x58
    .byte W04
    .byte 0x60
    .byte W01
    .byte W03
    .byte 0x68
    .byte W04
    .byte 0x70
    .byte W04
    .byte 0x78
    .byte W04
    .byte 0x7F
    .byte W09
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W20
    .byte 0x78
    .byte W04
    .byte W01
    .byte 0x70
    .byte W05
    .byte 0x68
    .byte W05
    .byte 0x60
    .byte W05
    .byte 0x58
    .byte W05
    .byte 0x50
    .byte W03
    .byte W02
    .byte 0x48
    .byte W05
    .byte 0x40
    .byte W05
    .byte 0x38
    .byte W05
    .byte 0x30
    .byte W05
    .byte 0x28
    .byte W02
    .byte W03
    .byte 0x20
    .byte W05
    .byte 0x18
    .byte W05
    .byte 0x10
    .byte W05
    .byte xIECV
    .byte W01
    .byte EOT
    .byte W05
    .byte FINE

.align 2
.global song_090 @ 08588EDC
song_090:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_090_track0           @ tracks 0x08588E1C
    .word song_090_track1           @ tracks 0x08588E76


@ ****************************** tracks ******************************
song_091_track0: @ 08588EEC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 46
    .byte BENDR, 2
    .byte W17
    .byte VOL, 48
    .byte PAN, 4
    .byte BEND, 96
    .byte N84, 60, 127
    .byte W02
    .byte VOL, 64
    .byte W02
    .byte 0x50
    .byte PAN, 9
    .byte BEND, 92
    .byte W02
    .byte VOL, 96
    .byte W01
    .byte W01
    .byte 0x70
    .byte PAN, 15
    .byte BEND, 89
    .byte W02
    .byte VOL, 127
    .byte W02
    .byte PAN, 21
    .byte BEND, 86
    .byte W04
    .byte PAN, 51
    .byte BEND, 70
    .byte W04
    .byte PAN, 57
    .byte BEND, 67
    .byte W04
    .byte PAN, 63
    .byte BEND, 64
    .byte W04
    .byte PAN, 69
    .byte BEND, 60
    .byte W03
    .byte W01
    .byte PAN, 75
    .byte BEND, 57
    .byte W04
    .byte PAN, 81
    .byte BEND, 54
    .byte W04
    .byte PAN, 87
    .byte BEND, 51
    .byte W04
    .byte PAN, 93
    .byte BEND, 48
    .byte W04
    .byte PAN, 99
    .byte BEND, 44
    .byte W04
    .byte PAN, 105
    .byte BEND, 41
    .byte W03
    .byte W01
    .byte PAN, 111
    .byte BEND, 38
    .byte W04
    .byte PAN, 117
    .byte BEND, 35
    .byte W04
    .byte PAN, 124
    .byte BEND, 32
    .byte W15
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

song_091_track1: @ 08588F62
    .byte KEYSH, 0
    .byte VOICE, 46
    .byte BENDR, 2
    .byte W17
    .byte PAN, 124
    .byte VOL, 48
    .byte BEND, 32
    .byte N84, 60, 127
    .byte W02
    .byte VOL, 64
    .byte W02
    .byte PAN, 116
    .byte VOL, 80
    .byte BEND, 35
    .byte W02
    .byte VOL, 96
    .byte W01
    .byte W01
    .byte PAN, 109
    .byte VOL, 112
    .byte BEND, 39
    .byte W02
    .byte VOL, 127
    .byte W02
    .byte PAN, 101
    .byte BEND, 43
    .byte W04
    .byte PAN, 94
    .byte BEND, 47
    .byte W04
    .byte PAN, 86
    .byte BEND, 51
    .byte W04
    .byte PAN, 79
    .byte BEND, 55
    .byte W04
    .byte PAN, 71
    .byte BEND, 59
    .byte W03
    .byte W01
    .byte PAN, 64
    .byte BEND, 63
    .byte W04
    .byte PAN, 56
    .byte BEND, 67
    .byte W04
    .byte PAN, 49
    .byte BEND, 71
    .byte W04
    .byte PAN, 41
    .byte BEND, 75
    .byte W04
    .byte PAN, 34
    .byte BEND, 79
    .byte W04
    .byte PAN, 26
    .byte BEND, 83
    .byte W03
    .byte W01
    .byte PAN, 19
    .byte BEND, 87
    .byte W04
    .byte PAN, 11
    .byte BEND, 91
    .byte W04
    .byte PAN, 4
    .byte BEND, 96
    .byte W15
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

song_091_track2: @ 08588FD8
    .byte KEYSH, 0
    .byte VOICE, 46
    .byte VOL, 127
    .byte BENDR, 2
    .byte PAN, 64
    .byte W01
    .byte TIE, 48, 127
    .byte W23
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W08
    .byte EOT
    .byte W16
    .byte FINE

.align 2
.global song_091 @ 08588FF4
song_091:
@ ****************************** header ******************************
    .byte 0x03                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_091_track0           @ tracks 0x08588EEC
    .word song_091_track1           @ tracks 0x08588F62
    .word song_091_track2           @ tracks 0x08588FD8


@ ****************************** tracks ******************************
song_092_track0: @ 08589008
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 52
    .byte VOL, 127
    .byte N44, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_092 @ 08589018
song_092:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_092_track0           @ tracks 0x08589008


@ ****************************** tracks ******************************
song_093_track0: @ 08589024
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 53
    .byte VOL, 127
    .byte N20, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_093 @ 08589034
song_093:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_093_track0           @ tracks 0x08589024


@ ****************************** tracks ******************************
song_094_track0: @ 08589040
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 54
    .byte VOL, 127
    .byte N72, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_094 @ 08589050
song_094:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_083977FC       @ tone
    .word song_094_track0           @ tracks 0x08589040


@ ****************************** tracks ******************************
song_096_track0: @ 0858905C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 127
    .byte PAN, 64
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_096 @ 0858906C
song_096:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_096_track0           @ tracks 0x0858905C


@ ****************************** tracks ******************************
song_097_track0: @ 08589078
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 127
    .byte PAN, 64
    .byte N12, 59, 127
    .byte W24
    .byte FINE

.align 2
.global song_097 @ 08589088
song_097:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_097_track0           @ tracks 0x08589078


@ ****************************** tracks ******************************
song_098_track0: @ 08589094
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 127
    .byte PAN, 64
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_098 @ 085890A4
song_098:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_098_track0           @ tracks 0x08589094


@ ****************************** tracks ******************************
song_099_track0: @ 085890B0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 127
    .byte PAN, 64
    .byte N12, 59, 127
    .byte W24
    .byte FINE

.align 2
.global song_099 @ 085890C0
song_099:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_099_track0           @ tracks 0x085890B0


@ ****************************** tracks ******************************
song_09A_track0: @ 085890CC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte VOL, 112
    .byte PAN, 64
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_09A @ 085890DC
song_09A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_09A_track0           @ tracks 0x085890CC


@ ****************************** tracks ******************************
song_09B_track0: @ 085890E8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 5
    .byte VOL, 112
    .byte PAN, 64
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_09B @ 085890F8
song_09B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_09B_track0           @ tracks 0x085890E8


@ ****************************** tracks ******************************
song_09C_track0: @ 08589104
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 6
    .byte VOL, 112
    .byte PAN, 64
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_09C @ 08589114
song_09C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_09C_track0           @ tracks 0x08589104


@ ****************************** tracks ******************************
song_09D_track0: @ 08589120
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte VOL, 112
    .byte PAN, 64
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_09D @ 08589130
song_09D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_09D_track0           @ tracks 0x08589120


@ ****************************** tracks ******************************
song_09E_track0: @ 0858913C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 5
    .byte VOL, 112
    .byte PAN, 64
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_09E @ 0858914C
song_09E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_09E_track0           @ tracks 0x0858913C


@ ****************************** tracks ******************************
song_09F_track0: @ 08589158
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 6
    .byte VOL, 112
    .byte PAN, 64
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_09F @ 08589168
song_09F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_09F_track0           @ tracks 0x08589158


@ ****************************** tracks ******************************
song_0A0_track0: @ 08589174
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 8
    .byte VOL, 127
    .byte PAN, 64
    .byte N11, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0A0 @ 08589184
song_0A0:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A0_track0           @ tracks 0x08589174


@ ****************************** tracks ******************************
song_0A1_track0: @ 08589190
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 8
    .byte VOL, 127
    .byte PAN, 64
    .byte N11, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0A1 @ 085891A0
song_0A1:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A1_track0           @ tracks 0x08589190


@ ****************************** tracks ******************************
song_0A2_track0: @ 085891AC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 127
    .byte PAN, 64
    .byte N16, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0A2 @ 085891BC
song_0A2:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A2_track0           @ tracks 0x085891AC


@ ****************************** tracks ******************************
song_0A3_track0: @ 085891C8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 127
    .byte PAN, 64
    .byte N16, 59, 127
    .byte W24
    .byte FINE

.align 2
.global song_0A3 @ 085891D8
song_0A3:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A3_track0           @ tracks 0x085891C8


@ ****************************** tracks ******************************
song_0A4_track0: @ 085891E4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 127
    .byte PAN, 64
    .byte N16, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0A4 @ 085891F4
song_0A4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A4_track0           @ tracks 0x085891E4


@ ****************************** tracks ******************************
song_0A5_track0: @ 08589200
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 127
    .byte PAN, 64
    .byte N16, 59, 127
    .byte W24
    .byte FINE

.align 2
.global song_0A5 @ 08589210
song_0A5:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A5_track0           @ tracks 0x08589200


@ ****************************** tracks ******************************
song_0A6_track0: @ 0858921C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 9
    .byte VOL, 127
    .byte PAN, 64
    .byte N14, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0A6 @ 0858922C
song_0A6:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A6_track0           @ tracks 0x0858921C


@ ****************************** tracks ******************************
song_0A7_track0: @ 08589238
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 9
    .byte VOL, 127
    .byte PAN, 64
    .byte N14, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0A7 @ 08589248
song_0A7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A7_track0           @ tracks 0x08589238


@ ****************************** tracks ******************************
song_0A8_track0: @ 08589254
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 43
    .byte VOL, 127
    .byte BENDR, 5
    .byte BEND, 64
    .byte N32, 60, 127
    .byte W02
    .byte BEND, 68
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x55
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x5D
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x66
    .byte W02
    .byte VOL, 120
    .byte BEND, 106
    .byte W02
    .byte 0x6E
    .byte W01
    .byte VOL, 110
    .byte W01
    .byte BEND, 115
    .byte W02
    .byte VOL, 100
    .byte BEND, 119
    .byte W02
    .byte VOL, 90
    .byte BEND, 123
    .byte W01
    .byte VOL, 80
    .byte W01
    .byte 0x46
    .byte BEND, 127
    .byte W01
    .byte VOL, 60
    .byte W17
    .byte FINE

song_0A8_track1: @ 08589299
    .byte KEYSH, 0
    .byte VOICE, 44
    .byte VOL, 100
    .byte W24
    .byte N03, 56, 127
    .byte W03
    .byte N06, 61
    .byte W06
    .byte N03, 57, 52
    .byte W03
    .byte N04, 62
    .byte W12
    .byte FINE

.align 2
.global song_0A8 @ 085892B0
song_0A8:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A8_track0           @ tracks 0x08589254
    .word song_0A8_track1           @ tracks 0x08589299


@ ****************************** tracks ******************************
song_0A9_track0: @ 085892C0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte VOL, 100
    .byte N04, 73, 127
    .byte W03
    .byte 0x4B
    .byte 0x7C
    .byte W03
    .byte 0x4D
    .byte 0x74
    .byte W03
    .byte 0x4E
    .byte 0x70
    .byte W03
    .byte 0x50
    .byte 0x6C
    .byte W03
    .byte 0x52
    .byte 0x64
    .byte W03
    .byte 0x53
    .byte 0x60
    .byte W03
    .byte 0x55
    .byte 0x5C
    .byte W02
    .byte N03, 82, 48
    .byte W01
    .byte W02
    .byte 0x53
    .byte 0x28
    .byte W03
    .byte 0x55
    .byte 0x24
    .byte W19
    .byte FINE

.align 2
.global song_0A9 @ 085892F0
song_0A9:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0A9_track0           @ tracks 0x085892C0


@ ****************************** tracks ******************************
song_0AA_track0: @ 085892FC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 45
    .byte VOL, 100
    .byte BENDR, 12
    .byte BEND, 64
    .byte N48, 55, 127
    .byte W02
    .byte BEND, 64
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x66
    .byte W02
    .byte 0x6B
    .byte W02
    .byte VOL, 94
    .byte BEND, 112
    .byte W02
    .byte VOL, 92
    .byte BEND, 116
    .byte W02
    .byte VOL, 90
    .byte BEND, 119
    .byte W02
    .byte VOL, 86
    .byte BEND, 122
    .byte W02
    .byte VOL, 81
    .byte BEND, 125
    .byte W02
    .byte VOL, 74
    .byte BEND, 126
    .byte W02
    .byte VOL, 65
    .byte BEND, 127
    .byte W02
    .byte VOL, 55
    .byte BEND, 127
    .byte W02
    .byte VOL, 43
    .byte W02
    .byte 0x1D
    .byte W02
    .byte 0x12
    .byte W02
    .byte FINE

.align 2
.global song_0AA @ 08589358
song_0AA:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0AA_track0           @ tracks 0x085892FC


@ ****************************** tracks ******************************
song_0AB_track0: @ 08589364
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 46
    .byte VOL, 127
    .byte N44, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0AB @ 08589374
song_0AB:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0AB_track0           @ tracks 0x08589364


@ ****************************** tracks ******************************
song_0AC_track0: @ 08589380
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 47
    .byte VOL, 127
    .byte N20, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0AC @ 08589390
song_0AC:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0AC_track0           @ tracks 0x08589380


@ ****************************** tracks ******************************
song_0AF_track0: @ 0858939C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 68
    .byte VOL, 127
    .byte N48, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0AF @ 085893AC
song_0AF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0AF_track0           @ tracks 0x0858939C


@ ****************************** tracks ******************************
song_0B0_track0: @ 085893B8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 69
    .byte VOL, 127
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0B0 @ 085893C8
song_0B0:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0B0_track0           @ tracks 0x085893B8


@ ****************************** tracks ******************************
song_0B1_track0: @ 085893D4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 70
    .byte VOL, 127
    .byte N20, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0B1 @ 085893E4
song_0B1:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0B1_track0           @ tracks 0x085893D4


@ ****************************** tracks ******************************
song_0B3_track0: @ 085893F0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 72
    .byte VOL, 127
    .byte N24, 52, 100
    .byte W24
    .byte VOICE, 73
    .byte W08
    .byte BENDR, 16
    .byte BEND, 64
    .byte N64, 62, 36
    .byte W03
    .byte BEND, 67
    .byte W03
    .byte 0x46
    .byte W03
    .byte 0x49
    .byte W03
    .byte 0x4C
    .byte W03
    .byte 0x4F
    .byte W01
    .byte W02
    .byte 0x53
    .byte W03
    .byte 0x56
    .byte W03
    .byte 0x59
    .byte W03
    .byte 0x5C
    .byte W03
    .byte 0x5F
    .byte W03
    .byte 0x63
    .byte W03
    .byte 0x66
    .byte W03
    .byte 0x69
    .byte W01
    .byte W02
    .byte 0x6C
    .byte W03
    .byte 0x6F
    .byte W03
    .byte 0x73
    .byte W03
    .byte 0x76
    .byte W03
    .byte 0x79
    .byte W03
    .byte 0x7C
    .byte W03
    .byte 0x7F
    .byte W04
    .byte FINE

song_0B3_track1: @ 08589433
    .byte KEYSH, 0
    .byte VOICE, 74
    .byte BENDR, 12
    .byte VOL, 127
    .byte W24
    .byte W08
    .byte BEND, 64
    .byte N64, 96, 20
    .byte W03
    .byte BEND, 67
    .byte W03
    .byte 0x46
    .byte W03
    .byte 0x49
    .byte W03
    .byte 0x4C
    .byte W03
    .byte 0x4F
    .byte W01
    .byte W02
    .byte 0x53
    .byte W03
    .byte 0x56
    .byte W03
    .byte 0x59
    .byte W03
    .byte 0x5C
    .byte W03
    .byte 0x5F
    .byte W03
    .byte 0x63
    .byte W03
    .byte 0x66
    .byte W03
    .byte 0x69
    .byte W01
    .byte W02
    .byte 0x6C
    .byte W03
    .byte 0x6F
    .byte W03
    .byte 0x73
    .byte W03
    .byte 0x76
    .byte W03
    .byte 0x79
    .byte W03
    .byte 0x7C
    .byte W03
    .byte 0x7F
    .byte W04
    .byte FINE

.align 2
.global song_0B3 @ 08589470
song_0B3:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0B3_track0           @ tracks 0x085893F0
    .word song_0B3_track1           @ tracks 0x08589433


@ ****************************** tracks ******************************
song_0B4_track0: @ 08589480
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 78
    .byte VOL, 127
    .byte N84, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0B4 @ 08589490
song_0B4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0B4_track0           @ tracks 0x08589480


@ ****************************** tracks ******************************
song_0B5_track0: @ 0858949C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 79
    .byte VOL, 127
    .byte W04
    .byte N44, 60, 127
    .byte W20
    .byte W24
    .byte FINE

.align 2
.global song_0B5 @ 085894AC
song_0B5:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0B5_track0           @ tracks 0x0858949C


@ ****************************** tracks ******************************
song_0B6_track0: @ 085894B8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 75
    .byte VOL, 127
    .byte N60, 62, 127
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0B6 @ 085894C8
song_0B6:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0B6_track0           @ tracks 0x085894B8


@ ****************************** tracks ******************************
song_0B7_track0: @ 085894D4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 77
    .byte VOL, 127
    .byte N48, 62, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0B7 @ 085894E4
song_0B7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0B7_track0           @ tracks 0x085894D4


@ ****************************** tracks ******************************
song_0B8_track0: @ 085894F0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 82
    .byte VOL, 80
    .byte N01, 49, 127
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x39
    .byte W02
    .byte 0x32
    .byte W02
    .byte 0x39
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x34
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x34
    .byte 0x48
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x34
    .byte 0x28
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x3C
    .byte W14
    .byte FINE

song_0B8_track1: @ 08589521
    .byte KEYSH, 0
    .byte VOICE, 83
    .byte BENDR, 12
    .byte VOL, 70
    .byte BEND, 64
    .byte N36, 53, 127
    .byte W01
    .byte BEND, 32
    .byte W01
    .byte VOL, 55
    .byte BEND, 64
    .byte W01
    .byte 0x20
    .byte W01
    .byte VOL, 40
    .byte BEND, 64
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x22
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x23
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x26
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x28
    .byte W01
    .byte 0x4B
    .byte W01
    .byte 0x2B
    .byte W01
    .byte 0x4F
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x33
    .byte W01
    .byte 0x58
    .byte W01
    .byte 0x38
    .byte W01
    .byte 0x61
    .byte W01
    .byte 0x41
    .byte W01
    .byte VOL, 36
    .byte BEND, 106
    .byte W01
    .byte 0x4A
    .byte W01
    .byte 0x71
    .byte W01
    .byte 0x51
    .byte W01
    .byte VOL, 32
    .byte BEND, 119
    .byte W01
    .byte 0x57
    .byte W01
    .byte 0x7B
    .byte W01
    .byte 0x5B
    .byte W01
    .byte VOL, 28
    .byte BEND, 126
    .byte W01
    .byte 0x5E
    .byte W01
    .byte VOL, 24
    .byte BEND, 127
    .byte W01
    .byte 0x5F
    .byte W13
    .byte FINE

.align 2
.global song_0B8 @ 0858958C
song_0B8:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0B8_track0           @ tracks 0x085894F0
    .word song_0B8_track1           @ tracks 0x08589521


@ ****************************** tracks ******************************
song_0B9_track0: @ 0858959C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 76
    .byte VOL, 127
    .byte N48, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0B9 @ 085895AC
song_0B9:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0B9_track0           @ tracks 0x0858959C


@ ****************************** tracks ******************************
song_0BA_track0: @ 085895B8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 49
    .byte VOL, 127
    .byte N12, 51, 127
    .byte W20
    .byte N40, 58
    .byte W04
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0BA @ 085895CC
song_0BA:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0BA_track0           @ tracks 0x085895B8


@ ****************************** tracks ******************************
song_0BB_track0: @ 085895D8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 84
    .byte BENDR, 6
    .byte VOL, 60
    .byte BEND, 0
    .byte N12, 60, 127
    .byte W01
    .byte VOL, 80
    .byte BEND, 11
    .byte W01
    .byte VOL, 100
    .byte BEND, 23
    .byte W01
    .byte VOL, 127
    .byte BEND, 34
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x3A
    .byte W01
    .byte VOL, 110
    .byte BEND, 69
    .byte W01
    .byte VOL, 90
    .byte BEND, 81
    .byte W01
    .byte VOL, 70
    .byte BEND, 93
    .byte W01
    .byte VOL, 50
    .byte BEND, 104
    .byte W01
    .byte VOL, 40
    .byte BEND, 116
    .byte W01
    .byte VOL, 30
    .byte BEND, 127
    .byte W13
    .byte FINE

.align 2
.global song_0BB @ 0858961C
song_0BB:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0BB_track0           @ tracks 0x085895D8


@ ****************************** tracks ******************************
song_0BC_track0: @ 08589628
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 25
    .byte VOL, 127
    .byte N40, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0BC @ 08589638
song_0BC:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0BC_track0           @ tracks 0x08589628


@ ****************************** tracks ******************************
song_0BD_track0: @ 08589644
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 22
    .byte VOL, 127
    .byte BENDR, 4
    .byte BEND, 119
    .byte N08, 60, 127
    .byte W08
    .byte BEND, 109
    .byte N08, 60, 80
    .byte W08
    .byte BEND, 98
    .byte N07, 60, 68
    .byte W07
    .byte BEND, 89
    .byte N07, 60, 56
    .byte W01
    .byte W06
    .byte BEND, 80
    .byte N06, 60, 44
    .byte W06
    .byte BEND, 72
    .byte N06, 60, 32
    .byte W06
    .byte BEND, 64
    .byte N14, 60, 20
    .byte W06
    .byte W24
    .byte FINE

.align 2
.global song_0BD @ 0858967C
song_0BD:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0BD_track0           @ tracks 0x08589644


@ ****************************** tracks ******************************
song_0BE_track0: @ 08589688
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 22
    .byte VOL, 127
    .byte BENDR, 4
    .byte BEND, 64
    .byte N08, 60, 127
    .byte W08
    .byte BEND, 74
    .byte N08, 60, 80
    .byte W08
    .byte BEND, 85
    .byte N07, 60, 68
    .byte W07
    .byte BEND, 94
    .byte N07, 60, 56
    .byte W01
    .byte W06
    .byte BEND, 103
    .byte N06, 60, 44
    .byte W06
    .byte BEND, 111
    .byte N06, 60, 32
    .byte W06
    .byte BEND, 119
    .byte N10, 60, 20
    .byte W06
    .byte W24
    .byte FINE

.align 2
.global song_0BE @ 085896C0
song_0BE:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0BE_track0           @ tracks 0x08589688


@ ****************************** tracks ******************************
song_0BF_track0: @ 085896CC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 49
    .byte VOL, 120
    .byte BENDR, 6
    .byte BEND, 64
    .byte N24, 60, 127
    .byte W01
    .byte BEND, 71
    .byte W01
    .byte 0x4F
    .byte W01
    .byte 0x57
    .byte W01
    .byte 0x5F
    .byte W01
    .byte 0x67
    .byte W01
    .byte 0x6F
    .byte W01
    .byte 0x77
    .byte W01
    .byte 0x7F
    .byte W16
    .byte FINE

.align 2
.global song_0BF @ 085896F0
song_0BF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0BF_track0           @ tracks 0x085896CC


@ ****************************** tracks ******************************
song_0C4_track0: @ 085896FC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 80
    .byte BENDR, 5
    .byte VOL, 20
    .byte TIE, 60, 127
    .byte W06
    .byte VOL, 29
    .byte W06
    .byte 0x27
    .byte W06
    .byte 0x31
    .byte W06
    .byte 0x3A
    .byte W06
    .byte 0x44
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x57
    .byte W06
    .byte 0x61
    .byte W06
    .byte 0x6B
    .byte W06
    .byte 0x75
    .byte W06
    .byte 0x7F
    .byte W30
label_song_0C4_track0_0:
    .byte W96
    .byte BEND, 64
    .byte W04
    .byte 0x42
    .byte W04
    .byte 0x45
    .byte W04
    .byte 0x48
    .byte W04
    .byte 0x4B
    .byte W04
    .byte 0x4E
    .byte W04
    .byte 0x51
    .byte W04
    .byte 0x54
    .byte W04
    .byte 0x57
    .byte W04
    .byte 0x5A
    .byte W04
    .byte 0x5D
    .byte W04
    .byte 0x5F
    .byte W04
    .byte 0x62
    .byte W04
    .byte 0x65
    .byte W04
    .byte 0x68
    .byte W04
    .byte 0x6B
    .byte W04
    .byte 0x6E
    .byte W04
    .byte 0x71
    .byte W04
    .byte 0x74
    .byte W04
    .byte 0x77
    .byte W04
    .byte 0x7A
    .byte W04
    .byte 0x7D
    .byte W04
    .byte 0x7F
    .byte W08
    .byte W48
    .byte 0x7F
    .byte W04
    .byte 0x7E
    .byte W04
    .byte 0x7C
    .byte W04
    .byte 0x7A
    .byte W04
    .byte 0x78
    .byte W04
    .byte 0x76
    .byte W04
    .byte 0x74
    .byte W04
    .byte 0x72
    .byte W04
    .byte 0x70
    .byte W04
    .byte 0x6E
    .byte W04
    .byte 0x6C
    .byte W04
    .byte 0x6A
    .byte W04
    .byte 0x68
    .byte W04
    .byte 0x66
    .byte W04
    .byte 0x64
    .byte W04
    .byte 0x62
    .byte W04
    .byte 0x60
    .byte W04
    .byte 0x5F
    .byte W04
    .byte 0x5D
    .byte W04
    .byte 0x5B
    .byte W04
    .byte 0x59
    .byte W04
    .byte 0x57
    .byte W04
    .byte 0x55
    .byte W04
    .byte 0x53
    .byte W04
    .byte 0x51
    .byte W04
    .byte 0x4F
    .byte W04
    .byte 0x4D
    .byte W04
    .byte 0x4B
    .byte W04
    .byte 0x49
    .byte W04
    .byte 0x47
    .byte W04
    .byte 0x45
    .byte W04
    .byte 0x43
    .byte W04
    .byte 0x41
    .byte W04
    .byte 0x40
    .byte W12
    .byte W96
    .byte 0x40
    .byte W04
    .byte 0x3F
    .byte W04
    .byte 0x3E
    .byte W04
    .byte 0x3D
    .byte W04
    .byte 0x3D
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x3B
    .byte W04
    .byte 0x3A
    .byte W04
    .byte 0x3A
    .byte W04
    .byte 0x39
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x37
    .byte W04
    .byte 0x36
    .byte W04
    .byte 0x35
    .byte W04
    .byte 0x35
    .byte W04
    .byte 0x34
    .byte W04
    .byte 0x33
    .byte W04
    .byte 0x32
    .byte W04
    .byte 0x32
    .byte W04
    .byte 0x31
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x31
    .byte W04
    .byte 0x32
    .byte W04
    .byte 0x33
    .byte W04
    .byte 0x34
    .byte W04
    .byte 0x35
    .byte W04
    .byte 0x36
    .byte W04
    .byte 0x37
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x39
    .byte W04
    .byte 0x3A
    .byte W04
    .byte 0x3B
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x3D
    .byte W04
    .byte 0x3E
    .byte W04
    .byte 0x3F
    .byte W04
    .byte 0x41
    .byte W04
    .byte 0x42
    .byte W04
    .byte 0x43
    .byte W04
    .byte 0x44
    .byte W04
    .byte 0x45
    .byte W04
    .byte 0x46
    .byte W04
    .byte 0x47
    .byte W04
    .byte 0x48
    .byte W04
    .byte 0x49
    .byte W04
    .byte 0x4A
    .byte W04
    .byte 0x4B
    .byte W04
    .byte 0x4C
    .byte W04
    .byte 0x4D
    .byte W04
    .byte 0x4E
    .byte W04
    .byte 0x4F
    .byte W04
    .byte 0x51
    .byte W04
    .byte 0x52
    .byte W04
    .byte 0x53
    .byte W04
    .byte 0x54
    .byte W04
    .byte 0x55
    .byte W04
    .byte 0x56
    .byte W04
    .byte 0x57
    .byte W04
    .byte 0x58
    .byte W04
    .byte 0x59
    .byte W04
    .byte 0x5A
    .byte W04
    .byte 0x5B
    .byte W04
    .byte 0x5C
    .byte W04
    .byte 0x5D
    .byte W04
    .byte 0x5E
    .byte W04
    .byte 0x60
    .byte W20
    .byte W48
    .byte 0x60
    .byte W06
    .byte 0x5F
    .byte W06
    .byte 0x5E
    .byte W06
    .byte 0x5D
    .byte W06
    .byte 0x5C
    .byte W06
    .byte 0x5C
    .byte W06
    .byte 0x5B
    .byte W06
    .byte 0x5A
    .byte W06
    .byte 0x59
    .byte W06
    .byte 0x58
    .byte W06
    .byte 0x58
    .byte W06
    .byte 0x57
    .byte W06
    .byte 0x56
    .byte W06
    .byte 0x55
    .byte W06
    .byte 0x55
    .byte W06
    .byte 0x54
    .byte W06
    .byte 0x53
    .byte W06
    .byte 0x52
    .byte W06
    .byte 0x51
    .byte W06
    .byte 0x51
    .byte W06
    .byte 0x50
    .byte W06
    .byte 0x4F
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x4D
    .byte W06
    .byte 0x4C
    .byte W06
    .byte 0x4B
    .byte W06
    .byte 0x4A
    .byte W06
    .byte 0x4A
    .byte W06
    .byte 0x49
    .byte W06
    .byte 0x48
    .byte W06
    .byte 0x47
    .byte W06
    .byte 0x47
    .byte W06
    .byte 0x46
    .byte W06
    .byte 0x45
    .byte W06
    .byte 0x44
    .byte W06
    .byte 0x43
    .byte W06
    .byte 0x43
    .byte W06
    .byte 0x42
    .byte W06
    .byte 0x41
    .byte W06
    .byte 0x40
    .byte W06
    .byte 0x40
    .byte W90
    .byte 0x40
    .byte W05
    .byte 0x3E
    .byte W05
    .byte 0x3D
    .byte W05
    .byte 0x3C
    .byte W05
    .byte 0x3B
    .byte W05
    .byte 0x3A
    .byte W05
    .byte 0x38
    .byte W05
    .byte 0x37
    .byte W05
    .byte 0x36
    .byte W05
    .byte 0x35
    .byte W05
    .byte 0x34
    .byte W05
    .byte 0x32
    .byte W05
    .byte 0x31
    .byte W05
    .byte 0x30
    .byte W05
    .byte 0x2F
    .byte W05
    .byte 0x2E
    .byte W05
    .byte 0x2C
    .byte W05
    .byte 0x2B
    .byte W05
    .byte 0x2A
    .byte W05
    .byte 0x29
    .byte W01
    .byte W04
    .byte 0x28
    .byte W44
    .byte 0x28
    .byte W05
    .byte 0x2B
    .byte W05
    .byte 0x2F
    .byte W05
    .byte 0x32
    .byte W05
    .byte 0x36
    .byte W05
    .byte 0x39
    .byte W05
    .byte 0x3D
    .byte W05
    .byte 0x41
    .byte W05
    .byte 0x44
    .byte W05
    .byte 0x48
    .byte W03
    .byte W02
    .byte 0x4B
    .byte W05
    .byte 0x4F
    .byte W05
    .byte 0x53
    .byte W05
    .byte 0x56
    .byte W05
    .byte 0x5A
    .byte W05
    .byte 0x5D
    .byte W05
    .byte 0x61
    .byte W05
    .byte 0x65
    .byte W05
    .byte 0x68
    .byte W05
    .byte 0x6C
    .byte W05
    .byte 0x70
    .byte W44
    .byte W48
    .byte 0x70
    .byte W06
    .byte 0x6E
    .byte W06
    .byte 0x6C
    .byte W06
    .byte 0x6B
    .byte W06
    .byte 0x69
    .byte W06
    .byte 0x68
    .byte W06
    .byte 0x66
    .byte W06
    .byte 0x64
    .byte W06
    .byte 0x63
    .byte W06
    .byte 0x61
    .byte W06
    .byte 0x60
    .byte W06
    .byte 0x5E
    .byte W06
    .byte 0x5C
    .byte W06
    .byte 0x5B
    .byte W06
    .byte 0x59
    .byte W06
    .byte 0x58
    .byte W06
    .byte 0x56
    .byte W06
    .byte 0x54
    .byte W06
    .byte 0x53
    .byte W06
    .byte 0x51
    .byte W06
    .byte 0x50
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x4C
    .byte W06
    .byte 0x4B
    .byte W06
    .byte 0x49
    .byte W06
    .byte 0x48
    .byte W06
    .byte 0x46
    .byte W06
    .byte 0x44
    .byte W06
    .byte 0x43
    .byte W06
    .byte 0x41
    .byte W06
    .byte 0x40
    .byte W60
    .byte W72
    .byte GOTO
    .word label_song_0C4_track0_0
    .byte W12
    .byte EOT, 60
    .byte W12
    .byte FINE

.align 2
.global song_0C4 @ 08589914
song_0C4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0C4_track0           @ tracks 0x085896FC


@ ****************************** tracks ******************************
song_0C5_track0: @ 08589920
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 80
    .byte BENDR, 5
    .byte VOL, 20
    .byte TIE, 60, 100
    .byte W06
    .byte VOL, 29
    .byte W06
    .byte 0x27
    .byte W06
    .byte 0x31
    .byte W06
    .byte 0x3A
    .byte W06
    .byte 0x44
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x57
    .byte W06
label_song_0C5_track0_0:
    .byte VOL, 97
    .byte W06
    .byte 0x6B
    .byte W06
    .byte 0x75
    .byte W06
    .byte 0x7F
    .byte W30
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte GOTO
    .word label_song_0C5_track0_0
    .byte W44
    .byte W03
    .byte EOT, 60
    .byte W48
    .byte W01
    .byte FINE

song_0C5_track1: @ 08589961
    .byte KEYSH, 0
    .byte VOICE, 80
    .byte BENDR, 5
    .byte PAN, 32
    .byte W48
label_song_0C5_track1_0:
    .byte W24
    .byte VOL, 32
    .byte BEND, 64
    .byte TIE, 60, 127
    .byte W04
    .byte VOL, 39
    .byte W04
    .byte 0x2F
    .byte BEND, 67
    .byte W04
    .byte VOL, 55
    .byte W04
    .byte 0x3F
    .byte BEND, 71
    .byte W04
    .byte VOL, 71
    .byte W04
    .byte 0x4F
    .byte BEND, 75
    .byte W04
    .byte VOL, 87
    .byte W04
    .byte 0x5F
    .byte BEND, 79
    .byte W04
    .byte VOL, 103
    .byte W04
    .byte 0x6F
    .byte BEND, 83
    .byte W04
    .byte VOL, 119
    .byte W04
    .byte 0x7F
    .byte BEND, 87
    .byte W08
    .byte 0x5B
    .byte W08
    .byte 0x5F
    .byte W08
    .byte 0x63
    .byte W08
    .byte 0x67
    .byte W08
    .byte 0x6B
    .byte W08
    .byte 0x70
    .byte W24
    .byte W36
    .byte 0x70
    .byte W08
    .byte 0x6B
    .byte W04
    .byte VOL, 127
    .byte W04
    .byte BEND, 103
    .byte W04
    .byte VOL, 117
    .byte W04
    .byte BEND, 98
    .byte W04
    .byte VOL, 108
    .byte W04
    .byte BEND, 94
    .byte W04
    .byte VOL, 99
    .byte W04
    .byte BEND, 89
    .byte W04
    .byte VOL, 90
    .byte W04
    .byte BEND, 85
    .byte W04
    .byte VOL, 80
    .byte W04
    .byte BEND, 80
    .byte W04
    .byte VOL, 71
    .byte W04
    .byte BEND, 76
    .byte W04
    .byte VOL, 62
    .byte W04
    .byte BEND, 72
    .byte W04
    .byte VOL, 53
    .byte W08
    .byte 0x2B
    .byte W08
    .byte 0x22
    .byte W08
    .byte 0x19
    .byte W08
    .byte 0x10
    .byte W04
    .byte 0x00
    .byte W36
    .byte 0x0A
    .byte BEND, 80
    .byte W02
    .byte 0x5B
    .byte W02
    .byte VOL, 25
    .byte BEND, 103
    .byte W02
    .byte 0x73
    .byte W02
    .byte PAN, 16
    .byte VOL, 40
    .byte BEND, 127
    .byte W04
    .byte VOL, 55
    .byte W04
    .byte 0x46
    .byte BEND, 122
    .byte W04
    .byte VOL, 85
    .byte W04
    .byte 0x64
    .byte BEND, 117
    .byte W08
    .byte 0x6F
    .byte W08
    .byte 0x6A
    .byte W08
    .byte 0x65
    .byte W06
    .byte VOL, 96
    .byte W02
    .byte BEND, 96
    .byte W03
    .byte VOL, 91
    .byte W05
    .byte 0x56
    .byte BEND, 90
    .byte W05
    .byte VOL, 81
    .byte W03
    .byte BEND, 85
    .byte W02
    .byte VOL, 76
    .byte W05
    .byte 0x48
    .byte W01
    .byte BEND, 80
    .byte W04
    .byte VOL, 67
    .byte W04
    .byte BEND, 74
    .byte W01
    .byte VOL, 62
    .byte W05
    .byte 0x38
    .byte W02
    .byte BEND, 69
    .byte W03
    .byte VOL, 50
    .byte W05
    .byte 0x28
    .byte BEND, 64
    .byte W02
    .byte VOL, 30
    .byte W01
    .byte BEND, 64
    .byte W01
    .byte VOL, 20
    .byte W02
    .byte 0x0A
    .byte W02
    .byte 0x00
    .byte W16
    .byte 0x10
    .byte PAN, 48
    .byte W08
    .byte VOL, 32
    .byte W08
    .byte 0x30
    .byte W08
    .byte 0x38
    .byte W12
    .byte 0x40
    .byte W12
    .byte 0x48
    .byte W13
    .byte 0x50
    .byte W11
    .byte BEND, 64
    .byte W03
    .byte VOL, 88
    .byte W05
    .byte BEND, 62
    .byte W08
    .byte 0x3C
    .byte W08
    .byte 0x3A
    .byte W01
    .byte VOL, 96
    .byte W07
    .byte BEND, 56
    .byte W08
    .byte 0x36
    .byte W08
    .byte VOL, 104
    .byte BEND, 52
    .byte W08
    .byte 0x32
    .byte W08
    .byte 0x30
    .byte W08
    .byte VOL, 112
    .byte BEND, 46
    .byte W08
    .byte 0x2C
    .byte W08
    .byte 0x2A
    .byte W08
    .byte VOL, 120
    .byte BEND, 40
    .byte W24
    .byte 0x28
    .byte W04
    .byte 0x2B
    .byte W04
    .byte 0x2E
    .byte W04
    .byte VOL, 112
    .byte BEND, 49
    .byte W04
    .byte 0x35
    .byte W04
    .byte 0x38
    .byte W04
    .byte VOL, 104
    .byte BEND, 59
    .byte W04
    .byte 0x3F
    .byte W04
    .byte 0x42
    .byte W04
    .byte VOL, 96
    .byte BEND, 69
    .byte W04
    .byte 0x49
    .byte W04
    .byte 0x4C
    .byte W04
    .byte VOL, 88
    .byte BEND, 80
    .byte W12
    .byte VOL, 80
    .byte W12
    .byte 0x48
    .byte W12
    .byte 0x40
    .byte W12
    .byte 0x38
    .byte W12
    .byte 0x30
    .byte W12
    .byte 0x28
    .byte W12
    .byte 0x20
    .byte W12
    .byte 0x18
    .byte W06
    .byte 0x14
    .byte W05
    .byte 0x0A
    .byte W04
    .byte 0x00
    .byte W09
    .byte W72
    .byte 0x14
    .byte PAN, 4
    .byte BEND, 40
    .byte W08
    .byte VOL, 30
    .byte BEND, 45
    .byte W08
    .byte VOL, 40
    .byte BEND, 51
    .byte W08
    .byte VOL, 50
    .byte BEND, 57
    .byte W08
    .byte VOL, 60
    .byte BEND, 63
    .byte W08
    .byte VOL, 70
    .byte BEND, 69
    .byte W08
    .byte VOL, 80
    .byte BEND, 75
    .byte W08
    .byte VOL, 90
    .byte BEND, 81
    .byte W08
    .byte VOL, 100
    .byte BEND, 87
    .byte W08
    .byte VOL, 110
    .byte BEND, 93
    .byte W08
    .byte VOL, 120
    .byte BEND, 99
    .byte W08
    .byte 0x69
    .byte W08
    .byte 0x70
    .byte W24
    .byte 0x70
    .byte W08
    .byte 0x6C
    .byte W08
    .byte 0x69
    .byte W08
    .byte VOL, 112
    .byte BEND, 102
    .byte W08
    .byte 0x63
    .byte W04
    .byte VOL, 104
    .byte W04
    .byte BEND, 96
    .byte W08
    .byte VOL, 96
    .byte BEND, 92
    .byte W08
    .byte 0x59
    .byte W04
    .byte VOL, 88
    .byte W04
    .byte BEND, 86
    .byte W08
    .byte VOL, 80
    .byte BEND, 83
    .byte W08
    .byte 0x50
    .byte W04
    .byte VOL, 72
    .byte W04
    .byte BEND, 76
    .byte W08
    .byte VOL, 64
    .byte BEND, 73
    .byte W08
    .byte 0x46
    .byte W04
    .byte VOL, 56
    .byte W04
    .byte BEND, 67
    .byte W08
    .byte VOL, 48
    .byte BEND, 64
    .byte W12
    .byte VOL, 40
    .byte W12
    .byte 0x20
    .byte W12
    .byte 0x18
    .byte W12
    .byte 0x0E
    .byte W12
    .byte 0x00
    .byte W12
    .byte W96
    .byte 0x30
    .byte PAN, 40
    .byte BEND, 64
    .byte W05
    .byte 0x45
    .byte W03
    .byte VOL, 56
    .byte W02
    .byte BEND, 75
    .byte W05
    .byte 0x50
    .byte W01
    .byte VOL, 64
    .byte W04
    .byte BEND, 86
    .byte W04
    .byte VOL, 72
    .byte W01
    .byte BEND, 91
    .byte W05
    .byte 0x61
    .byte W02
    .byte VOL, 80
    .byte W03
    .byte BEND, 103
    .byte W05
    .byte VOL, 88
    .byte BEND, 108
    .byte W05
    .byte 0x72
    .byte W03
    .byte VOL, 98
    .byte W02
    .byte BEND, 120
    .byte W05
    .byte VOL, 106
    .byte W07
    .byte 0x74
    .byte W07
    .byte 0x7F
    .byte W19
    .byte BEND, 120
    .byte W08
    .byte VOL, 120
    .byte BEND, 115
    .byte W08
    .byte VOL, 112
    .byte BEND, 110
    .byte W08
    .byte VOL, 104
    .byte BEND, 106
    .byte W08
    .byte VOL, 96
    .byte BEND, 101
    .byte W08
    .byte VOL, 88
    .byte BEND, 96
    .byte W08
    .byte VOL, 80
    .byte BEND, 92
    .byte W08
    .byte VOL, 72
    .byte BEND, 87
    .byte W08
    .byte VOL, 64
    .byte BEND, 82
    .byte W08
    .byte VOL, 54
    .byte BEND, 78
    .byte W07
    .byte VOL, 48
    .byte W01
    .byte BEND, 73
    .byte W04
    .byte VOL, 40
    .byte W04
    .byte BEND, 68
    .byte W01
    .byte VOL, 30
    .byte W04
    .byte 0x14
    .byte W03
    .byte 0x00
    .byte BEND, 64
    .byte W03
    .byte EOT
    .byte W05
    .byte GOTO
    .word label_song_0C5_track1_0
    .byte W96
    .byte FINE

song_0C5_track2: @ 08589BD8
    .byte KEYSH, 0
    .byte VOICE, 80
    .byte BENDR, 5
    .byte PAN, 84
    .byte W48
label_song_0C5_track2_0:
    .byte W12
    .byte VOL, 20
    .byte BEND, 76
    .byte TIE, 60, 127
    .byte W04
    .byte VOL, 25
    .byte BEND, 80
    .byte W04
    .byte VOL, 30
    .byte W04
    .byte 0x23
    .byte BEND, 82
    .byte W04
    .byte VOL, 40
    .byte W04
    .byte 0x2D
    .byte BEND, 85
    .byte W04
    .byte VOL, 50
    .byte W04
    .byte 0x37
    .byte BEND, 87
    .byte W04
    .byte VOL, 60
    .byte W04
    .byte 0x41
    .byte BEND, 90
    .byte W04
    .byte VOL, 70
    .byte W04
    .byte 0x4B
    .byte BEND, 93
    .byte W04
    .byte VOL, 80
    .byte W04
    .byte BEND, 96
    .byte W32
    .byte VOL, 72
    .byte W08
    .byte 0x40
    .byte W08
    .byte 0x38
    .byte W08
    .byte 0x30
    .byte W08
    .byte 0x28
    .byte W08
    .byte 0x20
    .byte W08
    .byte 0x18
    .byte W08
    .byte 0x10
    .byte W08
    .byte xIECV
    .byte W08
    .byte 0x00
    .byte W08
    .byte BEND, 92
    .byte W08
    .byte 0x5A
    .byte W08
    .byte VOL, 20
    .byte PAN, 114
    .byte BEND, 88
    .byte W06
    .byte VOL, 30
    .byte W02
    .byte BEND, 86
    .byte W04
    .byte VOL, 40
    .byte W04
    .byte BEND, 85
    .byte W02
    .byte VOL, 50
    .byte W06
    .byte 0x3C
    .byte BEND, 84
    .byte W06
    .byte VOL, 70
    .byte W02
    .byte BEND, 83
    .byte W04
    .byte VOL, 80
    .byte W04
    .byte BEND, 82
    .byte W02
    .byte VOL, 90
    .byte W06
    .byte BEND, 81
    .byte W08
    .byte 0x50
    .byte W08
    .byte 0x4F
    .byte W08
    .byte 0x4E
    .byte W08
    .byte 0x4D
    .byte W08
    .byte 0x4C
    .byte W08
    .byte VOL, 90
    .byte BEND, 75
    .byte W06
    .byte VOL, 83
    .byte W02
    .byte BEND, 74
    .byte W04
    .byte VOL, 77
    .byte W04
    .byte BEND, 73
    .byte W02
    .byte VOL, 71
    .byte W06
    .byte 0x41
    .byte BEND, 72
    .byte W06
    .byte VOL, 59
    .byte W02
    .byte BEND, 71
    .byte W04
    .byte VOL, 53
    .byte W04
    .byte BEND, 70
    .byte W02
    .byte VOL, 47
    .byte W06
    .byte 0x29
    .byte BEND, 69
    .byte W06
    .byte VOL, 35
    .byte W02
    .byte BEND, 68
    .byte W04
    .byte VOL, 29
    .byte W04
    .byte BEND, 67
    .byte W02
    .byte VOL, 23
    .byte W06
    .byte 0x11
    .byte BEND, 66
    .byte W06
    .byte VOL, 11
    .byte W02
    .byte BEND, 65
    .byte W04
    .byte VOL, 5
    .byte W04
    .byte BEND, 64
    .byte W02
    .byte VOL, 0
    .byte W42
    .byte 0x14
    .byte PAN, 94
    .byte BEND, 72
    .byte W04
    .byte VOL, 37
    .byte BEND, 76
    .byte W04
    .byte VOL, 55
    .byte BEND, 80
    .byte W04
    .byte VOL, 73
    .byte BEND, 85
    .byte W04
    .byte VOL, 91
    .byte BEND, 89
    .byte W04
    .byte VOL, 109
    .byte BEND, 94
    .byte W04
    .byte VOL, 127
    .byte BEND, 98
    .byte W04
    .byte 0x67
    .byte W04
    .byte 0x6B
    .byte W04
    .byte 0x70
    .byte W24
    .byte 0x70
    .byte W08
    .byte 0x6A
    .byte W08
    .byte 0x65
    .byte W08
    .byte VOL, 127
    .byte BEND, 96
    .byte W04
    .byte VOL, 119
    .byte W04
    .byte 0x70
    .byte BEND, 90
    .byte W04
    .byte VOL, 105
    .byte W04
    .byte 0x62
    .byte BEND, 85
    .byte W04
    .byte VOL, 91
    .byte W04
    .byte 0x54
    .byte BEND, 80
    .byte W04
    .byte VOL, 77
    .byte W04
    .byte 0x46
    .byte BEND, 74
    .byte W04
    .byte VOL, 63
    .byte W04
    .byte 0x38
    .byte BEND, 69
    .byte W04
    .byte VOL, 49
    .byte W04
    .byte 0x2A
    .byte BEND, 64
    .byte W04
    .byte VOL, 35
    .byte W04
    .byte 0x1C
    .byte BEND, 58
    .byte W04
    .byte VOL, 21
    .byte W04
    .byte 0x0E
    .byte BEND, 53
    .byte W04
    .byte VOL, 7
    .byte W04
    .byte 0x00
    .byte BEND, 48
    .byte W48
    .byte VOL, 20
    .byte PAN, 124
    .byte BEND, 72
    .byte W04
    .byte VOL, 30
    .byte W04
    .byte 0x28
    .byte BEND, 73
    .byte W04
    .byte VOL, 50
    .byte W04
    .byte 0x3C
    .byte BEND, 74
    .byte W04
    .byte VOL, 70
    .byte W04
    .byte 0x50
    .byte BEND, 75
    .byte W08
    .byte 0x4D
    .byte W08
    .byte 0x4E
    .byte W08
    .byte 0x4F
    .byte W08
    .byte 0x51
    .byte W08
    .byte 0x52
    .byte W08
    .byte 0x53
    .byte W08
    .byte 0x55
    .byte W08
    .byte 0x56
    .byte W08
    .byte 0x58
    .byte W48
    .byte VOL, 80
    .byte BEND, 88
    .byte W04
    .byte 0x5B
    .byte W04
    .byte VOL, 86
    .byte BEND, 94
    .byte W04
    .byte 0x61
    .byte W04
    .byte VOL, 93
    .byte BEND, 101
    .byte W04
    .byte 0x68
    .byte W04
    .byte VOL, 99
    .byte BEND, 107
    .byte W04
    .byte 0x6F
    .byte W04
    .byte VOL, 106
    .byte BEND, 114
    .byte W04
    .byte 0x75
    .byte W04
    .byte VOL, 113
    .byte BEND, 121
    .byte W04
    .byte 0x7C
    .byte W04
    .byte VOL, 120
    .byte BEND, 127
    .byte W48
    .byte VOL, 114
    .byte BEND, 127
    .byte W08
    .byte VOL, 104
    .byte BEND, 123
    .byte W08
    .byte VOL, 95
    .byte BEND, 119
    .byte W08
    .byte VOL, 85
    .byte BEND, 115
    .byte W08
    .byte VOL, 76
    .byte BEND, 111
    .byte W08
    .byte VOL, 66
    .byte BEND, 107
    .byte W08
    .byte VOL, 57
    .byte BEND, 103
    .byte W08
    .byte VOL, 47
    .byte BEND, 99
    .byte W08
    .byte VOL, 38
    .byte BEND, 96
    .byte W08
    .byte VOL, 28
    .byte BEND, 92
    .byte W08
    .byte VOL, 19
    .byte BEND, 88
    .byte W08
    .byte VOL, 9
    .byte BEND, 84
    .byte W08
    .byte VOL, 0
    .byte BEND, 80
    .byte W48
    .byte VOL, 10
    .byte PAN, 104
    .byte W04
    .byte VOL, 19
    .byte W04
    .byte 0x1D
    .byte W04
    .byte 0x27
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x3A
    .byte W04
    .byte 0x44
    .byte W04
    .byte 0x4E
    .byte W04
    .byte 0x57
    .byte W04
    .byte 0x61
    .byte W04
    .byte 0x6B
    .byte W04
    .byte 0x75
    .byte W04
    .byte 0x7F
    .byte BEND, 80
    .byte W08
    .byte 0x52
    .byte W08
    .byte 0x55
    .byte W08
    .byte 0x57
    .byte W08
    .byte 0x5A
    .byte W08
    .byte 0x5D
    .byte W08
    .byte 0x60
    .byte W08
    .byte 0x5E
    .byte W08
    .byte 0x5C
    .byte W08
    .byte 0x5A
    .byte W08
    .byte 0x58
    .byte W08
    .byte 0x56
    .byte W08
    .byte 0x54
    .byte W08
    .byte 0x52
    .byte W08
    .byte 0x50
    .byte W08
    .byte 0x4E
    .byte W08
    .byte 0x4C
    .byte W08
    .byte 0x4A
    .byte W08
    .byte VOL, 122
    .byte BEND, 72
    .byte W07
    .byte VOL, 117
    .byte W08
    .byte 0x70
    .byte W08
    .byte 0x6B
    .byte W07
    .byte 0x66
    .byte W08
    .byte 0x61
    .byte W08
    .byte 0x5C
    .byte W07
    .byte 0x57
    .byte W08
    .byte 0x53
    .byte W08
    .byte 0x4E
    .byte W07
    .byte 0x49
    .byte W08
    .byte 0x44
    .byte W08
    .byte 0x3F
    .byte W04
    .byte W03
    .byte 0x3A
    .byte W08
    .byte 0x35
    .byte W08
    .byte 0x30
    .byte W07
    .byte 0x2C
    .byte W08
    .byte 0x27
    .byte W08
    .byte 0x22
    .byte W07
    .byte 0x1D
    .byte W08
    .byte 0x18
    .byte W08
    .byte 0x13
    .byte W07
    .byte 0x0E
    .byte W08
    .byte xIECL
    .byte W08
    .byte 0x05
    .byte W08
    .byte 0x00
    .byte W96
    .byte EOT
    .byte GOTO
    .word label_song_0C5_track2_0
    .byte W96
    .byte FINE

.align 2
.global song_0C5 @ 08589E4C
song_0C5:
@ ****************************** header ******************************
    .byte 0x03                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0C5_track0           @ tracks 0x08589920
    .word song_0C5_track1           @ tracks 0x08589961
    .word song_0C5_track2           @ tracks 0x08589BD8


@ ****************************** tracks ******************************
song_0C6_track0: @ 08589E60
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 23
    .byte BENDR, 1
    .byte PAN, 69
    .byte VOL, 127
    .byte BEND, 103
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W05
    .byte PAN, 39
    .byte BEND, 95
    .byte N02, 60, 92
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W03
    .byte PAN, 74
    .byte BEND, 87
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x70
    .byte W05
    .byte PAN, 37
    .byte BEND, 75
    .byte N02, 60, 72
    .byte W02
    .byte 0x3C
    .byte 0x60
    .byte W03
    .byte PAN, 69
    .byte VOL, 127
    .byte BEND, 87
    .byte N02, 60, 76
    .byte W02
    .byte 0x3C
    .byte 0x70
    .byte W06
    .byte PAN, 39
    .byte BEND, 99
    .byte N02, 60, 92
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W03
    .byte PAN, 74
    .byte BEND, 91
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W05
    .byte PAN, 37
    .byte BEND, 103
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W02
    .byte W03
    .byte PAN, 80
    .byte BEND, 95
    .byte N02, 60, 92
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W03
    .byte PAN, 44
    .byte BEND, 91
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W04
    .byte PAN, 59
    .byte BEND, 83
    .byte N02, 60, 92
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W05
    .byte PAN, 98
    .byte BEND, 79
    .byte N02, 60, 100
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W01
    .byte W03
    .byte PAN, 46
    .byte BEND, 87
    .byte N02, 60, 104
    .byte W02
    .byte 0x3C
    .byte 0x78
    .byte W03
    .byte PAN, 52
    .byte BEND, 83
    .byte N02, 60, 96
    .byte W02
    .byte 0x3C
    .byte 0x6C
    .byte W05
    .byte PAN, 102
    .byte BEND, 79
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x64
    .byte W03
    .byte PAN, 56
    .byte BEND, 71
    .byte N02, 60, 68
    .byte W02
    .byte 0x3C
    .byte 0x54
    .byte W02
    .byte W02
    .byte PAN, 80
    .byte BEND, 64
    .byte N02, 60, 44
    .byte W02
    .byte N03, 60, 60
    .byte W20
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

song_0C6_track1: @ 08589F2F
    .byte KEYSH, 0
    .byte VOICE, 23
    .byte BENDR, 1
    .byte VOL, 70
    .byte W01
    .byte PAN, 74
    .byte BEND, 79
    .byte N02, 60, 72
    .byte W02
    .byte 0x3C
    .byte 0x60
    .byte W06
    .byte PAN, 64
    .byte BEND, 103
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W05
    .byte PAN, 79
    .byte BEND, 95
    .byte N02, 60, 88
    .byte W02
    .byte 0x3C
    .byte 0x7C
    .byte W04
    .byte PAN, 49
    .byte BEND, 91
    .byte N02, 60, 76
    .byte W02
    .byte 0x3C
    .byte 0x68
    .byte W04
    .byte PAN, 74
    .byte BEND, 79
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x70
    .byte W06
    .byte PAN, 64
    .byte BEND, 103
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W05
    .byte PAN, 79
    .byte BEND, 95
    .byte N02, 60, 92
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W03
    .byte W01
    .byte PAN, 49
    .byte BEND, 91
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W04
    .byte PAN, 56
    .byte BEND, 103
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W04
    .byte PAN, 79
    .byte BEND, 95
    .byte N02, 60, 92
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W03
    .byte PAN, 64
    .byte BEND, 91
    .byte N02, 60, 80
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W04
    .byte PAN, 74
    .byte BEND, 83
    .byte N02, 60, 92
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W04
    .byte PAN, 44
    .byte BEND, 79
    .byte N02, 60, 100
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W03
    .byte PAN, 79
    .byte BEND, 87
    .byte N02, 60, 100
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W04
    .byte PAN, 36
    .byte BEND, 83
    .byte N02, 60, 96
    .byte W02
    .byte 0x3C
    .byte 0x74
    .byte W04
    .byte PAN, 54
    .byte BEND, 79
    .byte N02, 60, 88
    .byte W01
    .byte VOL, 100
    .byte W01
    .byte N02, 60, 108
    .byte W03
    .byte PAN, 56
    .byte BEND, 71
    .byte N02, 60, 96
    .byte W02
    .byte 0x3C
    .byte 0x70
    .byte W04
    .byte PAN, 44
    .byte BEND, 64
    .byte N02, 60, 88
    .byte W02
    .byte N03, 60, 112
    .byte W06
    .byte PAN, 44
    .byte BEND, 103
    .byte N02, 60, 92
    .byte W02
    .byte 0x3C
    .byte 0x6C
    .byte W04
    .byte W01
    .byte PAN, 79
    .byte BEND, 95
    .byte N02, 60, 100
    .byte W02
    .byte 0x3C
    .byte 0x78
    .byte W03
    .byte PAN, 47
    .byte BEND, 91
    .byte N02, 60, 88
    .byte W02
    .byte 0x3C
    .byte 0x70
    .byte W04
    .byte PAN, 64
    .byte BEND, 83
    .byte N02, 60, 104
    .byte W02
    .byte 0x3C
    .byte 0x78
    .byte W05
    .byte PAN, 89
    .byte BEND, 79
    .byte N02, 60, 100
    .byte W02
    .byte 0x3C
    .byte 0x74
    .byte W03
    .byte W01
    .byte PAN, 49
    .byte BEND, 87
    .byte N02, 60, 92
    .byte W02
    .byte 0x3C
    .byte 0x74
    .byte W03
    .byte PAN, 54
    .byte BEND, 83
    .byte N02, 60, 76
    .byte W02
    .byte 0x3C
    .byte 0x64
    .byte W05
    .byte PAN, 94
    .byte BEND, 79
    .byte N02, 60, 64
    .byte W02
    .byte 0x3C
    .byte 0x54
    .byte W03
    .byte PAN, 59
    .byte BEND, 71
    .byte N02, 60, 52
    .byte W02
    .byte 0x3C
    .byte 0x48
    .byte W04
    .byte PAN, 79
    .byte BEND, 64
    .byte N02, 60, 40
    .byte W02
    .byte N03, 60, 56
    .byte W22
    .byte FINE

.align 2
.global song_0C6 @ 0858A078
song_0C6:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0C6_track0           @ tracks 0x08589E60
    .word song_0C6_track1           @ tracks 0x08589F2F


@ ****************************** tracks ******************************
song_0C7_track0: @ 0858A088
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 86
    .byte BENDR, 6
    .byte VOL, 12
    .byte TIE, 58, 127
    .byte W06
    .byte VOL, 18
    .byte W06
    .byte 0x18
    .byte W06
    .byte 0x1E
    .byte W06
    .byte 0x24
    .byte W06
    .byte 0x2A
    .byte W06
    .byte 0x31
    .byte W06
    .byte 0x36
    .byte W06
    .byte 0x3D
    .byte W06
    .byte 0x43
    .byte W06
    .byte 0x49
    .byte W06
    .byte 0x50
    .byte W06
    .byte BEND, 64
    .byte W08
    .byte 0x45
    .byte W08
    .byte 0x4B
    .byte W08
label_song_0C7_track0_0:
    .byte BEND, 81
    .byte W08
    .byte 0x57
    .byte W08
    .byte 0x5D
    .byte W08
    .byte 0x62
    .byte W08
    .byte 0x68
    .byte W08
    .byte 0x6E
    .byte W08
    .byte 0x74
    .byte W08
    .byte 0x7A
    .byte W08
    .byte 0x7F
    .byte W32
    .byte 0x7F
    .byte W08
    .byte 0x7C
    .byte W08
    .byte 0x78
    .byte W08
    .byte 0x74
    .byte W08
    .byte 0x70
    .byte W08
    .byte 0x6C
    .byte W08
    .byte 0x68
    .byte W08
    .byte 0x64
    .byte W08
    .byte 0x60
    .byte W08
    .byte 0x5D
    .byte W08
    .byte 0x59
    .byte W08
    .byte 0x55
    .byte W08
    .byte 0x51
    .byte W08
    .byte 0x4D
    .byte W08
    .byte 0x49
    .byte W08
    .byte 0x45
    .byte W08
    .byte 0x41
    .byte W04
    .byte 0x40
    .byte W60
    .byte W24
    .byte 0x40
    .byte W08
    .byte 0x3E
    .byte W08
    .byte 0x3D
    .byte W08
    .byte 0x3B
    .byte W08
    .byte 0x3A
    .byte W08
    .byte 0x38
    .byte W08
    .byte 0x37
    .byte W08
    .byte 0x35
    .byte W08
    .byte 0x34
    .byte W08
    .byte 0x32
    .byte W08
    .byte 0x31
    .byte W08
    .byte 0x30
    .byte W08
    .byte 0x32
    .byte W08
    .byte 0x34
    .byte W08
    .byte 0x36
    .byte W08
    .byte 0x38
    .byte W08
    .byte 0x3A
    .byte W08
    .byte 0x3C
    .byte W08
    .byte 0x3E
    .byte W08
    .byte 0x41
    .byte W08
    .byte 0x43
    .byte W08
    .byte 0x45
    .byte W08
    .byte 0x47
    .byte W08
    .byte 0x49
    .byte W08
    .byte 0x4B
    .byte W08
    .byte 0x4D
    .byte W08
    .byte 0x4F
    .byte W08
    .byte 0x52
    .byte W08
    .byte 0x54
    .byte W08
    .byte 0x56
    .byte W08
    .byte 0x58
    .byte W08
    .byte 0x5A
    .byte W08
    .byte 0x5C
    .byte W08
    .byte 0x5E
    .byte W08
    .byte 0x60
    .byte W16
    .byte 0x60
    .byte W06
    .byte 0x5F
    .byte W06
    .byte 0x5E
    .byte W06
    .byte 0x5D
    .byte W06
    .byte 0x5C
    .byte W06
    .byte 0x5C
    .byte W06
    .byte 0x5B
    .byte W06
    .byte 0x5A
    .byte W06
    .byte 0x59
    .byte W06
    .byte 0x58
    .byte W06
    .byte 0x58
    .byte W06
    .byte 0x57
    .byte W06
    .byte 0x56
    .byte W06
    .byte 0x55
    .byte W06
    .byte 0x55
    .byte W06
    .byte 0x54
    .byte W06
    .byte 0x53
    .byte W06
    .byte 0x52
    .byte W06
    .byte 0x51
    .byte W06
    .byte 0x51
    .byte W06
    .byte 0x50
    .byte W06
    .byte 0x4F
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x4D
    .byte W06
    .byte 0x4C
    .byte W06
    .byte 0x4B
    .byte W06
    .byte 0x4A
    .byte W06
    .byte 0x4A
    .byte W06
    .byte 0x49
    .byte W06
    .byte 0x48
    .byte W06
    .byte 0x47
    .byte W06
    .byte 0x47
    .byte W06
    .byte 0x46
    .byte W06
    .byte 0x45
    .byte W06
    .byte 0x44
    .byte W06
    .byte 0x43
    .byte W06
    .byte 0x43
    .byte W06
    .byte 0x42
    .byte W06
    .byte 0x41
    .byte W30
    .byte 0x40
    .byte W06
    .byte 0x41
    .byte W06
    .byte 0x43
    .byte W06
    .byte 0x44
    .byte W06
    .byte 0x46
    .byte W06
    .byte 0x47
    .byte W06
    .byte 0x49
    .byte W06
    .byte 0x4B
    .byte W06
    .byte 0x4C
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x4F
    .byte W06
    .byte 0x51
    .byte W06
    .byte 0x53
    .byte W06
    .byte 0x54
    .byte W06
    .byte 0x56
    .byte W06
    .byte 0x57
    .byte W06
    .byte 0x59
    .byte W06
    .byte 0x5B
    .byte W06
    .byte 0x5C
    .byte W06
    .byte 0x5E
    .byte W06
    .byte 0x60
    .byte W12
    .byte 0x60
    .byte W06
    .byte 0x5D
    .byte W06
    .byte 0x5B
    .byte W06
    .byte 0x59
    .byte W06
    .byte 0x57
    .byte W06
    .byte 0x55
    .byte W06
    .byte 0x52
    .byte W06
    .byte 0x50
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x4C
    .byte W06
    .byte 0x4A
    .byte W06
    .byte 0x48
    .byte W06
    .byte 0x45
    .byte W06
    .byte 0x43
    .byte W06
    .byte 0x41
    .byte W06
    .byte 0x3F
    .byte W06
    .byte 0x3D
    .byte W06
    .byte 0x3A
    .byte W06
    .byte 0x38
    .byte W06
    .byte 0x36
    .byte W06
    .byte 0x34
    .byte W06
    .byte 0x32
    .byte W06
    .byte 0x30
    .byte W06
    .byte 0x31
    .byte W06
    .byte 0x33
    .byte W06
    .byte 0x35
    .byte W06
    .byte 0x37
    .byte W06
    .byte 0x39
    .byte W06
    .byte 0x3B
    .byte W06
    .byte 0x3C
    .byte W07
    .byte 0x3A
    .byte W05
    .byte 0x38
    .byte W05
    .byte 0x37
    .byte W05
    .byte 0x36
    .byte W05
    .byte 0x35
    .byte W05
    .byte 0x34
    .byte W05
    .byte 0x32
    .byte W05
    .byte 0x31
    .byte W05
    .byte 0x30
    .byte W05
    .byte 0x2F
    .byte W05
    .byte 0x2E
    .byte W05
    .byte 0x2C
    .byte W05
    .byte 0x2B
    .byte W05
    .byte 0x2A
    .byte W05
    .byte 0x29
    .byte W01
    .byte W04
    .byte 0x28
    .byte W44
    .byte 0x28
    .byte W05
    .byte 0x2B
    .byte W05
    .byte 0x2F
    .byte W05
    .byte 0x32
    .byte W05
    .byte 0x36
    .byte W05
    .byte 0x39
    .byte W05
    .byte 0x3D
    .byte W05
    .byte 0x41
    .byte W05
    .byte 0x44
    .byte W05
    .byte 0x48
    .byte W03
    .byte W02
    .byte 0x4B
    .byte W05
    .byte 0x4F
    .byte W05
    .byte 0x53
    .byte W05
    .byte 0x56
    .byte W05
    .byte 0x5A
    .byte W05
    .byte 0x5D
    .byte W05
    .byte 0x61
    .byte W05
    .byte 0x65
    .byte W05
    .byte 0x68
    .byte W05
    .byte 0x6C
    .byte W05
    .byte 0x70
    .byte W44
    .byte W48
    .byte 0x70
    .byte W06
    .byte 0x6E
    .byte W06
    .byte 0x6C
    .byte W06
    .byte 0x6B
    .byte W06
    .byte 0x69
    .byte W06
    .byte 0x68
    .byte W06
    .byte 0x66
    .byte W06
    .byte 0x64
    .byte W06
    .byte 0x63
    .byte W06
    .byte 0x61
    .byte W06
    .byte 0x60
    .byte W06
    .byte 0x5E
    .byte W06
    .byte 0x5C
    .byte W06
    .byte 0x5B
    .byte W06
    .byte 0x59
    .byte W06
    .byte 0x58
    .byte W06
    .byte 0x56
    .byte W06
    .byte 0x54
    .byte W06
    .byte 0x53
    .byte W06
    .byte 0x51
    .byte W06
    .byte 0x50
    .byte W06
    .byte 0x4E
    .byte W06
    .byte 0x4C
    .byte W06
    .byte 0x4B
    .byte W06
    .byte 0x49
    .byte W06
    .byte 0x48
    .byte W06
    .byte 0x46
    .byte W06
    .byte 0x44
    .byte W06
    .byte 0x43
    .byte W06
    .byte 0x41
    .byte W06
    .byte 0x40
    .byte W36
    .byte GOTO
    .word label_song_0C7_track0_0
    .byte W18
    .byte EOT, 58
    .byte W06
    .byte FINE

.align 2
.global song_0C7 @ 0858A280
song_0C7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_0C7_track0           @ tracks 0x0858A088


@ ****************************** tracks ******************************
song_0C8_track0: @ 0858A28C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 90
    .byte N13, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0C8 @ 0858A29C
song_0C8:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0C8_track0           @ tracks 0x0858A28C


@ ****************************** tracks ******************************
song_0C9_track0: @ 0858A2A8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 80
    .byte N16, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0C9 @ 0858A2B8
song_0C9:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0C9_track0           @ tracks 0x0858A2A8


@ ****************************** tracks ******************************
song_0CA_track0: @ 0858A2C4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 2
    .byte VOL, 85
    .byte N14, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0CA @ 0858A2D4
song_0CA:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0CA_track0           @ tracks 0x0858A2C4


@ ****************************** tracks ******************************
song_0CB_track0: @ 0858A2E0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 7
    .byte VOL, 127
    .byte N16, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0CB @ 0858A2F0
song_0CB:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0CB_track0           @ tracks 0x0858A2E0


@ ****************************** tracks ******************************
song_0CC_track0: @ 0858A2FC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 10
    .byte VOL, 110
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0CC @ 0858A30C
song_0CC:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0CC_track0           @ tracks 0x0858A2FC


@ ****************************** tracks ******************************
song_0CD_track0: @ 0858A318
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 6
    .byte VOL, 127
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0CD @ 0858A328
song_0CD:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0CD_track0           @ tracks 0x0858A318


@ ****************************** tracks ******************************
song_0CE_track0: @ 0858A334
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 8
    .byte VOL, 127
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0CE @ 0858A344
song_0CE:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0CE_track0           @ tracks 0x0858A334


@ ****************************** tracks ******************************
song_0CF_track0: @ 0858A350
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 9
    .byte VOL, 127
    .byte N12, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0CF @ 0858A360
song_0CF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0CF_track0           @ tracks 0x0858A350


@ ****************************** tracks ******************************
song_0D0_track0: @ 0858A36C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 13
    .byte VOL, 127
    .byte N20, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0D0 @ 0858A37C
song_0D0:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0D0_track0           @ tracks 0x0858A36C


@ ****************************** tracks ******************************
song_0D1_track0: @ 0858A388
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 11
    .byte VOL, 127
    .byte BENDR, 2
    .byte BEND, 24
    .byte N02, 60, 127
    .byte W02
    .byte BEND, 32
    .byte N02, 60, 120
    .byte W02
    .byte BEND, 40
    .byte N04, 60, 116
    .byte W04
    .byte BEND, 48
    .byte N06, 60, 112
    .byte W06
    .byte BEND, 56
    .byte N08, 60, 108
    .byte W08
    .byte BEND, 64
    .byte N09, 60, 100
    .byte W02
    .byte W24
    .byte FINE

.align 2
.global song_0D1 @ 0858A3B8
song_0D1:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0D1_track0           @ tracks 0x0858A388


@ ****************************** tracks ******************************
song_0D2_track0: @ 0858A3C4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 110
    .byte VOL, 127
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0D2 @ 0858A3D4
song_0D2:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0D2_track0           @ tracks 0x0858A3C4


@ ****************************** tracks ******************************
song_0D3_track0: @ 0858A3E0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 111
    .byte VOL, 127
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0D3 @ 0858A3F0
song_0D3:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0D3_track0           @ tracks 0x0858A3E0


@ ****************************** tracks ******************************
song_0D4_track0: @ 0858A3FC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 112
    .byte VOL, 127
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0D4 @ 0858A40C
song_0D4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0D4_track0           @ tracks 0x0858A3FC


@ ****************************** tracks ******************************
song_0D5_track0: @ 0858A418
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 113
    .byte VOL, 127
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0D5 @ 0858A428
song_0D5:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0D5_track0           @ tracks 0x0858A418


@ ****************************** tracks ******************************
song_0D6_track0: @ 0858A434
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 103
    .byte VOL, 80
    .byte N48, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0D6 @ 0858A444
song_0D6:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0D6_track0           @ tracks 0x0858A434


@ ****************************** tracks ******************************
song_0D7_track0: @ 0858A450
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 26
    .byte VOL, 127
    .byte W10
    .byte N14, 60, 127
    .byte W14
    .byte FINE

.align 2
.global song_0D7 @ 0858A460
song_0D7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0D7_track0           @ tracks 0x0858A450


@ ****************************** tracks ******************************
song_0D8_track0: @ 0858A46C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte VOL, 120
    .byte BENDR, 32
    .byte N03, 52, 127
    .byte W03
    .byte BEND, 64
    .byte N04
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 120
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 108
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 100
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 88
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 80
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 68
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 60
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 48
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 40
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte N04, 52, 28
    .byte W01
    .byte BEND, 80
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x42
    .byte W02
    .byte FINE

.align 2
.global song_0D8 @ 0858A500
song_0D8:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0D8_track0           @ tracks 0x0858A46C


@ ****************************** tracks ******************************
song_0DC_track0: @ 0858A50C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 20
    .byte VOL, 127
    .byte BENDR, 12
    .byte N48, 64, 127
    .byte W04
    .byte VOL, 124
    .byte W02
    .byte 0x76
    .byte W02
    .byte 0x66
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x28
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x42
    .byte BEND, 64
    .byte W02
    .byte VOL, 76
    .byte BEND, 71
    .byte W02
    .byte VOL, 84
    .byte BEND, 78
    .byte W02
    .byte VOL, 91
    .byte BEND, 85
    .byte W02
    .byte VOL, 96
    .byte BEND, 91
    .byte W02
    .byte VOL, 99
    .byte BEND, 97
    .byte W02
    .byte VOL, 100
    .byte BEND, 102
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x73
    .byte W02
    .byte 0x76
    .byte W02
    .byte 0x79
    .byte W02
    .byte 0x7B
    .byte W02
    .byte 0x7D
    .byte W02
    .byte 0x7E
    .byte W02
    .byte 0x7F
    .byte W02
    .byte FINE

.align 2
.global song_0DC @ 0858A55C
song_0DC:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0DC_track0           @ tracks 0x0858A50C


@ ****************************** tracks ******************************
song_0DD_track0: @ 0858A568
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 21
    .byte BENDR, 12
    .byte VOL, 50
    .byte BEND, 127
    .byte N60, 64, 127
    .byte W02
    .byte VOL, 51
    .byte BEND, 118
    .byte W02
    .byte VOL, 54
    .byte BEND, 109
    .byte W02
    .byte VOL, 60
    .byte BEND, 101
    .byte W02
    .byte VOL, 69
    .byte BEND, 93
    .byte W02
    .byte VOL, 80
    .byte BEND, 86
    .byte W02
    .byte VOL, 93
    .byte BEND, 79
    .byte W02
    .byte VOL, 109
    .byte BEND, 72
    .byte W02
    .byte VOL, 127
    .byte BEND, 66
    .byte W02
    .byte 0x3D
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x2B
    .byte W02
    .byte 0x28
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x23
    .byte W02
    .byte 0x22
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x20
    .byte W08
    .byte W24
    .byte FINE

.align 2
.global song_0DD @ 0858A5BC
song_0DD:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0DD_track0           @ tracks 0x0858A568


@ ****************************** tracks ******************************
song_0DE_track0: @ 0858A5C8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 90
    .byte BENDR, 9
    .byte VOL, 50
    .byte BEND, 64
    .byte N48, 65, 127
    .byte W02
    .byte VOL, 62
    .byte BEND, 65
    .byte W02
    .byte VOL, 72
    .byte BEND, 68
    .byte W02
    .byte VOL, 77
    .byte BEND, 73
    .byte W02
    .byte VOL, 80
    .byte BEND, 80
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x71
    .byte W02
    .byte 0x7F
    .byte W04
    .byte VOL, 70
    .byte W02
    .byte 0x3D
    .byte W02
    .byte 0x35
    .byte BEND, 126
    .byte W02
    .byte VOL, 45
    .byte BEND, 125
    .byte W02
    .byte VOL, 39
    .byte BEND, 122
    .byte W02
    .byte VOL, 32
    .byte BEND, 117
    .byte W02
    .byte VOL, 27
    .byte BEND, 111
    .byte W02
    .byte VOL, 22
    .byte BEND, 103
    .byte W02
    .byte VOL, 17
    .byte BEND, 93
    .byte W02
    .byte VOL, 14
    .byte BEND, 81
    .byte W02
    .byte VOL, 11
    .byte BEND, 67
    .byte W02
    .byte VOL, 8
    .byte BEND, 52
    .byte W02
    .byte VOL, 7
    .byte BEND, 34
    .byte W02
    .byte VOL, 6
    .byte BEND, 16
    .byte W02
    .byte W24
    .byte FINE

.align 2
.global song_0DE @ 0858A638
song_0DE:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0DE_track0           @ tracks 0x0858A5C8


@ ****************************** tracks ******************************
song_0DF_track0: @ 0858A644
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 90
    .byte VOL, 127
    .byte BENDR, 8
    .byte BEND, 64
    .byte TIE, 52, 127
    .byte W01
    .byte BEND, 65
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x49
    .byte W01
    .byte 0x50
    .byte W01
    .byte 0x59
    .byte W01
    .byte 0x64
    .byte W01
    .byte 0x71
    .byte W01
    .byte 0x7F
    .byte W04
    .byte 0x7F
    .byte W02
    .byte 0x71
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x40
    .byte W20
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte EOT
    .byte FINE

.align 2
.global song_0DF @ 0858A680
song_0DF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0DF_track0           @ tracks 0x0858A644


@ ****************************** tracks ******************************
song_0E0_track0: @ 0858A68C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 24
    .byte VOL, 127
    .byte BENDR, 12
    .byte BEND, 32
    .byte N64, 60, 127
    .byte W02
    .byte BEND, 32
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x22
    .byte W02
    .byte 0x23
    .byte W02
    .byte 0x24
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x28
    .byte W02
    .byte 0x29
    .byte W02
    .byte 0x2B
    .byte W02
    .byte 0x2E
    .byte W02
    .byte 0x30
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x36
    .byte W02
    .byte 0x39
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x40
    .byte W04
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x4D
    .byte W02
    .byte 0x50
    .byte W10
    .byte FINE

.align 2
.global song_0E0 @ 0858A6DC
song_0E0:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E0_track0           @ tracks 0x0858A68C


@ ****************************** tracks ******************************
song_0E1_track0: @ 0858A6E8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 25
    .byte VOL, 127
    .byte N03, 55, 127
    .byte W03
    .byte N06, 60
    .byte W06
    .byte N03, 56, 52
    .byte W03
    .byte N04, 61
    .byte W04
    .byte N03, 57, 20
    .byte W03
    .byte N05, 62
    .byte W05
    .byte FINE

.align 2
.global song_0E1 @ 0858A708
song_0E1:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E1_track0           @ tracks 0x0858A6E8


@ ****************************** tracks ******************************
song_0E2_track0: @ 0858A714
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 29
    .byte VOL, 127
    .byte N72, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0E2 @ 0858A724
song_0E2:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E2_track0           @ tracks 0x0858A714


@ ****************************** tracks ******************************
song_0E3_track0: @ 0858A730
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 96
    .byte VOL, 127
    .byte TIE, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W12
    .byte EOT
    .byte W12
    .byte FINE

.align 2
.global song_0E3 @ 0858A744
song_0E3:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E3_track0           @ tracks 0x0858A730


@ ****************************** tracks ******************************
song_0E4_track0: @ 0858A750
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 96
    .byte VOL, 127
    .byte TIE, 55, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W16
    .byte EOT
    .byte W08
    .byte FINE

.align 2
.global song_0E4 @ 0858A764
song_0E4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E4_track0           @ tracks 0x0858A750


@ ****************************** tracks ******************************
song_0E5_track0: @ 0858A770
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 96
    .byte VOL, 127
    .byte TIE, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte EOT
    .byte FINE

.align 2
.global song_0E5 @ 0858A784
song_0E5:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E5_track0           @ tracks 0x0858A770


@ ****************************** tracks ******************************
song_0E6_track0: @ 0858A790
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 90
    .byte VOL, 110
    .byte TIE, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W12
    .byte EOT
    .byte W12
    .byte FINE

.align 2
.global song_0E6 @ 0858A7A4
song_0E6:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E6_track0           @ tracks 0x0858A790


@ ****************************** tracks ******************************
song_0E7_track0: @ 0858A7B0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 91
    .byte VOL, 110
    .byte N60, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0E7 @ 0858A7C0
song_0E7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E7_track0           @ tracks 0x0858A7B0


@ ****************************** tracks ******************************
song_0E8_track0: @ 0858A7CC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 20
    .byte VOL, 127
    .byte N84, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

song_0E8_track1: @ 0858A7E1
    .byte KEYSH, 0
    .byte VOICE, 22
    .byte BENDR, 11
    .byte VOL, 36
    .byte BEND, 64
    .byte TIE, 60, 127
    .byte W01
    .byte BEND, 62
    .byte W01
    .byte 0x3C
    .byte W01
    .byte 0x3A
    .byte W01
    .byte 0x38
    .byte W01
    .byte 0x36
    .byte W01
    .byte 0x34
    .byte W01
    .byte 0x32
    .byte W01
    .byte 0x30
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x28
    .byte W01
    .byte 0x26
    .byte W01
    .byte 0x24
    .byte W01
    .byte 0x22
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x1E
    .byte W01
    .byte 0x1C
    .byte W01
    .byte 0x1A
    .byte W01
    .byte 0x18
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x14
    .byte W01
    .byte 0x12
    .byte W01
    .byte 0x10
    .byte W01
    .byte 0x0E
    .byte W01
    .byte 0x0D
    .byte W01
    .byte 0x0C
    .byte W01
    .byte 0x0B
    .byte W01
    .byte 0x0A
    .byte W01
    .byte xIECL
    .byte W01
    .byte xIECV
    .byte W01
    .byte 0x07
    .byte W01
    .byte 0x06
    .byte W01
    .byte 0x05
    .byte W01
    .byte 0x04
    .byte W01
    .byte 0x04
    .byte W01
    .byte 0x03
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x01
    .byte W01
    .byte 0x01
    .byte W01
    .byte 0x01
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W24
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x01
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x03
    .byte W01
    .byte 0x04
    .byte W01
    .byte 0x05
    .byte W01
    .byte 0x06
    .byte W01
    .byte xIECV
    .byte W01
    .byte xIECL
    .byte W01
    .byte 0x0A
    .byte W01
    .byte 0x0C
    .byte W01
    .byte 0x0E
    .byte W01
    .byte 0x10
    .byte W01
    .byte 0x12
    .byte W01
    .byte 0x14
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x18
    .byte W01
    .byte 0x1A
    .byte W01
    .byte 0x1D
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x22
    .byte W01
    .byte 0x24
    .byte W01
    .byte 0x26
    .byte W01
    .byte 0x28
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x2B
    .byte W01
    .byte 0x2D
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x30
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2D
    .byte W01
    .byte 0x2B
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x28
    .byte W01
    .byte 0x26
    .byte W01
    .byte 0x24
    .byte W01
    .byte 0x22
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x1E
    .byte W01
    .byte 0x1D
    .byte W01
    .byte 0x1C
    .byte W01
    .byte 0x1B
    .byte W01
    .byte 0x1A
    .byte W01
    .byte 0x19
    .byte W01
    .byte 0x18
    .byte W01
    .byte 0x17
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x15
    .byte W01
    .byte 0x14
    .byte W01
    .byte 0x14
    .byte W01
    .byte 0x13
    .byte W01
    .byte 0x12
    .byte W01
    .byte 0x12
    .byte W01
    .byte 0x11
    .byte W01
    .byte 0x11
    .byte W01
    .byte 0x11
    .byte W01
    .byte 0x10
    .byte W01
    .byte 0x10
    .byte W01
    .byte 0x10
    .byte W01
    .byte 0x10
    .byte W01
    .byte 0x10
    .byte W01
    .byte VOL, 32
    .byte BEND, 16
    .byte W01
    .byte 0x11
    .byte W01
    .byte 0x12
    .byte W01
    .byte 0x13
    .byte W01
    .byte 0x14
    .byte W01
    .byte 0x15
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x18
    .byte W01
    .byte VOL, 32
    .byte W01
    .byte BEND, 23
    .byte W02
    .byte 0x16
    .byte W02
    .byte 0x15
    .byte W02
    .byte 0x14
    .byte W01
    .byte VOL, 28
    .byte W01
    .byte BEND, 19
    .byte W02
    .byte 0x12
    .byte W02
    .byte 0x11
    .byte W02
    .byte 0x10
    .byte W01
    .byte VOL, 24
    .byte W01
    .byte BEND, 15
    .byte W02
    .byte 0x0E
    .byte W02
    .byte 0x0D
    .byte W02
    .byte 0x0C
    .byte W01
    .byte VOL, 20
    .byte W01
    .byte BEND, 11
    .byte W02
    .byte 0x0A
    .byte W02
    .byte xIECL
    .byte W02
    .byte xIECV
    .byte W01
    .byte VOL, 16
    .byte W01
    .byte BEND, 7
    .byte W02
    .byte 0x06
    .byte W02
    .byte 0x05
    .byte W02
    .byte 0x04
    .byte W01
    .byte VOL, 12
    .byte W01
    .byte BEND, 3
    .byte W02
    .byte 0x02
    .byte W02
    .byte 0x01
    .byte W02
    .byte 0x00
    .byte W01
    .byte VOL, 8
    .byte W08
    .byte 0x04
    .byte W08
    .byte EOT
    .byte FINE

.align 2
.global song_0E8 @ 0858A944
song_0E8:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E8_track0           @ tracks 0x0858A7CC
    .word song_0E8_track1           @ tracks 0x0858A7E1


@ ****************************** tracks ******************************
song_0E9_track0: @ 0858A954
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 21
    .byte VOL, 127
    .byte N72, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

song_0E9_track1: @ 0858A965
    .byte KEYSH, 0
    .byte VOICE, 22
    .byte BENDR, 11
    .byte VOL, 36
    .byte BEND, 64
    .byte TIE, 60, 127
    .byte W01
    .byte BEND, 62
    .byte W01
    .byte 0x3C
    .byte W01
    .byte 0x3A
    .byte W01
    .byte 0x38
    .byte W01
    .byte 0x36
    .byte W01
    .byte 0x34
    .byte W01
    .byte 0x32
    .byte W01
    .byte 0x30
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x28
    .byte W01
    .byte 0x26
    .byte W01
    .byte 0x24
    .byte W01
    .byte 0x22
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x1E
    .byte W01
    .byte 0x1C
    .byte W01
    .byte 0x1A
    .byte W01
    .byte 0x18
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x14
    .byte W01
    .byte 0x12
    .byte W01
    .byte 0x10
    .byte W01
    .byte 0x0E
    .byte W01
    .byte 0x0D
    .byte W01
    .byte 0x0C
    .byte W01
    .byte 0x0B
    .byte W01
    .byte 0x0A
    .byte W01
    .byte xIECL
    .byte W01
    .byte xIECV
    .byte W01
    .byte 0x07
    .byte W01
    .byte 0x06
    .byte W01
    .byte 0x05
    .byte W01
    .byte 0x04
    .byte W01
    .byte 0x04
    .byte W01
    .byte 0x03
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x01
    .byte W01
    .byte 0x01
    .byte W01
    .byte 0x01
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x00
    .byte W01
    .byte 0x01
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x03
    .byte W01
    .byte 0x04
    .byte W01
    .byte 0x05
    .byte W01
    .byte 0x06
    .byte W01
    .byte xIECV
    .byte W01
    .byte xIECL
    .byte W01
    .byte 0x0A
    .byte W01
    .byte 0x0C
    .byte W01
    .byte 0x0E
    .byte W01
    .byte 0x10
    .byte W01
    .byte 0x12
    .byte W01
    .byte 0x14
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x18
    .byte W01
    .byte 0x1A
    .byte W01
    .byte 0x1D
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x22
    .byte W01
    .byte 0x24
    .byte W01
    .byte 0x26
    .byte W01
    .byte 0x28
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x2B
    .byte W01
    .byte 0x2D
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x30
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2D
    .byte W01
    .byte 0x2B
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x28
    .byte W01
    .byte 0x26
    .byte W01
    .byte 0x24
    .byte W01
    .byte 0x22
    .byte W01
    .byte 0x20
    .byte W02
    .byte 0x1D
    .byte W02
    .byte 0x1A
    .byte W02
    .byte 0x18
    .byte W02
    .byte VOL, 32
    .byte BEND, 21
    .byte W02
    .byte 0x12
    .byte W02
    .byte VOL, 24
    .byte BEND, 16
    .byte W02
    .byte 0x0D
    .byte W02
    .byte VOL, 16
    .byte BEND, 10
    .byte W02
    .byte xIECV
    .byte W02
    .byte VOL, 8
    .byte BEND, 5
    .byte W02
    .byte 0x02
    .byte W02
    .byte EOT
    .byte FINE

.align 2
.global song_0E9 @ 0858AA58
song_0E9:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0E9_track0           @ tracks 0x0858A954
    .word song_0E9_track1           @ tracks 0x0858A965


@ ****************************** tracks ******************************
song_0EA_track0: @ 0858AA68
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 14
    .byte VOL, 127
    .byte N20, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0EA @ 0858AA78
song_0EA:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0EA_track0           @ tracks 0x0858AA68


@ ****************************** tracks ******************************
song_0EB_track0: @ 0858AA84
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 15
    .byte VOL, 127
    .byte N20, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0EB @ 0858AA94
song_0EB:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0EB_track0           @ tracks 0x0858AA84


@ ****************************** tracks ******************************
song_0EC_track0: @ 0858AAA0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 16
    .byte VOL, 127
    .byte N48, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0EC @ 0858AAB0
song_0EC:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0EC_track0           @ tracks 0x0858AAA0


@ ****************************** tracks ******************************
song_0ED_track0: @ 0858AABC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 92
    .byte VOL, 127
    .byte N10, 60, 112
    .byte W10
    .byte N06, 60, 127
    .byte W06
    .byte N10, 60, 104
    .byte W08
    .byte W02
    .byte N06, 60, 116
    .byte W06
    .byte N10, 60, 96
    .byte W10
    .byte N18, 60, 127
    .byte W06
    .byte W24
    .byte FINE

.align 2
.global song_0ED @ 0858AAE0
song_0ED:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0ED_track0           @ tracks 0x0858AABC


@ ****************************** tracks ******************************
song_0EE_track0: @ 0858AAEC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 95
    .byte VOL, 127
    .byte N06, 72, 127
    .byte W04
    .byte 0x4A
    .byte 0x7C
    .byte W04
    .byte 0x4C
    .byte 0x74
    .byte W04
    .byte 0x4D
    .byte 0x70
    .byte W04
    .byte 0x4F
    .byte 0x6C
    .byte W04
    .byte 0x51
    .byte 0x64
    .byte W04
    .byte 0x52
    .byte 0x60
    .byte W04
    .byte N07, 84, 92
    .byte W04
    .byte N04, 82, 40
    .byte W04
    .byte 0x54
    .byte 0x24
    .byte W12
    .byte FINE

.align 2
.global song_0EE @ 0858AB18
song_0EE:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0EE_track0           @ tracks 0x0858AAEC


@ ****************************** tracks ******************************
song_0EF_track0: @ 0858AB24
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 32
    .byte VOL, 127
    .byte N40, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0EF @ 0858AB34
song_0EF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0EF_track0           @ tracks 0x0858AB24


@ ****************************** tracks ******************************
song_0F0_track0: @ 0858AB40
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 3
    .byte VOL, 100
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0F0 @ 0858AB50
song_0F0:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_0F0_track0           @ tracks 0x0858AB40


@ ****************************** tracks ******************************
song_0F1_track0: @ 0858AB5C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 120
    .byte N36, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0F1 @ 0858AB6C
song_0F1:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0F1_track0           @ tracks 0x0858AB5C


@ ****************************** tracks ******************************
song_0F2_track0: @ 0858AB78
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 110
    .byte N32, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0F2 @ 0858AB88
song_0F2:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0F2_track0           @ tracks 0x0858AB78


@ ****************************** tracks ******************************
song_0F3_track0: @ 0858AB94
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 44
    .byte BENDR, 10
    .byte VOL, 100
    .byte BEND, 64
    .byte N60, 60, 127
    .byte W02
    .byte BEND, 73
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x60
    .byte W04
    .byte VOL, 94
    .byte W02
    .byte 0x55
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x37
    .byte BEND, 98
    .byte W02
    .byte VOL, 70
    .byte BEND, 100
    .byte W01
    .byte VOL, 83
    .byte W01
    .byte 0x5C
    .byte BEND, 103
    .byte W01
    .byte VOL, 97
    .byte W01
    .byte 0x64
    .byte BEND, 105
    .byte W02
    .byte 0x6C
    .byte W02
    .byte 0x6E
    .byte W02
    .byte 0x71
    .byte W02
    .byte 0x73
    .byte W02
    .byte 0x76
    .byte W02
    .byte 0x78
    .byte W02
    .byte 0x7B
    .byte W02
    .byte 0x7D
    .byte W02
    .byte VOL, 99
    .byte BEND, 127
    .byte W01
    .byte VOL, 83
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x37
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x21
    .byte W01
    .byte 0x18
    .byte W01
    .byte 0x11
    .byte W01
    .byte 0x0B
    .byte W01
    .byte 0x06
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x00
    .byte W13
    .byte FINE

.align 2
.global song_0F3 @ 0858AC00
song_0F3:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0F3_track0           @ tracks 0x0858AB94


@ ****************************** tracks ******************************
song_0F4_track0: @ 0858AC0C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 35
    .byte VOL, 100
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_0F4 @ 0858AC1C
song_0F4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0F4_track0           @ tracks 0x0858AC0C


@ ****************************** tracks ******************************
song_0F5_track0: @ 0858AC28
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 61
    .byte VOL, 110
    .byte N72, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0F5 @ 0858AC38
song_0F5:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0F5_track0           @ tracks 0x0858AC28


@ ****************************** tracks ******************************
song_0F6_track0: @ 0858AC44
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 26
    .byte VOL, 127
    .byte N24, 60, 48
    .byte W24
    .byte N02, 60, 40
    .byte W02
    .byte 0x3C
    .byte 0x2C
    .byte W02
    .byte N01, 60, 48
    .byte W01
    .byte N02
    .byte W02
    .byte N03, 60, 52
    .byte W03
    .byte N02, 60, 56
    .byte W02
    .byte N01, 60, 60
    .byte W01
    .byte N02
    .byte W02
    .byte 0x3C
    .byte 0x40
    .byte W02
    .byte N01, 60, 68
    .byte W01
    .byte N02
    .byte W02
    .byte 0x3C
    .byte 0x48
    .byte W02
    .byte N01, 60, 76
    .byte W01
    .byte N02
    .byte W01
    .byte W01
    .byte N03, 60, 80
    .byte W03
    .byte N01, 60, 84
    .byte W01
    .byte N02, 60, 88
    .byte W02
    .byte N02
    .byte W02
    .byte N01, 60, 92
    .byte W01
    .byte N02, 60, 96
    .byte W02
    .byte N02
    .byte W02
    .byte 0x3C
    .byte 0x64
    .byte W02
    .byte N01, 60, 104
    .byte W01
    .byte N02
    .byte W02
    .byte 0x3C
    .byte 0x6C
    .byte W02
    .byte N01, 60, 112
    .byte W01
    .byte N02
    .byte W02
    .byte N03, 60, 116
    .byte W03
    .byte N01, 60, 120
    .byte W01
    .byte N02, 60, 124
    .byte W02
    .byte 0x3C
    .byte 0x7F
    .byte W02
    .byte N28
    .byte W16
    .byte W24
    .byte FINE

.align 2
.global song_0F6 @ 0858ACBC
song_0F6:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0F6_track0           @ tracks 0x0858AC44


@ ****************************** tracks ******************************
song_0F7_track0: @ 0858ACC8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 7
    .byte VOL, 110
    .byte BENDR, 12
    .byte LFOS, 30
    .byte MOD, 0
    .byte MODT, 0
    .byte MOD, 30
    .byte BEND, 0
    .byte N06, 67, 127
    .byte W01
    .byte BEND, 5
    .byte W01
    .byte 0x0A
    .byte W01
    .byte 0x0F
    .byte W01
    .byte 0x15
    .byte W01
    .byte 0x1A
    .byte W01
    .byte 0x1F
    .byte N40, 67, 124
    .byte W01
    .byte BEND, 37
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x35
    .byte W01
    .byte 0x3A
    .byte W01
    .byte 0x40
    .byte W12
    .byte VOL, 110
    .byte W01
    .byte 0x64
    .byte W01
    .byte 0x5B
    .byte W01
    .byte 0x54
    .byte W01
    .byte 0x4C
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x3D
    .byte W01
    .byte 0x36
    .byte W01
    .byte 0x30
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x25
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x1A
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x13
    .byte W01
    .byte 0x0E
    .byte W01
    .byte 0x0C
    .byte W01
    .byte xIECV
    .byte W01
    .byte 0x06
    .byte W06
    .byte FINE

.align 2
.global song_0F7 @ 0858AD28
song_0F7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0F7_track0           @ tracks 0x0858ACC8


@ ****************************** tracks ******************************
song_0F8_track0: @ 0858AD34
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 7
    .byte VOL, 110
    .byte N44, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_0F8 @ 0858AD44
song_0F8:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0F8_track0           @ tracks 0x0858AD34


@ ****************************** tracks ******************************
song_0F9_track0: @ 0858AD50
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 40
    .byte BENDR, 8
    .byte VOL, 16
    .byte BEND, 64
    .byte N96, 60, 127
    .byte W01
    .byte VOL, 52
    .byte W01
    .byte 0x59
    .byte BEND, 69
    .byte W01
    .byte VOL, 127
    .byte W01
    .byte BEND, 73
    .byte W02
    .byte 0x4D
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x55
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x5D
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x65
    .byte W02
    .byte 0x67
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x6D
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x71
    .byte W02
    .byte 0x73
    .byte W02
    .byte 0x75
    .byte W02
    .byte 0x76
    .byte W02
    .byte 0x77
    .byte W02
    .byte 0x79
    .byte W02
    .byte 0x7A
    .byte W02
    .byte 0x7B
    .byte W02
    .byte 0x7C
    .byte W02
    .byte 0x7D
    .byte W02
    .byte 0x7D
    .byte W02
    .byte 0x7E
    .byte W02
    .byte 0x7F
    .byte W02
    .byte 0x7F
    .byte W02
    .byte 0x7F
    .byte W02
    .byte 0x7F
    .byte W02
    .byte VOL, 127
    .byte BEND, 127
    .byte W01
    .byte VOL, 116
    .byte W01
    .byte 0x6A
    .byte W01
    .byte 0x61
    .byte W01
    .byte 0x58
    .byte W01
    .byte 0x4F
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x3F
    .byte W01
    .byte 0x38
    .byte W01
    .byte 0x31
    .byte W01
    .byte 0x2B
    .byte W01
    .byte 0x25
    .byte W01
    .byte 0x1F
    .byte W01
    .byte 0x1A
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x11
    .byte W01
    .byte 0x0E
    .byte W01
    .byte 0x0A
    .byte W01
    .byte xIECV
    .byte W01
    .byte 0x05
    .byte W01
    .byte 0x03
    .byte W01
    .byte 0x02
    .byte W01
    .byte 0x00
    .byte W02
    .byte FINE

.align 2
.global song_0F9 @ 0858ADE4
song_0F9:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0F9_track0           @ tracks 0x0858AD50


@ ****************************** tracks ******************************
song_0FA_track0: @ 0858ADF0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 9
    .byte VOL, 40
    .byte BENDR, 5
    .byte BEND, 64
    .byte N64, 58, 127
    .byte W02
    .byte BEND, 66
    .byte W02
    .byte 0x4A
    .byte W02
    .byte VOL, 40
    .byte BEND, 87
    .byte W02
    .byte VOL, 42
    .byte BEND, 105
    .byte W02
    .byte VOL, 42
    .byte BEND, 127
    .byte W02
    .byte VOL, 44
    .byte W02
    .byte 0x2D
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x31
    .byte W02
    .byte 0x34
    .byte W02
    .byte 0x36
    .byte W02
    .byte 0x39
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x50
    .byte W12
    .byte 0x4F
    .byte W02
    .byte 0x3D
    .byte W02
    .byte 0x2E
    .byte W02
    .byte 0x22
    .byte W02
    .byte 0x17
    .byte W02
    .byte 0x0F
    .byte W02
    .byte xIECL
    .byte W02
    .byte 0x05
    .byte W02
    .byte 0x05
    .byte W08
    .byte W24
    .byte FINE

.align 2
.global song_0FA @ 0858AE44
song_0FA:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0FA_track0           @ tracks 0x0858ADF0


@ ****************************** tracks ******************************
song_0FB_track0: @ 0858AE50
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 9
    .byte VOL, 64
    .byte BENDR, 5
    .byte N36, 60, 127
    .byte W05
    .byte VOL, 65
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x5C
    .byte W01
    .byte W01
    .byte 0x60
    .byte W02
    .byte 0x66
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x71
    .byte W02
    .byte 0x78
    .byte W02
    .byte 0x7F
    .byte W13
    .byte FINE

.align 2
.global song_0FB @ 0858AE84
song_0FB:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0FB_track0           @ tracks 0x0858AE50


@ ****************************** tracks ******************************
song_0FC_track0: @ 0858AE90
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 10
    .byte VOL, 80
    .byte N14, 88, 127
    .byte W24
    .byte FINE

.align 2
.global song_0FC @ 0858AEA0
song_0FC:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0FC_track0           @ tracks 0x0858AE90


@ ****************************** tracks ******************************
song_0FD_track0: @ 0858AEAC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 41
    .byte VOL, 64
    .byte BENDR, 1
    .byte BEND, 0
    .byte TIE, 60, 127
    .byte W02
    .byte VOL, 71
    .byte BEND, 7
    .byte W02
    .byte VOL, 79
    .byte BEND, 15
    .byte W02
    .byte VOL, 87
    .byte BEND, 23
    .byte W02
    .byte VOL, 95
    .byte BEND, 31
    .byte W02
    .byte VOL, 103
    .byte BEND, 39
    .byte W02
    .byte VOL, 111
    .byte BEND, 47
    .byte W02
    .byte VOL, 119
    .byte BEND, 55
    .byte W02
    .byte VOL, 127
    .byte BEND, 64
    .byte W08
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W20
    .byte VOL, 126
    .byte W02
    .byte 0x6A
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x39
    .byte W02
    .byte 0x2C
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x17
    .byte W02
    .byte 0x0F
    .byte W02
    .byte xIECL
    .byte W02
    .byte 0x05
    .byte W02
    .byte 0x02
    .byte W02
    .byte EOT
    .byte W04
    .byte FINE

.align 2
.global song_0FD @ 0858AF08
song_0FD:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0FD_track0           @ tracks 0x0858AEAC


@ ****************************** tracks ******************************
song_0FE_track0: @ 0858AF14
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 31
    .byte VOL, 127
    .byte BENDR, 2
    .byte BEND, 64
    .byte N32, 61, 127
    .byte W02
    .byte VOL, 119
    .byte W01
    .byte BEND, 68
    .byte W01
    .byte VOL, 111
    .byte W01
    .byte BEND, 73
    .byte W01
    .byte VOL, 103
    .byte W01
    .byte BEND, 77
    .byte W01
    .byte VOL, 95
    .byte W01
    .byte BEND, 82
    .byte W01
    .byte VOL, 87
    .byte W01
    .byte BEND, 86
    .byte W01
    .byte VOL, 79
    .byte W01
    .byte BEND, 91
    .byte W01
    .byte VOL, 71
    .byte W01
    .byte BEND, 95
    .byte W01
    .byte VOL, 63
    .byte W01
    .byte BEND, 100
    .byte W01
    .byte VOL, 55
    .byte W01
    .byte BEND, 105
    .byte W01
    .byte VOL, 47
    .byte W01
    .byte BEND, 109
    .byte W01
    .byte VOL, 39
    .byte W01
    .byte BEND, 114
    .byte W01
    .byte VOL, 31
    .byte W01
    .byte BEND, 118
    .byte W01
    .byte VOL, 23
    .byte W01
    .byte BEND, 123
    .byte W01
    .byte VOL, 15
    .byte W01
    .byte BEND, 127
    .byte W01
    .byte VOL, 8
    .byte W18
    .byte FINE

.align 2
.global song_0FE @ 0858AF7C
song_0FE:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0FE_track0           @ tracks 0x0858AF14


@ ****************************** tracks ******************************
song_0FF_track0: @ 0858AF88
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 31
    .byte VOL, 127
    .byte BENDR, 2
    .byte BEND, 64
    .byte N32, 61, 127
    .byte W02
    .byte VOL, 119
    .byte W01
    .byte BEND, 68
    .byte W01
    .byte VOL, 111
    .byte W01
    .byte BEND, 73
    .byte W01
    .byte VOL, 103
    .byte W01
    .byte BEND, 77
    .byte W01
    .byte VOL, 95
    .byte W01
    .byte BEND, 82
    .byte W01
    .byte VOL, 87
    .byte W01
    .byte BEND, 86
    .byte W01
    .byte VOL, 79
    .byte W01
    .byte BEND, 91
    .byte W01
    .byte VOL, 71
    .byte W01
    .byte BEND, 95
    .byte W01
    .byte VOL, 63
    .byte W01
    .byte BEND, 100
    .byte W01
    .byte VOL, 55
    .byte W01
    .byte BEND, 105
    .byte W01
    .byte VOL, 47
    .byte W01
    .byte BEND, 109
    .byte W01
    .byte VOL, 39
    .byte W01
    .byte BEND, 114
    .byte W01
    .byte VOL, 31
    .byte W01
    .byte BEND, 118
    .byte W01
    .byte VOL, 23
    .byte W01
    .byte BEND, 123
    .byte W01
    .byte VOL, 15
    .byte W01
    .byte BEND, 127
    .byte W01
    .byte VOL, 8
    .byte W18
    .byte FINE

.align 2
.global song_0FF @ 0858AFF0
song_0FF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_0FF_track0           @ tracks 0x0858AF88


@ ****************************** tracks ******************************
song_100_track0: @ 0858AFFC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 54
    .byte VOL, 110
    .byte BENDR, 12
    .byte BEND, 0
    .byte N72, 62, 127
    .byte W02
    .byte BEND, 1
    .byte W02
    .byte 0x04
    .byte W02
    .byte xIECL
    .byte W02
    .byte 0x10
    .byte W02
    .byte 0x19
    .byte W02
    .byte 0x24
    .byte W02
    .byte 0x31
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x4E
    .byte W02
    .byte VOL, 110
    .byte BEND, 81
    .byte W02
    .byte VOL, 96
    .byte BEND, 84
    .byte W02
    .byte VOL, 84
    .byte BEND, 87
    .byte W02
    .byte VOL, 71
    .byte BEND, 91
    .byte W02
    .byte VOL, 61
    .byte BEND, 95
    .byte W02
    .byte VOL, 51
    .byte BEND, 98
    .byte W02
    .byte VOL, 42
    .byte BEND, 103
    .byte W02
    .byte VOL, 34
    .byte BEND, 107
    .byte W02
    .byte VOL, 26
    .byte BEND, 112
    .byte W02
    .byte VOL, 20
    .byte BEND, 117
    .byte W02
    .byte VOL, 14
    .byte BEND, 122
    .byte W02
    .byte VOL, 10
    .byte BEND, 127
    .byte W02
    .byte VOL, 6
    .byte W02
    .byte 0x03
    .byte W02
    .byte 0x01
    .byte W02
    .byte 0x00
    .byte W02
    .byte W24
    .byte FINE

.align 2
.global song_100 @ 0858B07C
song_100:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_100_track0           @ tracks 0x0858AFFC


@ ****************************** tracks ******************************
song_101_track0: @ 0858B088
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 53
    .byte VOL, 127
    .byte BEND, 64
    .byte N72, 60, 127
    .byte W02
    .byte VOL, 126
    .byte BEND, 64
    .byte W06
    .byte VOL, 125
    .byte W02
    .byte 0x7C
    .byte W02
    .byte 0x7B
    .byte W02
    .byte 0x7A
    .byte W02
    .byte 0x78
    .byte W02
    .byte 0x77
    .byte W02
    .byte 0x75
    .byte W02
    .byte 0x73
    .byte W02
    .byte 0x70
    .byte W02
    .byte 0x6E
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x65
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x5B
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x37
    .byte W02
    .byte 0x32
    .byte W02
    .byte 0x2C
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x1A
    .byte W02
    .byte 0x14
    .byte W02
    .byte 0x0D
    .byte W02
    .byte 0x06
    .byte W02
    .byte FINE

.align 2
.global song_101 @ 0858B0E0
song_101:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_101_track0           @ tracks 0x0858B088


@ ****************************** tracks ******************************
song_102_track0: @ 0858B0EC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 39
    .byte BENDR, 12
    .byte VOL, 27
    .byte TIE, 60, 127
    .byte W01
    .byte VOL, 55
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x6E
    .byte W21
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W02
    .byte 0x6D
    .byte W01
    .byte 0x68
    .byte W01
    .byte 0x65
    .byte W01
    .byte 0x61
    .byte W01
    .byte 0x5D
    .byte W01
    .byte 0x59
    .byte W01
    .byte 0x55
    .byte W01
    .byte 0x51
    .byte W01
    .byte 0x4D
    .byte W01
    .byte 0x49
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x3A
    .byte W01
    .byte 0x36
    .byte W01
    .byte 0x32
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x26
    .byte W01
    .byte 0x22
    .byte W01
    .byte 0x1F
    .byte W01
    .byte 0x1A
    .byte W01
    .byte 0x17
    .byte W01
    .byte 0x13
    .byte W01
    .byte 0x0F
    .byte W01
    .byte 0x0B
    .byte W01
    .byte 0x07
    .byte W01
    .byte 0x03
    .byte W01
    .byte EOT
    .byte VOL, 0
    .byte W18
    .byte FINE

.align 2
.global song_102 @ 0858B148
song_102:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_102_track0           @ tracks 0x0858B0EC


@ ****************************** tracks ******************************
song_103_track0: @ 0858B154
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 3
    .byte VOL, 127
    .byte BENDR, 8
    .byte BEND, 64
    .byte TIE, 62, 127
    .byte W02
    .byte BEND, 64
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x41
    .byte W02
    .byte 0x41
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x43
    .byte W02
    .byte 0x43
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x45
    .byte W01
    .byte 0x45
    .byte W01
    .byte 0x45
    .byte W01
    .byte 0x45
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x46
    .byte W02
    .byte 0x46
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x49
    .byte W01
    .byte 0x49
    .byte W01
    .byte 0x49
    .byte W01
    .byte 0x4A
    .byte W01
    .byte 0x4A
    .byte W01
    .byte 0x4A
    .byte W02
    .byte 0x4B
    .byte W01
    .byte 0x4B
    .byte W01
    .byte 0x4B
    .byte W01
    .byte 0x4C
    .byte W01
    .byte 0x4C
    .byte W01
    .byte 0x4C
    .byte W01
    .byte 0x4D
    .byte W01
    .byte 0x4D
    .byte W01
    .byte 0x4D
    .byte W01
    .byte 0x4E
    .byte W01
    .byte 0x4E
    .byte W01
    .byte 0x4E
    .byte W01
    .byte 0x4F
    .byte W02
    .byte 0x4F
    .byte W01
    .byte 0x50
    .byte W01
    .byte 0x50
    .byte W01
    .byte 0x50
    .byte W01
    .byte 0x51
    .byte W01
    .byte 0x51
    .byte W01
    .byte 0x52
    .byte W01
    .byte 0x52
    .byte W01
    .byte 0x52
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x52
    .byte W24
    .byte W24
    .byte W12
    .byte VOL, 127
    .byte W02
    .byte 0x6E
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x2D
    .byte W02
    .byte 0x24
    .byte W02
    .byte 0x1B
    .byte W02
    .byte 0x14
    .byte W02
    .byte 0x0E
    .byte W02
    .byte xIECL
    .byte W02
    .byte 0x05
    .byte W02
    .byte 0x02
    .byte W02
    .byte 0x00
    .byte W02
    .byte EOT
    .byte W06
    .byte FINE

.align 2
.global song_103 @ 0858B23C
song_103:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_103_track0           @ tracks 0x0858B154


@ ****************************** tracks ******************************
song_104_track0: @ 0858B248
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 58
    .byte VOL, 127
    .byte TIE, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte VOL, 120
    .byte W08
    .byte 0x70
    .byte W08
    .byte 0x68
    .byte W08
    .byte 0x62
    .byte W08
    .byte 0x56
    .byte W02
    .byte EOT
    .byte W14
    .byte FINE

.align 2
.global song_104 @ 0858B268
song_104:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_104_track0           @ tracks 0x0858B248


@ ****************************** tracks ******************************
song_105_track0: @ 0858B274
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 59
    .byte BENDR, 5
    .byte MOD, 0
    .byte VOL, 40
    .byte BEND, 0
    .byte TIE, 60, 112
    .byte W04
    .byte VOL, 43
    .byte W02
    .byte BEND, 0
    .byte W02
    .byte VOL, 47
    .byte W04
    .byte 0x32
    .byte BEND, 0
    .byte W04
    .byte VOL, 54
    .byte W02
    .byte BEND, 1
    .byte W02
    .byte VOL, 58
    .byte W04
    .byte 0x3D
    .byte BEND, 2
    .byte W04
    .byte VOL, 65
    .byte W02
    .byte BEND, 3
    .byte W02
    .byte VOL, 68
    .byte W04
    .byte 0x48
    .byte BEND, 4
    .byte W04
    .byte VOL, 76
    .byte W02
    .byte BEND, 6
    .byte W02
    .byte VOL, 79
    .byte W04
    .byte 0x53
    .byte BEND, 8
    .byte W04
    .byte VOL, 87
    .byte W02
    .byte BEND, 10
    .byte W02
    .byte VOL, 90
    .byte W04
    .byte 0x5E
    .byte BEND, 12
    .byte W04
    .byte VOL, 97
    .byte W02
    .byte BEND, 15
    .byte W02
    .byte VOL, 101
    .byte W04
    .byte 0x69
    .byte BEND, 18
    .byte W04
    .byte VOL, 108
    .byte W02
    .byte BEND, 21
    .byte W02
    .byte VOL, 112
    .byte W04
    .byte 0x74
    .byte BEND, 24
    .byte W04
    .byte VOL, 119
    .byte W02
    .byte BEND, 28
    .byte W02
    .byte VOL, 123
    .byte W04
    .byte 0x7F
    .byte BEND, 32
    .byte W06
    .byte 0x24
    .byte W06
    .byte 0x28
    .byte W06
    .byte 0x2D
    .byte W06
    .byte 0x32
    .byte W06
    .byte 0x37
    .byte W06
    .byte MODT, 0
    .byte MOD, 30
    .byte LFOS, 3
    .byte BEND, 60
    .byte W06
    .byte 0x40
    .byte W06
    .byte W24
    .byte W24
    .byte W24
    .byte W12
    .byte MOD, 40
    .byte W12
    .byte W24
    .byte W24
    .byte W24
    .byte W02
    .byte VOL, 127
    .byte W02
    .byte 0x76
    .byte W02
    .byte 0x6E
    .byte W02
    .byte 0x66
    .byte W02
    .byte 0x5E
    .byte W02
    .byte LFOS, 4
    .byte MOD, 35
    .byte VOL, 87
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x2E
    .byte W02
    .byte 0x29
    .byte W02
    .byte 0x25
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x1D
    .byte W02
    .byte 0x1A
    .byte W02
    .byte 0x17
    .byte W02
    .byte 0x14
    .byte W02
    .byte 0x11
    .byte W02
    .byte 0x0F
    .byte W02
    .byte 0x0E
    .byte W02
    .byte 0x0C
    .byte W02
    .byte 0x0B
    .byte W02
    .byte 0x0A
    .byte W08
    .byte EOT
    .byte W12
    .byte FINE

song_105_track1: @ 0858B34B
    .byte KEYSH, 0
    .byte VOICE, 60
    .byte VOL, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W02
    .byte TIE, 60, 100
    .byte W22
    .byte W24
    .byte W24
    .byte W24
    .byte W08
    .byte EOT
    .byte W16
    .byte FINE

.align 2
.global song_105 @ 0858B368
song_105:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_105_track0           @ tracks 0x0858B274
    .word song_105_track1           @ tracks 0x0858B34B


@ ****************************** tracks ******************************
song_106_track0: @ 0858B378
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 59
    .byte VOL, 127
    .byte BENDR, 14
    .byte LFOS, 40
    .byte MODT, 0
    .byte MOD, 40
    .byte BEND, 64
    .byte TIE, 57, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W04
    .byte BEND, 64
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x4E
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x53
    .byte W02
    .byte VOL, 126
    .byte BEND, 85
    .byte W02
    .byte VOL, 120
    .byte BEND, 87
    .byte W02
    .byte 0x5A
    .byte W02
    .byte VOL, 111
    .byte BEND, 92
    .byte W02
    .byte 0x5E
    .byte W02
    .byte VOL, 102
    .byte BEND, 97
    .byte W02
    .byte 0x64
    .byte W02
    .byte VOL, 93
    .byte BEND, 102
    .byte W02
    .byte 0x69
    .byte W02
    .byte VOL, 85
    .byte BEND, 108
    .byte W02
    .byte 0x6F
    .byte W02
    .byte VOL, 77
    .byte BEND, 114
    .byte W02
    .byte 0x75
    .byte W02
    .byte VOL, 69
    .byte BEND, 121
    .byte W02
    .byte 0x7C
    .byte W02
    .byte VOL, 62
    .byte BEND, 127
    .byte W04
    .byte VOL, 55
    .byte W04
    .byte 0x31
    .byte W04
    .byte 0x2B
    .byte W04
    .byte 0x25
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x1B
    .byte W04
    .byte 0x17
    .byte W04
    .byte 0x13
    .byte W04
    .byte 0x0F
    .byte W04
    .byte 0x0C
    .byte W04
    .byte xIECL
    .byte W04
    .byte 0x06
    .byte W04
    .byte 0x04
    .byte W06
    .byte 0x02
    .byte W02
    .byte EOT
    .byte VOL, 1
    .byte W04
    .byte 0x00
    .byte W08
    .byte FINE

.align 2
.global song_106 @ 0858B41C
song_106:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_106_track0           @ tracks 0x0858B378


@ ****************************** tracks ******************************
song_108_track0: @ 0858B428
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 21
    .byte VOL, 120
    .byte N84, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_108 @ 0858B438
song_108:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_108_track0           @ tracks 0x0858B428


@ ****************************** tracks ******************************
song_109_track0: @ 0858B444
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 24
    .byte VOL, 120
    .byte N48, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_109 @ 0858B454
song_109:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_109_track0           @ tracks 0x0858B444


@ ****************************** tracks ******************************
song_10A_track0: @ 0858B460
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 27
    .byte VOL, 100
    .byte TIE, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte VOL, 100
    .byte W02
    .byte 0x63
    .byte W04
    .byte 0x61
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x5D
    .byte W02
    .byte 0x5B
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x55
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x4E
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x37
    .byte W02
    .byte 0x31
    .byte W02
    .byte 0x2B
    .byte W02
    .byte 0x25
    .byte W02
    .byte 0x1D
    .byte W02
    .byte 0x16
    .byte W02
    .byte 0x0F
    .byte W02
    .byte 0x07
    .byte W02
    .byte 0x00
    .byte W02
    .byte EOT
    .byte W22
    .byte FINE

.align 2
.global song_10A @ 0858B4A4
song_10A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_10A_track0           @ tracks 0x0858B460


@ ****************************** tracks ******************************
song_10B_track0: @ 0858B4B0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 28
    .byte BENDR, 12
    .byte VOL, 25
    .byte TIE, 60, 127
    .byte W02
    .byte VOL, 25
    .byte W02
    .byte 0x1C
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x27
    .byte W02
    .byte 0x30
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x64
    .byte W06
    .byte W24
    .byte W24
    .byte W18
    .byte BEND, 64
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x31
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x23
    .byte W02
    .byte 0x1C
    .byte W02
    .byte 0x15
    .byte W02
    .byte 0x0E
    .byte W02
    .byte 0x07
    .byte W02
    .byte 0x00
    .byte W12
    .byte W24
    .byte EOT
    .byte FINE

.align 2
.global song_10B @ 0858B4EC
song_10B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_10B_track0           @ tracks 0x0858B4B0


@ ****************************** tracks ******************************
song_10C_track0: @ 0858B4F8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 55
    .byte VOL, 127
    .byte N40, 62, 127
    .byte W12
    .byte VOL, 127
    .byte W02
    .byte 0x6D
    .byte W02
    .byte 0x5D
    .byte W02
    .byte 0x4E
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x34
    .byte W02
    .byte 0x29
    .byte W02
    .byte 0x1F
    .byte W02
    .byte 0x17
    .byte W02
    .byte 0x10
    .byte W02
    .byte 0x0A
    .byte W02
    .byte 0x05
    .byte W02
    .byte 0x02
    .byte W02
    .byte 0x00
    .byte W10
    .byte FINE

.align 2
.global song_10C @ 0858B524
song_10C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_10C_track0           @ tracks 0x0858B4F8


@ ****************************** tracks ******************************
song_10D_track0: @ 0858B530
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 56
    .byte BENDR, 8
    .byte VOL, 55
    .byte BEND, 0
    .byte N72, 67, 127
    .byte W02
    .byte VOL, 72
    .byte BEND, 10
    .byte W02
    .byte VOL, 90
    .byte BEND, 21
    .byte W02
    .byte VOL, 107
    .byte BEND, 31
    .byte W02
    .byte VOL, 107
    .byte BEND, 42
    .byte W02
    .byte VOL, 105
    .byte BEND, 53
    .byte W02
    .byte VOL, 104
    .byte BEND, 64
    .byte W02
    .byte VOL, 103
    .byte BEND, 74
    .byte W02
    .byte VOL, 100
    .byte BEND, 85
    .byte W02
    .byte VOL, 97
    .byte BEND, 95
    .byte W02
    .byte VOL, 91
    .byte BEND, 106
    .byte W02
    .byte VOL, 86
    .byte BEND, 117
    .byte W02
    .byte VOL, 79
    .byte BEND, 127
    .byte W02
    .byte VOL, 71
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x34
    .byte BEND, 64
    .byte W02
    .byte VOL, 48
    .byte BEND, 74
    .byte W02
    .byte VOL, 51
    .byte BEND, 85
    .byte W02
    .byte VOL, 54
    .byte BEND, 95
    .byte W02
    .byte VOL, 58
    .byte BEND, 106
    .byte W02
    .byte VOL, 61
    .byte BEND, 117
    .byte W02
    .byte 0x7F
    .byte W02
    .byte VOL, 64
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x47
    .byte BEND, 64
    .byte W02
    .byte VOL, 76
    .byte BEND, 74
    .byte W02
    .byte VOL, 70
    .byte BEND, 85
    .byte W02
    .byte VOL, 63
    .byte BEND, 95
    .byte W02
    .byte VOL, 56
    .byte BEND, 106
    .byte W02
    .byte VOL, 49
    .byte BEND, 117
    .byte W02
    .byte VOL, 42
    .byte BEND, 127
    .byte W02
    .byte VOL, 35
    .byte W02
    .byte 0x1B
    .byte W02
    .byte 0x14
    .byte BEND, 64
    .byte W02
    .byte VOL, 13
    .byte BEND, 74
    .byte W02
    .byte VOL, 6
    .byte BEND, 85
    .byte W02
    .byte FINE

.align 2
.global song_10D @ 0858B5DC
song_10D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_10D_track0           @ tracks 0x0858B530


@ ****************************** tracks ******************************
song_10E_track0: @ 0858B5E8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte BENDR, 3
    .byte VOL, 32
    .byte BEND, 64
    .byte N48, 57, 127
    .byte W01
    .byte VOL, 63
    .byte W01
    .byte 0x5F
    .byte BEND, 64
    .byte W01
    .byte VOL, 127
    .byte W01
    .byte BEND, 64
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x57
    .byte W02
    .byte VOL, 127
    .byte BEND, 92
    .byte W01
    .byte VOL, 117
    .byte W01
    .byte 0x6B
    .byte BEND, 97
    .byte W01
    .byte VOL, 98
    .byte W01
    .byte 0x59
    .byte BEND, 102
    .byte W01
    .byte VOL, 81
    .byte W01
    .byte 0x49
    .byte BEND, 108
    .byte W01
    .byte VOL, 65
    .byte W01
    .byte 0x3A
    .byte BEND, 114
    .byte W01
    .byte VOL, 52
    .byte W01
    .byte 0x2E
    .byte BEND, 121
    .byte W01
    .byte VOL, 40
    .byte W01
    .byte 0x22
    .byte BEND, 127
    .byte W01
    .byte VOL, 29
    .byte W01
    .byte 0x19
    .byte W01
    .byte 0x15
    .byte W01
    .byte 0x11
    .byte W01
    .byte 0x0E
    .byte W01
    .byte 0x0B
    .byte W01
    .byte xIECL
    .byte W01
    .byte 0x07
    .byte W01
    .byte 0x05
    .byte W01
    .byte 0x04
    .byte W02
    .byte FINE

.align 2
.global song_10E @ 0858B65C
song_10E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_10E_track0           @ tracks 0x0858B5E8


@ ****************************** tracks ******************************
song_10F_track0: @ 0858B668
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte BENDR, 3
    .byte VOL, 32
    .byte BEND, 64
    .byte N48, 57, 127
    .byte W01
    .byte VOL, 63
    .byte W01
    .byte 0x5F
    .byte BEND, 64
    .byte W01
    .byte VOL, 127
    .byte W01
    .byte BEND, 64
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x57
    .byte W02
    .byte VOL, 127
    .byte BEND, 92
    .byte W01
    .byte VOL, 117
    .byte W01
    .byte 0x6B
    .byte BEND, 97
    .byte W01
    .byte VOL, 98
    .byte W01
    .byte 0x59
    .byte BEND, 102
    .byte W01
    .byte VOL, 81
    .byte W01
    .byte 0x49
    .byte BEND, 108
    .byte W01
    .byte VOL, 65
    .byte W01
    .byte 0x3A
    .byte BEND, 114
    .byte W01
    .byte VOL, 52
    .byte W01
    .byte 0x2E
    .byte BEND, 121
    .byte W01
    .byte VOL, 40
    .byte W01
    .byte 0x22
    .byte BEND, 127
    .byte W01
    .byte VOL, 29
    .byte W01
    .byte 0x19
    .byte W01
    .byte 0x15
    .byte W01
    .byte 0x11
    .byte W01
    .byte 0x0E
    .byte W01
    .byte 0x0B
    .byte W01
    .byte xIECL
    .byte W01
    .byte 0x07
    .byte W01
    .byte 0x05
    .byte W01
    .byte 0x04
    .byte W02
    .byte FINE

.align 2
.global song_10F @ 0858B6DC
song_10F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_10F_track0           @ tracks 0x0858B668


@ ****************************** tracks ******************************
song_110_track0: @ 0858B6E8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte BENDR, 6
    .byte VOL, 32
    .byte BEND, 64
    .byte N48, 60, 127
    .byte W01
    .byte VOL, 63
    .byte BEND, 64
    .byte W01
    .byte VOL, 95
    .byte BEND, 64
    .byte W01
    .byte VOL, 127
    .byte BEND, 64
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x4D
    .byte W02
    .byte 0x52
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x70
    .byte W02
    .byte 0x77
    .byte W01
    .byte VOL, 127
    .byte W01
    .byte 0x6D
    .byte BEND, 127
    .byte W01
    .byte VOL, 92
    .byte W01
    .byte 0x4D
    .byte W01
    .byte 0x3F
    .byte W01
    .byte 0x32
    .byte W01
    .byte 0x27
    .byte W01
    .byte 0x1E
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x0F
    .byte W01
    .byte 0x0A
    .byte W01
    .byte 0x06
    .byte W01
    .byte 0x04
    .byte W01
    .byte FINE

.align 2
.global song_110 @ 0858B748
song_110:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_110_track0           @ tracks 0x0858B6E8


@ ****************************** tracks ******************************
song_111_track0: @ 0858B754
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte BENDR, 6
    .byte VOL, 32
    .byte BEND, 64
    .byte N48, 60, 127
    .byte W01
    .byte VOL, 63
    .byte BEND, 64
    .byte W01
    .byte VOL, 95
    .byte BEND, 64
    .byte W01
    .byte VOL, 127
    .byte BEND, 64
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x4D
    .byte W02
    .byte 0x52
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x70
    .byte W02
    .byte 0x77
    .byte W01
    .byte VOL, 127
    .byte W01
    .byte 0x6D
    .byte BEND, 127
    .byte W01
    .byte VOL, 92
    .byte W01
    .byte 0x4D
    .byte W01
    .byte 0x3F
    .byte W01
    .byte 0x32
    .byte W01
    .byte 0x27
    .byte W01
    .byte 0x1E
    .byte W01
    .byte 0x16
    .byte W01
    .byte 0x0F
    .byte W01
    .byte 0x0A
    .byte W01
    .byte 0x06
    .byte W01
    .byte 0x04
    .byte W01
    .byte FINE

.align 2
.global song_111 @ 0858B7B4
song_111:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_111_track0           @ tracks 0x0858B754


@ ****************************** tracks ******************************
song_112_track0: @ 0858B7C0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte BENDR, 10
    .byte VOL, 32
    .byte BEND, 64
    .byte N48, 60, 127
    .byte W01
    .byte VOL, 63
    .byte W01
    .byte 0x5F
    .byte BEND, 69
    .byte W01
    .byte VOL, 127
    .byte W01
    .byte BEND, 74
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x6E
    .byte W02
    .byte 0x71
    .byte W02
    .byte 0x73
    .byte W02
    .byte 0x76
    .byte W02
    .byte 0x78
    .byte W02
    .byte 0x7A
    .byte W02
    .byte 0x7B
    .byte W02
    .byte VOL, 127
    .byte BEND, 124
    .byte W01
    .byte VOL, 107
    .byte W01
    .byte 0x59
    .byte BEND, 126
    .byte W01
    .byte VOL, 72
    .byte W01
    .byte 0x39
    .byte BEND, 126
    .byte W01
    .byte VOL, 44
    .byte W01
    .byte 0x21
    .byte BEND, 127
    .byte W01
    .byte VOL, 23
    .byte W01
    .byte 0x10
    .byte BEND, 127
    .byte W01
    .byte VOL, 9
    .byte W01
    .byte 0x05
    .byte BEND, 127
    .byte W01
    .byte VOL, 2
    .byte W01
    .byte FINE

.align 2
.global song_112 @ 0858B828
song_112:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_112_track0           @ tracks 0x0858B7C0


@ ****************************** tracks ******************************
song_113_track0: @ 0858B834
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte BENDR, 10
    .byte VOL, 32
    .byte BEND, 64
    .byte N48, 60, 127
    .byte W01
    .byte VOL, 63
    .byte W01
    .byte 0x5F
    .byte BEND, 69
    .byte W01
    .byte VOL, 127
    .byte W01
    .byte BEND, 74
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x6E
    .byte W02
    .byte 0x71
    .byte W02
    .byte 0x73
    .byte W02
    .byte 0x76
    .byte W02
    .byte 0x78
    .byte W02
    .byte 0x7A
    .byte W02
    .byte 0x7B
    .byte W02
    .byte VOL, 127
    .byte BEND, 124
    .byte W01
    .byte VOL, 107
    .byte W01
    .byte 0x59
    .byte BEND, 126
    .byte W01
    .byte VOL, 72
    .byte W01
    .byte 0x39
    .byte BEND, 126
    .byte W01
    .byte VOL, 44
    .byte W01
    .byte 0x21
    .byte BEND, 127
    .byte W01
    .byte VOL, 23
    .byte W01
    .byte 0x10
    .byte BEND, 127
    .byte W01
    .byte VOL, 9
    .byte W01
    .byte 0x05
    .byte BEND, 127
    .byte W01
    .byte VOL, 2
    .byte W01
    .byte FINE

.align 2
.global song_113 @ 0858B89C
song_113:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_113_track0           @ tracks 0x0858B834


@ ****************************** tracks ******************************
song_114_track0: @ 0858B8A8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte BENDR, 12
    .byte MODT, 1
    .byte LFOS, 60
    .byte MOD, 10
    .byte VOL, 69
    .byte BEND, 0
    .byte TIE, 67, 127
    .byte W02
    .byte VOL, 112
    .byte BEND, 10
    .byte W02
    .byte VOL, 127
    .byte BEND, 19
    .byte W02
    .byte 0x1B
    .byte W02
    .byte 0x23
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x34
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x40
    .byte W20
    .byte 0x4C
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W22
    .byte W01
    .byte 0x4A
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x42
    .byte W01
    .byte W01
    .byte 0x42
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W17
    .byte W07
    .byte 0x4C
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x45
    .byte W01
    .byte W01
    .byte 0x44
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x42
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x41
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W01
    .byte VOL, 127
    .byte W01
    .byte BEND, 66
    .byte W01
    .byte VOL, 126
    .byte W01
    .byte BEND, 69
    .byte W01
    .byte VOL, 125
    .byte W01
    .byte BEND, 73
    .byte W01
    .byte VOL, 123
    .byte W01
    .byte BEND, 78
    .byte W01
    .byte VOL, 119
    .byte W01
    .byte BEND, 84
    .byte W01
    .byte VOL, 114
    .byte BEND, 88
    .byte W02
    .byte VOL, 108
    .byte W02
    .byte 0x65
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x1A
    .byte W02
    .byte xIECV
    .byte W02
    .byte EOT
    .byte VOL, 0
    .byte W04
    .byte FINE

.align 2
.global song_114 @ 0858B980
song_114:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_114_track0           @ tracks 0x0858B8A8


@ ****************************** tracks ******************************
song_117_track0: @ 0858B98C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 23
    .byte VOL, 127
    .byte N01, 60, 127
    .byte W01
    .byte N24
    .byte W23
    .byte W24
    .byte FINE

.align 2
.global song_117 @ 0858B99C
song_117:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_117_track0           @ tracks 0x0858B98C


@ ****************************** tracks ******************************
song_118_track0: @ 0858B9A8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 23
    .byte VOL, 127
    .byte N13, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_118 @ 0858B9B8
song_118:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_118_track0           @ tracks 0x0858B9A8


@ ****************************** tracks ******************************
song_119_track0: @ 0858B9C4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 35
    .byte VOL, 127
    .byte N14, 60, 127
    .byte W18
    .byte N05, 58, 56
    .byte W06
    .byte 0x3C
    .byte 0x58
    .byte W06
    .byte 0x3D
    .byte 0x38
    .byte W06
    .byte N06, 60, 104
    .byte W07
    .byte N03, 62, 52
    .byte W05
    .byte N12, 60, 84
    .byte W12
    .byte 0x3E
    .byte 0x44
    .byte W12
    .byte FINE

.align 2
.global song_119 @ 0858B9EC
song_119:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_119_track0           @ tracks 0x0858B9C4


@ ****************************** tracks ******************************
song_11A_track0: @ 0858B9F8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 61
    .byte VOL, 127
    .byte N72, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_11A @ 0858BA08
song_11A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_11A_track0           @ tracks 0x0858B9F8


@ ****************************** tracks ******************************
song_11B_track0: @ 0858BA14
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 37
    .byte VOL, 120
    .byte N60, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_11B @ 0858BA24
song_11B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_11B_track0           @ tracks 0x0858BA14


@ ****************************** tracks ******************************
song_11C_track0: @ 0858BA30
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 38
    .byte VOL, 110
    .byte N96, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_11C @ 0858BA40
song_11C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_11C_track0           @ tracks 0x0858BA30


@ ****************************** tracks ******************************
song_11D_track0: @ 0858BA4C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 7
    .byte VOL, 88
    .byte N44, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_11D @ 0858BA5C
song_11D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_11D_track0           @ tracks 0x0858BA4C


@ ****************************** tracks ******************************
song_11E_track0: @ 0858BA68
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 43
    .byte BENDR, 4
    .byte VOL, 52
    .byte BEND, 64
    .byte N72, 60, 127
    .byte W04
    .byte VOL, 54
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x68
    .byte W06
    .byte BEND, 64
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x41
    .byte W20
    .byte VOL, 104
    .byte W02
    .byte 0x56
    .byte W02
    .byte 0x48
    .byte BEND, 68
    .byte W02
    .byte VOL, 58
    .byte BEND, 71
    .byte W02
    .byte VOL, 45
    .byte BEND, 75
    .byte W02
    .byte VOL, 35
    .byte BEND, 80
    .byte W02
    .byte VOL, 25
    .byte BEND, 85
    .byte W02
    .byte VOL, 18
    .byte BEND, 92
    .byte W02
    .byte VOL, 11
    .byte BEND, 100
    .byte W02
    .byte VOL, 6
    .byte BEND, 108
    .byte W02
    .byte VOL, 2
    .byte BEND, 117
    .byte W02
    .byte VOL, 0
    .byte BEND, 127
    .byte W02
    .byte FINE

.align 2
.global song_11E @ 0858BAC8
song_11E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_11E_track0           @ tracks 0x0858BA68


@ ****************************** tracks ******************************
song_11F_track0: @ 0858BAD4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 57
    .byte VOL, 96
    .byte BENDR, 8
    .byte N64, 60, 127
    .byte W24
    .byte W18
    .byte VOL, 80
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x17
    .byte W02
    .byte 0x10
    .byte W02
    .byte 0x0A
    .byte W02
    .byte 0x06
    .byte W02
    .byte 0x02
    .byte W02
    .byte 0x00
    .byte W10
    .byte FINE

.align 2
.global song_11F @ 0858BAFC
song_11F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_11F_track0           @ tracks 0x0858BAD4


@ ****************************** tracks ******************************
song_120_track0: @ 0858BB08
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 48
    .byte VOL, 62
    .byte N96, 60, 127
    .byte W01
    .byte VOL, 70
    .byte W01
    .byte 0x4E
    .byte W01
    .byte 0x56
    .byte W01
    .byte 0x5E
    .byte W01
    .byte 0x64
    .byte W19
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_120 @ 0858BB24
song_120:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_120_track0           @ tracks 0x0858BB08


@ ****************************** tracks ******************************
song_121_track0: @ 0858BB30
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 49
    .byte VOL, 56
    .byte N96, 60, 127
    .byte W01
    .byte VOL, 63
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x4D
    .byte W01
    .byte 0x55
    .byte W01
    .byte 0x5A
    .byte W19
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_121 @ 0858BB4C
song_121:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_121_track0           @ tracks 0x0858BB30


@ ****************************** tracks ******************************
song_122_track0: @ 0858BB58
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 43
    .byte VOL, 110
    .byte BENDR, 12
    .byte BEND, 60
    .byte TIE, 60, 127
    .byte W01
    .byte BEND, 60
    .byte W01
    .byte 0x3D
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x3F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x45
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x49
    .byte W01
    .byte 0x4A
    .byte W01
    .byte 0x4B
    .byte W01
    .byte 0x4B
    .byte W01
    .byte 0x4C
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x45
    .byte W01
    .byte 0x44
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x3F
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x3D
    .byte W01
    .byte 0x3C
    .byte W01
    .byte 0x3B
    .byte W01
    .byte 0x3A
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x38
    .byte W01
    .byte 0x37
    .byte W01
    .byte 0x36
    .byte W01
    .byte 0x35
    .byte W01
    .byte 0x34
    .byte W01
    .byte 0x33
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x2F
    .byte W01
    .byte 0x30
    .byte W01
    .byte 0x31
    .byte W01
    .byte 0x32
    .byte W01
    .byte 0x34
    .byte W01
    .byte 0x35
    .byte W01
    .byte 0x36
    .byte W01
    .byte 0x37
    .byte W01
    .byte 0x38
    .byte W01
    .byte 0x3A
    .byte W01
    .byte 0x3B
    .byte W01
    .byte 0x3C
    .byte W01
    .byte 0x3D
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x3F
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x42
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x44
    .byte W01
    .byte VOL, 110
    .byte W01
    .byte BEND, 69
    .byte W01
    .byte 0x45
    .byte W01
    .byte VOL, 104
    .byte BEND, 70
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x48
    .byte W01
    .byte VOL, 100
    .byte BEND, 73
    .byte W01
    .byte 0x4A
    .byte W01
    .byte 0x4B
    .byte W01
    .byte VOL, 96
    .byte BEND, 75
    .byte W01
    .byte 0x4C
    .byte W01
    .byte 0x4D
    .byte W01
    .byte VOL, 90
    .byte BEND, 78
    .byte W01
    .byte 0x4E
    .byte W01
    .byte 0x4C
    .byte W01
    .byte VOL, 86
    .byte BEND, 75
    .byte W01
    .byte 0x4A
    .byte W01
    .byte 0x49
    .byte W01
    .byte VOL, 82
    .byte BEND, 72
    .byte W01
    .byte 0x47
    .byte W01
    .byte 0x46
    .byte W01
    .byte VOL, 77
    .byte BEND, 68
    .byte W01
    .byte 0x43
    .byte W01
    .byte 0x42
    .byte W01
    .byte VOL, 72
    .byte BEND, 65
    .byte W01
    .byte 0x40
    .byte W01
    .byte 0x3E
    .byte W01
    .byte VOL, 68
    .byte W01
    .byte BEND, 59
    .byte W01
    .byte 0x3A
    .byte W01
    .byte VOL, 64
    .byte W01
    .byte BEND, 56
    .byte W01
    .byte 0x37
    .byte W01
    .byte VOL, 62
    .byte BEND, 54
    .byte W01
    .byte 0x35
    .byte W01
    .byte 0x32
    .byte W01
    .byte VOL, 60
    .byte BEND, 49
    .byte W01
    .byte 0x31
    .byte W01
    .byte 0x30
    .byte W01
    .byte VOL, 56
    .byte BEND, 48
    .byte W01
    .byte 0x2A
    .byte W01
    .byte 0x2D
    .byte W01
    .byte VOL, 51
    .byte W01
    .byte BEND, 46
    .byte W01
    .byte 0x30
    .byte W01
    .byte VOL, 47
    .byte BEND, 49
    .byte W01
    .byte 0x33
    .byte W01
    .byte 0x35
    .byte W01
    .byte VOL, 43
    .byte BEND, 54
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x3B
    .byte W01
    .byte VOL, 38
    .byte BEND, 61
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x3E
    .byte W01
    .byte VOL, 34
    .byte BEND, 62
    .byte W01
    .byte 0x41
    .byte W01
    .byte 0x44
    .byte W01
    .byte VOL, 30
    .byte BEND, 71
    .byte W01
    .byte 0x4A
    .byte W01
    .byte 0x4D
    .byte W01
    .byte VOL, 25
    .byte BEND, 80
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x57
    .byte W01
    .byte VOL, 21
    .byte BEND, 90
    .byte W01
    .byte 0x5D
    .byte W01
    .byte VOL, 17
    .byte BEND, 96
    .byte W01
    .byte 0x63
    .byte W01
    .byte VOL, 12
    .byte BEND, 105
    .byte W01
    .byte 0x6D
    .byte W01
    .byte VOL, 8
    .byte BEND, 112
    .byte W01
    .byte 0x73
    .byte W01
    .byte VOL, 0
    .byte BEND, 118
    .byte W01
    .byte EOT
    .byte FINE

.align 2
.global song_122 @ 0858BCD4
song_122:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_122_track0           @ tracks 0x0858BB58


@ ****************************** tracks ******************************
song_123_track0: @ 0858BCE0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 50
    .byte VOL, 80
    .byte N12, 60, 127
    .byte W12
    .byte N11, 60, 96
    .byte W12
    .byte FINE

.align 2
.global song_123 @ 0858BCF4
song_123:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_123_track0           @ tracks 0x0858BCE0


@ ****************************** tracks ******************************
song_124_track0: @ 0858BD00
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 45
    .byte VOL, 100
    .byte BEND, 64
    .byte N56, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_124 @ 0858BD14
song_124:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_124_track0           @ tracks 0x0858BD00


@ ****************************** tracks ******************************
song_125_track0: @ 0858BD20
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 46
    .byte VOL, 110
    .byte N84, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_125 @ 0858BD30
song_125:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_125_track0           @ tracks 0x0858BD20


@ ****************************** tracks ******************************
song_126_track0: @ 0858BD3C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 47
    .byte VOL, 11
    .byte N60, 60, 127
    .byte W01
    .byte VOL, 23
    .byte W02
    .byte 0x27
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x64
    .byte W17
    .byte W14
    .byte 0x53
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x37
    .byte W02
    .byte 0x2C
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x18
    .byte W02
    .byte 0x11
    .byte W02
    .byte 0x0B
    .byte W02
    .byte 0x06
    .byte W02
    .byte 0x02
    .byte W02
    .byte 0x00
    .byte W14
    .byte FINE

.align 2
.global song_126 @ 0858BD6C
song_126:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_126_track0           @ tracks 0x0858BD3C


@ ****************************** tracks ******************************
song_127_track0: @ 0858BD78
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 51
    .byte VOL, 127
    .byte N40, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_127 @ 0858BD88
song_127:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_127_track0           @ tracks 0x0858BD78


@ ****************************** tracks ******************************
song_128_track0: @ 0858BD94
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 51
    .byte BENDR, 18
    .byte VOL, 110
    .byte BEND, 0
    .byte N12, 67, 127
    .byte W01
    .byte BEND, 45
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x50
    .byte W01
    .byte BENDR, 21
    .byte VOL, 109
    .byte BEND, 92
    .byte W01
    .byte VOL, 107
    .byte BEND, 108
    .byte W01
    .byte VOL, 103
    .byte BEND, 127
    .byte W01
    .byte VOL, 95
    .byte W01
    .byte 0x55
    .byte W01
    .byte 0x48
    .byte W01
    .byte 0x38
    .byte W01
    .byte 0x26
    .byte W02
    .byte 0x6E
    .byte N06, 67, 48
    .byte W07
    .byte N04, 67, 20
    .byte W04
    .byte FINE

.align 2
.global song_128 @ 0858BDD4
song_128:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_128_track0           @ tracks 0x0858BD94


@ ****************************** tracks ******************************
song_129_track0: @ 0858BDE0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 52
    .byte VOL, 110
    .byte N72, 63, 127
    .byte W02
    .byte VOL, 109
    .byte W06
    .byte 0x6C
    .byte W02
    .byte 0x6B
    .byte W02
    .byte 0x6A
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x67
    .byte W02
    .byte 0x65
    .byte W02
    .byte 0x63
    .byte W02
    .byte 0x61
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x5B
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x56
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x4D
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x2B
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x1C
    .byte W02
    .byte 0x17
    .byte W02
    .byte 0x12
    .byte W02
    .byte 0x0C
    .byte W02
    .byte FINE

.align 2
.global song_129 @ 0858BE30
song_129:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_129_track0           @ tracks 0x0858BDE0


@ ****************************** tracks ******************************
song_12A_track0: @ 0858BE3C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 22
    .byte VOL, 127
    .byte BENDR, 5
    .byte BEND, 0
    .byte TIE, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W11
    .byte BEND, 0
    .byte W01
    .byte VOL, 127
    .byte W01
    .byte BEND, 1
    .byte W01
    .byte VOL, 125
    .byte W01
    .byte BEND, 6
    .byte W01
    .byte VOL, 121
    .byte W01
    .byte BEND, 13
    .byte W01
    .byte VOL, 115
    .byte W01
    .byte BEND, 24
    .byte W01
    .byte VOL, 105
    .byte W01
    .byte BEND, 38
    .byte W01
    .byte VOL, 94
    .byte W01
    .byte BEND, 54
    .byte W01
    .byte VOL, 80
    .byte BEND, 64
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte EOT
    .byte FINE

.align 2
.global song_12A @ 0858BE88
song_12A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_12A_track0           @ tracks 0x0858BE3C


@ ****************************** tracks ******************************
song_12B_track0: @ 0858BE94
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 23
    .byte BENDR, 2
    .byte VOL, 32
    .byte BEND, 96
    .byte N60, 63, 127
    .byte W02
    .byte BEND, 86
    .byte W02
    .byte VOL, 33
    .byte BEND, 77
    .byte W02
    .byte VOL, 34
    .byte BEND, 69
    .byte W02
    .byte VOL, 36
    .byte BEND, 61
    .byte W02
    .byte VOL, 39
    .byte BEND, 54
    .byte W02
    .byte VOL, 42
    .byte BEND, 47
    .byte W02
    .byte VOL, 46
    .byte BEND, 40
    .byte W02
    .byte VOL, 50
    .byte BEND, 34
    .byte W02
    .byte VOL, 55
    .byte BEND, 29
    .byte W02
    .byte VOL, 61
    .byte BEND, 24
    .byte W02
    .byte VOL, 67
    .byte BEND, 19
    .byte W02
    .byte VOL, 74
    .byte BEND, 15
    .byte W02
    .byte VOL, 81
    .byte BEND, 11
    .byte W02
    .byte VOL, 89
    .byte BEND, 8
    .byte W02
    .byte VOL, 98
    .byte BEND, 6
    .byte W02
    .byte VOL, 107
    .byte BEND, 3
    .byte W02
    .byte VOL, 116
    .byte BEND, 2
    .byte W02
    .byte VOL, 127
    .byte BEND, 0
    .byte W02
    .byte 0x00
    .byte W02
    .byte 0x00
    .byte W08
    .byte W08
    .byte VOL, 110
    .byte W02
    .byte 0x3C
    .byte W14
    .byte FINE

.align 2
.global song_12B @ 0858BF08
song_12B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_12B_track0           @ tracks 0x0858BE94


@ ****************************** tracks ******************************
song_12C_track0: @ 0858BF14
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 39
    .byte VOL, 100
    .byte BENDR, 16
    .byte BEND, 64
    .byte TIE, 56, 127
    .byte W02
    .byte BEND, 64
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x42
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x4D
    .byte W02
    .byte 0x4E
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x52
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x55
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x63
    .byte W02
    .byte 0x66
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x6A
    .byte W02
    .byte 0x6C
    .byte W02
    .byte 0x6E
    .byte W02
    .byte VOL, 100
    .byte BEND, 112
    .byte W02
    .byte VOL, 99
    .byte BEND, 115
    .byte W02
    .byte VOL, 98
    .byte BEND, 117
    .byte W02
    .byte VOL, 96
    .byte BEND, 120
    .byte W02
    .byte VOL, 94
    .byte BEND, 122
    .byte W02
    .byte VOL, 92
    .byte BEND, 125
    .byte W02
    .byte VOL, 88
    .byte BEND, 127
    .byte W02
    .byte VOL, 84
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x37
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x27
    .byte W02
    .byte 0x1D
    .byte W02
    .byte 0x14
    .byte W02
    .byte 0x0A
    .byte W02
    .byte EOT
    .byte VOL, 0
    .byte FINE

.align 2
.global song_12C @ 0858BFB8
song_12C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_12C_track0           @ tracks 0x0858BF14


@ ****************************** tracks ******************************
song_12D_track0: @ 0858BFC4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 56
    .byte BENDR, 16
    .byte VOL, 9
    .byte BEND, 0
    .byte N48, 58, 127
    .byte W02
    .byte VOL, 12
    .byte BEND, 16
    .byte W02
    .byte VOL, 23
    .byte BEND, 30
    .byte W02
    .byte VOL, 41
    .byte BEND, 41
    .byte W02
    .byte VOL, 67
    .byte BEND, 50
    .byte W02
    .byte VOL, 100
    .byte BEND, 56
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x5D
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x71
    .byte W02
    .byte 0x78
    .byte W02
    .byte 0x7D
    .byte W02
    .byte 0x7F
    .byte W01
    .byte 0x7F
    .byte W09
    .byte VOL, 100
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x37
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x1F
    .byte W02
    .byte BENDR, 14
    .byte VOL, 50
    .byte BEND, 0
    .byte N44, 59
    .byte W02
    .byte VOL, 53
    .byte BEND, 14
    .byte W02
    .byte VOL, 62
    .byte BEND, 26
    .byte W02
    .byte VOL, 77
    .byte BEND, 37
    .byte W02
    .byte VOL, 100
    .byte BEND, 46
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x4E
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x65
    .byte W02
    .byte 0x6E
    .byte W02
    .byte 0x75
    .byte W02
    .byte 0x7A
    .byte W02
    .byte 0x7D
    .byte W02
    .byte 0x7E
    .byte W04
    .byte VOL, 100
    .byte W02
    .byte 0x55
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x34
    .byte W02
    .byte 0x2E
    .byte W02
    .byte 0x28
    .byte W02
    .byte 0x26
    .byte W02
    .byte BENDR, 14
    .byte VOL, 37
    .byte W02
    .byte 0x1D
    .byte BEND, 0
    .byte N42, 60
    .byte W02
    .byte VOL, 45
    .byte BEND, 14
    .byte W02
    .byte VOL, 54
    .byte BEND, 26
    .byte W02
    .byte VOL, 70
    .byte BEND, 37
    .byte W02
    .byte VOL, 92
    .byte BEND, 46
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x65
    .byte W02
    .byte 0x6E
    .byte W02
    .byte 0x75
    .byte W02
    .byte 0x7A
    .byte W02
    .byte 0x7D
    .byte W02
    .byte VOL, 85
    .byte BEND, 126
    .byte W02
    .byte VOL, 71
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x2B
    .byte W02
    .byte 0x25
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x1E
    .byte W06
    .byte FINE

.align 2
.global song_12D @ 0858C094
song_12D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_12D_track0           @ tracks 0x0858BFC4


@ ****************************** tracks ******************************
song_12E_track0: @ 0858C0A0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 11
    .byte VOL, 110
    .byte PAN, 0
    .byte N14, 60, 127
    .byte W18
    .byte PAN, 30
    .byte N14
    .byte W06
    .byte W10
    .byte PAN, 0
    .byte N15, 59
    .byte W14
    .byte W02
    .byte PAN, 22
    .byte N13, 61
    .byte W15
    .byte PAN, 0
    .byte N24, 62
    .byte W07
    .byte W24
    .byte FINE

song_12E_track1: @ 0858C0C5
    .byte KEYSH, 0
    .byte VOICE, 11
    .byte VOL, 110
    .byte PAN, 127
    .byte W08
    .byte N15, 59, 127
    .byte W16
    .byte PAN, 94
    .byte N15, 61
    .byte W17
    .byte PAN, 114
    .byte N12, 60
    .byte W07
    .byte W09
    .byte PAN, 127
    .byte N19, 59
    .byte W15
    .byte W24
    .byte FINE

.align 2
.global song_12E @ 0858C0E4
song_12E:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_12E_track0           @ tracks 0x0858C0A0
    .word song_12E_track1           @ tracks 0x0858C0C5


@ ****************************** tracks ******************************
song_12F_track0: @ 0858C0F4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 56
    .byte BENDR, 8
    .byte VOL, 64
    .byte PAN, 64
    .byte BEND, 0
    .byte TIE, 67, 127
    .byte W02
    .byte VOL, 70
    .byte BEND, 10
    .byte W02
    .byte VOL, 77
    .byte BEND, 21
    .byte W02
    .byte VOL, 84
    .byte BEND, 31
    .byte W02
    .byte VOL, 91
    .byte BEND, 42
    .byte W02
    .byte VOL, 98
    .byte BEND, 53
    .byte W02
    .byte VOL, 105
    .byte BEND, 64
    .byte W02
    .byte VOL, 112
    .byte BEND, 74
    .byte W02
    .byte VOL, 119
    .byte BEND, 85
    .byte W02
    .byte VOL, 127
    .byte BEND, 95
    .byte W02
    .byte VOL, 120
    .byte BEND, 106
    .byte W02
    .byte VOL, 113
    .byte BEND, 117
    .byte W02
    .byte VOL, 107
    .byte BEND, 127
    .byte W02
    .byte VOL, 100
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x57
    .byte BEND, 64
    .byte W02
    .byte VOL, 81
    .byte BEND, 74
    .byte W02
    .byte VOL, 74
    .byte BEND, 85
    .byte W02
    .byte VOL, 66
    .byte BEND, 95
    .byte W02
    .byte VOL, 71
    .byte BEND, 106
    .byte W02
    .byte VOL, 76
    .byte BEND, 117
    .byte W02
    .byte VOL, 81
    .byte BEND, 127
    .byte W02
    .byte VOL, 86
    .byte W02
    .byte 0x5B
    .byte W02
    .byte 0x60
    .byte BEND, 64
    .byte W02
    .byte VOL, 101
    .byte BEND, 74
    .byte W02
    .byte VOL, 106
    .byte BEND, 85
    .byte W02
    .byte VOL, 111
    .byte BEND, 95
    .byte W02
    .byte VOL, 116
    .byte BEND, 106
    .byte W02
    .byte VOL, 121
    .byte BEND, 117
    .byte W02
    .byte VOL, 127
    .byte BEND, 127
    .byte W02
    .byte VOL, 119
    .byte W02
    .byte 0x70
    .byte W02
    .byte 0x69
    .byte BEND, 64
    .byte W02
    .byte VOL, 98
    .byte BEND, 74
    .byte W02
    .byte VOL, 91
    .byte BEND, 85
    .byte W02
    .byte VOL, 84
    .byte BEND, 95
    .byte W02
    .byte VOL, 77
    .byte BEND, 106
    .byte W02
    .byte VOL, 70
    .byte BEND, 117
    .byte W02
    .byte VOL, 64
    .byte BEND, 127
    .byte W04
    .byte VOL, 65
    .byte W02
    .byte 0x3E
    .byte BEND, 64
    .byte W02
    .byte VOL, 72
    .byte BEND, 74
    .byte W02
    .byte VOL, 81
    .byte BEND, 85
    .byte W02
    .byte VOL, 88
    .byte BEND, 95
    .byte W02
    .byte VOL, 97
    .byte BEND, 106
    .byte W02
    .byte 0x75
    .byte W02
    .byte VOL, 100
    .byte BEND, 127
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x51
    .byte W02
    .byte VOL, 96
    .byte BEND, 92
    .byte W02
    .byte VOL, 93
    .byte BEND, 104
    .byte W02
    .byte 0x74
    .byte W02
    .byte VOL, 86
    .byte BEND, 127
    .byte W02
    .byte VOL, 75
    .byte BEND, 74
    .byte W02
    .byte VOL, 68
    .byte BEND, 85
    .byte W02
    .byte VOL, 60
    .byte BEND, 95
    .byte W02
    .byte VOL, 51
    .byte BEND, 106
    .byte W02
    .byte 0x75
    .byte W01
    .byte VOL, 41
    .byte W01
    .byte BEND, 127
    .byte W01
    .byte VOL, 30
    .byte W02
    .byte 0x13
    .byte W02
    .byte 0x06
    .byte W02
    .byte EOT
    .byte W17
    .byte FINE

.align 2
.global song_12F @ 0858C214
song_12F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_12F_track0           @ tracks 0x0858C0F4


@ ****************************** tracks ******************************
song_130_track0: @ 0858C220
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 12
    .byte VOL, 52
    .byte TIE, 60, 127
    .byte W02
    .byte VOL, 58
    .byte W02
    .byte 0x40
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x4D
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x61
    .byte W02
    .byte 0x68
    .byte W08
    .byte W24
    .byte W24
    .byte W24
    .byte 0x62
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x52
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x3E
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x32
    .byte W02
    .byte 0x2D
    .byte W02
    .byte 0x28
    .byte W02
    .byte 0x23
    .byte W02
    .byte 0x1F
    .byte W02
    .byte 0x1B
    .byte W02
    .byte 0x17
    .byte W02
    .byte 0x14
    .byte W02
    .byte 0x11
    .byte W02
    .byte 0x0E
    .byte W02
    .byte 0x0C
    .byte W02
    .byte 0x0A
    .byte W02
    .byte xIECL
    .byte W02
    .byte 0x07
    .byte W02
    .byte 0x06
    .byte W06
    .byte EOT
    .byte FINE

.align 2
.global song_130 @ 0858C270
song_130:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_130_track0           @ tracks 0x0858C220


@ ****************************** tracks ******************************
song_131_track0: @ 0858C27C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 13
    .byte VOL, 110
    .byte N96, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_131 @ 0858C290
song_131:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_131_track0           @ tracks 0x0858C27C


@ ****************************** tracks ******************************
song_132_track0: @ 0858C29C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 11
    .byte VOL, 127
    .byte N48, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_132 @ 0858C2AC
song_132:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_132_track0           @ tracks 0x0858C29C


@ ****************************** tracks ******************************
song_133_track0: @ 0858C2B8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 14
    .byte VOL, 112
    .byte N48, 60, 127
    .byte W24
    .byte VOL, 111
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x46
    .byte W02
    .byte 0x34
    .byte W02
    .byte 0x23
    .byte W02
    .byte 0x11
    .byte W02
    .byte FINE

.align 2
.global song_133 @ 0858C2E0
song_133:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_133_track0           @ tracks 0x0858C2B8


@ ****************************** tracks ******************************
song_134_track0: @ 0858C2EC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 26
    .byte VOL, 127
    .byte N24, 60, 72
    .byte W24
    .byte N02
    .byte W02
    .byte N02
    .byte W02
    .byte N01, 60, 76
    .byte W01
    .byte N02
    .byte W02
    .byte N03, 60, 80
    .byte W03
    .byte N02, 60, 88
    .byte W02
    .byte N01, 60, 96
    .byte W01
    .byte N02, 60, 100
    .byte W02
    .byte 0x3C
    .byte 0x6C
    .byte W02
    .byte N01, 60, 116
    .byte W01
    .byte N14, 60, 127
    .byte W06
    .byte W24
    .byte FINE

.align 2
.global song_134 @ 0858C320
song_134:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_134_track0           @ tracks 0x0858C2EC


@ ****************************** tracks ******************************
song_135_track0: @ 0858C32C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 64
    .byte VOL, 127
    .byte N06, 64, 120
    .byte W06
    .byte 0x42
    .byte W06
    .byte VOL, 127
    .byte N20, 72
    .byte W02
    .byte VOL, 114
    .byte W02
    .byte 0x65
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x32
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x19
    .byte W02
    .byte 0x0C
    .byte W02
    .byte 0x00
    .byte W16
    .byte FINE

.align 2
.global song_135 @ 0858C358
song_135:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_135_track0           @ tracks 0x0858C32C


@ ****************************** tracks ******************************
song_136_track0: @ 0858C364
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 27
    .byte VOL, 127
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_136 @ 0858C374
song_136:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_136_track0           @ tracks 0x0858C364


@ ****************************** tracks ******************************
song_137_track0: @ 0858C380
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 28
    .byte BENDR, 12
    .byte VOL, 20
    .byte BEND, 127
    .byte N20, 60, 127
    .byte W01
    .byte VOL, 30
    .byte BEND, 124
    .byte W01
    .byte VOL, 41
    .byte BEND, 121
    .byte W01
    .byte VOL, 51
    .byte BEND, 117
    .byte W01
    .byte VOL, 62
    .byte BEND, 114
    .byte W01
    .byte VOL, 73
    .byte BEND, 111
    .byte W01
    .byte VOL, 83
    .byte BEND, 107
    .byte W01
    .byte VOL, 94
    .byte BEND, 104
    .byte W01
    .byte VOL, 105
    .byte BEND, 101
    .byte W01
    .byte VOL, 115
    .byte BEND, 97
    .byte W01
    .byte VOL, 127
    .byte BEND, 94
    .byte W01
    .byte 0x5A
    .byte W01
    .byte 0x57
    .byte W01
    .byte 0x54
    .byte W01
    .byte 0x50
    .byte W01
    .byte 0x4D
    .byte W01
    .byte VOL, 120
    .byte BEND, 74
    .byte W01
    .byte VOL, 110
    .byte BEND, 70
    .byte W01
    .byte VOL, 85
    .byte BEND, 67
    .byte W01
    .byte VOL, 30
    .byte BEND, 64
    .byte W05
    .byte FINE

.align 2
.global song_137 @ 0858C3E4
song_137:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_137_track0           @ tracks 0x0858C380


@ ****************************** tracks ******************************
song_138_track0: @ 0858C3F0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 15
    .byte BENDR, 12
    .byte VOL, 0
    .byte LFOS, 30
    .byte MODT, 0
    .byte MOD, 0
    .byte TIE, 60, 127
    .byte W02
    .byte VOL, 8
    .byte W02
    .byte 0x11
    .byte W02
    .byte 0x19
    .byte W02
    .byte 0x22
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x55
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x68
    .byte W02
    .byte MOD, 1
    .byte W10
    .byte 0x02
    .byte W06
    .byte 0x03
    .byte W06
    .byte W02
    .byte 0x04
    .byte W04
    .byte 0x05
    .byte W06
    .byte 0x06
    .byte W04
    .byte 0x07
    .byte W06
    .byte xIECV
    .byte W02
    .byte W02
    .byte xIECL
    .byte W04
    .byte 0x0A
    .byte W04
    .byte 0x0B
    .byte W02
    .byte 0x0C
    .byte W04
    .byte 0x0D
    .byte W04
    .byte 0x0E
    .byte W02
    .byte 0x0F
    .byte W02
    .byte W02
    .byte 0x10
    .byte W02
    .byte 0x11
    .byte BEND, 64
    .byte W04
    .byte MOD, 18
    .byte W02
    .byte 0x13
    .byte W02
    .byte 0x14
    .byte W04
    .byte 0x15
    .byte W02
    .byte 0x16
    .byte W02
    .byte 0x17
    .byte W04
    .byte 0x18
    .byte W02
    .byte 0x19
    .byte W02
    .byte 0x1A
    .byte W02
    .byte 0x1B
    .byte W02
    .byte 0x1C
    .byte W02
    .byte 0x1D
    .byte W04
    .byte 0x1E
    .byte W02
    .byte 0x1F
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x21
    .byte W02
    .byte 0x22
    .byte W02
    .byte 0x23
    .byte W02
    .byte 0x24
    .byte W02
    .byte 0x25
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x27
    .byte W02
    .byte 0x28
    .byte W02
    .byte 0x29
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x2B
    .byte W02
    .byte 0x2D
    .byte W02
    .byte 0x2E
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x30
    .byte W02
    .byte 0x31
    .byte W02
    .byte 0x32
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x36
    .byte W02
    .byte 0x37
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x3B
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x3D
    .byte W02
    .byte 0x40
    .byte VOL, 98
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x4C
    .byte W02
    .byte 0x45
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x34
    .byte W02
    .byte 0x2E
    .byte W02
    .byte 0x29
    .byte W02
    .byte 0x25
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x1D
    .byte W02
    .byte 0x19
    .byte W02
    .byte 0x16
    .byte W02
    .byte 0x12
    .byte W02
    .byte 0x10
    .byte W02
    .byte 0x0D
    .byte W02
    .byte 0x0C
    .byte W02
    .byte xIECL
    .byte W02
    .byte xIECL
    .byte W02
    .byte 0x07
    .byte W02
    .byte 0x06
    .byte W04
    .byte EOT
    .byte FINE

.align 2
.global song_138 @ 0858C4CC
song_138:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_138_track0           @ tracks 0x0858C3F0


@ ****************************** tracks ******************************
song_139_track0: @ 0858C4D8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 16
    .byte VOL, 112
    .byte TIE, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W08
    .byte EOT
    .byte W16
    .byte FINE

.align 2
.global song_139 @ 0858C4EC
song_139:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_139_track0           @ tracks 0x0858C4D8


@ ****************************** tracks ******************************
song_13A_track0: @ 0858C4F8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 28
    .byte BENDR, 12
    .byte VOL, 26
    .byte TIE, 60, 127
    .byte W02
    .byte VOL, 27
    .byte W02
    .byte 0x1D
    .byte W02
    .byte 0x22
    .byte W02
    .byte 0x28
    .byte W02
    .byte 0x31
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x48
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x68
    .byte W06
    .byte W24
    .byte W24
    .byte W18
    .byte BEND, 64
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x31
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x23
    .byte W02
    .byte 0x1C
    .byte W02
    .byte 0x15
    .byte W02
    .byte 0x0E
    .byte W02
    .byte 0x07
    .byte W02
    .byte 0x00
    .byte W12
    .byte W24
    .byte EOT
    .byte FINE

.align 2
.global song_13A @ 0858C534
song_13A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_13A_track0           @ tracks 0x0858C4F8


@ ****************************** tracks ******************************
song_13B_track0: @ 0858C540
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 17
    .byte VOL, 127
    .byte N96, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_13B @ 0858C554
song_13B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_13B_track0           @ tracks 0x0858C540


@ ****************************** tracks ******************************
song_13C_track0: @ 0858C560
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 18
    .byte VOL, 127
    .byte N96, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_13C @ 0858C570
song_13C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_13C_track0           @ tracks 0x0858C560


@ ****************************** tracks ******************************
song_13D_track0: @ 0858C57C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 19
    .byte VOL, 127
    .byte MOD, 0
    .byte BENDR, 12
    .byte BEND, 0
    .byte TIE, 55, 127
    .byte W04
    .byte BEND, 4
    .byte W04
    .byte xIECV
    .byte W04
    .byte 0x0D
    .byte W04
    .byte 0x11
    .byte W04
    .byte 0x15
    .byte W04
    .byte 0x1A
    .byte W04
    .byte 0x1E
    .byte W04
    .byte 0x22
    .byte W04
    .byte 0x27
    .byte W04
    .byte 0x2B
    .byte W04
    .byte 0x2F
    .byte W04
    .byte 0x34
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x41
    .byte W04
    .byte 0x45
    .byte W04
    .byte 0x49
    .byte W04
    .byte 0x4E
    .byte W04
    .byte 0x52
    .byte W04
    .byte 0x56
    .byte W04
    .byte VOL, 126
    .byte BEND, 91
    .byte W02
    .byte VOL, 113
    .byte W02
    .byte 0x65
    .byte BEND, 95
    .byte W02
    .byte VOL, 90
    .byte W02
    .byte 0x4F
    .byte BEND, 99
    .byte W02
    .byte VOL, 69
    .byte W02
    .byte 0x3C
    .byte BEND, 104
    .byte W02
    .byte VOL, 52
    .byte W02
    .byte 0x2C
    .byte BEND, 108
    .byte W02
    .byte VOL, 37
    .byte W02
    .byte 0x1F
    .byte BEND, 112
    .byte W02
    .byte VOL, 25
    .byte W02
    .byte 0x15
    .byte BEND, 117
    .byte W02
    .byte VOL, 17
    .byte W02
    .byte 0x0D
    .byte BEND, 121
    .byte W02
    .byte VOL, 11
    .byte W02
    .byte xIECL
    .byte BEND, 125
    .byte W02
    .byte VOL, 8
    .byte W02
    .byte EOT
    .byte FINE

.align 2
.global song_13D @ 0858C5FC
song_13D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_13D_track0           @ tracks 0x0858C57C


@ ****************************** tracks ******************************
song_13E_track0: @ 0858C608
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 20
    .byte VOL, 127
    .byte N20, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_13E @ 0858C618
song_13E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_13E_track0           @ tracks 0x0858C608


@ ****************************** tracks ******************************
song_13F_track0: @ 0858C624
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 97
    .byte VOL, 127
    .byte N09, 60, 127
    .byte W09
    .byte N09
    .byte W09
    .byte 0x3C
    .byte 0x5C
    .byte W06
    .byte W03
    .byte N13, 60, 60
    .byte W21
    .byte FINE

.align 2
.global song_13F @ 0858C63C
song_13F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_13F_track0           @ tracks 0x0858C624


@ ****************************** tracks ******************************
song_140_track0: @ 0858C648
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 23
    .byte VOL, 127
    .byte BENDR, 2
    .byte BEND, 64
    .byte N18, 58, 92
    .byte W02
    .byte BEND, 67
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x4B
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x57
    .byte W02
    .byte 0x5B
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x48
    .byte N17, 58, 100
    .byte W02
    .byte BEND, 76
    .byte W02
    .byte 0x51
    .byte W02
    .byte 0x55
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x63
    .byte W03
    .byte 0x68
    .byte W02
    .byte 0x50
    .byte N16, 58, 112
    .byte W02
    .byte BEND, 84
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x5D
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x66
    .byte W02
    .byte 0x6B
    .byte W01
    .byte W01
    .byte 0x70
    .byte W02
    .byte 0x58
    .byte N15, 58, 120
    .byte W02
    .byte BEND, 93
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x67
    .byte W02
    .byte 0x6D
    .byte W02
    .byte 0x72
    .byte W03
    .byte 0x78
    .byte W02
    .byte 0x60
    .byte N14, 58, 127
    .byte W02
    .byte BEND, 101
    .byte W02
    .byte 0x6A
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x75
    .byte W02
    .byte 0x7A
    .byte W02
    .byte 0x7F
    .byte W18
    .byte FINE

.align 2
.global song_140 @ 0858C6B8
song_140:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_140_track0           @ tracks 0x0858C648


@ ****************************** tracks ******************************
song_141_track0: @ 0858C6C4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 30
    .byte VOL, 127
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_141 @ 0858C6D4
song_141:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_141_track0           @ tracks 0x0858C6C4


@ ****************************** tracks ******************************
song_142_track0: @ 0858C6E0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 31
    .byte VOL, 127
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_142 @ 0858C6F0
song_142:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_142_track0           @ tracks 0x0858C6E0


@ ****************************** tracks ******************************
song_143_track0: @ 0858C6FC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 33
    .byte VOL, 127
    .byte N36, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_143 @ 0858C70C
song_143:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_143_track0           @ tracks 0x0858C6FC


@ ****************************** tracks ******************************
song_144_track0: @ 0858C718
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 96
    .byte VOL, 127
    .byte MODT, 2
    .byte LFOS, 12
    .byte LFODL, 48
    .byte MOD, 32
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte TIE, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W12
    .byte EOT
    .byte W12
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

song_144_track1: @ 0858C73E
    .byte KEYSH, 0
    .byte VOICE, 22
    .byte VOL, 16
    .byte BENDR, 11
    .byte BEND, 0
    .byte TIE, 60, 127
    .byte W08
    .byte VOL, 20
    .byte W04
    .byte BEND, 0
    .byte W04
    .byte VOL, 24
    .byte BEND, 0
    .byte W04
    .byte 0x03
    .byte W04
    .byte VOL, 28
    .byte BEND, 8
    .byte W04
    .byte 0x0E
    .byte W04
    .byte VOL, 32
    .byte BEND, 22
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x36
    .byte W03
    .byte 0x3C
    .byte W03
    .byte 0x40
    .byte W04
    .byte 0x3C
    .byte W02
    .byte 0x38
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x10
    .byte W04
    .byte 0x0B
    .byte W04
    .byte 0x07
    .byte W04
    .byte 0x04
    .byte W04
    .byte 0x01
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W16
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x03
    .byte W04
    .byte xIECV
    .byte W04
    .byte 0x0E
    .byte W04
    .byte 0x16
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x35
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x40
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x10
    .byte W04
    .byte 0x0B
    .byte W04
    .byte 0x07
    .byte W04
    .byte 0x04
    .byte W04
    .byte 0x01
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W04
    .byte W07
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x03
    .byte W04
    .byte xIECV
    .byte W04
    .byte 0x0E
    .byte W01
    .byte W03
    .byte 0x16
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x35
    .byte W03
    .byte 0x39
    .byte W02
    .byte 0x34
    .byte W04
    .byte 0x2E
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x1B
    .byte W04
    .byte 0x17
    .byte W04
    .byte 0x14
    .byte W04
    .byte 0x11
    .byte W04
    .byte 0x10
    .byte W04
    .byte 0x10
    .byte W04
    .byte 0x14
    .byte W03
    .byte 0x16
    .byte W03
    .byte 0x17
    .byte W02
    .byte VOL, 28
    .byte W02
    .byte BEND, 21
    .byte W04
    .byte 0x13
    .byte W04
    .byte 0x11
    .byte W02
    .byte VOL, 24
    .byte W02
    .byte BEND, 15
    .byte W04
    .byte 0x0D
    .byte W04
    .byte 0x0B
    .byte W02
    .byte VOL, 20
    .byte W02
    .byte BEND, 9
    .byte W04
    .byte 0x07
    .byte W04
    .byte 0x05
    .byte W02
    .byte VOL, 16
    .byte W02
    .byte BEND, 3
    .byte W04
    .byte 0x00
    .byte W06
    .byte VOL, 12
    .byte W12
    .byte xIECV
    .byte W12
    .byte EOT
    .byte FINE

.align 2
.global song_144 @ 0858C81C
song_144:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0xB2                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_144_track0           @ tracks 0x0858C718
    .word song_144_track1           @ tracks 0x0858C73E


@ ****************************** tracks ******************************
song_145_track0: @ 0858C82C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 22
    .byte BENDR, 7
    .byte VOL, 24
    .byte BEND, 0
    .byte TIE, 57, 127
    .byte W04
    .byte VOL, 30
    .byte W04
label_song_145_track0_3:
    .byte W02
    .byte VOL, 36
    .byte W02
    .byte BEND, 0
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x03
    .byte W04
label_song_145_track0_0:
    .byte BEND, 8
    .byte W04
    .byte 0x0E
    .byte W04
    .byte 0x16
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x30
    .byte W04
    .byte PEND
label_song_145_track0_1:
    .byte BEND, 53
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x40
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x30
    .byte W04
    .byte PEND
label_song_145_track0_2:
    .byte BEND, 40
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x10
    .byte W04
    .byte 0x0B
    .byte W04
    .byte 0x07
    .byte W04
    .byte PEND
    .byte 0x04
    .byte W04
    .byte 0x01
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W12
label_song_145_track0_4:
    .byte W04
    .byte BEND, 0
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x03
    .byte W04
    .byte xIECV
    .byte W04
    .byte 0x0E
    .byte W04
    .byte PEND
label_song_145_track0_5:
    .byte BEND, 22
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x35
    .byte W04
    .byte 0x3C
    .byte W04
    .byte PEND
    .byte 0x40
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x10
    .byte W04
    .byte 0x0B
    .byte W04
    .byte 0x07
    .byte W04
    .byte 0x04
    .byte W04
    .byte 0x01
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W16
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x03
    .byte W04
    .byte xIECV
    .byte W04
    .byte 0x0E
    .byte W04
    .byte 0x16
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x35
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x40
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x20
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x10
    .byte W04
    .byte 0x0B
    .byte W04
    .byte 0x07
    .byte W04
    .byte 0x04
    .byte W04
    .byte 0x01
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W04
    .byte W12
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x03
    .byte W04
    .byte PATT
    .word label_song_145_track0_0
    .byte PATT
    .word label_song_145_track0_1
    .byte PATT
    .word label_song_145_track0_2
    .byte BEND, 4
    .byte W04
    .byte 0x01
    .byte W04
    .byte 0x00
    .byte W04
    .byte 0x00
    .byte W08
    .byte GOTO
    .word label_song_145_track0_3
    .byte W04
    .byte PATT
    .word label_song_145_track0_4
    .byte PATT
    .word label_song_145_track0_5
    .byte EOT, 57
    .byte FINE

song_145_track1: @ 0858C917
    .byte KEYSH, 0
    .byte W08
label_song_145_track1_0:
    .byte W16
    .byte W12
    .byte VOICE, 96
    .byte VOL, 127
    .byte BENDR, 4
    .byte W08
    .byte PAN, 70
    .byte VOL, 127
    .byte BEND, 64
    .byte N44, 57, 60
    .byte W02
    .byte BEND, 79
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x7F
    .byte W02
    .byte 0x7B
    .byte W02
    .byte 0x77
    .byte W02
    .byte 0x72
    .byte W02
    .byte VOL, 120
    .byte BEND, 110
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x65
    .byte W02
    .byte VOL, 112
    .byte BEND, 96
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x58
    .byte W02
    .byte VOL, 104
    .byte BEND, 83
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x4A
    .byte W02
    .byte VOL, 96
    .byte BEND, 70
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x3D
    .byte W02
    .byte VOL, 88
    .byte BEND, 56
    .byte W02
    .byte 0x34
    .byte W02
    .byte 0x30
    .byte W08
    .byte W24
    .byte W24
    .byte W18
    .byte PAN, 52
    .byte VOL, 127
    .byte BEND, 112
    .byte N40, 56, 68
    .byte W02
    .byte BEND, 108
    .byte W02
    .byte 0x68
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x5D
    .byte W02
    .byte 0x59
    .byte W02
    .byte 0x55
    .byte W01
    .byte VOL, 120
    .byte W01
    .byte BEND, 81
    .byte W02
    .byte 0x4D
    .byte W01
    .byte VOL, 109
    .byte W01
    .byte BEND, 74
    .byte W02
    .byte 0x46
    .byte W01
    .byte VOL, 98
    .byte W01
    .byte BEND, 66
    .byte W02
    .byte 0x3E
    .byte W01
    .byte VOL, 87
    .byte W01
    .byte BEND, 58
    .byte W02
    .byte 0x37
    .byte W01
    .byte VOL, 76
    .byte W01
    .byte BEND, 51
    .byte W02
    .byte 0x2F
    .byte W01
    .byte VOL, 65
    .byte W01
    .byte BEND, 43
    .byte W02
    .byte 0x28
    .byte W01
    .byte VOL, 60
    .byte W15
    .byte W24
    .byte W24
    .byte W12
    .byte PAN, 44
    .byte VOL, 127
    .byte BEND, 48
    .byte N48, 55, 64
    .byte W02
    .byte BEND, 74
    .byte W02
    .byte 0x65
    .byte W03
    .byte 0x7F
    .byte W05
    .byte 0x7F
    .byte W02
    .byte 0x79
    .byte W02
    .byte 0x73
    .byte W02
    .byte 0x6D
    .byte W02
    .byte 0x67
    .byte W02
    .byte 0x61
    .byte W02
    .byte VOL, 120
    .byte BEND, 92
    .byte W02
    .byte 0x56
    .byte W02
    .byte 0x50
    .byte W02
    .byte VOL, 110
    .byte BEND, 74
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x3E
    .byte W02
    .byte VOL, 100
    .byte BEND, 56
    .byte W02
    .byte 0x32
    .byte W02
    .byte 0x2C
    .byte W02
    .byte VOL, 90
    .byte BEND, 38
    .byte W02
    .byte 0x20
    .byte W16
    .byte W24
    .byte W24
    .byte W12
    .byte PAN, 80
    .byte VOL, 127
    .byte BEND, 127
    .byte N40, 56, 72
    .byte W02
    .byte BEND, 122
    .byte W02
    .byte 0x75
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x6A
    .byte W02
    .byte 0x65
    .byte W02
    .byte VOL, 120
    .byte BEND, 96
    .byte W02
    .byte 0x5A
    .byte W02
    .byte VOL, 110
    .byte BEND, 85
    .byte W02
    .byte 0x50
    .byte W02
    .byte VOL, 100
    .byte BEND, 74
    .byte W02
    .byte 0x45
    .byte W02
    .byte VOL, 90
    .byte BEND, 64
    .byte W02
    .byte 0x3A
    .byte W02
    .byte VOL, 80
    .byte BEND, 53
    .byte W02
    .byte 0x30
    .byte W02
    .byte VOL, 70
    .byte BEND, 42
    .byte W02
    .byte 0x25
    .byte W02
    .byte VOL, 60
    .byte BEND, 32
    .byte W20
    .byte GOTO
    .word label_song_145_track1_0
    .byte W04
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_145 @ 0858CA4C
song_145:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_145_track0           @ tracks 0x0858C82C
    .word song_145_track1           @ tracks 0x0858C917


@ ****************************** tracks ******************************
song_146_track0: @ 0858CA5C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 22
    .byte BENDR, 8
    .byte VOL, 44
    .byte BEND, 32
    .byte TIE, 57, 127
    .byte W04
    .byte BEND, 35
    .byte W04
    .byte 0x27
    .byte W04
    .byte 0x2A
    .byte W04
    .byte 0x2E
    .byte W04
    .byte 0x31
    .byte W04
    .byte 0x35
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x3C
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x34
    .byte W04
    .byte 0x31
    .byte W04
    .byte 0x2D
    .byte W04
    .byte 0x2A
    .byte W04
    .byte 0x26
    .byte W04
    .byte 0x23
    .byte W04
    .byte 0x1F
    .byte W04
    .byte 0x1C
    .byte W04
    .byte 0x1F
    .byte W04
    .byte 0x23
    .byte W04
    .byte 0x26
    .byte W04
    .byte 0x2A
    .byte W04
    .byte 0x2D
    .byte W04
    .byte 0x31
    .byte W04
    .byte 0x34
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x38
    .byte W04
    .byte 0x34
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x2D
    .byte W04
    .byte 0x29
    .byte W04
    .byte 0x26
    .byte W04
    .byte 0x22
    .byte W04
    .byte 0x1F
    .byte W04
    .byte 0x1B
    .byte W04
    .byte 0x18
    .byte W04
    .byte 0x1B
    .byte W04
    .byte 0x1F
    .byte W04
    .byte 0x22
    .byte W04
    .byte 0x26
    .byte W04
    .byte 0x29
    .byte W04
    .byte 0x2D
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x34
    .byte W04
    .byte 0x34
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x2C
    .byte W04
    .byte 0x29
    .byte W04
    .byte 0x25
    .byte W04
    .byte 0x22
    .byte W04
    .byte 0x1E
    .byte W04
    .byte 0x1B
    .byte W04
    .byte 0x17
    .byte W04
    .byte 0x14
    .byte W04
    .byte 0x17
    .byte W04
    .byte 0x1B
    .byte W04
    .byte 0x1E
    .byte W04
    .byte 0x22
    .byte W04
    .byte 0x25
    .byte W04
    .byte 0x29
    .byte W04
    .byte 0x2C
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x30
    .byte W04
    .byte 0x2C
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x25
    .byte W04
    .byte 0x21
    .byte W04
    .byte 0x1E
    .byte W04
    .byte 0x1A
    .byte W04
    .byte 0x17
    .byte W04
    .byte 0x13
    .byte W04
    .byte VOL, 40
    .byte BEND, 16
    .byte W04
    .byte 0x13
    .byte W04
    .byte 0x17
    .byte W04
    .byte 0x1A
    .byte W04
    .byte 0x1E
    .byte W04
    .byte 0x21
    .byte W04
    .byte VOL, 36
    .byte BEND, 37
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x2C
    .byte W04
    .byte 0x2C
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x24
    .byte W04
    .byte VOL, 28
    .byte BEND, 33
    .byte W04
    .byte 0x1D
    .byte W04
    .byte 0x1A
    .byte W04
    .byte 0x16
    .byte W04
    .byte 0x13
    .byte W04
    .byte 0x0F
    .byte W04
    .byte VOL, 24
    .byte BEND, 12
    .byte W04
    .byte 0x0F
    .byte W04
    .byte 0x13
    .byte W04
    .byte 0x16
    .byte W04
    .byte 0x1A
    .byte W04
    .byte 0x1D
    .byte W04
    .byte VOL, 20
    .byte BEND, 33
    .byte W04
    .byte 0x24
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x28
    .byte W04
    .byte 0x24
    .byte W04
    .byte 0x20
    .byte W04
    .byte VOL, 16
    .byte BEND, 29
    .byte W04
    .byte 0x19
    .byte W04
    .byte 0x16
    .byte W04
    .byte 0x12
    .byte W04
    .byte 0x0F
    .byte W04
    .byte 0x0B
    .byte W04
    .byte VOL, 8
    .byte BEND, 6
    .byte W04
    .byte 0x00
    .byte W04
    .byte EOT
    .byte W16
    .byte FINE

song_146_track1: @ 0858CB5F
    .byte KEYSH, 0
    .byte VOICE, 96
    .byte VOL, 127
    .byte BENDR, 5
    .byte MODT, 2
    .byte LFOS, 12
    .byte LFODL, 16
    .byte MOD, 32
    .byte W02
    .byte PAN, 56
    .byte BEND, 96
    .byte N48, 61, 127
    .byte W02
    .byte BEND, 95
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x5C
    .byte W02
    .byte 0x5B
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x56
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x51
    .byte W02
    .byte VOL, 120
    .byte BEND, 78
    .byte W02
    .byte 0x4B
    .byte W02
    .byte VOL, 112
    .byte BEND, 72
    .byte W02
    .byte 0x44
    .byte W02
    .byte VOL, 104
    .byte BEND, 64
    .byte W02
    .byte 0x3D
    .byte W02
    .byte VOL, 98
    .byte BEND, 56
    .byte W02
    .byte 0x34
    .byte W02
    .byte VOL, 88
    .byte BEND, 47
    .byte W02
    .byte 0x2A
    .byte W01
    .byte VOL, 80
    .byte W01
    .byte BEND, 37
    .byte W02
    .byte VOL, 72
    .byte BEND, 32
    .byte W24
    .byte W14
    .byte PAN, 78
    .byte VOL, 127
    .byte BEND, 104
    .byte N48, 61, 96
    .byte W02
    .byte BEND, 98
    .byte W02
    .byte 0x5D
    .byte W02
    .byte 0x58
    .byte W02
    .byte 0x53
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x47
    .byte W02
    .byte 0x43
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x3C
    .byte W02
    .byte 0x39
    .byte W02
    .byte VOL, 120
    .byte BEND, 54
    .byte W02
    .byte 0x34
    .byte W02
    .byte VOL, 112
    .byte BEND, 49
    .byte W02
    .byte 0x2F
    .byte W02
    .byte VOL, 104
    .byte BEND, 45
    .byte W02
    .byte 0x2C
    .byte W02
    .byte VOL, 98
    .byte BEND, 43
    .byte W02
    .byte 0x29
    .byte W02
    .byte VOL, 88
    .byte BEND, 41
    .byte W02
    .byte 0x28
    .byte W01
    .byte VOL, 80
    .byte W01
    .byte BEND, 40
    .byte W02
    .byte VOL, 72
    .byte BEND, 40
    .byte W12
    .byte W24
    .byte PAN, 44
    .byte VOL, 127
    .byte BEND, 104
    .byte N48, 61, 64
    .byte W02
    .byte BEND, 103
    .byte W02
    .byte 0x67
    .byte W02
    .byte 0x66
    .byte W02
    .byte 0x65
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x62
    .byte W02
    .byte 0x60
    .byte W02
    .byte 0x5E
    .byte W02
    .byte 0x5B
    .byte W02
    .byte VOL, 120
    .byte BEND, 88
    .byte W02
    .byte 0x55
    .byte W02
    .byte VOL, 112
    .byte BEND, 82
    .byte W02
    .byte 0x4E
    .byte W02
    .byte VOL, 104
    .byte BEND, 74
    .byte W02
    .byte 0x45
    .byte W02
    .byte VOL, 98
    .byte BEND, 65
    .byte W02
    .byte 0x3C
    .byte W02
    .byte VOL, 88
    .byte BEND, 54
    .byte W02
    .byte 0x31
    .byte W02
    .byte VOL, 80
    .byte BEND, 43
    .byte W02
    .byte 0x25
    .byte W02
    .byte VOL, 72
    .byte BEND, 30
    .byte W02
    .byte 0x18
    .byte W02
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

song_146_track2: @ 0858CC67
    .byte KEYSH, 0
    .byte VOICE, 96
    .byte BENDR, 1
    .byte VOL, 100
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W12
    .byte PAN, 64
    .byte BEND, 32
    .byte TIE, 60, 127
    .byte W08
    .byte BEND, 35
    .byte W04
    .byte W04
    .byte 0x27
    .byte W08
    .byte PAN, 64
    .byte BEND, 43
    .byte W06
    .byte PAN, 60
    .byte W02
    .byte BEND, 47
    .byte W04
    .byte PAN, 57
    .byte W04
    .byte BEND, 50
    .byte W02
    .byte PAN, 53
    .byte W06
    .byte 0x32
    .byte BEND, 54
    .byte W06
    .byte PAN, 47
    .byte W02
    .byte BEND, 58
    .byte W04
    .byte PAN, 43
    .byte W04
    .byte BEND, 62
    .byte W02
    .byte PAN, 40
    .byte W06
    .byte 0x25
    .byte BEND, 65
    .byte W06
    .byte PAN, 33
    .byte W02
    .byte BEND, 69
    .byte W04
    .byte PAN, 30
    .byte W04
    .byte BEND, 73
    .byte W02
    .byte PAN, 27
    .byte W06
    .byte 0x17
    .byte BEND, 77
    .byte W06
    .byte PAN, 20
    .byte W02
    .byte BEND, 80
    .byte W04
    .byte PAN, 16
    .byte W04
    .byte BEND, 84
    .byte W02
    .byte PAN, 13
    .byte W06
    .byte 0x0A
    .byte BEND, 88
    .byte W06
    .byte PAN, 6
    .byte W02
    .byte BEND, 92
    .byte W04
    .byte PAN, 3
    .byte W04
    .byte BEND, 95
    .byte W02
    .byte PAN, 0
    .byte W06
    .byte EOT
    .byte W12
    .byte W24
    .byte W24
    .byte FINE

song_146_track3: @ 0858CCED
    .byte KEYSH, 0
    .byte VOICE, 96
    .byte BENDR, 1
    .byte VOL, 100
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W12
    .byte PAN, 64
    .byte BEND, 96
    .byte TIE, 60, 127
    .byte W08
    .byte BEND, 92
    .byte W04
    .byte W04
    .byte 0x58
    .byte W08
    .byte PAN, 64
    .byte BEND, 84
    .byte W06
    .byte PAN, 67
    .byte W02
    .byte BEND, 80
    .byte W04
    .byte PAN, 70
    .byte W04
    .byte BEND, 77
    .byte W02
    .byte PAN, 73
    .byte W06
    .byte 0x4D
    .byte BEND, 73
    .byte W06
    .byte PAN, 80
    .byte W02
    .byte BEND, 69
    .byte W04
    .byte PAN, 83
    .byte W04
    .byte BEND, 65
    .byte W02
    .byte PAN, 87
    .byte W06
    .byte 0x5A
    .byte BEND, 62
    .byte W06
    .byte PAN, 93
    .byte W02
    .byte BEND, 58
    .byte W04
    .byte PAN, 97
    .byte W04
    .byte BEND, 54
    .byte W02
    .byte PAN, 100
    .byte W06
    .byte 0x67
    .byte BEND, 50
    .byte W06
    .byte PAN, 107
    .byte W02
    .byte BEND, 47
    .byte W04
    .byte PAN, 110
    .byte W04
    .byte BEND, 43
    .byte W02
    .byte PAN, 113
    .byte W06
    .byte 0x74
    .byte BEND, 39
    .byte W06
    .byte PAN, 120
    .byte W02
    .byte BEND, 35
    .byte W04
    .byte PAN, 123
    .byte W04
    .byte BEND, 32
    .byte W02
    .byte PAN, 127
    .byte W06
    .byte EOT
    .byte W12
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_146 @ 0858CD74
song_146:
@ ****************************** header ******************************
    .byte 0x04                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398018       @ tone
    .word song_146_track0           @ tracks 0x0858CA5C
    .word song_146_track1           @ tracks 0x0858CB5F
    .word song_146_track2           @ tracks 0x0858CC67
    .word song_146_track3           @ tracks 0x0858CCED


@ ****************************** tracks ******************************
song_147_track0: @ 0858CD8C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 20
    .byte VOL, 127
    .byte BENDR, 1
    .byte BEND, 64
    .byte N22, 60, 127
    .byte W02
    .byte BEND, 57
    .byte W02
    .byte 0x33
    .byte W02
    .byte 0x2C
    .byte W02
    .byte 0x26
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x19
    .byte W02
    .byte 0x13
    .byte W02
    .byte 0x0C
    .byte W02
    .byte 0x06
    .byte W02
    .byte 0x00
    .byte W04
    .byte FINE

.align 2
.global song_147 @ 0858CDB4
song_147:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398570       @ tone
    .word song_147_track0           @ tracks 0x0858CD8C


@ ****************************** tracks ******************************
song_14A_track0: @ 0858CDC0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_14A @ 0858CDD0
song_14A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_14A_track0           @ tracks 0x0858CDC0


@ ****************************** tracks ******************************
song_14B_track0: @ 0858CDDC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_14B @ 0858CDEC
song_14B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_14B_track0           @ tracks 0x0858CDDC


@ ****************************** tracks ******************************
song_14C_track0: @ 0858CDF8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_14C @ 0858CE08
song_14C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_14C_track0           @ tracks 0x0858CDF8


@ ****************************** tracks ******************************
song_14D_track0: @ 0858CE14
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_14D @ 0858CE24
song_14D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_14D_track0           @ tracks 0x0858CE14


@ ****************************** tracks ******************************
song_14E_track0: @ 0858CE30
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 2
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_14E @ 0858CE40
song_14E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_14E_track0           @ tracks 0x0858CE30


@ ****************************** tracks ******************************
song_14F_track0: @ 0858CE4C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 2
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_14F @ 0858CE5C
song_14F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_14F_track0           @ tracks 0x0858CE4C


@ ****************************** tracks ******************************
song_150_track0: @ 0858CE68
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 3
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_150 @ 0858CE78
song_150:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_150_track0           @ tracks 0x0858CE68


@ ****************************** tracks ******************************
song_151_track0: @ 0858CE84
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 3
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_151 @ 0858CE94
song_151:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_151_track0           @ tracks 0x0858CE84


@ ****************************** tracks ******************************
song_154_track0: @ 0858CEA0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_154 @ 0858CEB0
song_154:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_154_track0           @ tracks 0x0858CEA0


@ ****************************** tracks ******************************
song_155_track0: @ 0858CEBC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_155 @ 0858CECC
song_155:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_155_track0           @ tracks 0x0858CEBC


@ ****************************** tracks ******************************
song_156_track0: @ 0858CED8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 5
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_156 @ 0858CEE8
song_156:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_156_track0           @ tracks 0x0858CED8


@ ****************************** tracks ******************************
song_157_track0: @ 0858CEF4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 5
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_157 @ 0858CF04
song_157:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_157_track0           @ tracks 0x0858CEF4


@ ****************************** tracks ******************************
song_158_track0: @ 0858CF10
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 6
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_158 @ 0858CF20
song_158:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_158_track0           @ tracks 0x0858CF10


@ ****************************** tracks ******************************
song_159_track0: @ 0858CF2C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 6
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_159 @ 0858CF3C
song_159:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_159_track0           @ tracks 0x0858CF2C


@ ****************************** tracks ******************************
song_15A_track0: @ 0858CF48
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 7
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_15A @ 0858CF58
song_15A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_15A_track0           @ tracks 0x0858CF48


@ ****************************** tracks ******************************
song_15B_track0: @ 0858CF64
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 7
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_15B @ 0858CF74
song_15B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_15B_track0           @ tracks 0x0858CF64


@ ****************************** tracks ******************************
song_15E_track0: @ 0858CF80
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 8
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_15E @ 0858CF90
song_15E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_15E_track0           @ tracks 0x0858CF80


@ ****************************** tracks ******************************
song_15F_track0: @ 0858CF9C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 8
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_15F @ 0858CFAC
song_15F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_15F_track0           @ tracks 0x0858CF9C


@ ****************************** tracks ******************************
song_160_track0: @ 0858CFB8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 9
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_160 @ 0858CFC8
song_160:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_160_track0           @ tracks 0x0858CFB8


@ ****************************** tracks ******************************
song_161_track0: @ 0858CFD4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 9
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_161 @ 0858CFE4
song_161:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_161_track0           @ tracks 0x0858CFD4


@ ****************************** tracks ******************************
song_162_track0: @ 0858CFF0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 10
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_162 @ 0858D000
song_162:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_162_track0           @ tracks 0x0858CFF0


@ ****************************** tracks ******************************
song_163_track0: @ 0858D00C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 10
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_163 @ 0858D01C
song_163:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_163_track0           @ tracks 0x0858D00C


@ ****************************** tracks ******************************
song_164_track0: @ 0858D028
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 11
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_164 @ 0858D038
song_164:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_164_track0           @ tracks 0x0858D028


@ ****************************** tracks ******************************
song_165_track0: @ 0858D044
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 11
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_165 @ 0858D054
song_165:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_165_track0           @ tracks 0x0858D044


@ ****************************** tracks ******************************
song_168_track0: @ 0858D060
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 12
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_168 @ 0858D070
song_168:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_168_track0           @ tracks 0x0858D060


@ ****************************** tracks ******************************
song_169_track0: @ 0858D07C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 12
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_169 @ 0858D08C
song_169:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_169_track0           @ tracks 0x0858D07C


@ ****************************** tracks ******************************
song_16A_track0: @ 0858D098
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 13
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_16A @ 0858D0A8
song_16A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_16A_track0           @ tracks 0x0858D098


@ ****************************** tracks ******************************
song_16B_track0: @ 0858D0B4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 13
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_16B @ 0858D0C4
song_16B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_16B_track0           @ tracks 0x0858D0B4


@ ****************************** tracks ******************************
song_16C_track0: @ 0858D0D0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 14
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_16C @ 0858D0E0
song_16C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_16C_track0           @ tracks 0x0858D0D0


@ ****************************** tracks ******************************
song_16D_track0: @ 0858D0EC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 14
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_16D @ 0858D0FC
song_16D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_16D_track0           @ tracks 0x0858D0EC


@ ****************************** tracks ******************************
song_16E_track0: @ 0858D108
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 15
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_16E @ 0858D118
song_16E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_16E_track0           @ tracks 0x0858D108


@ ****************************** tracks ******************************
song_16F_track0: @ 0858D124
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 15
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_16F @ 0858D134
song_16F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_16F_track0           @ tracks 0x0858D124


@ ****************************** tracks ******************************
song_172_track0: @ 0858D140
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 16
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_172 @ 0858D150
song_172:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_172_track0           @ tracks 0x0858D140


@ ****************************** tracks ******************************
song_173_track0: @ 0858D15C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 16
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_173 @ 0858D16C
song_173:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_173_track0           @ tracks 0x0858D15C


@ ****************************** tracks ******************************
song_174_track0: @ 0858D178
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 17
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_174 @ 0858D188
song_174:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_174_track0           @ tracks 0x0858D178


@ ****************************** tracks ******************************
song_175_track0: @ 0858D194
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 17
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_175 @ 0858D1A4
song_175:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_175_track0           @ tracks 0x0858D194


@ ****************************** tracks ******************************
song_176_track0: @ 0858D1B0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 18
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_176 @ 0858D1C0
song_176:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_176_track0           @ tracks 0x0858D1B0


@ ****************************** tracks ******************************
song_177_track0: @ 0858D1CC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 18
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_177 @ 0858D1DC
song_177:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_177_track0           @ tracks 0x0858D1CC


@ ****************************** tracks ******************************
song_178_track0: @ 0858D1E8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 19
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_178 @ 0858D1F8
song_178:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_178_track0           @ tracks 0x0858D1E8


@ ****************************** tracks ******************************
song_179_track0: @ 0858D204
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 19
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_179 @ 0858D214
song_179:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_179_track0           @ tracks 0x0858D204


@ ****************************** tracks ******************************
song_17C_track0: @ 0858D220
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 20
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_17C @ 0858D230
song_17C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_17C_track0           @ tracks 0x0858D220


@ ****************************** tracks ******************************
song_17D_track0: @ 0858D23C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 20
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_17D @ 0858D24C
song_17D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_17D_track0           @ tracks 0x0858D23C


@ ****************************** tracks ******************************
song_17E_track0: @ 0858D258
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 21
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_17E @ 0858D268
song_17E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_17E_track0           @ tracks 0x0858D258


@ ****************************** tracks ******************************
song_17F_track0: @ 0858D274
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 21
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_17F @ 0858D284
song_17F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_17F_track0           @ tracks 0x0858D274


@ ****************************** tracks ******************************
song_180_track0: @ 0858D290
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 22
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_180 @ 0858D2A0
song_180:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_180_track0           @ tracks 0x0858D290


@ ****************************** tracks ******************************
song_181_track0: @ 0858D2AC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 22
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_181 @ 0858D2BC
song_181:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_181_track0           @ tracks 0x0858D2AC


@ ****************************** tracks ******************************
song_182_track0: @ 0858D2C8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 23
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_182 @ 0858D2D8
song_182:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_182_track0           @ tracks 0x0858D2C8


@ ****************************** tracks ******************************
song_183_track0: @ 0858D2E4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 23
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_183 @ 0858D2F4
song_183:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_183_track0           @ tracks 0x0858D2E4


@ ****************************** tracks ******************************
song_186_track0: @ 0858D300
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 24
    .byte VOL, 96
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_186 @ 0858D310
song_186:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_186_track0           @ tracks 0x0858D300


@ ****************************** tracks ******************************
song_187_track0: @ 0858D31C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 24
    .byte VOL, 96
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_187 @ 0858D32C
song_187:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_187_track0           @ tracks 0x0858D31C


@ ****************************** tracks ******************************
song_188_track0: @ 0858D338
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 25
    .byte VOL, 80
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_188 @ 0858D348
song_188:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_188_track0           @ tracks 0x0858D338


@ ****************************** tracks ******************************
song_189_track0: @ 0858D354
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 25
    .byte VOL, 80
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_189 @ 0858D364
song_189:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_189_track0           @ tracks 0x0858D354


@ ****************************** tracks ******************************
song_18A_track0: @ 0858D370
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 26
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_18A @ 0858D380
song_18A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_18A_track0           @ tracks 0x0858D370


@ ****************************** tracks ******************************
song_18B_track0: @ 0858D38C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 26
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_18B @ 0858D39C
song_18B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_18B_track0           @ tracks 0x0858D38C


@ ****************************** tracks ******************************
song_18C_track0: @ 0858D3A8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 27
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_18C @ 0858D3B8
song_18C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_18C_track0           @ tracks 0x0858D3A8


@ ****************************** tracks ******************************
song_18D_track0: @ 0858D3C4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 27
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_18D @ 0858D3D4
song_18D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_18D_track0           @ tracks 0x0858D3C4


@ ****************************** tracks ******************************
song_190_track0: @ 0858D3E0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 110
    .byte N15, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_190 @ 0858D3F0
song_190:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_190_track0           @ tracks 0x0858D3E0


@ ****************************** tracks ******************************
song_191_track0: @ 0858D3FC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 0
    .byte VOL, 110
    .byte N15, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_191 @ 0858D40C
song_191:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_191_track0           @ tracks 0x0858D3FC


@ ****************************** tracks ******************************
song_192_track0: @ 0858D418
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 110
    .byte N14, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_192 @ 0858D428
song_192:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_192_track0           @ tracks 0x0858D418


@ ****************************** tracks ******************************
song_193_track0: @ 0858D434
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 1
    .byte VOL, 110
    .byte N14, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_193 @ 0858D444
song_193:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_193_track0           @ tracks 0x0858D434


@ ****************************** tracks ******************************
song_194_track0: @ 0858D450
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 2
    .byte VOL, 110
    .byte N17, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_194 @ 0858D460
song_194:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_194_track0           @ tracks 0x0858D450


@ ****************************** tracks ******************************
song_195_track0: @ 0858D46C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 2
    .byte VOL, 110
    .byte N17, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_195 @ 0858D47C
song_195:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_195_track0           @ tracks 0x0858D46C


@ ****************************** tracks ******************************
song_19A_track0: @ 0858D488
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 3
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_19A @ 0858D498
song_19A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_19A_track0           @ tracks 0x0858D488


@ ****************************** tracks ******************************
song_19B_track0: @ 0858D4A4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 3
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_19B @ 0858D4B4
song_19B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_19B_track0           @ tracks 0x0858D4A4


@ ****************************** tracks ******************************
song_19C_track0: @ 0858D4C0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_19C @ 0858D4D0
song_19C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_19C_track0           @ tracks 0x0858D4C0


@ ****************************** tracks ******************************
song_19D_track0: @ 0858D4DC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 4
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_19D @ 0858D4EC
song_19D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_19D_track0           @ tracks 0x0858D4DC


@ ****************************** tracks ******************************
song_19E_track0: @ 0858D4F8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 5
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_19E @ 0858D508
song_19E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_19E_track0           @ tracks 0x0858D4F8


@ ****************************** tracks ******************************
song_19F_track0: @ 0858D514
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 5
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_19F @ 0858D524
song_19F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_19F_track0           @ tracks 0x0858D514


@ ****************************** tracks ******************************
song_1A4_track0: @ 0858D530
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 6
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1A4 @ 0858D540
song_1A4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1A4_track0           @ tracks 0x0858D530


@ ****************************** tracks ******************************
song_1A5_track0: @ 0858D54C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 6
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1A5 @ 0858D55C
song_1A5:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1A5_track0           @ tracks 0x0858D54C


@ ****************************** tracks ******************************
song_1A6_track0: @ 0858D568
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 7
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1A6 @ 0858D578
song_1A6:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1A6_track0           @ tracks 0x0858D568


@ ****************************** tracks ******************************
song_1A7_track0: @ 0858D584
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 7
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1A7 @ 0858D594
song_1A7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1A7_track0           @ tracks 0x0858D584


@ ****************************** tracks ******************************
song_1A8_track0: @ 0858D5A0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 8
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1A8 @ 0858D5B0
song_1A8:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1A8_track0           @ tracks 0x0858D5A0


@ ****************************** tracks ******************************
song_1A9_track0: @ 0858D5BC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 8
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1A9 @ 0858D5CC
song_1A9:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1A9_track0           @ tracks 0x0858D5BC


@ ****************************** tracks ******************************
song_1AE_track0: @ 0858D5D8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 20
    .byte VOL, 110
    .byte N16, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1AE @ 0858D5E8
song_1AE:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1AE_track0           @ tracks 0x0858D5D8


@ ****************************** tracks ******************************
song_1AF_track0: @ 0858D5F4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 20
    .byte VOL, 110
    .byte N16, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1AF @ 0858D604
song_1AF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1AF_track0           @ tracks 0x0858D5F4


@ ****************************** tracks ******************************
song_1B0_track0: @ 0858D610
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 21
    .byte VOL, 110
    .byte N14, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1B0 @ 0858D620
song_1B0:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1B0_track0           @ tracks 0x0858D610


@ ****************************** tracks ******************************
song_1B1_track0: @ 0858D62C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 21
    .byte VOL, 110
    .byte N14, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1B1 @ 0858D63C
song_1B1:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1B1_track0           @ tracks 0x0858D62C


@ ****************************** tracks ******************************
song_1B2_track0: @ 0858D648
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 22
    .byte VOL, 110
    .byte N17, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1B2 @ 0858D658
song_1B2:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1B2_track0           @ tracks 0x0858D648


@ ****************************** tracks ******************************
song_1B3_track0: @ 0858D664
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 22
    .byte VOL, 110
    .byte N17, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1B3 @ 0858D674
song_1B3:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1B3_track0           @ tracks 0x0858D664


@ ****************************** tracks ******************************
song_1B8_track0: @ 0858D680
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 23
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1B8 @ 0858D690
song_1B8:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1B8_track0           @ tracks 0x0858D680


@ ****************************** tracks ******************************
song_1B9_track0: @ 0858D69C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 23
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1B9 @ 0858D6AC
song_1B9:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1B9_track0           @ tracks 0x0858D69C


@ ****************************** tracks ******************************
song_1BA_track0: @ 0858D6B8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 24
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1BA @ 0858D6C8
song_1BA:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1BA_track0           @ tracks 0x0858D6B8


@ ****************************** tracks ******************************
song_1BB_track0: @ 0858D6D4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 24
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_1BB @ 0858D6E4
song_1BB:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1BB_track0           @ tracks 0x0858D6D4


@ ****************************** tracks ******************************
song_1BC_track0: @ 0858D6F0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 25
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1BC @ 0858D700
song_1BC:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1BC_track0           @ tracks 0x0858D6F0


@ ****************************** tracks ******************************
song_1BD_track0: @ 0858D70C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 25
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1BD @ 0858D71C
song_1BD:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1BD_track0           @ tracks 0x0858D70C


@ ****************************** tracks ******************************
song_1C2_track0: @ 0858D728
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 26
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1C2 @ 0858D738
song_1C2:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1C2_track0           @ tracks 0x0858D728


@ ****************************** tracks ******************************
song_1C3_track0: @ 0858D744
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 26
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1C3 @ 0858D754
song_1C3:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1C3_track0           @ tracks 0x0858D744


@ ****************************** tracks ******************************
song_1C4_track0: @ 0858D760
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 27
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1C4 @ 0858D770
song_1C4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1C4_track0           @ tracks 0x0858D760


@ ****************************** tracks ******************************
song_1C5_track0: @ 0858D77C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 27
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1C5 @ 0858D78C
song_1C5:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1C5_track0           @ tracks 0x0858D77C


@ ****************************** tracks ******************************
song_1C6_track0: @ 0858D798
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 28
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1C6 @ 0858D7A8
song_1C6:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1C6_track0           @ tracks 0x0858D798


@ ****************************** tracks ******************************
song_1C7_track0: @ 0858D7B4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 28
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1C7 @ 0858D7C4
song_1C7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1C7_track0           @ tracks 0x0858D7B4


@ ****************************** tracks ******************************
song_1CC_track0: @ 0858D7D0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 10
    .byte VOL, 110
    .byte N17, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1CC @ 0858D7E0
song_1CC:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1CC_track0           @ tracks 0x0858D7D0


@ ****************************** tracks ******************************
song_1CD_track0: @ 0858D7EC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 10
    .byte VOL, 110
    .byte N17, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1CD @ 0858D7FC
song_1CD:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1CD_track0           @ tracks 0x0858D7EC


@ ****************************** tracks ******************************
song_1CE_track0: @ 0858D808
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 11
    .byte VOL, 110
    .byte N14, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1CE @ 0858D818
song_1CE:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1CE_track0           @ tracks 0x0858D808


@ ****************************** tracks ******************************
song_1CF_track0: @ 0858D824
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 11
    .byte VOL, 110
    .byte N14, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1CF @ 0858D834
song_1CF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1CF_track0           @ tracks 0x0858D824


@ ****************************** tracks ******************************
song_1D0_track0: @ 0858D840
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 12
    .byte VOL, 110
    .byte N16, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1D0 @ 0858D850
song_1D0:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1D0_track0           @ tracks 0x0858D840


@ ****************************** tracks ******************************
song_1D1_track0: @ 0858D85C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 12
    .byte VOL, 110
    .byte N16, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1D1 @ 0858D86C
song_1D1:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1D1_track0           @ tracks 0x0858D85C


@ ****************************** tracks ******************************
song_1D6_track0: @ 0858D878
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 13
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1D6 @ 0858D888
song_1D6:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1D6_track0           @ tracks 0x0858D878


@ ****************************** tracks ******************************
song_1D7_track0: @ 0858D894
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 13
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1D7 @ 0858D8A4
song_1D7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1D7_track0           @ tracks 0x0858D894


@ ****************************** tracks ******************************
song_1D8_track0: @ 0858D8B0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 14
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1D8 @ 0858D8C0
song_1D8:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1D8_track0           @ tracks 0x0858D8B0


@ ****************************** tracks ******************************
song_1D9_track0: @ 0858D8CC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 14
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1D9 @ 0858D8DC
song_1D9:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1D9_track0           @ tracks 0x0858D8CC


@ ****************************** tracks ******************************
song_1DA_track0: @ 0858D8E8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 15
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1DA @ 0858D8F8
song_1DA:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1DA_track0           @ tracks 0x0858D8E8


@ ****************************** tracks ******************************
song_1DB_track0: @ 0858D904
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 15
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1DB @ 0858D914
song_1DB:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1DB_track0           @ tracks 0x0858D904


@ ****************************** tracks ******************************
song_1E0_track0: @ 0858D920
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 16
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1E0 @ 0858D930
song_1E0:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1E0_track0           @ tracks 0x0858D920


@ ****************************** tracks ******************************
song_1E1_track0: @ 0858D93C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 16
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1E1 @ 0858D94C
song_1E1:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1E1_track0           @ tracks 0x0858D93C


@ ****************************** tracks ******************************
song_1E2_track0: @ 0858D958
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 17
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1E2 @ 0858D968
song_1E2:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1E2_track0           @ tracks 0x0858D958


@ ****************************** tracks ******************************
song_1E3_track0: @ 0858D974
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 17
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1E3 @ 0858D984
song_1E3:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1E3_track0           @ tracks 0x0858D974


@ ****************************** tracks ******************************
song_1E4_track0: @ 0858D990
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 18
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1E4 @ 0858D9A0
song_1E4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1E4_track0           @ tracks 0x0858D990


@ ****************************** tracks ******************************
song_1E5_track0: @ 0858D9AC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 18
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1E5 @ 0858D9BC
song_1E5:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1E5_track0           @ tracks 0x0858D9AC


@ ****************************** tracks ******************************
song_1EA_track0: @ 0858D9C8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 30
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1EA @ 0858D9D8
song_1EA:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1EA_track0           @ tracks 0x0858D9C8


@ ****************************** tracks ******************************
song_1EB_track0: @ 0858D9E4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 30
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1EB @ 0858D9F4
song_1EB:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1EB_track0           @ tracks 0x0858D9E4


@ ****************************** tracks ******************************
song_1EC_track0: @ 0858DA00
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 31
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1EC @ 0858DA10
song_1EC:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1EC_track0           @ tracks 0x0858DA00


@ ****************************** tracks ******************************
song_1ED_track0: @ 0858DA1C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 31
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1ED @ 0858DA2C
song_1ED:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1ED_track0           @ tracks 0x0858DA1C


@ ****************************** tracks ******************************
song_1EE_track0: @ 0858DA38
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 32
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1EE @ 0858DA48
song_1EE:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1EE_track0           @ tracks 0x0858DA38


@ ****************************** tracks ******************************
song_1EF_track0: @ 0858DA54
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 32
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1EF @ 0858DA64
song_1EF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1EF_track0           @ tracks 0x0858DA54


@ ****************************** tracks ******************************
song_1F4_track0: @ 0858DA70
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 33
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1F4 @ 0858DA80
song_1F4:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1F4_track0           @ tracks 0x0858DA70


@ ****************************** tracks ******************************
song_1F5_track0: @ 0858DA8C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 33
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1F5 @ 0858DA9C
song_1F5:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1F5_track0           @ tracks 0x0858DA8C


@ ****************************** tracks ******************************
song_1F6_track0: @ 0858DAA8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 34
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1F6 @ 0858DAB8
song_1F6:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1F6_track0           @ tracks 0x0858DAA8


@ ****************************** tracks ******************************
song_1F7_track0: @ 0858DAC4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 34
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1F7 @ 0858DAD4
song_1F7:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1F7_track0           @ tracks 0x0858DAC4


@ ****************************** tracks ******************************
song_1F8_track0: @ 0858DAE0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 35
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1F8 @ 0858DAF0
song_1F8:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1F8_track0           @ tracks 0x0858DAE0


@ ****************************** tracks ******************************
song_1F9_track0: @ 0858DAFC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 35
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1F9 @ 0858DB0C
song_1F9:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1F9_track0           @ tracks 0x0858DAFC


@ ****************************** tracks ******************************
song_1FE_track0: @ 0858DB18
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 36
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1FE @ 0858DB28
song_1FE:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1FE_track0           @ tracks 0x0858DB18


@ ****************************** tracks ******************************
song_1FF_track0: @ 0858DB34
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 36
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_1FF @ 0858DB44
song_1FF:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_1FF_track0           @ tracks 0x0858DB34


@ ****************************** tracks ******************************
song_200_track0: @ 0858DB50
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 37
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_200 @ 0858DB60
song_200:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_200_track0           @ tracks 0x0858DB50


@ ****************************** tracks ******************************
song_201_track0: @ 0858DB6C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 37
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_201 @ 0858DB7C
song_201:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_201_track0           @ tracks 0x0858DB6C


@ ****************************** tracks ******************************
song_202_track0: @ 0858DB88
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 38
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_202 @ 0858DB98
song_202:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_202_track0           @ tracks 0x0858DB88


@ ****************************** tracks ******************************
song_203_track0: @ 0858DBA4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 38
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_203 @ 0858DBB4
song_203:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_203_track0           @ tracks 0x0858DBA4


@ ****************************** tracks ******************************
song_208_track0: @ 0858DBC0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 40
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_208 @ 0858DBD0
song_208:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_208_track0           @ tracks 0x0858DBC0


@ ****************************** tracks ******************************
song_209_track0: @ 0858DBDC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 40
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_209 @ 0858DBEC
song_209:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_209_track0           @ tracks 0x0858DBDC


@ ****************************** tracks ******************************
song_20A_track0: @ 0858DBF8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 41
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_20A @ 0858DC08
song_20A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_20A_track0           @ tracks 0x0858DBF8


@ ****************************** tracks ******************************
song_20B_track0: @ 0858DC14
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 41
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_20B @ 0858DC24
song_20B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_20B_track0           @ tracks 0x0858DC14


@ ****************************** tracks ******************************
song_20C_track0: @ 0858DC30
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_20C @ 0858DC40
song_20C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_20C_track0           @ tracks 0x0858DC30


@ ****************************** tracks ******************************
song_20D_track0: @ 0858DC4C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 42
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_20D @ 0858DC5C
song_20D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_20D_track0           @ tracks 0x0858DC4C


@ ****************************** tracks ******************************
song_212_track0: @ 0858DC68
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 43
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_212 @ 0858DC78
song_212:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_212_track0           @ tracks 0x0858DC68


@ ****************************** tracks ******************************
song_213_track0: @ 0858DC84
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 43
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_213 @ 0858DC94
song_213:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_213_track0           @ tracks 0x0858DC84


@ ****************************** tracks ******************************
song_214_track0: @ 0858DCA0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 44
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_214 @ 0858DCB0
song_214:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_214_track0           @ tracks 0x0858DCA0


@ ****************************** tracks ******************************
song_215_track0: @ 0858DCBC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 44
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_215 @ 0858DCCC
song_215:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_215_track0           @ tracks 0x0858DCBC


@ ****************************** tracks ******************************
song_216_track0: @ 0858DCD8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 45
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_216 @ 0858DCE8
song_216:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_216_track0           @ tracks 0x0858DCD8


@ ****************************** tracks ******************************
song_217_track0: @ 0858DCF4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 45
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_217 @ 0858DD04
song_217:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_217_track0           @ tracks 0x0858DCF4


@ ****************************** tracks ******************************
song_21C_track0: @ 0858DD10
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 46
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_21C @ 0858DD20
song_21C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_21C_track0           @ tracks 0x0858DD10


@ ****************************** tracks ******************************
song_21D_track0: @ 0858DD2C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 46
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_21D @ 0858DD3C
song_21D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_21D_track0           @ tracks 0x0858DD2C


@ ****************************** tracks ******************************
song_21E_track0: @ 0858DD48
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 47
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_21E @ 0858DD58
song_21E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_21E_track0           @ tracks 0x0858DD48


@ ****************************** tracks ******************************
song_21F_track0: @ 0858DD64
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 47
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_21F @ 0858DD74
song_21F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_21F_track0           @ tracks 0x0858DD64


@ ****************************** tracks ******************************
song_220_track0: @ 0858DD80
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 48
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_220 @ 0858DD90
song_220:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_220_track0           @ tracks 0x0858DD80


@ ****************************** tracks ******************************
song_221_track0: @ 0858DD9C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 48
    .byte VOL, 110
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_221 @ 0858DDAC
song_221:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_221_track0           @ tracks 0x0858DD9C


@ ****************************** tracks ******************************
song_226_track0: @ 0858DDB8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 50
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_226 @ 0858DDC8
song_226:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_226_track0           @ tracks 0x0858DDB8


@ ****************************** tracks ******************************
song_227_track0: @ 0858DDD4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 50
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_227 @ 0858DDE4
song_227:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_227_track0           @ tracks 0x0858DDD4


@ ****************************** tracks ******************************
song_228_track0: @ 0858DDF0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 51
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_228 @ 0858DE00
song_228:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_228_track0           @ tracks 0x0858DDF0


@ ****************************** tracks ******************************
song_229_track0: @ 0858DE0C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 51
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_229 @ 0858DE1C
song_229:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_229_track0           @ tracks 0x0858DE0C


@ ****************************** tracks ******************************
song_22A_track0: @ 0858DE28
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 52
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_22A @ 0858DE38
song_22A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_22A_track0           @ tracks 0x0858DE28


@ ****************************** tracks ******************************
song_22B_track0: @ 0858DE44
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 52
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_22B @ 0858DE54
song_22B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_22B_track0           @ tracks 0x0858DE44


@ ****************************** tracks ******************************
song_230_track0: @ 0858DE60
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 53
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_230 @ 0858DE70
song_230:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_230_track0           @ tracks 0x0858DE60


@ ****************************** tracks ******************************
song_231_track0: @ 0858DE7C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 53
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_231 @ 0858DE8C
song_231:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_231_track0           @ tracks 0x0858DE7C


@ ****************************** tracks ******************************
song_232_track0: @ 0858DE98
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 54
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_232 @ 0858DEA8
song_232:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_232_track0           @ tracks 0x0858DE98


@ ****************************** tracks ******************************
song_233_track0: @ 0858DEB4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 54
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_233 @ 0858DEC4
song_233:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_233_track0           @ tracks 0x0858DEB4


@ ****************************** tracks ******************************
song_234_track0: @ 0858DED0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 55
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_234 @ 0858DEE0
song_234:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_234_track0           @ tracks 0x0858DED0


@ ****************************** tracks ******************************
song_235_track0: @ 0858DEEC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 55
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_235 @ 0858DEFC
song_235:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_235_track0           @ tracks 0x0858DEEC


@ ****************************** tracks ******************************
song_23A_track0: @ 0858DF08
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 56
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_23A @ 0858DF18
song_23A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_23A_track0           @ tracks 0x0858DF08


@ ****************************** tracks ******************************
song_23B_track0: @ 0858DF24
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 56
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_23B @ 0858DF34
song_23B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_23B_track0           @ tracks 0x0858DF24


@ ****************************** tracks ******************************
song_23C_track0: @ 0858DF40
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 57
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_23C @ 0858DF50
song_23C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_23C_track0           @ tracks 0x0858DF40


@ ****************************** tracks ******************************
song_23D_track0: @ 0858DF5C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 57
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_23D @ 0858DF6C
song_23D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_23D_track0           @ tracks 0x0858DF5C


@ ****************************** tracks ******************************
song_23E_track0: @ 0858DF78
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 58
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_23E @ 0858DF88
song_23E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_23E_track0           @ tracks 0x0858DF78


@ ****************************** tracks ******************************
song_23F_track0: @ 0858DF94
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 58
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_23F @ 0858DFA4
song_23F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_23F_track0           @ tracks 0x0858DF94


@ ****************************** tracks ******************************
song_244_track0: @ 0858DFB0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 60
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_244 @ 0858DFC0
song_244:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_244_track0           @ tracks 0x0858DFB0


@ ****************************** tracks ******************************
song_245_track0: @ 0858DFCC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 60
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_245 @ 0858DFDC
song_245:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_245_track0           @ tracks 0x0858DFCC


@ ****************************** tracks ******************************
song_246_track0: @ 0858DFE8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 61
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_246 @ 0858DFF8
song_246:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_246_track0           @ tracks 0x0858DFE8


@ ****************************** tracks ******************************
song_247_track0: @ 0858E004
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 61
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_247 @ 0858E014
song_247:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_247_track0           @ tracks 0x0858E004


@ ****************************** tracks ******************************
song_248_track0: @ 0858E020
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 62
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_248 @ 0858E030
song_248:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_248_track0           @ tracks 0x0858E020


@ ****************************** tracks ******************************
song_249_track0: @ 0858E03C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 62
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_249 @ 0858E04C
song_249:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_249_track0           @ tracks 0x0858E03C


@ ****************************** tracks ******************************
song_24E_track0: @ 0858E058
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 63
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_24E @ 0858E068
song_24E:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_24E_track0           @ tracks 0x0858E058


@ ****************************** tracks ******************************
song_24F_track0: @ 0858E074
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 63
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_24F @ 0858E084
song_24F:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_24F_track0           @ tracks 0x0858E074


@ ****************************** tracks ******************************
song_250_track0: @ 0858E090
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 64
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_250 @ 0858E0A0
song_250:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_250_track0           @ tracks 0x0858E090


@ ****************************** tracks ******************************
song_251_track0: @ 0858E0AC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 64
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_251 @ 0858E0BC
song_251:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_251_track0           @ tracks 0x0858E0AC


@ ****************************** tracks ******************************
song_252_track0: @ 0858E0C8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 65
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_252 @ 0858E0D8
song_252:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_252_track0           @ tracks 0x0858E0C8


@ ****************************** tracks ******************************
song_253_track0: @ 0858E0E4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 65
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_253 @ 0858E0F4
song_253:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_253_track0           @ tracks 0x0858E0E4


@ ****************************** tracks ******************************
song_258_track0: @ 0858E100
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 66
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_258 @ 0858E110
song_258:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_258_track0           @ tracks 0x0858E100


@ ****************************** tracks ******************************
song_259_track0: @ 0858E11C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 66
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_259 @ 0858E12C
song_259:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_259_track0           @ tracks 0x0858E11C


@ ****************************** tracks ******************************
song_25A_track0: @ 0858E138
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 67
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_25A @ 0858E148
song_25A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_25A_track0           @ tracks 0x0858E138


@ ****************************** tracks ******************************
song_25B_track0: @ 0858E154
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 67
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_25B @ 0858E164
song_25B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_25B_track0           @ tracks 0x0858E154


@ ****************************** tracks ******************************
song_25C_track0: @ 0858E170
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 68
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_25C @ 0858E180
song_25C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_25C_track0           @ tracks 0x0858E170


@ ****************************** tracks ******************************
song_25D_track0: @ 0858E18C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 68
    .byte VOL, 117
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_25D @ 0858E19C
song_25D:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08398E40       @ tone
    .word song_25D_track0           @ tracks 0x0858E18C


@ ****************************** tracks ******************************
song_262_track0: @ 0858E1A8
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 120
    .byte VOL, 120
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_262 @ 0858E1B8
song_262:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_262_track0           @ tracks 0x0858E1A8


@ ****************************** tracks ******************************
song_263_track0: @ 0858E1C4
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 120
    .byte VOL, 120
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_263 @ 0858E1D4
song_263:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_263_track0           @ tracks 0x0858E1C4


@ ****************************** tracks ******************************
song_264_track0: @ 0858E1E0
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 121
    .byte VOL, 120
    .byte N36, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_264 @ 0858E1F0
song_264:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_264_track0           @ tracks 0x0858E1E0


@ ****************************** tracks ******************************
song_265_track0: @ 0858E1FC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 121
    .byte VOL, 120
    .byte N36, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_265 @ 0858E20C
song_265:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_265_track0           @ tracks 0x0858E1FC


@ ****************************** tracks ******************************
song_266_track0: @ 0858E218
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 100
    .byte VOL, 120
    .byte N23, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_266 @ 0858E228
song_266:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_266_track0           @ tracks 0x0858E218


@ ****************************** tracks ******************************
song_267_track0: @ 0858E234
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 100
    .byte VOL, 120
    .byte N23, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_267 @ 0858E244
song_267:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_267_track0           @ tracks 0x0858E234


@ ****************************** tracks ******************************
song_268_track0: @ 0858E250
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 122
    .byte VOL, 120
    .byte N24, 60, 127
    .byte W24
    .byte FINE

.align 2
.global song_268 @ 0858E260
song_268:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_0839887C       @ tone
    .word song_268_track0           @ tracks 0x0858E250


@ ****************************** tracks ******************************
song_269_track0: @ 0858E26C
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 48
    .byte BENDR, 24
    .byte VOL, 0
    .byte BEND, 0
    .byte TIE, 63, 127
    .byte W02
    .byte VOL, 4
    .byte BEND, 2
    .byte W02
    .byte VOL, 8
    .byte BEND, 4
    .byte W02
    .byte VOL, 12
    .byte BEND, 6
    .byte W02
    .byte VOL, 16
    .byte BEND, 8
    .byte W02
    .byte VOL, 21
    .byte BEND, 10
    .byte W02
    .byte VOL, 25
    .byte BEND, 12
    .byte W02
    .byte VOL, 29
    .byte BEND, 14
    .byte W02
    .byte VOL, 33
    .byte BEND, 17
    .byte W02
    .byte VOL, 38
    .byte BEND, 19
    .byte W02
    .byte VOL, 42
    .byte BEND, 21
    .byte W02
    .byte VOL, 46
    .byte BEND, 23
    .byte W02
    .byte VOL, 50
    .byte BEND, 25
    .byte W02
    .byte VOL, 54
    .byte BEND, 27
    .byte W02
    .byte VOL, 59
    .byte BEND, 29
    .byte W02
    .byte VOL, 63
    .byte BEND, 31
    .byte W02
    .byte VOL, 67
    .byte BEND, 34
    .byte W02
    .byte VOL, 71
    .byte BEND, 36
    .byte W02
    .byte VOL, 76
    .byte BEND, 38
    .byte W02
    .byte VOL, 80
    .byte BEND, 40
    .byte W02
    .byte VOL, 84
    .byte BEND, 42
    .byte W02
    .byte VOL, 88
    .byte BEND, 44
    .byte W02
    .byte VOL, 93
    .byte BEND, 46
    .byte W02
    .byte VOL, 97
    .byte BEND, 49
    .byte W02
    .byte VOL, 101
    .byte BEND, 51
    .byte W02
    .byte VOL, 105
    .byte BEND, 53
    .byte W02
    .byte VOL, 109
    .byte BEND, 55
    .byte W02
    .byte VOL, 114
    .byte BEND, 57
    .byte W02
    .byte VOL, 118
    .byte BEND, 59
    .byte W02
    .byte VOL, 122
    .byte BEND, 61
    .byte W02
    .byte VOL, 127
    .byte BEND, 64
    .byte W12
    .byte W24
    .byte VOL, 127
    .byte W02
    .byte 0x79
    .byte W02
    .byte 0x74
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x25
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x1A
    .byte W02
    .byte 0x15
    .byte W02
    .byte 0x10
    .byte W02
    .byte 0x0A
    .byte W02
    .byte 0x05
    .byte W02
    .byte EOT
    .byte VOL, 0
    .byte W24
    .byte FINE

song_269_track1: @ 0858E349
    .byte KEYSH, 0
    .byte VOICE, 48
    .byte BENDR, 24
    .byte VOL, 0
    .byte TUNE, 80
    .byte BEND, 0
    .byte TIE, 63, 112
    .byte W02
    .byte VOL, 4
    .byte BEND, 2
    .byte W02
    .byte VOL, 8
    .byte BEND, 4
    .byte W02
    .byte VOL, 12
    .byte BEND, 6
    .byte W02
    .byte VOL, 16
    .byte BEND, 8
    .byte W02
    .byte VOL, 21
    .byte BEND, 10
    .byte W02
    .byte VOL, 25
    .byte BEND, 12
    .byte W02
    .byte VOL, 29
    .byte BEND, 14
    .byte W02
    .byte VOL, 33
    .byte BEND, 17
    .byte W02
    .byte VOL, 38
    .byte BEND, 19
    .byte W02
    .byte VOL, 42
    .byte BEND, 21
    .byte W02
    .byte VOL, 46
    .byte BEND, 23
    .byte W02
    .byte VOL, 50
    .byte BEND, 25
    .byte W02
    .byte VOL, 54
    .byte BEND, 27
    .byte W02
    .byte VOL, 59
    .byte BEND, 29
    .byte W02
    .byte VOL, 63
    .byte BEND, 31
    .byte W02
    .byte VOL, 67
    .byte BEND, 34
    .byte W02
    .byte VOL, 71
    .byte BEND, 36
    .byte W02
    .byte VOL, 76
    .byte BEND, 38
    .byte W02
    .byte VOL, 80
    .byte BEND, 40
    .byte W02
    .byte VOL, 84
    .byte BEND, 42
    .byte W02
    .byte VOL, 88
    .byte BEND, 44
    .byte W02
    .byte VOL, 93
    .byte BEND, 46
    .byte W02
    .byte VOL, 97
    .byte BEND, 49
    .byte W02
    .byte VOL, 101
    .byte BEND, 51
    .byte W02
    .byte VOL, 105
    .byte BEND, 53
    .byte W02
    .byte VOL, 109
    .byte BEND, 55
    .byte W02
    .byte VOL, 114
    .byte BEND, 57
    .byte W02
    .byte VOL, 118
    .byte BEND, 59
    .byte W02
    .byte VOL, 122
    .byte BEND, 61
    .byte W02
    .byte VOL, 127
    .byte BEND, 64
    .byte W12
    .byte W24
    .byte VOL, 127
    .byte W02
    .byte 0x79
    .byte W02
    .byte 0x74
    .byte W02
    .byte 0x6F
    .byte W02
    .byte 0x69
    .byte W02
    .byte 0x64
    .byte W02
    .byte 0x5F
    .byte W02
    .byte 0x5A
    .byte W02
    .byte 0x54
    .byte W02
    .byte 0x4F
    .byte W02
    .byte 0x4A
    .byte W02
    .byte 0x44
    .byte W02
    .byte 0x3F
    .byte W02
    .byte 0x3A
    .byte W02
    .byte 0x35
    .byte W02
    .byte 0x2F
    .byte W02
    .byte 0x2A
    .byte W02
    .byte 0x25
    .byte W02
    .byte 0x20
    .byte W02
    .byte 0x1A
    .byte W02
    .byte 0x15
    .byte W02
    .byte 0x10
    .byte W02
    .byte 0x0A
    .byte W02
    .byte 0x05
    .byte W02
    .byte EOT
    .byte VOL, 0
    .byte W24
    .byte FINE

.align 2
.global song_269 @ 0858E428
song_269:
@ ****************************** header ******************************
    .byte 0x02                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_269_track0           @ tracks 0x0858E26C
    .word song_269_track1           @ tracks 0x0858E349


@ ****************************** tracks ******************************
song_26A_track0: @ 0858E438
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 26
    .byte VOL, 56
    .byte MOD, 24
    .byte MODT, 0
    .byte LFOS, 3
    .byte BENDR, 7
    .byte BEND, 96
    .byte TIE, 52, 127
    .byte W01
    .byte BEND, 83
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x60
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x60
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x60
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x20
    .byte W01
label_song_26A_track0_0:
    .byte BEND, 96
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x60
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x60
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x20
    .byte W01
    .byte 0x60
    .byte W01
    .byte 0x53
    .byte W01
    .byte 0x46
    .byte W01
    .byte 0x39
    .byte W01
    .byte 0x2C
    .byte W01
    .byte 0x20
    .byte W01
    .byte PEND
    .byte PATT
    .word label_song_26A_track0_0
    .byte PATT
    .word label_song_26A_track0_0
    .byte PATT
    .word label_song_26A_track0_0
    .byte GOTO
    .word label_song_26A_track0_0
    .byte W08
    .byte EOT, 52
    .byte W16
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_26A @ 0858E4D0
song_26A:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_26A_track0           @ tracks 0x0858E438


@ ****************************** tracks ******************************
song_26B_track0: @ 0858E4DC
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 27
    .byte VOL, 127
    .byte BENDR, 2
    .byte BEND, 64
    .byte N16, 60, 127
    .byte W02
    .byte BEND, 85
    .byte W02
    .byte 0x6A
    .byte W02
    .byte 0x7F
    .byte W02
    .byte VOL, 110
    .byte W02
    .byte 0x50
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x32
    .byte W02
    .byte 0x7F
    .byte BEND, 64
    .byte N14, 60, 48
    .byte W02
    .byte BEND, 85
    .byte W02
    .byte 0x6A
    .byte W02
    .byte VOL, 110
    .byte BEND, 127
    .byte W02
    .byte VOL, 80
    .byte W02
    .byte 0x41
    .byte W02
    .byte 0x32
    .byte W20
    .byte FINE

.align 2
.global song_26B @ 0858E518
song_26B:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_26B_track0           @ tracks 0x0858E4DC


@ ****************************** tracks ******************************
song_26C_track0: @ 0858E524
    .byte KEYSH, 0
    .byte TEMPO, 75
    .byte VOICE, 29
    .byte VOL, 127
    .byte N24, 60, 127
    .byte W24
    .byte W24
    .byte FINE

.align 2
.global song_26C @ 0858E534
song_26C:
@ ****************************** header ******************************
    .byte 0x01                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x14                      @ priority
    .byte 0x00                      @ reverb
    .word voicegroup_08397BF8       @ tone
    .word song_26C_track0           @ tracks 0x0858E524



@ ******************************** WAVs ******************************
@ info:
@ max_tone: 08398E40
