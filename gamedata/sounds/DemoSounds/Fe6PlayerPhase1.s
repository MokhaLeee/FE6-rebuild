.include "MPlayDef.s"
.include "asm_m4a.inc"
.include "asm_music_voice.inc"

.section .rodata
.align 2,0

.global Song_Fe6PlayerPhase1


@ ****************************** tracks ******************************
song_00A_track0: @ 0856C260
    .byte KEYSH, 0
    .byte TEMPO, 63
    .byte VOICE, 1
    .byte VOL, 95
    .byte PAN, 75
    .byte W24
    .byte N06, 61, 100
    .byte W08
    .byte N09, 62
    .byte W08
    .byte N07, 64, 104
    .byte W08
    .byte N36, 69, 100
    .byte W48
    .byte N17, 69, 116
    .byte W24
    .byte N05, 67, 104
    .byte W08
    .byte N07, 65, 100
    .byte W08
    .byte 0x3C
    .byte W08
    .byte N18, 64, 116
    .byte W24
    .byte N17, 62
    .byte W24
    .byte W96
    .byte VOICE, 48
    .byte VOL, 78
    .byte PAN, 60
    .byte W36
    .byte N05, 73, 88
    .byte W06
    .byte 0x4C
    .byte 0x60
    .byte W06
    .byte N32, 81, 100
    .byte W28
    .byte W01
    .byte VOL, 72
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x38
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x24
    .byte W01
    .byte 0x1D
    .byte W01
    .byte 0x14
    .byte W13
label_song_00A_track0_2:
    .byte VOICE, 3
    .byte VOL, 82
    .byte PAN, 52
    .byte N32, 61, 96
    .byte W36
    .byte N11, 62
    .byte W12
    .byte N44, 64
    .byte W48
label_song_00A_track0_1:
    .byte N32, 67, 96
    .byte W36
    .byte N05, 65
    .byte W06
    .byte 0x3C
    .byte W06
    .byte N44, 57
    .byte W48
    .byte PEND
    .byte N32, 64
    .byte W36
    .byte N05, 62
    .byte W06
    .byte 0x3C
    .byte W06
    .byte N42, 59
    .byte W48
label_song_00A_track0_0:
    .byte N32, 61, 96
    .byte W36
    .byte N11, 62
    .byte W12
    .byte N44, 64
    .byte W48
    .byte PEND
    .byte PATT
    .word label_song_00A_track0_0
    .byte PATT
    .word label_song_00A_track0_1
    .byte N32, 64, 96
    .byte W36
    .byte N11, 62
    .byte W12
    .byte N30, 59
    .byte W36
    .byte N11
    .byte W12
    .byte N44, 62
    .byte W48
    .byte N42, 61
    .byte W48
    .byte N44, 57, 92
    .byte N44, 60, 112
    .byte W48
    .byte N21, 55, 96
    .byte N23, 59, 104
    .byte W24
    .byte 0x35
    .byte 0x60
    .byte N23, 57, 100
    .byte W24
    .byte N15, 55
    .byte N12, 59
    .byte W24
    .byte N60
    .byte N60, 62, 120
    .byte W72
    .byte N44, 59, 108
    .byte N44, 62, 116
    .byte W48
    .byte N23, 57, 100
    .byte N23, 60, 84
    .byte W24
    .byte 0x37
    .byte 0x60
    .byte N23, 59, 92
    .byte W24
    .byte N18, 57, 96
    .byte N17, 60, 108
    .byte W24
    .byte N56, 60, 116
    .byte N56, 64, 104
    .byte W72
    .byte N44, 60
    .byte N44, 64, 108
    .byte W48
    .byte N23, 59, 100
    .byte N23, 62, 104
    .byte W24
    .byte 0x39
    .byte 0x5C
    .byte N22, 60, 96
    .byte W24
    .byte N80, 59, 104
    .byte N80, 62, 112
    .byte W96
    .byte N40, 57, 100
    .byte N44, 62, 127
    .byte W48
    .byte N18, 57, 100
    .byte N23, 59
    .byte W24
    .byte N19, 57, 104
    .byte N23, 62, 116
    .byte W24
    .byte N78, 57, 96
    .byte N80, 61
    .byte W96
    .byte GOTO
    .word label_song_00A_track0_2
    .byte FINE

song_00A_track1: @ 0856C37B
    .byte KEYSH, 0
    .byte VOICE, 1
    .byte VOL, 53
    .byte PAN, 52
    .byte BEND, 63
    .byte W24
    .byte N07, 61, 100
    .byte W08
    .byte 0x3E
    .byte W08
    .byte 0x40
    .byte 0x68
    .byte W08
    .byte N40, 69, 100
    .byte W48
    .byte N18, 69, 116
    .byte W24
    .byte N06, 67, 104
    .byte W08
    .byte N07, 65, 100
    .byte W08
    .byte 0x3C
    .byte W08
    .byte N19, 64, 116
    .byte W24
    .byte N18, 62
    .byte W23
    .byte BEND, 64
    .byte W01
    .byte W96
    .byte VOICE, 48
    .byte VOL, 78
    .byte PAN, 60
    .byte W36
    .byte N04, 69, 76
    .byte W06
    .byte N05, 73
    .byte W06
    .byte N32, 76, 80
    .byte W28
    .byte W01
    .byte VOL, 72
    .byte W01
    .byte 0x3E
    .byte W01
    .byte 0x38
    .byte W01
    .byte 0x2E
    .byte W01
    .byte 0x24
    .byte W01
    .byte 0x1D
    .byte W01
    .byte 0x14
    .byte W13
label_song_00A_track1_2:
    .byte VOICE, 3
    .byte VOL, 49
    .byte PAN, 56
    .byte BEND, 60
    .byte W05
    .byte N32, 61, 80
    .byte W36
    .byte N11, 62
    .byte W12
    .byte N44, 64
    .byte W42
    .byte W01
label_song_00A_track1_1:
    .byte W05
    .byte N32, 67, 80
    .byte W36
    .byte N05, 65
    .byte W06
    .byte 0x3C
    .byte W06
    .byte N44, 57
    .byte W42
    .byte W01
    .byte PEND
    .byte W05
    .byte N32, 64
    .byte W36
    .byte N05, 62
    .byte W06
    .byte 0x3C
    .byte W06
    .byte N42, 59
    .byte W42
    .byte W01
label_song_00A_track1_0:
    .byte W05
    .byte N32, 61, 80
    .byte W36
    .byte N11, 62
    .byte W12
    .byte N44, 64
    .byte W42
    .byte W01
    .byte PEND
    .byte PATT
    .word label_song_00A_track1_0
    .byte PATT
    .word label_song_00A_track1_1
    .byte W05
    .byte N32, 64, 80
    .byte W36
    .byte N11, 62
    .byte W12
    .byte N30, 59
    .byte W36
    .byte N11
    .byte W07
    .byte W05
    .byte N44, 62
    .byte W48
    .byte N42, 61
    .byte W42
    .byte W01
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte GOTO
    .word label_song_00A_track1_2
    .byte FINE

song_00A_track2: @ 0856C438
    .byte KEYSH, 0
    .byte VOICE, 48
    .byte VOL, 74
    .byte PAN, 45
    .byte N92, 52, 92
    .byte N92, 61
    .byte W96
    .byte N88, 53, 96
    .byte N92, 62, 104
    .byte W96
    .byte N72, 52, 100
    .byte N78, 61, 92
    .byte W84
    .byte N06, 54, 80
    .byte N07, 62, 116
    .byte W12
    .byte N78, 55, 96
    .byte N78, 64, 104
    .byte W96
label_song_00A_track2_2:
    .byte VOICE, 2
    .byte VOL, 70
    .byte PAN, 80
    .byte N32, 61, 80
    .byte W36
    .byte N11, 62
    .byte W12
    .byte N44, 64
    .byte W48
label_song_00A_track2_1:
    .byte N32, 67, 80
    .byte W36
    .byte N05, 65
    .byte W06
    .byte 0x3C
    .byte W06
    .byte N44, 57
    .byte W48
    .byte PEND
    .byte N32, 64
    .byte W36
    .byte N05, 62
    .byte W06
    .byte 0x3C
    .byte 0x4C
    .byte W06
    .byte N42, 59, 80
    .byte W48
label_song_00A_track2_0:
    .byte N32, 61, 80
    .byte W36
    .byte N11, 62
    .byte W12
    .byte N44, 64
    .byte W48
    .byte PEND
    .byte PATT
    .word label_song_00A_track2_0
    .byte PATT
    .word label_song_00A_track2_1
    .byte N32, 64, 80
    .byte W36
    .byte N11, 62
    .byte W12
    .byte N30, 59
    .byte W36
    .byte N11
    .byte W12
    .byte N44, 62
    .byte W48
    .byte N42, 61, 72
    .byte W48
    .byte N44, 60, 112
    .byte W48
    .byte N23, 59, 104
    .byte W24
    .byte 0x39
    .byte 0x64
    .byte W24
    .byte N12, 59
    .byte W18
    .byte N05, 55, 84
    .byte W06
    .byte N60, 62, 120
    .byte W72
    .byte N44, 62, 116
    .byte W48
    .byte N23, 60, 84
    .byte W24
    .byte 0x3B
    .byte 0x5C
    .byte W24
    .byte N11, 60, 108
    .byte W18
    .byte N05, 57, 84
    .byte W06
    .byte N56, 64, 104
    .byte W72
    .byte N44, 64, 108
    .byte W48
    .byte N23, 62, 104
    .byte W24
    .byte N22, 60, 96
    .byte W24
    .byte N80, 62, 112
    .byte W96
    .byte N44, 62, 127
    .byte W48
    .byte N23, 59, 100
    .byte W24
    .byte 0x3E
    .byte 0x74
    .byte W24
    .byte N80, 61, 96
    .byte W96
    .byte GOTO
    .word label_song_00A_track2_2
    .byte FINE

song_00A_track3: @ 0856C506
    .byte KEYSH, 0
    .byte VOICE, 1
    .byte VOL, 85
    .byte PAN, 52
    .byte W24
    .byte N04, 57, 108
    .byte W08
    .byte 0x3B
    .byte 0x70
    .byte W08
    .byte 0x3D
    .byte 0x64
    .byte W08
    .byte N36, 64, 124
    .byte W48
    .byte N16, 64, 127
    .byte W24
    .byte N04, 64, 124
    .byte W08
    .byte 0x3E
    .byte 0x7F
    .byte W08
    .byte 0x37
    .byte 0x74
    .byte W08
    .byte N18, 60, 112
    .byte W24
    .byte N16, 59
    .byte W24
    .byte VOICE, 52
    .byte VOL, 90
    .byte PAN, 64
    .byte TIE, 69, 96
    .byte W96
    .byte W84
    .byte EOT
    .byte W12
label_song_00A_track3_0:
    .byte VOICE, 52
    .byte VOL, 90
    .byte PAN, 64
    .byte N92, 57, 104
    .byte W96
    .byte 0x35
    .byte 0x64
    .byte W96
    .byte 0x37
    .byte W96
    .byte N88, 57, 96
    .byte W96
    .byte N92, 57, 108
    .byte W96
    .byte 0x39
    .byte 0x60
    .byte W96
    .byte 0x3B
    .byte W96
    .byte N78, 61, 100
    .byte W96
    .byte TIE, 65, 96
    .byte W96
    .byte W96
    .byte W96
    .byte W92
    .byte W03
    .byte EOT
    .byte W01
    .byte TIE, 67
    .byte W96
    .byte W92
    .byte W03
    .byte EOT
    .byte W01
    .byte N92, 69
    .byte W96
    .byte N90, 69, 92
    .byte W96
    .byte GOTO
    .word label_song_00A_track3_0
    .byte FINE

song_00A_track4: @ 0856C57D
    .byte KEYSH, 0
    .byte W96
    .byte W96
    .byte W96
    .byte W96
label_song_00A_track4_0:
    .byte VOICE, 48
    .byte VOL, 52
    .byte PAN, 64
    .byte N92, 61, 104
    .byte W96
    .byte 0x3C
    .byte 0x64
    .byte W96
    .byte 0x3E
    .byte W96
    .byte N88, 64, 96
    .byte W96
    .byte N92, 61, 108
    .byte W96
    .byte 0x3C
    .byte 0x60
    .byte W96
    .byte VOICE, 48
    .byte VOL, 24
    .byte PAN, 60
    .byte N92, 67, 112
    .byte W03
    .byte VOL, 25
    .byte W01
    .byte 0x1A
    .byte W02
    .byte 0x1B
    .byte W01
    .byte 0x1C
    .byte W02
    .byte 0x1C
    .byte W01
    .byte 0x1D
    .byte W02
    .byte 0x1E
    .byte W01
    .byte 0x1F
    .byte W02
    .byte 0x20
    .byte W01
    .byte 0x21
    .byte W02
    .byte 0x21
    .byte W01
    .byte 0x22
    .byte W02
    .byte 0x23
    .byte W01
    .byte 0x24
    .byte W02
    .byte 0x25
    .byte W01
    .byte 0x26
    .byte W02
    .byte 0x26
    .byte W01
    .byte 0x27
    .byte W02
    .byte 0x28
    .byte W02
    .byte 0x29
    .byte W01
    .byte 0x2A
    .byte W02
    .byte 0x2A
    .byte W01
    .byte 0x2B
    .byte W02
    .byte 0x2C
    .byte W01
    .byte 0x2D
    .byte W02
    .byte 0x2E
    .byte W01
    .byte 0x2F
    .byte W02
    .byte 0x2F
    .byte W01
    .byte 0x30
    .byte W02
    .byte 0x31
    .byte W01
    .byte 0x32
    .byte W02
    .byte 0x33
    .byte W01
    .byte 0x34
    .byte W02
    .byte 0x34
    .byte W01
    .byte 0x35
    .byte W02
    .byte 0x36
    .byte W01
    .byte 0x37
    .byte W02
    .byte 0x38
    .byte W02
    .byte 0x39
    .byte W01
    .byte 0x39
    .byte W02
    .byte 0x3A
    .byte W01
    .byte 0x3B
    .byte W02
    .byte 0x3C
    .byte W01
    .byte 0x3D
    .byte W02
    .byte 0x3E
    .byte W01
    .byte 0x3E
    .byte W02
    .byte 0x3F
    .byte W01
    .byte 0x40
    .byte W02
    .byte 0x41
    .byte W01
    .byte 0x42
    .byte W02
    .byte 0x42
    .byte W01
    .byte 0x43
    .byte W02
    .byte 0x44
    .byte W01
    .byte 0x45
    .byte W02
    .byte 0x46
    .byte W01
    .byte 0x47
    .byte W02
    .byte 0x47
    .byte W01
    .byte 0x48
    .byte W02
    .byte 0x49
    .byte W02
    .byte 0x4A
    .byte W01
    .byte 0x4B
    .byte W02
    .byte 0x4C
    .byte N92, 69
    .byte W15
    .byte VOL, 76
    .byte W07
    .byte 0x4D
    .byte W08
    .byte 0x4E
    .byte W08
    .byte 0x4F
    .byte W07
    .byte 0x50
    .byte W08
    .byte 0x51
    .byte W08
    .byte 0x51
    .byte W07
    .byte 0x53
    .byte W04
    .byte VOICE, 48
    .byte VOL, 57
    .byte PAN, 60
    .byte W24
    .byte N44, 72, 80
    .byte W48
    .byte N23, 71
    .byte W24
    .byte 0x45
    .byte W24
    .byte N12, 71
    .byte W18
    .byte N05, 67
    .byte W06
    .byte N60, 74
    .byte W72
    .byte N44
    .byte W48
    .byte N23, 72
    .byte W24
    .byte 0x47
    .byte W24
    .byte N05, 72
    .byte W18
    .byte 0x45
    .byte W06
    .byte N56, 76
    .byte W72
    .byte N44
    .byte W48
    .byte N23, 74
    .byte W24
    .byte N22, 72
    .byte W24
    .byte N80, 74
    .byte W96
    .byte N44
    .byte W48
    .byte N23, 71
    .byte W24
    .byte 0x4A
    .byte W24
    .byte N80, 73
    .byte W96
    .byte GOTO
    .word label_song_00A_track4_0
    .byte FINE

song_00A_track5: @ 0856C67A
    .byte KEYSH, 0
    .byte VOICE, 33
    .byte VOL, 81
    .byte PAN, 66
    .byte N92, 57, 104
    .byte W96
    .byte 0x37
    .byte 0x64
    .byte W96
    .byte N10, 57, 96
    .byte W24
    .byte 0x39
    .byte 0x64
    .byte W24
    .byte N09, 57, 96
    .byte W24
    .byte N10, 57, 100
    .byte W24
    .byte N09
    .byte W24
    .byte N09
    .byte W24
    .byte N10
    .byte W24
    .byte N10
    .byte W24
label_song_00A_track5_0:
    .byte N24, 69, 112
    .byte W36
    .byte N04, 69, 100
    .byte W12
    .byte N44, 69, 112
    .byte W48
    .byte N30, 65, 108
    .byte W36
    .byte N05, 65, 92
    .byte W12
    .byte N44, 65, 108
    .byte W48
    .byte N32, 67
    .byte W36
    .byte N06
    .byte W12
    .byte N44
    .byte W48
    .byte N24, 69, 112
    .byte W36
    .byte N23, 69, 108
    .byte W24
    .byte 0x40
    .byte 0x68
    .byte W24
    .byte N11, 57, 100
    .byte W12
    .byte N24, 69, 116
    .byte W36
    .byte N05, 69, 108
    .byte W12
    .byte N44, 69, 104
    .byte W48
    .byte N28, 65, 100
    .byte W36
    .byte N06
    .byte W12
    .byte N44, 65, 108
    .byte W48
    .byte N28, 67, 104
    .byte W36
    .byte N06
    .byte W12
    .byte N32, 67, 108
    .byte W36
    .byte N11, 67, 96
    .byte W12
    .byte N24, 69, 104
    .byte W36
    .byte N05
    .byte W12
    .byte N11, 69, 116
    .byte W12
    .byte N23, 64, 104
    .byte W24
    .byte N05, 69, 108
    .byte W12
    .byte N23, 65, 104
    .byte W36
    .byte N05
    .byte W12
    .byte N30, 65, 116
    .byte W36
    .byte N05, 65, 108
    .byte W12
    .byte N07, 65, 116
    .byte W12
    .byte N17, 65, 104
    .byte W24
    .byte N23, 65, 108
    .byte W24
    .byte N11, 60
    .byte W12
    .byte 0x41
    .byte 0x70
    .byte W12
    .byte 0x3C
    .byte 0x60
    .byte W12
    .byte N24, 65, 116
    .byte W36
    .byte N05, 65, 112
    .byte W12
    .byte N28
    .byte W36
    .byte N16
    .byte W12
    .byte W12
    .byte N17
    .byte W24
    .byte N06
    .byte W12
    .byte N09, 65, 108
    .byte W12
    .byte N11, 60, 92
    .byte W12
    .byte 0x41
    .byte 0x70
    .byte W12
    .byte 0x45
    .byte 0x68
    .byte W12
    .byte N24, 67, 108
    .byte W36
    .byte N05, 67, 116
    .byte W12
    .byte N24
    .byte W36
    .byte N23
    .byte W12
    .byte W12
    .byte N11, 62
    .byte W12
    .byte 0x43
    .byte 0x6C
    .byte W12
    .byte 0x3E
    .byte 0x70
    .byte W12
    .byte N07, 67
    .byte W12
    .byte 0x37
    .byte 0x60
    .byte W12
    .byte N11, 62, 112
    .byte W12
    .byte N07, 67, 104
    .byte W12
    .byte N28, 69
    .byte W36
    .byte N05, 69, 112
    .byte W12
    .byte N24
    .byte W36
    .byte N08
    .byte W12
    .byte N11, 69, 60
    .byte W12
    .byte N22, 64, 120
    .byte W24
    .byte N23, 57, 116
    .byte W24
    .byte N10, 64, 112
    .byte W12
    .byte N19, 69, 120
    .byte W24
    .byte GOTO
    .word label_song_00A_track5_0
    .byte FINE

song_00A_track6: @ 0856C78F
    .byte KEYSH, 0
    .byte W96
    .byte W96
    .byte VOICE, 127
    .byte VOL, 78
    .byte PAN, 57
    .byte N23, 36, 100
    .byte W24
    .byte N23
    .byte W24
    .byte N23
    .byte W24
    .byte N23
    .byte W24
label_song_00A_track6_0:
    .byte N23, 36, 100
    .byte W24
    .byte N23
    .byte W24
    .byte N23
    .byte W24
    .byte N11
    .byte W12
    .byte 0x26
    .byte 0x70
    .byte W12
    .byte PEND
label_song_00A_track6_2:
    .byte N23, 36, 100
    .byte W24
    .byte N23
    .byte W24
    .byte N23
    .byte W24
    .byte N23
    .byte W24
    .byte PEND
label_song_00A_track6_1:
    .byte N23, 36, 100
    .byte W24
    .byte N11, 36, 80
    .byte W12
    .byte 0x24
    .byte 0x28
    .byte W12
    .byte 0x24
    .byte 0x5C
    .byte W12
    .byte 0x26
    .byte 0x54
    .byte W12
    .byte 0x24
    .byte 0x64
    .byte W12
    .byte 0x26
    .byte 0x6C
    .byte W12
    .byte PEND
    .byte PATT
    .word label_song_00A_track6_0
    .byte PATT
    .word label_song_00A_track6_1
    .byte PATT
    .word label_song_00A_track6_2
    .byte PATT
    .word label_song_00A_track6_1
    .byte PATT
    .word label_song_00A_track6_0
    .byte PATT
    .word label_song_00A_track6_1
    .byte PATT
    .word label_song_00A_track6_2
    .byte PATT
    .word label_song_00A_track6_1
    .byte PATT
    .word label_song_00A_track6_0
    .byte PATT
    .word label_song_00A_track6_1
    .byte PATT
    .word label_song_00A_track6_2
    .byte PATT
    .word label_song_00A_track6_1
    .byte PATT
    .word label_song_00A_track6_0
    .byte PATT
    .word label_song_00A_track6_1
    .byte GOTO
    .word label_song_00A_track6_2
    .byte FINE

.align 2
.global Song_Fe6PlayerPhase1 @ 0856C820
Song_Fe6PlayerPhase1:
@ ****************************** header ******************************
    .byte 0x07                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x0A                      @ priority
    .byte 0x9E                      @ reverb
    .word voicegroup_08384188       @ tone
    .word song_00A_track0           @ tracks 0x0856C260
    .word song_00A_track1           @ tracks 0x0856C37B
    .word song_00A_track2           @ tracks 0x0856C438
    .word song_00A_track3           @ tracks 0x0856C506
    .word song_00A_track4           @ tracks 0x0856C57D
    .word song_00A_track5           @ tracks 0x0856C67A
    .word song_00A_track6           @ tracks 0x0856C78F
