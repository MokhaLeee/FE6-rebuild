	.include "MPlayDef.s"

	.equ	song0B_grp, AllInstrument
	.equ	song0B_pri, 0
	.equ	song0B_rev, 0
	.equ	song0B_mvl, 127
	.equ	song0B_key, 0
	.equ	song0B_tbs, 1
	.equ	song0B_exg, 0
	.equ	song0B_cmp, 1

	.section .content_data
	.global	Song_TempestOfSeasons_SurfingKyogre
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

.align 2, 0
song0B_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   TEMPO , 90*song0B_tbs/2
 .byte   VOICE , 60
 .byte   PAN , c_v+3
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   N11 ,As2 ,v080
 .byte   N05 ,Ds3 ,v096
 .byte   N11 ,Fn3 ,v080
 .byte   W06
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   N17 ,As2 ,v080
 .byte   N17 ,Fn3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N11 ,As2 ,v080
 .byte   N11 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N28 ,As2 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Cn4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,As2 ,v080
 .byte   N05 ,Ds3 ,v096
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N17 ,As2 ,v080
 .byte   N06 ,Ds3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
@  #01 @001   ----------------------------------------
 .byte   Gs3
 .byte   W06
 .byte   N11 ,Gs2 ,v080
 .byte   N11 ,Cs3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N28 ,Gs2 ,v080
 .byte   N28 ,Cs3
 .byte   N05 ,Cn4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,As2 ,v080
 .byte   N05 ,Ds3 ,v096
 .byte   N11 ,Fn3 ,v080
 .byte   W06
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   N17 ,As2 ,v080
 .byte   N17 ,Fn3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N11 ,As2 ,v080
 .byte   N11 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N28 ,As2 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Cn4 ,v096
 .byte   W06
@  #01 @002   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Cs3 ,v080
 .byte   N05 ,Ds3 ,v096
 .byte   N06 ,Gs3 ,v080
 .byte   W06
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   N17 ,Cs3 ,v080
 .byte   N12 ,Gs3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N11 ,Gs2 ,v080
 .byte   N11 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N28 ,Gs2 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Cn4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
@  #01 @003   ----------------------------------------
 .byte   N11 ,Cn3 ,v080
 .byte   N05 ,Fn3 ,v096
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N17 ,Cn3 ,v080
 .byte   N06 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Ds3 ,v080
 .byte   N11 ,Gn3
 .byte   N05 ,Fn4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N28 ,Fn3 ,v080
 .byte   N28 ,Gs3
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N11 ,Dn3 ,v080
 .byte   N05 ,Fn3 ,v096
 .byte   N06 ,As3 ,v080
 .byte   W06
 .byte   N05 ,As3 ,v096
 .byte   W06
 .byte   N17 ,Dn3 ,v080
 .byte   N12 ,As3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
@  #01 @004   ----------------------------------------
 .byte   As3
 .byte   W06
 .byte   N11 ,As2 ,v080
 .byte   N06 ,Fn3
 .byte   N05 ,Fn4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N28 ,As2 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N11 ,Ds3 ,v080
 .byte   N05 ,Fn3 ,v096
 .byte   N11 ,Gs3 ,v080
 .byte   W06
 .byte   N05 ,As3 ,v096
 .byte   W06
 .byte   N17 ,Ds3 ,v080
 .byte   N17 ,Gs3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Ds3 ,v080
 .byte   N11 ,Gn3
 .byte   N05 ,Fn4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N28 ,Ds3 ,v080
 .byte   N28 ,Gs3
 .byte   N05 ,Dn4 ,v096
 .byte   W06
@  #01 @005   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N11 ,Dn3 ,v080
 .byte   N05 ,Fn3 ,v096
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N17 ,Dn3 ,v080
 .byte   N06 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Dn3 ,v080
 .byte   N06 ,Fn3
 .byte   N05 ,Fn4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N28 ,Dn3 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
@  #01 @006   ----------------------------------------
 .byte   N32 ,Fs2 ,v080
 .byte   N32 ,Cs3
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N32 ,Gs2 ,v080
 .byte   N32 ,As2
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N32 ,Bn2 ,v080
 .byte   N32 ,En3
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
@  #01 @007   ----------------------------------------
 .byte   W12
 .byte   N32 ,Gs2 ,v080
 .byte   N32 ,Fs3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N68 ,Bn2 ,v080
 .byte   N68 ,En3
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W06
@  #01 @008   ----------------------------------------
 .byte   W06
 .byte   N11
 .byte   W18
 .byte   N68 ,Dn3 ,v080
 .byte   N68 ,En3
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #01 @009   ----------------------------------------
 .byte   W12
 .byte   As3 ,v112
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N32 ,Ds3
 .byte   W24
@  #01 @010   ----------------------------------------
 .byte   W12
 .byte   N11 ,Cs3
 .byte   W12
Label_011347B0:
 .byte   N11 ,Ds3 ,v112
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   N32 ,Bn2
 .byte   W24
@  #01 @011   ----------------------------------------
 .byte   W12
 .byte   N05 ,As2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   N68 ,Cs3
 .byte   W72
@  #01 @012   ----------------------------------------
 .byte   W12
 .byte   N11 ,As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N23 ,Cs4
 .byte   W24
@  #01 @013   ----------------------------------------
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N05 ,Ds4
 .byte   W18
 .byte   Bn3
 .byte   W06
 .byte   N23 ,As3
 .byte   W24
 .byte   TIE ,Gs3
 .byte   W24
@  #01 @014   ----------------------------------------
 .byte   W24
 .byte   N17 ,Fs3 ,v096
 .byte   W18
 .byte   Ds3
 .byte   W18
 .byte   Cs3
 .byte   W18
 .byte   Ds3
 .byte   W17
 .byte   EOT
 .byte   Gs3
 .byte   W01
@  #01 @015   ----------------------------------------
Label_01134801:
 .byte   N17 ,Cs3 ,v096
 .byte   N17 ,Ds3
 .byte   N05 ,Gs3 ,v112
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   N17 ,Gs2 ,v096
 .byte   N17 ,Fs3
 .byte   N05 ,Cs4 ,v112
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   N17 ,An2 ,v096
 .byte   N17 ,En3
 .byte   N05 ,Bn3 ,v112
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   N17 ,Dn3 ,v096
 .byte   N17 ,An3
 .byte   N05 ,En4 ,v112
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   N11 ,Bn2 ,v096
 .byte   N11 ,Fs3
 .byte   N05 ,Cs4 ,v112
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Bn2 ,v096
 .byte   N11 ,En3
 .byte   N05 ,Bn3 ,v112
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #01 @016   ----------------------------------------
Label_0113484C:
 .byte   N11 ,Gs2 ,v112
 .byte   W12
 .byte   As2
 .byte   W06
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   N11 ,Bn2 ,v112
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Cs3 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Ds3 ,v112
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N11 ,Fs3 ,v112
 .byte   W06
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   PEND 
Label_0113487A:
 .byte   N32 ,Cs3 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W12
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W12
@  #01 @017   ----------------------------------------
 .byte   As4
 .byte   W06
 .byte   N32 ,Fs2 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   PEND 
Label_01134899:
 .byte   N11 ,Gs2 ,v112
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   N11 ,As2 ,v112
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N11 ,Bn2 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Cs3 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Ds3 ,v112
 .byte   N05 ,Fs3 ,v096
 .byte   W06
@  #01 @018   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   N11 ,Gs3 ,v112
 .byte   W12
 .byte   PEND 
Label_011348CB:
 .byte   N32 ,Fs3 ,v112
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N32 ,Cs3 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
Label_011348EE:
 .byte   N11 ,Gs2 ,v112
 .byte   N05 ,Bn3 ,v096
 .byte   W12
@  #01 @019   ----------------------------------------
 .byte   N11 ,As2 ,v112
 .byte   W06
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   N11 ,Bn2 ,v112
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Cs3 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Ds3 ,v112
 .byte   W06
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   N11 ,Fs3 ,v112
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   PEND 
Label_01134921:
 .byte   N23 ,Cs3 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   N11 ,Bn2 ,v112
 .byte   N05 ,As4 ,v096
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #01 @020   ----------------------------------------
 .byte   N23 ,As2 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N11 ,Fs2 ,v112
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
Label_0113494E:
 .byte   N23 ,Gs2 ,v112
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Ds2 ,v112
 .byte   N05 ,As3 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   TIE ,Gs2 ,v112
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #01 @021   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
Label_01134976:
 .byte   N05 ,Fs4 ,v096
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   En4
 .byte   W03
 .byte   W02
 .byte   W01
 .byte   Ds4
 .byte   W01
 .byte   W02
 .byte   W03
 .byte   Cs4
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   Bn3
 .byte   W03
 .byte   W02
 .byte   W01
 .byte   Ds4
 .byte   W01
 .byte   W02
 .byte   W03
 .byte   Bn3
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   As3
 .byte   W03
 .byte   W02
 .byte   W01
 .byte   Bn3
 .byte   W01
 .byte   W02
 .byte   W03
 .byte   As3
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   Bn3
 .byte   W03
 .byte   W02
 .byte   W01
 .byte   Cs4
 .byte   W01
 .byte   W02
 .byte   W02
 .byte   PEND 
 .byte   EOT
 .byte   Gs2
 .byte   W01
Label_011349AC:
 .byte   N05 ,Cs4 ,v096
 .byte   W12
@  #01 @022   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   Cs4
 .byte   W12
 .byte   Fs3
 .byte   W06
 .byte   Cs4
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   PEND 
Label_011349BF:
 .byte   N05 ,Ds4 ,v096
 .byte   W12
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W12
 .byte   Bn3
 .byte   W06
@  #01 @023   ----------------------------------------
 .byte   Ds4
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
Label_011349D2:
 .byte   N05 ,En4 ,v096
 .byte   W12
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W12
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W18
 .byte   N05
 .byte   W06
@  #01 @024   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   PEND 
Label_011349E5:
 .byte   N23 ,Ds3 ,v096
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Fs3
 .byte   W24
 .byte   PEND 
Label_011349EE:
 .byte   N68 ,Fs3 ,v096
 .byte   W06
 .byte   N05 ,As3
 .byte   W06
@  #01 @025   ----------------------------------------
 .byte   Bn3
 .byte   W12
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W12
 .byte   En4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
Label_01134A06:
 .byte   W06
 .byte   N05 ,As3 ,v096
 .byte   W06
 .byte   Bn3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   N05 ,As3
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #01 @026   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,En3
 .byte   N05 ,Bn3
 .byte   W12
 .byte   N11 ,Fs3
 .byte   N05 ,En4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
Label_01134A25:
 .byte   N17 ,Gs3 ,v096
 .byte   W06
 .byte   N05 ,An3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N06 ,An3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #01 @027   ----------------------------------------
 .byte   En4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
Label_01134A43:
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N23 ,Ds3
 .byte   N05 ,An3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   N11 ,En3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Ds3
 .byte   N05 ,An3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
Label_01134A67:
 .byte   N17 ,Ds3 ,v096
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Ds4
 .byte   W06
@  #01 @028   ----------------------------------------
 .byte   En4
 .byte   W06
 .byte   N17 ,En3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N24 ,Bn3
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   PEND 
Label_01134A8A:
 .byte   N05 ,Bn4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @029   ----------------------------------------
 .byte   Bn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   PEND 
Label_01134AA5:
 .byte   N11 ,Ds2 ,v096
 .byte   N11 ,Fs4
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En2
 .byte   N05 ,En4
 .byte   N05 ,Gs4
 .byte   W06
 .byte   N11 ,En2
 .byte   N05 ,Fs4
 .byte   N11 ,Gs4
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   En2
 .byte   N05 ,En4
 .byte   N05 ,Gs4
 .byte   W06
 .byte   N92 ,Bn2
 .byte   N05 ,Bn4
 .byte   N05 ,En5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #01 @030   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   PEND 
Label_01134AD7:
 .byte   N05 ,Bn4 ,v096
 .byte   W03
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   W03
 .byte   Fs4
 .byte   W03
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   W03
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Fs3 ,v112
 .byte   W12
 .byte   PEND 
Label_01134AFA:
 .byte   N05 ,En3 ,v096
 .byte   N17 ,Gs3 ,v112
 .byte   W06
 .byte   N05 ,Ds3 ,v096
 .byte   W06
@  #01 @031   ----------------------------------------
 .byte   Gs2
 .byte   W06
 .byte   Bn2
 .byte   N17 ,Bn3 ,v112
 .byte   W06
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gs2
 .byte   N18 ,Fs3 ,v112
 .byte   W06
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   PEND 
Label_01134B24:
 .byte   N05 ,En3 ,v096
 .byte   N17 ,Fs3 ,v112
 .byte   W06
 .byte   N05 ,Ds3 ,v096
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Bn2
 .byte   N17 ,Bn3 ,v112
 .byte   W06
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Bn2
 .byte   W06
@  #01 @032   ----------------------------------------
 .byte   Gs2
 .byte   N06 ,En3 ,v112
 .byte   W06
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   N11 ,Ds3 ,v112
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   PEND 
Label_01134B53:
 .byte   N06 ,Ds3 ,v112
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Bn2
 .byte   TIE ,Cs3 ,v112
 .byte   W06
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Fs3
 .byte   W06
@  #01 @033   ----------------------------------------
 .byte   En3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   PEND 
Label_01134B76:
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   En3
 .byte   W05
 .byte   PEND 
 .byte   EOT
 .byte   Cs3
 .byte   W01
 .byte   N05 ,An2
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   En3
 .byte   N11 ,Fs3 ,v112
 .byte   W06
 .byte   N05 ,Gs3 ,v096
 .byte   W06
@  #01 @034   ----------------------------------------
 .byte   PATT
  .word Label_01134AFA
@  #01 @035   ----------------------------------------
Label_01134B9F:
 .byte   N05 ,En3 ,v096
 .byte   N17 ,Fs3 ,v112
 .byte   W06
 .byte   N05 ,Ds3 ,v096
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gs2
 .byte   N23 ,Ds3 ,v112
 .byte   W06
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   PEND 
Label_01134BC4:
 .byte   N06 ,Ds3 ,v112
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Bn2
 .byte   N76 ,Cs3 ,v112
 .byte   W06
@  #01 @036   ----------------------------------------
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gs2
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   En3
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   An2
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W02
 .byte   Fs3
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   En3
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Bn2
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W02
 .byte   PEND 
Label_01134C01:
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   En3
 .byte   N23 ,Bn3 ,v112
 .byte   W06
 .byte   N05 ,Bn2 ,v096
 .byte   W06
 .byte   Fs3
 .byte   N11 ,Gs3 ,v112
 .byte   W06
 .byte   N05 ,En3 ,v096
 .byte   W06
@  #01 @037   ----------------------------------------
 .byte   Bn2
 .byte   N12 ,Fs3 ,v112
 .byte   W12
 .byte   N01 ,Fs3 ,v096
 .byte   W01
 .byte   Gs3 ,v100
 .byte   W01
 .byte   W01
 .byte   An3
 .byte   W01
 .byte   Bn3 ,v104
 .byte   W01
 .byte   W01
 .byte   Cs4
 .byte   W01
 .byte   Ds4 ,v108
 .byte   W01
 .byte   W01
 .byte   En4
 .byte   W01
 .byte   Fs4 ,v112
 .byte   W01
 .byte   W01
 .byte   PEND 
Label_01134C3D:
 .byte   N32 ,En3 ,v112
 .byte   N17 ,Gs3
 .byte   W18
 .byte   Bn3
 .byte   W18
 .byte   N23 ,Ds3
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N28 ,Bn2
 .byte   N11 ,En3
 .byte   W12
 .byte   PEND 
@  #01 @038   ----------------------------------------
Label_01134C50:
 .byte   N17 ,Fs3 ,v112
 .byte   W18
 .byte   N05 ,An2
 .byte   N17 ,Bn3
 .byte   W06
 .byte   N23 ,Gs2
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
Label_01134C64:
 .byte   N17 ,Ds3 ,v112
 .byte   N23 ,Fs3
 .byte   W18
 .byte   N18 ,Cs3
 .byte   W06
@  #01 @039   ----------------------------------------
 .byte   N11 ,En3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
Label_01134C77:
 .byte   N17 ,Gs3 ,v112
 .byte   W18
 .byte   Fs3
 .byte   W18
 .byte   N11 ,Gs3
 .byte   N11 ,Bn3
 .byte   W12
@  #01 @040   ----------------------------------------
 .byte   N23 ,Fs3
 .byte   W24
 .byte   PEND 
@  #01 @041   ----------------------------------------
 .byte   PATT
  .word Label_01134C3D
@  #01 @042   ----------------------------------------
Label_01134C8B:
 .byte   N17 ,Fs3 ,v112
 .byte   W18
 .byte   N05 ,An2
 .byte   N17 ,Bn3
 .byte   W06
 .byte   N23 ,Gs2
 .byte   W12
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N23 ,Bn3
 .byte   N11 ,En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
Label_01134CA2:
 .byte   N17 ,Fs3 ,v112
 .byte   N17 ,Ds4
 .byte   W18
 .byte   En3
 .byte   TIE ,Cs4
 .byte   W18
@  #01 @043   ----------------------------------------
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N44 ,Cs3
 .byte   W24
 .byte   PEND 
Label_01134CB3:
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W02
 .byte   N44 ,Bn2 ,v112
 .byte   W03
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
@  #01 @044   ----------------------------------------
 .byte   W04
 .byte   W04
 .byte   PEND 
 .byte   EOT
 .byte   Cs4
 .byte   W01
Label_01134CCB:
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   PEND 
Label_01134CE6:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
@  #01 @045   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   PEND 
Label_01134D01:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
@  #01 @046   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   PEND 
Label_01134D1C:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Gs3
 .byte   W06
@  #01 @047   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   PEND 
Label_01134D37:
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   PEND 
Label_01134D52:
 .byte   N05 ,Gs2 ,v096
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   En3
 .byte   W06
@  #01 @048   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   PEND 
Label_01134D6D:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
@  #01 @049   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   PEND 
Label_01134D88:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #01 @050   ----------------------------------------
 .byte   En3
 .byte   W06
 .byte   PEND 
@  #01 @051   ----------------------------------------
 .byte   PATT
  .word Label_01134CCB
@  #01 @052   ----------------------------------------
Label_01134DA8:
 .byte   N05 ,Bn2 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   PEND 
@  #01 @053   ----------------------------------------
 .byte   PATT
  .word Label_01134D01
@  #01 @054   ----------------------------------------
 .byte   PATT
  .word Label_01134D1C
@  #01 @055   ----------------------------------------
 .byte   PATT
  .word Label_01134D37
@  #01 @056   ----------------------------------------
 .byte   PATT
  .word Label_01134D52
@  #01 @057   ----------------------------------------
Label_01134DD7:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   PEND 
Label_01134DF2:
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
@  #01 @058   ----------------------------------------
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   PEND 
 .byte   TEMPO , 90*song0B_tbs/2
 .byte   N11 ,As2 ,v080
 .byte   N05 ,Ds3 ,v096
 .byte   N11 ,Fn3 ,v080
 .byte   W06
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   N17 ,As2 ,v080
 .byte   N17 ,Fn3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N11 ,As2 ,v080
 .byte   N11 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N28 ,As2 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Cn4 ,v096
 .byte   W06
@  #01 @059   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,As2 ,v080
 .byte   N05 ,Ds3 ,v096
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N17 ,As2 ,v080
 .byte   N06 ,Ds3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N11 ,Gs2 ,v080
 .byte   N11 ,Cs3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N28 ,Gs2 ,v080
 .byte   N28 ,Cs3
 .byte   N05 ,Cn4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
@  #01 @060   ----------------------------------------
 .byte   N11 ,As2 ,v080
 .byte   N05 ,Ds3 ,v096
 .byte   N11 ,Fn3 ,v080
 .byte   W06
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   N17 ,As2 ,v080
 .byte   N17 ,Fn3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N11 ,As2 ,v080
 .byte   N11 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N28 ,As2 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Cn4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Cs3 ,v080
 .byte   N05 ,Ds3 ,v096
 .byte   N06 ,Gs3 ,v080
 .byte   W06
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   N17 ,Cs3 ,v080
 .byte   N12 ,Gs3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
@  #01 @061   ----------------------------------------
 .byte   Gs3
 .byte   W06
 .byte   N11 ,Gs2 ,v080
 .byte   N11 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N28 ,Gs2 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Cn4 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Cn3 ,v080
 .byte   N05 ,Fn3 ,v096
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N17 ,Cn3 ,v080
 .byte   N06 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Ds3 ,v080
 .byte   N11 ,Gn3
 .byte   N05 ,Fn4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N28 ,Fn3 ,v080
 .byte   N28 ,Gs3
 .byte   N05 ,Dn4 ,v096
 .byte   W06
@  #01 @062   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N11 ,Dn3 ,v080
 .byte   N05 ,Fn3 ,v096
 .byte   N06 ,As3 ,v080
 .byte   W06
 .byte   N05 ,As3 ,v096
 .byte   W06
 .byte   N17 ,Dn3 ,v080
 .byte   N12 ,As3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,As2 ,v080
 .byte   N06 ,Fn3
 .byte   N05 ,Fn4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N28 ,As2 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
@  #01 @063   ----------------------------------------
 .byte   N11 ,Ds3 ,v080
 .byte   N05 ,Fn3 ,v096
 .byte   N11 ,Gs3 ,v080
 .byte   W06
 .byte   N05 ,As3 ,v096
 .byte   W06
 .byte   N17 ,Ds3 ,v080
 .byte   N17 ,Gs3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Ds3 ,v080
 .byte   N11 ,Gn3
 .byte   N05 ,Fn4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N28 ,Ds3 ,v080
 .byte   N28 ,Gs3
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N11 ,Dn3 ,v080
 .byte   N05 ,Fn3 ,v096
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N17 ,Dn3 ,v080
 .byte   N06 ,Fn3
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
@  #01 @064   ----------------------------------------
 .byte   As3
 .byte   W06
 .byte   N11 ,Dn3 ,v080
 .byte   N06 ,Fn3
 .byte   N05 ,Fn4 ,v096
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N28 ,Dn3 ,v080
 .byte   N28 ,Fn3
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N32 ,Fs2 ,v080
 .byte   N32 ,Cs3
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N32 ,Gs2 ,v080
 .byte   N32 ,As2
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
@  #01 @065   ----------------------------------------
 .byte   N11
 .byte   W18
 .byte   N32 ,Bn2 ,v080
 .byte   N32 ,En3
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N32 ,Gs2 ,v080
 .byte   N32 ,Fs3
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N68 ,Bn2 ,v080
 .byte   N68 ,En3
 .byte   N05 ,Bn3 ,v096
 .byte   W06
@  #01 @066   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N68 ,Dn3 ,v080
 .byte   N68 ,En3
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #01 @067   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
Label_01135012:
 .byte   W12
 .byte   N11 ,As3 ,v112
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   As3
 .byte   W12
@  #01 @068   ----------------------------------------
 .byte   Bn3
 .byte   W12
 .byte   PEND 
 .byte   N32 ,Ds3
 .byte   W36
 .byte   N11 ,Cs3
 .byte   W12
 .byte   GOTO
  .word Label_011347B0
@  #01 @069   ----------------------------------------
 .byte   N11 ,Ds3 ,v112
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   N32 ,Bn2
 .byte   W36
 .byte   N05 ,As2
 .byte   W06
 .byte   Bn2
 .byte   W06
@  #01 @070   ----------------------------------------
 .byte   N68 ,Cs3
 .byte   W72
@  #01 @071   ----------------------------------------
 .byte   PATT
  .word Label_01135012
@  #01 @072   ----------------------------------------
 .byte   N23 ,Cs4 ,v112
 .byte   W24
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N05 ,Ds4
 .byte   W18
 .byte   Bn3
 .byte   W06
 .byte   N23 ,As3
 .byte   W24
@  #01 @073   ----------------------------------------
 .byte   TIE ,Gs3
 .byte   W48
 .byte   N17 ,Fs3 ,v096
 .byte   W18
 .byte   Ds3
 .byte   W18
 .byte   Cs3
 .byte   W18
@  #01 @074   ----------------------------------------
 .byte   Ds3
 .byte   W17
 .byte   EOT
 .byte   Gs3
 .byte   W01
@  #01 @075   ----------------------------------------
 .byte   PATT
  .word Label_01134801
@  #01 @076   ----------------------------------------
 .byte   PATT
  .word Label_0113484C
@  #01 @077   ----------------------------------------
 .byte   PATT
  .word Label_0113487A
@  #01 @078   ----------------------------------------
 .byte   PATT
  .word Label_01134899
@  #01 @079   ----------------------------------------
 .byte   PATT
  .word Label_011348CB
@  #01 @080   ----------------------------------------
 .byte   PATT
  .word Label_011348EE
@  #01 @081   ----------------------------------------
 .byte   PATT
  .word Label_01134921
@  #01 @082   ----------------------------------------
 .byte   PATT
  .word Label_0113494E
@  #01 @083   ----------------------------------------
 .byte   PATT
  .word Label_01134976
@  #01 @084   ----------------------------------------
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #01 @085   ----------------------------------------
 .byte   PATT
  .word Label_011349AC
@  #01 @086   ----------------------------------------
 .byte   PATT
  .word Label_011349BF
@  #01 @087   ----------------------------------------
 .byte   PATT
  .word Label_011349D2
@  #01 @088   ----------------------------------------
 .byte   PATT
  .word Label_011349E5
@  #01 @089   ----------------------------------------
 .byte   PATT
  .word Label_011349EE
@  #01 @090   ----------------------------------------
 .byte   PATT
  .word Label_01134A06
@  #01 @091   ----------------------------------------
 .byte   PATT
  .word Label_01134A25
@  #01 @092   ----------------------------------------
 .byte   PATT
  .word Label_01134A43
@  #01 @093   ----------------------------------------
 .byte   PATT
  .word Label_01134A67
@  #01 @094   ----------------------------------------
 .byte   PATT
  .word Label_01134A8A
@  #01 @095   ----------------------------------------
 .byte   PATT
  .word Label_01134AA5
@  #01 @096   ----------------------------------------
 .byte   PATT
  .word Label_01134AD7
@  #01 @097   ----------------------------------------
 .byte   PATT
  .word Label_01134AFA
@  #01 @098   ----------------------------------------
 .byte   PATT
  .word Label_01134B24
@  #01 @099   ----------------------------------------
 .byte   PATT
  .word Label_01134B53
@  #01 @100   ----------------------------------------
 .byte   PATT
  .word Label_01134B76
@  #01 @101   ----------------------------------------
 .byte   EOT
 .byte   Cs3
 .byte   W01
 .byte   N05 ,An2 ,v096
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   En3
 .byte   N11 ,Fs3 ,v112
 .byte   W06
 .byte   N05 ,Gs3 ,v096
 .byte   W06
@  #01 @102   ----------------------------------------
 .byte   PATT
  .word Label_01134AFA
@  #01 @103   ----------------------------------------
 .byte   PATT
  .word Label_01134B9F
@  #01 @104   ----------------------------------------
 .byte   PATT
  .word Label_01134BC4
@  #01 @105   ----------------------------------------
 .byte   PATT
  .word Label_01134C01
@  #01 @106   ----------------------------------------
 .byte   PATT
  .word Label_01134C3D
@  #01 @107   ----------------------------------------
 .byte   PATT
  .word Label_01134C50
@  #01 @108   ----------------------------------------
 .byte   PATT
  .word Label_01134C64
@  #01 @109   ----------------------------------------
 .byte   PATT
  .word Label_01134C77
@  #01 @110   ----------------------------------------
 .byte   PATT
  .word Label_01134C3D
@  #01 @111   ----------------------------------------
 .byte   PATT
  .word Label_01134C8B
@  #01 @112   ----------------------------------------
 .byte   PATT
  .word Label_01134CA2
@  #01 @113   ----------------------------------------
 .byte   PATT
  .word Label_01134CB3
@  #01 @114   ----------------------------------------
 .byte   EOT
 .byte   Cs4
 .byte   W01
@  #01 @115   ----------------------------------------
 .byte   PATT
  .word Label_01134CCB
@  #01 @116   ----------------------------------------
 .byte   PATT
  .word Label_01134CE6
@  #01 @117   ----------------------------------------
 .byte   PATT
  .word Label_01134D01
@  #01 @118   ----------------------------------------
 .byte   PATT
  .word Label_01134D1C
@  #01 @119   ----------------------------------------
 .byte   PATT
  .word Label_01134D37
@  #01 @120   ----------------------------------------
 .byte   PATT
  .word Label_01134D52
@  #01 @121   ----------------------------------------
 .byte   PATT
  .word Label_01134D6D
@  #01 @122   ----------------------------------------
 .byte   PATT
  .word Label_01134D88
@  #01 @123   ----------------------------------------
 .byte   PATT
  .word Label_01134CCB
@  #01 @124   ----------------------------------------
 .byte   PATT
  .word Label_01134DA8
@  #01 @125   ----------------------------------------
 .byte   PATT
  .word Label_01134D01
@  #01 @126   ----------------------------------------
 .byte   PATT
  .word Label_01134D1C
@  #01 @127   ----------------------------------------
 .byte   PATT
  .word Label_01134D37
@  #01 @128   ----------------------------------------
 .byte   PATT
  .word Label_01134D52
@  #01 @129   ----------------------------------------
 .byte   PATT
  .word Label_01134DD7
@  #01 @130   ----------------------------------------
 .byte   PATT
  .word Label_01134DF2
@  #01 @131   ----------------------------------------
 .byte   N23 ,En3 ,v096
 .byte   N23 ,Gs3 ,v080
 .byte   W23
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

.align 2, 0
song0B_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   VOICE , 56
 .byte   PAN , c_v-5
 .byte   VOL , 82*song0B_mvl/mxv
 .byte   VOL , 82*song0B_mvl/mxv
 .byte   W96
@  #02 @001   ----------------------------------------
 .byte   W96
@  #02 @002   ----------------------------------------
 .byte   W96
@  #02 @003   ----------------------------------------
 .byte   W24
 .byte   N03 ,Cn3 ,v096
 .byte   N03 ,Fn3
 .byte   W04
 .byte   Cn3
 .byte   N03 ,Fn3
 .byte   W04
 .byte   Cn3
 .byte   N03 ,Fn3
 .byte   W04
 .byte   N32 ,Cn3
 .byte   N32 ,Fn3
 .byte   W60
@  #02 @004   ----------------------------------------
 .byte   N03
 .byte   N03 ,As3
 .byte   W04
 .byte   Fn3
 .byte   N03 ,As3
 .byte   W04
 .byte   Fn3
 .byte   N03 ,As3
 .byte   W04
 .byte   N32 ,Fn3
 .byte   N32 ,As3
 .byte   W60
 .byte   N03
 .byte   N03 ,Ds4
 .byte   W04
 .byte   As3
 .byte   N03 ,Ds4
 .byte   W04
 .byte   As3
 .byte   N03 ,Ds4
 .byte   W04
 .byte   N32 ,As3
 .byte   N32 ,Ds4
 .byte   W12
@  #02 @005   ----------------------------------------
 .byte   W48
 .byte   N03 ,As3
 .byte   N03 ,Fn4
 .byte   W04
 .byte   As3
 .byte   N03 ,Fn4
 .byte   W04
 .byte   As3
 .byte   N03 ,Fn4
 .byte   W04
 .byte   N32 ,As3
 .byte   N32 ,Fn4
 .byte   W36
@  #02 @006   ----------------------------------------
 .byte   N05 ,En3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N11 ,En3
 .byte   N11 ,Bn3
 .byte   W12
 .byte   En3
 .byte   N11 ,Bn3
 .byte   W18
 .byte   N05 ,Gs3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N11 ,Gs3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Gs3
 .byte   N11 ,Cs4
 .byte   W18
 .byte   N05 ,Bn3
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Bn3
 .byte   N11 ,En4
 .byte   W12
 .byte   Bn3
 .byte   N11 ,En4
 .byte   W06
@  #02 @007   ----------------------------------------
 .byte   W12
 .byte   N05 ,Cs4
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N11 ,Cs4
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Cs4
 .byte   N11 ,Fs4
 .byte   W18
 .byte   N05 ,Bn3
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Bn3
 .byte   N11 ,En4
 .byte   W12
 .byte   Bn3
 .byte   N11 ,En4
 .byte   W18
 .byte   N05 ,Bn3
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Bn3
 .byte   N11 ,En4
 .byte   W06
@  #02 @008   ----------------------------------------
 .byte   W06
 .byte   Bn3
 .byte   N11 ,En4
 .byte   W18
 .byte   N05 ,Dn4
 .byte   N05 ,An4
 .byte   W06
 .byte   N11 ,Dn4
 .byte   N11 ,An4
 .byte   W12
 .byte   Dn4
 .byte   N11 ,An4
 .byte   W18
 .byte   N05 ,Dn4
 .byte   N05 ,An4
 .byte   W06
 .byte   N11 ,Dn4
 .byte   N11 ,An4
 .byte   W12
 .byte   Dn4
 .byte   N11 ,An4
 .byte   W18
@  #02 @009   ----------------------------------------
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N32 ,Ds3
 .byte   W24
@  #02 @010   ----------------------------------------
 .byte   W12
 .byte   N11 ,Cs3
 .byte   W12
Label_54F96A:
 .byte   N11 ,Ds3 ,v096
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N32 ,Bn2
 .byte   W24
@  #02 @011   ----------------------------------------
 .byte   W12
 .byte   N05 ,As2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   N68 ,Cs3
 .byte   W72
@  #02 @012   ----------------------------------------
 .byte   W12
 .byte   N11 ,As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N23 ,Cs4
 .byte   W24
@  #02 @013   ----------------------------------------
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N05 ,Ds4
 .byte   W18
 .byte   Bn3
 .byte   W06
 .byte   N23 ,As3
 .byte   W24
 .byte   TIE ,Gs3
 .byte   W24
@  #02 @014   ----------------------------------------
 .byte   W24
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @015   ----------------------------------------
 .byte   W96
@  #02 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @017   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @018   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @019   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @020   ----------------------------------------
Label_54F9AC:
 .byte   N56 ,Fs3 ,v112
 .byte   N56 ,An3
 .byte   W48
 .byte   W12
 .byte   N05 ,En3
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Fs3
 .byte   N05 ,An3
 .byte   W06
 .byte   PEND 
Label_54F9BD:
 .byte   N56 ,Gs3 ,v112
 .byte   N56 ,Bn3
 .byte   W48
@  #02 @021   ----------------------------------------
 .byte   W12
 .byte   N05 ,Fs3
 .byte   N05 ,An3
 .byte   W06
 .byte   Gs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   PEND 
Label_54F9CE:
 .byte   N56 ,An3 ,v112
 .byte   N56 ,Cs4
 .byte   W48
 .byte   W12
 .byte   N05 ,Gs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   An3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   PEND 
@  #02 @022   ----------------------------------------
Label_54F9DF:
 .byte   N23 ,Fs3 ,v112
 .byte   N23 ,Ds4
 .byte   W24
 .byte   Gs3
 .byte   N23 ,En4
 .byte   W24
 .byte   An3
 .byte   N23 ,Fs4
 .byte   W24
 .byte   PEND 
Label_54F9EE:
 .byte   N68 ,Bn3 ,v112
 .byte   N68 ,Fs4
 .byte   W72
 .byte   PEND 
@  #02 @023   ----------------------------------------
Label_54F9F5:
 .byte   W24
 .byte   N23 ,Ds4 ,v112
 .byte   N23 ,Fs4
 .byte   W24
 .byte   N11 ,Cs4
 .byte   N11 ,En4
 .byte   W12
 .byte   Ds4
 .byte   N11 ,Fs4
 .byte   W12
 .byte   PEND 
Label_54FA06:
 .byte   N68 ,Cs4 ,v112
 .byte   N17 ,Gs4
 .byte   W18
 .byte   N52 ,An4
 .byte   W18
@  #02 @024   ----------------------------------------
 .byte   W36
 .byte   PEND 
Label_54FA11:
 .byte   N23 ,Ds4 ,v112
 .byte   W24
 .byte   Fs3
 .byte   N23 ,Ds4
 .byte   W24
 .byte   N11 ,Gs3
 .byte   N11 ,En4
 .byte   W12
@  #02 @025   ----------------------------------------
 .byte   Fs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   PEND 
Label_54FA23:
 .byte   N17 ,Fs3 ,v112
 .byte   N17 ,Ds4
 .byte   W18
 .byte   Gs3
 .byte   N17 ,En4
 .byte   W18
 .byte   TIE ,Bn3
 .byte   TIE ,En4
 .byte   W36
 .byte   PEND 
Label_54FA33:
 .byte   W68
@  #02 @026   ----------------------------------------
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Bn3 ,v076
 .byte   W01
 .byte   W72
 .byte   W72
@  #02 @027   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @028   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @029   ----------------------------------------
 .byte   W72
Label_54FA41:
 .byte   W18
 .byte   N17 ,Bn3 ,v112
 .byte   W18
@  #02 @030   ----------------------------------------
 .byte   N23 ,Ds4
 .byte   W24
 .byte   N11 ,En4
 .byte   W12
 .byte   PEND 
Label_54FA4D:
 .byte   N17 ,Ds4 ,v112
 .byte   W18
 .byte   N76 ,Cs4
 .byte   W18
 .byte   W36
 .byte   PEND 
@  #02 @031   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @032   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @033   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @034   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @035   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @036   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @037   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @038   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @039   ----------------------------------------
 .byte   W72
Label_54FA67:
 .byte   N17 ,Gs3 ,v096
 .byte   W18
 .byte   Bn3
 .byte   W18
@  #02 @040   ----------------------------------------
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
 .byte   PEND 
Label_54FA74:
 .byte   N17 ,Fs3 ,v096
 .byte   W18
 .byte   Bn3
 .byte   W18
 .byte   N23 ,En3
 .byte   W24
@  #02 @041   ----------------------------------------
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
Label_54FA81:
 .byte   N17 ,Ds3 ,v096
 .byte   W18
 .byte   En3
 .byte   W18
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N80 ,Bn2
 .byte   W12
 .byte   PEND 
 .byte   W72
@  #02 @042   ----------------------------------------
 .byte   PATT
  .word Label_54FA67
@  #02 @043   ----------------------------------------
 .byte   PATT
  .word Label_54FA74
@  #02 @044   ----------------------------------------
Label_54FA99:
 .byte   N17 ,Ds3 ,v096
 .byte   W18
 .byte   En3
 .byte   W18
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N80 ,Cs3
 .byte   W12
 .byte   PEND 
 .byte   W72
@  #02 @045   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @046   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @047   ----------------------------------------
 .byte   W24
 .byte   N03 ,Cn3
 .byte   N03 ,Fn3
 .byte   W04
 .byte   Cn3
 .byte   N03 ,Fn3
 .byte   W04
 .byte   Cn3
 .byte   N03 ,Fn3
 .byte   W04
 .byte   N32 ,Cn3
 .byte   N32 ,Fn3
 .byte   W36
 .byte   W24
@  #02 @048   ----------------------------------------
 .byte   N03
 .byte   N03 ,As3
 .byte   W04
 .byte   Fn3
 .byte   N03 ,As3
 .byte   W04
 .byte   Fn3
 .byte   N03 ,As3
 .byte   W04
 .byte   N32 ,Fn3
 .byte   N32 ,As3
 .byte   W36
 .byte   W24
 .byte   N03
 .byte   N03 ,Ds4
 .byte   W04
 .byte   As3
 .byte   N03 ,Ds4
 .byte   W04
 .byte   As3
 .byte   N03 ,Ds4
 .byte   W04
 .byte   N32 ,As3
 .byte   N32 ,Ds4
 .byte   W36
@  #02 @049   ----------------------------------------
 .byte   W24
 .byte   N03 ,As3
 .byte   N03 ,Fn4
 .byte   W04
 .byte   As3
 .byte   N03 ,Fn4
 .byte   W04
 .byte   As3
 .byte   N03 ,Fn4
 .byte   W04
 .byte   N32 ,As3
 .byte   N32 ,Fn4
 .byte   W36
 .byte   N05 ,En3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N11 ,En3
 .byte   N11 ,Bn3
 .byte   W12
 .byte   En3
 .byte   N11 ,Bn3
 .byte   W18
@  #02 @050   ----------------------------------------
 .byte   N05 ,Gs3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N11 ,Gs3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Gs3
 .byte   N11 ,Cs4
 .byte   W18
 .byte   N05 ,Bn3
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Bn3
 .byte   N11 ,En4
 .byte   W12
 .byte   Bn3
 .byte   N11 ,En4
 .byte   W18
 .byte   N05 ,Cs4
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N11 ,Cs4
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Cs4
 .byte   N11 ,Fs4
 .byte   W18
@  #02 @051   ----------------------------------------
 .byte   N05 ,Bn3
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Bn3
 .byte   N11 ,En4
 .byte   W12
 .byte   Bn3
 .byte   N11 ,En4
 .byte   W18
 .byte   N05 ,Bn3
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Bn3
 .byte   N11 ,En4
 .byte   W12
 .byte   Bn3
 .byte   N11 ,En4
 .byte   W18
 .byte   N05 ,Dn4
 .byte   N05 ,An4
 .byte   W06
 .byte   N11 ,Dn4
 .byte   N11 ,An4
 .byte   W12
 .byte   Dn4
 .byte   N11 ,An4
 .byte   W18
@  #02 @052   ----------------------------------------
 .byte   N05 ,Dn4
 .byte   N05 ,An4
 .byte   W06
 .byte   N11 ,Dn4
 .byte   N11 ,An4
 .byte   W12
 .byte   Dn4
 .byte   N11 ,An4
 .byte   W18
Label_54FB65:
 .byte   W12
 .byte   N11 ,As3 ,v096
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   As3
 .byte   W12
@  #02 @053   ----------------------------------------
 .byte   Bn3
 .byte   W12
 .byte   PEND 
 .byte   N32 ,Ds3
 .byte   W36
 .byte   N11 ,Cs3
 .byte   W12
 .byte   GOTO
  .word Label_54F96A
@  #02 @054   ----------------------------------------
 .byte   N11 ,Ds3 ,v096
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N32 ,Bn2
 .byte   W36
 .byte   N05 ,As2
 .byte   W06
 .byte   Bn2
 .byte   W06
@  #02 @055   ----------------------------------------
 .byte   N68 ,Cs3
 .byte   W72
@  #02 @056   ----------------------------------------
 .byte   PATT
  .word Label_54FB65
@  #02 @057   ----------------------------------------
 .byte   N23 ,Cs4 ,v096
 .byte   W24
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N05 ,Ds4
 .byte   W18
 .byte   Bn3
 .byte   W06
 .byte   N23 ,As3
 .byte   W24
@  #02 @058   ----------------------------------------
 .byte   TIE ,Gs3
 .byte   W48
 .byte   W68
@  #02 @059   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   W96
@  #02 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @064   ----------------------------------------
 .byte   PATT
  .word Label_54F9AC
@  #02 @065   ----------------------------------------
 .byte   PATT
  .word Label_54F9BD
@  #02 @066   ----------------------------------------
 .byte   PATT
  .word Label_54F9CE
@  #02 @067   ----------------------------------------
 .byte   PATT
  .word Label_54F9DF
@  #02 @068   ----------------------------------------
 .byte   PATT
  .word Label_54F9EE
@  #02 @069   ----------------------------------------
 .byte   PATT
  .word Label_54F9F5
@  #02 @070   ----------------------------------------
 .byte   PATT
  .word Label_54FA06
@  #02 @071   ----------------------------------------
 .byte   PATT
  .word Label_54FA11
@  #02 @072   ----------------------------------------
 .byte   PATT
  .word Label_54FA23
@  #02 @073   ----------------------------------------
 .byte   PATT
  .word Label_54FA33
@  #02 @074   ----------------------------------------
 .byte   EOT
 .byte   Bn3 ,v076
 .byte   W01
 .byte   W72
 .byte   W72
@  #02 @075   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @076   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @077   ----------------------------------------
 .byte   W72
@  #02 @078   ----------------------------------------
 .byte   PATT
  .word Label_54FA41
@  #02 @079   ----------------------------------------
 .byte   PATT
  .word Label_54FA4D
@  #02 @080   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @082   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @083   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @084   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @085   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @086   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @087   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @088   ----------------------------------------
 .byte   W72
@  #02 @089   ----------------------------------------
 .byte   PATT
  .word Label_54FA67
@  #02 @090   ----------------------------------------
 .byte   PATT
  .word Label_54FA74
@  #02 @091   ----------------------------------------
 .byte   PATT
  .word Label_54FA81
@  #02 @092   ----------------------------------------
 .byte   W72
@  #02 @093   ----------------------------------------
 .byte   PATT
  .word Label_54FA67
@  #02 @094   ----------------------------------------
 .byte   PATT
  .word Label_54FA74
@  #02 @095   ----------------------------------------
 .byte   PATT
  .word Label_54FA99
@  #02 @096   ----------------------------------------
 .byte   W72
 .byte   N23 ,Cs3 ,v096
 .byte   W23
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

.align 2, 0
song0B_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   VOICE , 49
 .byte   PAN , c_v+3
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   N11 ,As3 ,v096
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W12
@  #03 @001   ----------------------------------------
 .byte   W06
 .byte   N11 ,Gs3
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
 .byte   N11 ,As3
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W06
@  #03 @002   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11 ,Gs3
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
@  #03 @003   ----------------------------------------
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11 ,Ds3
 .byte   W06
 .byte   W06
 .byte   N28 ,Fn3
 .byte   W18
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N17
 .byte   W12
@  #03 @004   ----------------------------------------
 .byte   W06
 .byte   N11 ,As2
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W06
@  #03 @005   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
@  #03 @006   ----------------------------------------
 .byte   N32 ,Bn2
 .byte   W36
 .byte   Cs3
 .byte   W36
 .byte   En3
 .byte   W24
@  #03 @007   ----------------------------------------
 .byte   W12
 .byte   Fs3
 .byte   W36
 .byte   N68 ,En3
 .byte   W48
@  #03 @008   ----------------------------------------
 .byte   W24
 .byte   An3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #03 @009   ----------------------------------------
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N32 ,Bn2
 .byte   W24
@  #03 @010   ----------------------------------------
 .byte   W12
 .byte   N11 ,En2
 .byte   W12
Label_54F479:
 .byte   N11 ,Fs2 ,v096
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N32 ,Fs2
 .byte   W24
@  #03 @011   ----------------------------------------
 .byte   W12
 .byte   N05 ,Cs2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   N68 ,Fs2
 .byte   W72
@  #03 @012   ----------------------------------------
 .byte   W12
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N23 ,En3
 .byte   W24
@  #03 @013   ----------------------------------------
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N05 ,Fs3
 .byte   W18
 .byte   Ds3
 .byte   W06
 .byte   N23 ,Cs3
 .byte   W24
 .byte   TIE ,Bn2
 .byte   W24
@  #03 @014   ----------------------------------------
 .byte   W24
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @015   ----------------------------------------
Label_54F4B2:
 .byte   N05 ,Ds3 ,v112
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   Gs3
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   An3
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   N05
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   Fs3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #03 @016   ----------------------------------------
Label_54F4D5:
 .byte   N11 ,Ds3 ,v112
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_54F4E4:
 .byte   N32 ,Fs3 ,v112
 .byte   W36
@  #03 @017   ----------------------------------------
 .byte   Cs3
 .byte   W36
 .byte   PEND 
Label_54F4EB:
 .byte   N11 ,Ds3 ,v112
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
@  #03 @018   ----------------------------------------
 .byte   Ds4
 .byte   W12
 .byte   PEND 
Label_54F4FA:
 .byte   N32 ,Cs4 ,v112
 .byte   W36
 .byte   As3
 .byte   W36
 .byte   PEND 
@  #03 @019   ----------------------------------------
 .byte   PATT
  .word Label_54F4EB
@  #03 @020   ----------------------------------------
Label_54F506:
 .byte   N23 ,As3 ,v112
 .byte   W24
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
Label_54F514:
 .byte   N23 ,Ds3 ,v112
 .byte   W24
@  #03 @021   ----------------------------------------
 .byte   N11 ,Bn2
 .byte   W12
 .byte   TIE ,Ds3
 .byte   W36
 .byte   PEND 
Label_54F51F:
 .byte   W68
@  #03 @022   ----------------------------------------
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Ds3
 .byte   W01
 .byte   W72
 .byte   W72
@  #03 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @024   ----------------------------------------
Label_54F529:
 .byte   N68 ,Ds4 ,v096
 .byte   W72
 .byte   PEND 
Label_54F52E:
 .byte   N23 ,Fs3 ,v096
 .byte   W24
@  #03 @025   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   N44 ,Gs3
 .byte   W24
 .byte   PEND 
Label_54F538:
 .byte   W24
 .byte   N28 ,An3 ,v096
 .byte   W24
@  #03 @026   ----------------------------------------
 .byte   W06
 .byte   N05 ,Fs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   PEND 
Label_54F546:
 .byte   N23 ,Fs3 ,v096
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   PEND 
@  #03 @027   ----------------------------------------
Label_54F552:
 .byte   N17 ,Fs3 ,v096
 .byte   W18
 .byte   Gs3
 .byte   W18
 .byte   N68 ,Ds4
 .byte   W36
 .byte   PEND 
 .byte   W72
@  #03 @028   ----------------------------------------
Label_54F55D:
 .byte   N11 ,Ds4 ,v096
 .byte   W12
 .byte   N05 ,En4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Bn4 ,v112
 .byte   W36
 .byte   PEND 
 .byte   W72
@  #03 @029   ----------------------------------------
Label_54F56D:
 .byte   N17 ,En3 ,v112
 .byte   W18
 .byte   Gs3
 .byte   W18
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_54F579:
 .byte   N17 ,Ds3 ,v112
 .byte   W18
 .byte   Gs3
 .byte   W18
@  #03 @030   ----------------------------------------
 .byte   N23 ,Cs3
 .byte   W24
 .byte   N11 ,Bn2
 .byte   W12
 .byte   PEND 
Label_54F586:
 .byte   N17 ,Bn2 ,v112
 .byte   W18
 .byte   TIE ,En3
 .byte   W18
 .byte   W36
 .byte   PEND 
@  #03 @031   ----------------------------------------
 .byte   PATT
  .word Label_54F51F
@  #03 @032   ----------------------------------------
 .byte   EOT
 .byte   En3
 .byte   W01
Label_54F597:
 .byte   N17 ,En3 ,v112
 .byte   W18
 .byte   Gs3
 .byte   W18
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
Label_54F5A4:
 .byte   N17 ,Ds3 ,v112
 .byte   W18
 .byte   Gs3
 .byte   W18
@  #03 @033   ----------------------------------------
 .byte   N23 ,Bn3
 .byte   W24
 .byte   N11 ,Cs4
 .byte   W12
 .byte   PEND 
Label_54F5B1:
 .byte   N17 ,Bn3 ,v112
 .byte   W18
 .byte   N76 ,An3
 .byte   W18
 .byte   W36
 .byte   PEND 
@  #03 @034   ----------------------------------------
 .byte   W72
@  #03 @035   ----------------------------------------
 .byte   PATT
  .word Label_54F56D
@  #03 @036   ----------------------------------------
 .byte   PATT
  .word Label_54F579
@  #03 @037   ----------------------------------------
 .byte   PATT
  .word Label_54F586
@  #03 @038   ----------------------------------------
 .byte   PATT
  .word Label_54F51F
@  #03 @039   ----------------------------------------
 .byte   EOT
 .byte   En3
 .byte   W01
@  #03 @040   ----------------------------------------
 .byte   PATT
  .word Label_54F597
@  #03 @041   ----------------------------------------
Label_54F5D7:
 .byte   N17 ,Ds3 ,v112
 .byte   W18
 .byte   Gs3
 .byte   W18
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
Label_54F5E5:
 .byte   N17 ,Bn3 ,v112
 .byte   W18
 .byte   TIE ,An3
 .byte   W18
@  #03 @042   ----------------------------------------
 .byte   W36
 .byte   PEND 
@  #03 @043   ----------------------------------------
 .byte   PATT
  .word Label_54F51F
@  #03 @044   ----------------------------------------
 .byte   EOT
 .byte   An3
 .byte   W01
Label_54F5F6:
 .byte   N17 ,En2 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_54F5FF:
 .byte   N17 ,Bn2 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
@  #03 @045   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_54F60A:
 .byte   N17 ,Ds2 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
@  #03 @046   ----------------------------------------
Label_54F613:
 .byte   N17 ,Dn2 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #03 @047   ----------------------------------------
 .byte   PATT
  .word Label_54F5F6
@  #03 @048   ----------------------------------------
Label_54F623:
 .byte   N17 ,Ds2 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_54F62E:
 .byte   N17 ,Gs2 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
@  #03 @049   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_54F637:
 .byte   N17 ,Gs2 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #03 @050   ----------------------------------------
Label_54F642:
 .byte   N17 ,Gs3 ,v127
 .byte   W18
 .byte   Bn3
 .byte   W18
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
 .byte   PEND 
Label_54F64F:
 .byte   N17 ,Fs3 ,v127
 .byte   W18
 .byte   Bn3
 .byte   W18
@  #03 @051   ----------------------------------------
 .byte   N23 ,En3
 .byte   W24
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
Label_54F65C:
 .byte   N17 ,Ds3 ,v127
 .byte   W18
 .byte   En3
 .byte   W18
 .byte   N23 ,Fs3
 .byte   W24
@  #03 @052   ----------------------------------------
 .byte   N80 ,Bn2
 .byte   W12
 .byte   PEND 
 .byte   W72
@  #03 @053   ----------------------------------------
 .byte   PATT
  .word Label_54F642
@  #03 @054   ----------------------------------------
 .byte   PATT
  .word Label_54F64F
@  #03 @055   ----------------------------------------
Label_54F674:
 .byte   N17 ,Ds3 ,v127
 .byte   W18
 .byte   En3
 .byte   W18
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N80 ,Cs3
 .byte   W12
 .byte   PEND 
 .byte   W72
@  #03 @056   ----------------------------------------
Label_54F682:
 .byte   N11 ,As3 ,v096
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
 .byte   PEND 
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W18
@  #03 @057   ----------------------------------------
 .byte   N11 ,Gs3
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
@  #03 @058   ----------------------------------------
 .byte   PATT
  .word Label_54F682
@  #03 @059   ----------------------------------------
 .byte   N11 ,Cs4 ,v096
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11 ,Gs3
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N17
 .byte   W18
@  #03 @060   ----------------------------------------
 .byte   N11 ,Ds3
 .byte   W06
 .byte   W06
 .byte   N28 ,Fn3
 .byte   W18
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11 ,As2
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
@  #03 @061   ----------------------------------------
 .byte   W12
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
@  #03 @062   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N28
 .byte   W18
 .byte   W12
 .byte   N32 ,Bn2
 .byte   W36
@  #03 @063   ----------------------------------------
 .byte   Cs3
 .byte   W36
 .byte   En3
 .byte   W36
 .byte   Fs3
 .byte   W36
@  #03 @064   ----------------------------------------
 .byte   N68 ,En3
 .byte   W72
 .byte   An3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #03 @065   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
Label_54F6F5:
 .byte   W12
 .byte   N11 ,Cs3 ,v096
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #03 @066   ----------------------------------------
 .byte   Ds3
 .byte   W12
 .byte   PEND 
 .byte   N32 ,Bn2
 .byte   W36
 .byte   N11 ,En2
 .byte   W12
 .byte   GOTO
  .word Label_54F479
@  #03 @067   ----------------------------------------
 .byte   N11 ,Fs2 ,v096
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N32 ,Fs2
 .byte   W36
 .byte   N05 ,Cs2
 .byte   W06
 .byte   Ds2
 .byte   W06
@  #03 @068   ----------------------------------------
 .byte   N68 ,Fs2
 .byte   W72
@  #03 @069   ----------------------------------------
 .byte   PATT
  .word Label_54F6F5
@  #03 @070   ----------------------------------------
 .byte   N23 ,En3 ,v096
 .byte   W24
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N05 ,Fs3
 .byte   W18
 .byte   Ds3
 .byte   W06
 .byte   N23 ,Cs3
 .byte   W24
@  #03 @071   ----------------------------------------
 .byte   TIE ,Bn2
 .byte   W48
 .byte   W68
@  #03 @072   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @073   ----------------------------------------
 .byte   PATT
  .word Label_54F4B2
@  #03 @074   ----------------------------------------
 .byte   PATT
  .word Label_54F4D5
@  #03 @075   ----------------------------------------
 .byte   PATT
  .word Label_54F4E4
@  #03 @076   ----------------------------------------
 .byte   PATT
  .word Label_54F4EB
@  #03 @077   ----------------------------------------
 .byte   PATT
  .word Label_54F4FA
@  #03 @078   ----------------------------------------
 .byte   PATT
  .word Label_54F4EB
@  #03 @079   ----------------------------------------
 .byte   PATT
  .word Label_54F506
@  #03 @080   ----------------------------------------
 .byte   PATT
  .word Label_54F514
@  #03 @081   ----------------------------------------
 .byte   PATT
  .word Label_54F51F
@  #03 @082   ----------------------------------------
 .byte   EOT
 .byte   Ds3
 .byte   W01
 .byte   W72
 .byte   W72
@  #03 @083   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @084   ----------------------------------------
 .byte   PATT
  .word Label_54F529
@  #03 @085   ----------------------------------------
 .byte   PATT
  .word Label_54F52E
@  #03 @086   ----------------------------------------
 .byte   PATT
  .word Label_54F538
@  #03 @087   ----------------------------------------
 .byte   PATT
  .word Label_54F546
@  #03 @088   ----------------------------------------
 .byte   PATT
  .word Label_54F552
@  #03 @089   ----------------------------------------
 .byte   W72
@  #03 @090   ----------------------------------------
 .byte   PATT
  .word Label_54F55D
@  #03 @091   ----------------------------------------
 .byte   W72
@  #03 @092   ----------------------------------------
 .byte   PATT
  .word Label_54F56D
@  #03 @093   ----------------------------------------
 .byte   PATT
  .word Label_54F579
@  #03 @094   ----------------------------------------
 .byte   PATT
  .word Label_54F586
@  #03 @095   ----------------------------------------
 .byte   PATT
  .word Label_54F51F
@  #03 @096   ----------------------------------------
 .byte   EOT
 .byte   En3
 .byte   W01
@  #03 @097   ----------------------------------------
 .byte   PATT
  .word Label_54F597
@  #03 @098   ----------------------------------------
 .byte   PATT
  .word Label_54F5A4
@  #03 @099   ----------------------------------------
 .byte   PATT
  .word Label_54F5B1
@  #03 @100   ----------------------------------------
 .byte   W72
@  #03 @101   ----------------------------------------
 .byte   PATT
  .word Label_54F56D
@  #03 @102   ----------------------------------------
 .byte   PATT
  .word Label_54F579
@  #03 @103   ----------------------------------------
 .byte   PATT
  .word Label_54F586
@  #03 @104   ----------------------------------------
 .byte   PATT
  .word Label_54F51F
@  #03 @105   ----------------------------------------
 .byte   EOT
 .byte   En3
 .byte   W01
@  #03 @106   ----------------------------------------
 .byte   PATT
  .word Label_54F597
@  #03 @107   ----------------------------------------
 .byte   PATT
  .word Label_54F5D7
@  #03 @108   ----------------------------------------
 .byte   PATT
  .word Label_54F5E5
@  #03 @109   ----------------------------------------
 .byte   PATT
  .word Label_54F51F
@  #03 @110   ----------------------------------------
 .byte   EOT
 .byte   An3
 .byte   W01
@  #03 @111   ----------------------------------------
 .byte   PATT
  .word Label_54F5F6
@  #03 @112   ----------------------------------------
 .byte   PATT
  .word Label_54F5FF
@  #03 @113   ----------------------------------------
 .byte   PATT
  .word Label_54F60A
@  #03 @114   ----------------------------------------
 .byte   PATT
  .word Label_54F613
@  #03 @115   ----------------------------------------
 .byte   PATT
  .word Label_54F5F6
@  #03 @116   ----------------------------------------
 .byte   PATT
  .word Label_54F623
@  #03 @117   ----------------------------------------
 .byte   PATT
  .word Label_54F62E
@  #03 @118   ----------------------------------------
 .byte   PATT
  .word Label_54F637
@  #03 @119   ----------------------------------------
 .byte   PATT
  .word Label_54F642
@  #03 @120   ----------------------------------------
 .byte   PATT
  .word Label_54F64F
@  #03 @121   ----------------------------------------
 .byte   PATT
  .word Label_54F65C
@  #03 @122   ----------------------------------------
 .byte   W72
@  #03 @123   ----------------------------------------
 .byte   PATT
  .word Label_54F642
@  #03 @124   ----------------------------------------
 .byte   PATT
  .word Label_54F64F
@  #03 @125   ----------------------------------------
 .byte   PATT
  .word Label_54F674
@  #03 @126   ----------------------------------------
 .byte   W72
 .byte   N23 ,Cs3 ,v127
 .byte   W23
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

.align 2, 0
song0B_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   VOICE , 40
 .byte   PAN , c_v+3
 .byte   VOL , 52*song0B_mvl/mxv
 .byte   VOL , 52*song0B_mvl/mxv
 .byte   W24
 .byte   N23 ,As2 ,v096
 .byte   W24
 .byte   Ds2
 .byte   W24
 .byte   N44 ,Gs2
 .byte   W24
@  #04 @001   ----------------------------------------
 .byte   W24
 .byte   TIE ,As2
 .byte   W24
 .byte   W48
@  #04 @002   ----------------------------------------
 .byte   W24
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   EOT
 .byte   W01
 .byte   W24
@  #04 @003   ----------------------------------------
 .byte   N23 ,Fn2
 .byte   W24
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N23 ,Gs2
 .byte   W24
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N32 ,As2
 .byte   W24
@  #04 @004   ----------------------------------------
 .byte   W12
 .byte   N23 ,Fn2
 .byte   W24
 .byte   N11 ,Gs2
 .byte   W12
 .byte   N32 ,Gn2
 .byte   W36
 .byte   Ds2
 .byte   W12
@  #04 @005   ----------------------------------------
 .byte   W24
 .byte   Dn2
 .byte   W36
 .byte   As1
 .byte   W36
@  #04 @006   ----------------------------------------
 .byte   Bn1
 .byte   W36
 .byte   As1
 .byte   W36
 .byte   An1
 .byte   W24
@  #04 @007   ----------------------------------------
 .byte   W12
 .byte   Gs1
 .byte   W36
 .byte   N05 ,Gn1
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W06
@  #04 @008   ----------------------------------------
 .byte   W06
 .byte   N11
 .byte   W18
 .byte   N05 ,An1
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #04 @009   ----------------------------------------
 .byte   N32 ,Ds2 ,v080
 .byte   N32 ,Gs2
 .byte   W36
 .byte   Ds2
 .byte   N32 ,Bn2
 .byte   W36
 .byte   En2
 .byte   N32 ,Fs2
 .byte   W24
@  #04 @010   ----------------------------------------
 .byte   W12
 .byte   Cs2
 .byte   N32 ,Gs2
 .byte   W12
Label_01135224:
 .byte   W24
 .byte   N32 ,Ds2 ,v080
 .byte   N32 ,Gs2
 .byte   W36
 .byte   Cs2
 .byte   N32 ,Bn2
 .byte   W12
@  #04 @011   ----------------------------------------
 .byte   W24
 .byte   En2
 .byte   N68 ,As2
 .byte   W36
 .byte   N32 ,Fs2
 .byte   W36
@  #04 @012   ----------------------------------------
 .byte   Ds2
 .byte   N32 ,Gs2
 .byte   W36
 .byte   Ds2
 .byte   N32 ,Bn2
 .byte   W36
 .byte   En2
 .byte   N32 ,Gs2
 .byte   W24
@  #04 @013   ----------------------------------------
 .byte   W12
 .byte   Cs2
 .byte   N32 ,As2
 .byte   W36
 .byte   Gs2
 .byte   N68 ,Bn2
 .byte   W36
 .byte   N32 ,Ds2
 .byte   W12
@  #04 @014   ----------------------------------------
 .byte   W24
 .byte   N17 ,Bn2
 .byte   N17 ,Fs3
 .byte   W18
 .byte   Fs2
 .byte   N17 ,Ds3
 .byte   W18
 .byte   Fs2
 .byte   N17 ,Cs3
 .byte   W18
 .byte   Fs2
 .byte   N17 ,Ds3
 .byte   W18
@  #04 @015   ----------------------------------------
Label_01135261:
 .byte   N17 ,Ds2 ,v080
 .byte   N17 ,Gs2
 .byte   W18
 .byte   Cs2
 .byte   N17 ,Fs2
 .byte   W18
 .byte   An1
 .byte   N17 ,Bn2
 .byte   W18
 .byte   An1
 .byte   N17 ,En2
 .byte   W18
 .byte   N11 ,Bn1
 .byte   N11 ,Ds2
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Ds2
 .byte   W12
 .byte   PEND 
@  #04 @016   ----------------------------------------
Label_0113527D:
 .byte   N32 ,Gs2 ,v080
 .byte   N68 ,Bn2
 .byte   W36
 .byte   N32 ,En2
 .byte   W36
 .byte   PEND 
Label_01135287:
 .byte   N32 ,Fs2 ,v080
 .byte   N32 ,Bn2
 .byte   W36
@  #04 @017   ----------------------------------------
 .byte   Ds2
 .byte   N32 ,As2
 .byte   W36
 .byte   PEND 
@  #04 @018   ----------------------------------------
 .byte   PATT
  .word Label_0113527D
@  #04 @019   ----------------------------------------
Label_01135297:
 .byte   N32 ,Fs2 ,v080
 .byte   N32 ,Bn2
 .byte   W36
 .byte   Fs2
 .byte   N32 ,As2
 .byte   W36
 .byte   PEND 
@  #04 @020   ----------------------------------------
 .byte   PATT
  .word Label_0113527D
@  #04 @021   ----------------------------------------
Label_011352A7:
 .byte   N32 ,Fs2 ,v080
 .byte   N68 ,Cs3
 .byte   W36
 .byte   N32 ,Ds2
 .byte   W36
 .byte   PEND 
Label_011352B1:
 .byte   N68 ,Gs2 ,v080
 .byte   N68 ,Bn2
 .byte   W72
 .byte   PEND 
@  #04 @022   ----------------------------------------
Label_011352B8:
 .byte   N68 ,Fs2 ,v080
 .byte   N68 ,Bn2
 .byte   W72
 .byte   PEND 
 .byte   W72
@  #04 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @024   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @025   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @026   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @027   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @028   ----------------------------------------
 .byte   W72
Label_011352CB:
 .byte   N32 ,Gs2 ,v080
 .byte   N68 ,Cs3
 .byte   W36
@  #04 @029   ----------------------------------------
 .byte   N32 ,An2
 .byte   W36
 .byte   PEND 
Label_011352D5:
 .byte   N68 ,Bn2 ,v080
 .byte   N32 ,Ds3
 .byte   W36
 .byte   Gs2
 .byte   W36
 .byte   PEND 
@  #04 @030   ----------------------------------------
Label_011352DE:
 .byte   N32 ,Gs2 ,v080
 .byte   N32 ,Bn2
 .byte   W36
 .byte   Cs2
 .byte   N32 ,An2
 .byte   W36
 .byte   PEND 
Label_011352E9:
 .byte   N68 ,En2 ,v080
 .byte   N68 ,Bn2
 .byte   W72
 .byte   PEND 
@  #04 @031   ----------------------------------------
 .byte   PATT
  .word Label_011352CB
@  #04 @032   ----------------------------------------
 .byte   PATT
  .word Label_011352D5
@  #04 @033   ----------------------------------------
Label_011352FA:
 .byte   N32 ,Gs2 ,v080
 .byte   N32 ,Cs3
 .byte   W36
 .byte   En2
 .byte   N32 ,An2
 .byte   W36
 .byte   PEND 
@  #04 @034   ----------------------------------------
 .byte   PATT
  .word Label_011352E9
@  #04 @035   ----------------------------------------
 .byte   PATT
  .word Label_011352CB
@  #04 @036   ----------------------------------------
 .byte   PATT
  .word Label_011352D5
@  #04 @037   ----------------------------------------
 .byte   PATT
  .word Label_011352DE
@  #04 @038   ----------------------------------------
 .byte   PATT
  .word Label_011352E9
@  #04 @039   ----------------------------------------
 .byte   PATT
  .word Label_011352CB
@  #04 @040   ----------------------------------------
 .byte   PATT
  .word Label_011352D5
@  #04 @041   ----------------------------------------
 .byte   PATT
  .word Label_011352FA
@  #04 @042   ----------------------------------------
 .byte   PATT
  .word Label_011352E9
@  #04 @043   ----------------------------------------
Label_01135332:
 .byte   N68 ,An1 ,v080
 .byte   N68 ,En2
 .byte   W72
 .byte   PEND 
Label_01135339:
 .byte   N68 ,Gs1 ,v080
 .byte   N68 ,Bn1
 .byte   W72
 .byte   PEND 
@  #04 @044   ----------------------------------------
Label_01135340:
 .byte   N68 ,Cs2 ,v080
 .byte   N68 ,Ds2
 .byte   W72
 .byte   PEND 
Label_01135347:
 .byte   N68 ,Bn1 ,v080
 .byte   N68 ,Dn2
 .byte   W72
 .byte   PEND 
@  #04 @045   ----------------------------------------
 .byte   PATT
  .word Label_01135332
@  #04 @046   ----------------------------------------
Label_01135353:
 .byte   N68 ,Gs1 ,v080
 .byte   N68 ,Ds2
 .byte   W72
 .byte   PEND 
Label_0113535A:
 .byte   N68 ,Cs2 ,v080
 .byte   N68 ,Gs2
 .byte   W72
 .byte   PEND 
@  #04 @047   ----------------------------------------
 .byte   PATT
  .word Label_0113535A
@  #04 @048   ----------------------------------------
Label_01135366:
 .byte   N68 ,En2 ,v080
 .byte   N68 ,An2
 .byte   W72
 .byte   PEND 
Label_0113536D:
 .byte   N68 ,Bn1 ,v080
 .byte   N68 ,Gs2
 .byte   W72
 .byte   PEND 
@  #04 @049   ----------------------------------------
Label_01135374:
 .byte   N68 ,Ds2 ,v080
 .byte   N68 ,Cs3
 .byte   W72
 .byte   PEND 
Label_0113537B:
 .byte   N68 ,Dn2 ,v080
 .byte   N68 ,Bn2
 .byte   W72
 .byte   PEND 
@  #04 @050   ----------------------------------------
 .byte   PATT
  .word Label_01135366
@  #04 @051   ----------------------------------------
Label_01135387:
 .byte   N68 ,Ds2 ,v080
 .byte   N32 ,Gs2
 .byte   W36
 .byte   Cn3
 .byte   W36
 .byte   PEND 
Label_01135390:
 .byte   N68 ,Gs2 ,v080
 .byte   N60 ,Cs3
 .byte   W72
 .byte   PEND 
@  #04 @052   ----------------------------------------
Label_01135397:
 .byte   N68 ,Gs2 ,v080
 .byte   N68 ,Cs3
 .byte   W72
 .byte   PEND 
 .byte   W24
@  #04 @053   ----------------------------------------
 .byte   N23 ,As2 ,v096
 .byte   W24
 .byte   Ds2
 .byte   W24
 .byte   N44 ,Gs2
 .byte   W48
@  #04 @054   ----------------------------------------
 .byte   TIE ,As2
 .byte   W24
 .byte   W72
@  #04 @055   ----------------------------------------
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   EOT
 .byte   W01
 .byte   W24
 .byte   N23 ,Fn2
 .byte   W24
@  #04 @056   ----------------------------------------
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N23 ,Gs2
 .byte   W24
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N32 ,As2
 .byte   W36
 .byte   N23 ,Fn2
 .byte   W24
@  #04 @057   ----------------------------------------
 .byte   N11 ,Gs2
 .byte   W12
 .byte   N32 ,Gn2
 .byte   W36
 .byte   Ds2
 .byte   W36
 .byte   Dn2
 .byte   W36
@  #04 @058   ----------------------------------------
 .byte   As1
 .byte   W36
 .byte   Bn1
 .byte   W36
 .byte   As1
 .byte   W36
@  #04 @059   ----------------------------------------
 .byte   An1
 .byte   W36
 .byte   Gs1
 .byte   W36
 .byte   N05 ,Gn1
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #04 @060   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05 ,An1
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #04 @061   ----------------------------------------
Label_011353FF:
 .byte   N32 ,Ds2 ,v080
 .byte   N32 ,Gs2
 .byte   W36
 .byte   Ds2
 .byte   N32 ,Bn2
 .byte   W36
 .byte   PEND 
 .byte   En2
 .byte   N32 ,Fs2
 .byte   W36
@  #04 @062   ----------------------------------------
 .byte   Cs2
 .byte   N32 ,Gs2
 .byte   W12
 .byte   GOTO
  .word Label_01135224
@  #04 @063   ----------------------------------------
 .byte   W24
 .byte   N32 ,Ds2 ,v080
 .byte   N32 ,Gs2
 .byte   W36
 .byte   Cs2
 .byte   N32 ,Bn2
 .byte   W36
@  #04 @064   ----------------------------------------
 .byte   En2
 .byte   N68 ,As2
 .byte   W36
 .byte   N32 ,Fs2
 .byte   W36
@  #04 @065   ----------------------------------------
 .byte   PATT
  .word Label_011353FF
@  #04 @066   ----------------------------------------
 .byte   N32 ,En2 ,v080
 .byte   N32 ,Gs2
 .byte   W36
 .byte   Cs2
 .byte   N32 ,As2
 .byte   W36
 .byte   Gs2
 .byte   N68 ,Bn2
 .byte   W36
@  #04 @067   ----------------------------------------
 .byte   N32 ,Ds2
 .byte   W36
 .byte   N17 ,Bn2
 .byte   N17 ,Fs3
 .byte   W18
 .byte   Fs2
 .byte   N17 ,Ds3
 .byte   W18
 .byte   Fs2
 .byte   N17 ,Cs3
 .byte   W18
 .byte   Fs2
 .byte   N17 ,Ds3
 .byte   W18
@  #04 @068   ----------------------------------------
 .byte   PATT
  .word Label_01135261
@  #04 @069   ----------------------------------------
 .byte   PATT
  .word Label_0113527D
@  #04 @070   ----------------------------------------
 .byte   PATT
  .word Label_01135287
@  #04 @071   ----------------------------------------
 .byte   PATT
  .word Label_0113527D
@  #04 @072   ----------------------------------------
 .byte   PATT
  .word Label_01135297
@  #04 @073   ----------------------------------------
 .byte   PATT
  .word Label_0113527D
@  #04 @074   ----------------------------------------
 .byte   PATT
  .word Label_011352A7
@  #04 @075   ----------------------------------------
 .byte   PATT
  .word Label_011352B1
@  #04 @076   ----------------------------------------
 .byte   PATT
  .word Label_011352B8
@  #04 @077   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @078   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @079   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @080   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @082   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @083   ----------------------------------------
 .byte   PATT
  .word Label_011352CB
@  #04 @084   ----------------------------------------
 .byte   PATT
  .word Label_011352D5
@  #04 @085   ----------------------------------------
 .byte   PATT
  .word Label_011352DE
@  #04 @086   ----------------------------------------
 .byte   PATT
  .word Label_011352E9
@  #04 @087   ----------------------------------------
 .byte   PATT
  .word Label_011352CB
@  #04 @088   ----------------------------------------
 .byte   PATT
  .word Label_011352D5
@  #04 @089   ----------------------------------------
 .byte   PATT
  .word Label_011352FA
@  #04 @090   ----------------------------------------
 .byte   PATT
  .word Label_011352E9
@  #04 @091   ----------------------------------------
 .byte   PATT
  .word Label_011352CB
@  #04 @092   ----------------------------------------
 .byte   PATT
  .word Label_011352D5
@  #04 @093   ----------------------------------------
 .byte   PATT
  .word Label_011352DE
@  #04 @094   ----------------------------------------
 .byte   PATT
  .word Label_011352E9
@  #04 @095   ----------------------------------------
 .byte   PATT
  .word Label_011352CB
@  #04 @096   ----------------------------------------
 .byte   PATT
  .word Label_011352D5
@  #04 @097   ----------------------------------------
 .byte   PATT
  .word Label_011352FA
@  #04 @098   ----------------------------------------
 .byte   PATT
  .word Label_011352E9
@  #04 @099   ----------------------------------------
 .byte   PATT
  .word Label_01135332
@  #04 @100   ----------------------------------------
 .byte   PATT
  .word Label_01135339
@  #04 @101   ----------------------------------------
 .byte   PATT
  .word Label_01135340
@  #04 @102   ----------------------------------------
 .byte   PATT
  .word Label_01135347
@  #04 @103   ----------------------------------------
 .byte   PATT
  .word Label_01135332
@  #04 @104   ----------------------------------------
 .byte   PATT
  .word Label_01135353
@  #04 @105   ----------------------------------------
 .byte   PATT
  .word Label_0113535A
@  #04 @106   ----------------------------------------
 .byte   PATT
  .word Label_0113535A
@  #04 @107   ----------------------------------------
 .byte   PATT
  .word Label_01135366
@  #04 @108   ----------------------------------------
 .byte   PATT
  .word Label_0113536D
@  #04 @109   ----------------------------------------
 .byte   PATT
  .word Label_01135374
@  #04 @110   ----------------------------------------
 .byte   PATT
  .word Label_0113537B
@  #04 @111   ----------------------------------------
 .byte   PATT
  .word Label_01135366
@  #04 @112   ----------------------------------------
 .byte   PATT
  .word Label_01135387
@  #04 @113   ----------------------------------------
 .byte   PATT
  .word Label_01135390
@  #04 @114   ----------------------------------------
 .byte   PATT
  .word Label_01135397
@  #04 @115   ----------------------------------------
 .byte   N23 ,Gs2 ,v080
 .byte   N23 ,Cs3
 .byte   W23
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

.align 2, 0
song0B_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   VOICE , 49
 .byte   PAN , c_v-4
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   N11 ,Ds1 ,v096
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N23
 .byte   W06
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   N17
 .byte   W12
@  #05 @001   ----------------------------------------
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Fn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N17 ,Fs1
 .byte   W12
@  #05 @002   ----------------------------------------
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N11 ,Gs1
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11 ,Fn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
@  #05 @003   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N23
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W12
@  #05 @004   ----------------------------------------
 .byte   W06
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N23
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N32 ,Gn1
 .byte   W36
 .byte   Ds1
 .byte   W12
@  #05 @005   ----------------------------------------
 .byte   W24
 .byte   Dn1
 .byte   W36
 .byte   As0
 .byte   N32 ,As1
 .byte   W36
@  #05 @006   ----------------------------------------
 .byte   Bn0
 .byte   N32 ,Bn1
 .byte   W36
 .byte   As0
 .byte   N32 ,As1
 .byte   W36
 .byte   An0
 .byte   N32 ,An1
 .byte   W24
@  #05 @007   ----------------------------------------
 .byte   W12
 .byte   Gs0
 .byte   N32 ,Gs1
 .byte   W36
 .byte   Gn1
 .byte   W36
 .byte   N32
 .byte   W12
@  #05 @008   ----------------------------------------
 .byte   W24
 .byte   An1
 .byte   W36
 .byte   N32
 .byte   W36
@  #05 @009   ----------------------------------------
Label_011355AE:
 .byte   N17 ,Gs1 ,v096
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05 ,As1
 .byte   W06
 .byte   N32 ,Bn1
 .byte   W36
 .byte   En1
 .byte   N32 ,En2
 .byte   W24
 .byte   PEND 
@  #05 @010   ----------------------------------------
 .byte   W12
 .byte   Cs1
 .byte   N32 ,Cs2
 .byte   W12
Label_011355C4:
 .byte   W24
 .byte   N17 ,Gs1 ,v096
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05 ,As1
 .byte   W06
 .byte   N32 ,Bn1
 .byte   W12
@  #05 @011   ----------------------------------------
Label_011355D1:
 .byte   W24
 .byte   N32 ,En1 ,v096
 .byte   N32 ,En2
 .byte   W36
 .byte   Fs1
 .byte   N32 ,Fs2
 .byte   W36
 .byte   PEND 
@  #05 @012   ----------------------------------------
 .byte   PATT
  .word Label_011355AE
@  #05 @013   ----------------------------------------
 .byte   W12
 .byte   N32 ,Cs1 ,v096
 .byte   N32 ,Cs2
 .byte   W36
 .byte   N17 ,Gs1
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05 ,As1
 .byte   W06
 .byte   N32 ,Bn1
 .byte   W12
@  #05 @014   ----------------------------------------
 .byte   PATT
  .word Label_011355D1
@  #05 @015   ----------------------------------------
Label_011355F9:
 .byte   N05 ,Gs1 ,v096
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   Fs1
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   En1
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   Dn1
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #05 @016   ----------------------------------------
Label_0113561C:
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11 ,En1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_0113562A:
 .byte   N17 ,En1 ,v096
 .byte   N17 ,Fs1 ,v112
 .byte   W18
 .byte   N11
 .byte   W12
@  #05 @017   ----------------------------------------
 .byte   N05 ,En1
 .byte   W06
 .byte   N23 ,Ds1
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #05 @018   ----------------------------------------
 .byte   PATT
  .word Label_0113561C
@  #05 @019   ----------------------------------------
Label_01135641:
 .byte   N68 ,Fs1 ,v112
 .byte   W72
 .byte   PEND 
@  #05 @020   ----------------------------------------
 .byte   PATT
  .word Label_0113561C
@  #05 @021   ----------------------------------------
Label_0113564B:
 .byte   N17 ,Fs1 ,v112
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05 ,En1
 .byte   W06
 .byte   N23 ,Ds1
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #05 @022   ----------------------------------------
 .byte   PATT
  .word Label_0113561C
@  #05 @023   ----------------------------------------
 .byte   PATT
  .word Label_01135641
@  #05 @024   ----------------------------------------
Label_01135664:
 .byte   TIE ,Fs0 ,v096
 .byte   N17 ,Fs1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_01135670:
 .byte   N17 ,Fs1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
@  #05 @025   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Fs0
 .byte   W01
@  #05 @026   ----------------------------------------
 .byte   PATT
  .word Label_01135664
@  #05 @027   ----------------------------------------
 .byte   PATT
  .word Label_01135670
@  #05 @028   ----------------------------------------
 .byte   EOT
 .byte   Fs0
 .byte   W01
Label_0113568B:
 .byte   TIE ,Gs0 ,v096
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_01135697:
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
@  #05 @029   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Gs0
 .byte   W01
Label_011356A5:
 .byte   TIE ,An0 ,v096
 .byte   N17 ,An1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
@  #05 @030   ----------------------------------------
Label_011356B1:
 .byte   N17 ,Bn1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   An0
 .byte   W01
Label_011356BF:
 .byte   TIE ,Bn0 ,v096
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
@  #05 @031   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_011356CB:
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W23
 .byte   PEND 
@  #05 @032   ----------------------------------------
 .byte   EOT
 .byte   Bn0
 .byte   W01
Label_011356D9:
 .byte   TIE ,Cs1 ,v096
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_011356E5:
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
@  #05 @033   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Cs1
 .byte   W01
Label_011356F3:
 .byte   N17 ,Cs1 ,v096
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   Gs0 ,v096
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   N23 ,An0 ,v096
 .byte   N23 ,An1 ,v112
 .byte   W24
@  #05 @034   ----------------------------------------
 .byte   N11 ,An0 ,v096
 .byte   N11 ,An1 ,v112
 .byte   W12
 .byte   PEND 
Label_0113570F:
 .byte   N17 ,Bn0 ,v096
 .byte   N17 ,Bn1 ,v112
 .byte   W18
 .byte   N11 ,Bn0 ,v096
 .byte   N11 ,Bn1 ,v112
 .byte   W12
 .byte   N05 ,An0 ,v096
 .byte   N05 ,An1 ,v112
 .byte   W06
 .byte   N23 ,Gs0 ,v096
 .byte   N23 ,Gs1 ,v112
 .byte   W24
 .byte   N11 ,Gs0 ,v096
 .byte   N11 ,Gs1 ,v112
 .byte   W12
 .byte   PEND 
Label_01135733:
 .byte   N17 ,Cs1 ,v096
 .byte   N17 ,Cs2 ,v112
 .byte   W18
@  #05 @035   ----------------------------------------
 .byte   Gs0 ,v096
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   N32 ,An0 ,v096
 .byte   N32 ,An1 ,v112
 .byte   W36
 .byte   PEND 
Label_01135748:
 .byte   N56 ,Bn0 ,v096
 .byte   N56 ,Bn1 ,v112
 .byte   W48
@  #05 @036   ----------------------------------------
 .byte   W12
 .byte   N11 ,Bn0 ,v096
 .byte   N11 ,Bn1 ,v112
 .byte   W12
 .byte   PEND 
@  #05 @037   ----------------------------------------
 .byte   PATT
  .word Label_011356F3
@  #05 @038   ----------------------------------------
 .byte   PATT
  .word Label_0113570F
@  #05 @039   ----------------------------------------
 .byte   PATT
  .word Label_01135733
@  #05 @040   ----------------------------------------
 .byte   PATT
  .word Label_01135748
@  #05 @041   ----------------------------------------
 .byte   PATT
  .word Label_011356F3
@  #05 @042   ----------------------------------------
 .byte   PATT
  .word Label_0113570F
@  #05 @043   ----------------------------------------
 .byte   PATT
  .word Label_01135733
@  #05 @044   ----------------------------------------
 .byte   PATT
  .word Label_01135748
@  #05 @045   ----------------------------------------
 .byte   PATT
  .word Label_011356F3
@  #05 @046   ----------------------------------------
 .byte   PATT
  .word Label_0113570F
@  #05 @047   ----------------------------------------
 .byte   PATT
  .word Label_01135733
@  #05 @048   ----------------------------------------
 .byte   PATT
  .word Label_01135748
@  #05 @049   ----------------------------------------
Label_01135794:
 .byte   N68 ,An0 ,v096
 .byte   N17 ,An1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_011357A0:
 .byte   N68 ,Gs0 ,v096
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
@  #05 @050   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_011357AE:
 .byte   N68 ,Cs1 ,v096
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
@  #05 @051   ----------------------------------------
Label_011357BA:
 .byte   N68 ,Bn0 ,v096
 .byte   N17 ,Bn1 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #05 @052   ----------------------------------------
 .byte   PATT
  .word Label_01135794
@  #05 @053   ----------------------------------------
 .byte   PATT
  .word Label_011357A0
@  #05 @054   ----------------------------------------
 .byte   PATT
  .word Label_011357AE
@  #05 @055   ----------------------------------------
Label_011357D7:
 .byte   N68 ,Cs1 ,v096
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_011357E5:
 .byte   N17 ,An0 ,v096
 .byte   N17 ,An1 ,v112
 .byte   W18
 .byte   N28 ,An0 ,v096
 .byte   N28 ,An1 ,v112
 .byte   W06
@  #05 @056   ----------------------------------------
 .byte   W24
 .byte   N23 ,An0 ,v096
 .byte   N23 ,An1 ,v112
 .byte   W24
 .byte   PEND 
Label_011357FC:
 .byte   N17 ,Gs0 ,v096
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   Gs0 ,v096
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   N11 ,Gs0 ,v096
 .byte   N11 ,Gs1 ,v112
 .byte   W12
@  #05 @057   ----------------------------------------
 .byte   N23 ,Gs0 ,v096
 .byte   N23 ,Gs1 ,v112
 .byte   W24
 .byte   PEND 
Label_01135818:
 .byte   N17 ,Cs1 ,v096
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   N28 ,Cs1 ,v096
 .byte   N28 ,Cs2 ,v112
 .byte   W06
 .byte   W24
 .byte   N23 ,Cs1 ,v096
 .byte   N23 ,Cs2 ,v112
 .byte   W24
 .byte   PEND 
@  #05 @058   ----------------------------------------
Label_0113582F:
 .byte   N17 ,Bn0 ,v096
 .byte   N17 ,Bn1 ,v112
 .byte   W18
 .byte   Bn0 ,v096
 .byte   N17 ,Bn1 ,v112
 .byte   W18
 .byte   N23 ,Bn0 ,v096
 .byte   N23 ,Bn1 ,v112
 .byte   W24
 .byte   N11 ,En0 ,v096
 .byte   N11 ,En1 ,v112
 .byte   W12
 .byte   PEND 
@  #05 @059   ----------------------------------------
 .byte   PATT
  .word Label_011357E5
@  #05 @060   ----------------------------------------
Label_01135850:
 .byte   N17 ,Gs0 ,v096
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   Gs0 ,v096
 .byte   N17 ,Gs1 ,v112
 .byte   W18
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Cn2 ,v112
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Cn2 ,v112
 .byte   W24
 .byte   PEND 
@  #05 @061   ----------------------------------------
 .byte   PATT
  .word Label_01135818
@  #05 @062   ----------------------------------------
Label_01135871:
 .byte   N17 ,Cs1 ,v096
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   Cs1 ,v096
 .byte   N17 ,Cs2 ,v112
 .byte   W18
 .byte   N11 ,Cs1 ,v096
 .byte   N11 ,Cs2 ,v112
 .byte   W12
 .byte   N23 ,Cs1 ,v096
 .byte   N23 ,Cs2 ,v112
 .byte   W24
 .byte   PEND 
 .byte   N11 ,Ds1 ,v096
 .byte   W12
 .byte   N17
 .byte   W18
@  #05 @063   ----------------------------------------
 .byte   N23
 .byte   W06
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11 ,Fn1
 .byte   W12
 .byte   N11
 .byte   W12
@  #05 @064   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N17 ,Fs1
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N11 ,Gs1
 .byte   W12
@  #05 @065   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11 ,Fn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
Label_011358C2:
 .byte   N11 ,Fn1 ,v096
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
@  #05 @066   ----------------------------------------
 .byte   W06
 .byte   N23
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #05 @067   ----------------------------------------
 .byte   PATT
  .word Label_011358C2
@  #05 @068   ----------------------------------------
 .byte   N32 ,Gn1 ,v096
 .byte   W36
 .byte   Ds1
 .byte   W36
 .byte   Dn1
 .byte   W36
@  #05 @069   ----------------------------------------
 .byte   As0
 .byte   N32 ,As1
 .byte   W36
 .byte   Bn0
 .byte   N32 ,Bn1
 .byte   W36
 .byte   As0
 .byte   N32 ,As1
 .byte   W36
@  #05 @070   ----------------------------------------
 .byte   An0
 .byte   N32 ,An1
 .byte   W36
 .byte   Gs0
 .byte   N32 ,Gs1
 .byte   W36
 .byte   Gn1
 .byte   W36
@  #05 @071   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   An1
 .byte   W36
 .byte   N32
 .byte   W36
@  #05 @072   ----------------------------------------
Label_011358F9:
 .byte   N17 ,Gs1 ,v096
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05 ,As1
 .byte   W06
 .byte   N32 ,Bn1
 .byte   W36
 .byte   PEND 
 .byte   En1
 .byte   N32 ,En2
 .byte   W36
@  #05 @073   ----------------------------------------
 .byte   Cs1
 .byte   N32 ,Cs2
 .byte   W12
 .byte   GOTO
  .word Label_011355C4
@  #05 @074   ----------------------------------------
 .byte   W24
@  #05 @075   ----------------------------------------
 .byte   PATT
  .word Label_011358F9
@  #05 @076   ----------------------------------------
Label_01135919:
 .byte   N32 ,En1 ,v096
 .byte   N32 ,En2
 .byte   W36
 .byte   Fs1
 .byte   N32 ,Fs2
 .byte   W36
 .byte   PEND 
@  #05 @077   ----------------------------------------
 .byte   PATT
  .word Label_011358F9
@  #05 @078   ----------------------------------------
 .byte   N32 ,En1 ,v096
 .byte   N32 ,En2
 .byte   W36
 .byte   Cs1
 .byte   N32 ,Cs2
 .byte   W36
@  #05 @079   ----------------------------------------
 .byte   PATT
  .word Label_011358F9
@  #05 @080   ----------------------------------------
 .byte   PATT
  .word Label_01135919
@  #05 @081   ----------------------------------------
 .byte   PATT
  .word Label_011355F9
@  #05 @082   ----------------------------------------
 .byte   PATT
  .word Label_0113561C
@  #05 @083   ----------------------------------------
 .byte   PATT
  .word Label_0113562A
@  #05 @084   ----------------------------------------
 .byte   PATT
  .word Label_0113561C
@  #05 @085   ----------------------------------------
 .byte   PATT
  .word Label_01135641
@  #05 @086   ----------------------------------------
 .byte   PATT
  .word Label_0113561C
@  #05 @087   ----------------------------------------
 .byte   PATT
  .word Label_0113564B
@  #05 @088   ----------------------------------------
 .byte   PATT
  .word Label_0113561C
@  #05 @089   ----------------------------------------
 .byte   PATT
  .word Label_01135641
@  #05 @090   ----------------------------------------
 .byte   PATT
  .word Label_01135664
@  #05 @091   ----------------------------------------
 .byte   PATT
  .word Label_01135670
@  #05 @092   ----------------------------------------
 .byte   EOT
 .byte   Fs0
 .byte   W01
@  #05 @093   ----------------------------------------
 .byte   PATT
  .word Label_01135664
@  #05 @094   ----------------------------------------
 .byte   PATT
  .word Label_01135670
@  #05 @095   ----------------------------------------
 .byte   EOT
 .byte   Fs0
 .byte   W01
@  #05 @096   ----------------------------------------
 .byte   PATT
  .word Label_0113568B
@  #05 @097   ----------------------------------------
 .byte   PATT
  .word Label_01135697
@  #05 @098   ----------------------------------------
 .byte   EOT
 .byte   Gs0
 .byte   W01
@  #05 @099   ----------------------------------------
 .byte   PATT
  .word Label_011356A5
@  #05 @100   ----------------------------------------
 .byte   PATT
  .word Label_011356B1
@  #05 @101   ----------------------------------------
 .byte   EOT
 .byte   An0
 .byte   W01
@  #05 @102   ----------------------------------------
 .byte   PATT
  .word Label_011356BF
@  #05 @103   ----------------------------------------
 .byte   PATT
  .word Label_011356CB
@  #05 @104   ----------------------------------------
 .byte   EOT
 .byte   Bn0
 .byte   W01
@  #05 @105   ----------------------------------------
 .byte   PATT
  .word Label_011356D9
@  #05 @106   ----------------------------------------
 .byte   PATT
  .word Label_011356E5
@  #05 @107   ----------------------------------------
 .byte   EOT
 .byte   Cs1
 .byte   W01
@  #05 @108   ----------------------------------------
 .byte   PATT
  .word Label_011356F3
@  #05 @109   ----------------------------------------
 .byte   PATT
  .word Label_0113570F
@  #05 @110   ----------------------------------------
 .byte   PATT
  .word Label_01135733
@  #05 @111   ----------------------------------------
 .byte   PATT
  .word Label_01135748
@  #05 @112   ----------------------------------------
 .byte   PATT
  .word Label_011356F3
@  #05 @113   ----------------------------------------
 .byte   PATT
  .word Label_0113570F
@  #05 @114   ----------------------------------------
 .byte   PATT
  .word Label_01135733
@  #05 @115   ----------------------------------------
 .byte   PATT
  .word Label_01135748
@  #05 @116   ----------------------------------------
 .byte   PATT
  .word Label_011356F3
@  #05 @117   ----------------------------------------
 .byte   PATT
  .word Label_0113570F
@  #05 @118   ----------------------------------------
 .byte   PATT
  .word Label_01135733
@  #05 @119   ----------------------------------------
 .byte   PATT
  .word Label_01135748
@  #05 @120   ----------------------------------------
 .byte   PATT
  .word Label_011356F3
@  #05 @121   ----------------------------------------
 .byte   PATT
  .word Label_0113570F
@  #05 @122   ----------------------------------------
 .byte   PATT
  .word Label_01135733
@  #05 @123   ----------------------------------------
 .byte   PATT
  .word Label_01135748
@  #05 @124   ----------------------------------------
 .byte   PATT
  .word Label_01135794
@  #05 @125   ----------------------------------------
 .byte   PATT
  .word Label_011357A0
@  #05 @126   ----------------------------------------
 .byte   PATT
  .word Label_011357AE
@  #05 @127   ----------------------------------------
 .byte   PATT
  .word Label_011357BA
@  #05 @128   ----------------------------------------
 .byte   PATT
  .word Label_01135794
@  #05 @129   ----------------------------------------
 .byte   PATT
  .word Label_011357A0
@  #05 @130   ----------------------------------------
 .byte   PATT
  .word Label_011357AE
@  #05 @131   ----------------------------------------
 .byte   PATT
  .word Label_011357D7
@  #05 @132   ----------------------------------------
 .byte   PATT
  .word Label_011357E5
@  #05 @133   ----------------------------------------
 .byte   PATT
  .word Label_011357FC
@  #05 @134   ----------------------------------------
 .byte   PATT
  .word Label_01135818
@  #05 @135   ----------------------------------------
 .byte   PATT
  .word Label_0113582F
@  #05 @136   ----------------------------------------
 .byte   PATT
  .word Label_011357E5
@  #05 @137   ----------------------------------------
 .byte   PATT
  .word Label_01135850
@  #05 @138   ----------------------------------------
 .byte   PATT
  .word Label_01135818
@  #05 @139   ----------------------------------------
 .byte   PATT
  .word Label_01135871
@  #05 @140   ----------------------------------------
 .byte   N23 ,Cs1 ,v096
 .byte   N23 ,Cs2 ,v112
 .byte   W23
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

.align 2, 0
song0B_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   VOICE , 11
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W96
@  #06 @001   ----------------------------------------
 .byte   W96
@  #06 @002   ----------------------------------------
 .byte   W96
@  #06 @003   ----------------------------------------
 .byte   W96
@  #06 @004   ----------------------------------------
 .byte   W96
@  #06 @005   ----------------------------------------
 .byte   W96
@  #06 @006   ----------------------------------------
 .byte   W96
@  #06 @007   ----------------------------------------
 .byte   W96
@  #06 @008   ----------------------------------------
 .byte   W96
@  #06 @009   ----------------------------------------
 .byte   W96
@  #06 @010   ----------------------------------------
 .byte   W24
Label_54FE23:
 .byte   W72
@  #06 @011   ----------------------------------------
 .byte   W96
@  #06 @012   ----------------------------------------
 .byte   W96
@  #06 @013   ----------------------------------------
 .byte   W96
@  #06 @014   ----------------------------------------
 .byte   W96
@  #06 @015   ----------------------------------------
 .byte   W96
@  #06 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @017   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @018   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @019   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @020   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @021   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @022   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @024   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @025   ----------------------------------------
 .byte   W36
 .byte   N23 ,Bn5 ,v096
 .byte   W36
 .byte   W60
@  #06 @026   ----------------------------------------
 .byte   N11 ,Fs5
 .byte   W12
Label_54FE44:
 .byte   N17 ,Gs5 ,v096
 .byte   W18
 .byte   Bn5
 .byte   W18
 .byte   N23 ,Fs5
 .byte   W24
 .byte   N11 ,En5
 .byte   W12
 .byte   PEND 
Label_54FE51:
 .byte   N17 ,Fs5 ,v096
 .byte   W18
@  #06 @027   ----------------------------------------
 .byte   Bn5
 .byte   W18
 .byte   N23 ,En5
 .byte   W24
 .byte   N11 ,Ds5
 .byte   W12
 .byte   PEND 
Label_54FE5E:
 .byte   N17 ,Ds5 ,v096
 .byte   W18
 .byte   N52 ,Cs5
 .byte   W54
 .byte   PEND 
@  #06 @028   ----------------------------------------
 .byte   W60
 .byte   N11 ,Fs5
 .byte   W12
@  #06 @029   ----------------------------------------
 .byte   PATT
  .word Label_54FE44
@  #06 @030   ----------------------------------------
Label_54FE6F:
 .byte   N17 ,Fs5 ,v096
 .byte   W18
 .byte   Bn5
 .byte   W18
 .byte   N23 ,Ds6
 .byte   W24
 .byte   N11 ,En6
 .byte   W12
 .byte   PEND 
Label_54FE7C:
 .byte   N17 ,Ds6 ,v096
 .byte   W18
 .byte   N52 ,Cs6
 .byte   W54
 .byte   PEND 
@  #06 @031   ----------------------------------------
Label_54FE84:
 .byte   W24
 .byte   N23 ,Bn5 ,v096
 .byte   W24
 .byte   Fs5
 .byte   W24
 .byte   PEND 
@  #06 @032   ----------------------------------------
 .byte   PATT
  .word Label_54FE44
@  #06 @033   ----------------------------------------
 .byte   PATT
  .word Label_54FE51
@  #06 @034   ----------------------------------------
 .byte   PATT
  .word Label_54FE5E
@  #06 @035   ----------------------------------------
 .byte   W72
@  #06 @036   ----------------------------------------
 .byte   PATT
  .word Label_54FE44
@  #06 @037   ----------------------------------------
Label_54FEA1:
 .byte   N17 ,Fs5 ,v096
 .byte   W18
 .byte   Bn5
 .byte   W18
 .byte   N11 ,Ds6
 .byte   W12
 .byte   En6
 .byte   W12
 .byte   Fs6
 .byte   W12
 .byte   PEND 
@  #06 @038   ----------------------------------------
 .byte   PATT
  .word Label_54FE7C
@  #06 @039   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @040   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @041   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @042   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @043   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @044   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @045   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @046   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @047   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @048   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @049   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @050   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @051   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @052   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @053   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @054   ----------------------------------------
 .byte   W48
 .byte   GOTO
  .word Label_54FE23
@  #06 @055   ----------------------------------------
 .byte   W24
 .byte   W72
@  #06 @056   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @057   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @058   ----------------------------------------
 .byte   W72
 .byte   W96
@  #06 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @064   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @065   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @067   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @068   ----------------------------------------
 .byte   W36
 .byte   N23 ,Bn5 ,v096
 .byte   W36
 .byte   W60
@  #06 @069   ----------------------------------------
 .byte   N11 ,Fs5
 .byte   W12
@  #06 @070   ----------------------------------------
 .byte   PATT
  .word Label_54FE44
@  #06 @071   ----------------------------------------
 .byte   PATT
  .word Label_54FE51
@  #06 @072   ----------------------------------------
 .byte   PATT
  .word Label_54FE5E
@  #06 @073   ----------------------------------------
 .byte   W60
 .byte   N11 ,Fs5 ,v096
 .byte   W12
@  #06 @074   ----------------------------------------
 .byte   PATT
  .word Label_54FE44
@  #06 @075   ----------------------------------------
 .byte   PATT
  .word Label_54FE6F
@  #06 @076   ----------------------------------------
 .byte   PATT
  .word Label_54FE7C
@  #06 @077   ----------------------------------------
 .byte   PATT
  .word Label_54FE84
@  #06 @078   ----------------------------------------
 .byte   PATT
  .word Label_54FE44
@  #06 @079   ----------------------------------------
 .byte   PATT
  .word Label_54FE51
@  #06 @080   ----------------------------------------
 .byte   PATT
  .word Label_54FE5E
@  #06 @081   ----------------------------------------
 .byte   W72
@  #06 @082   ----------------------------------------
 .byte   PATT
  .word Label_54FE44
@  #06 @083   ----------------------------------------
 .byte   PATT
  .word Label_54FEA1
@  #06 @084   ----------------------------------------
 .byte   PATT
  .word Label_54FE7C
@  #06 @085   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @086   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @087   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @088   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @089   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @090   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @091   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @092   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @093   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

.align 2, 0
song0B_007:
@  #07 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   VOICE , 1
 .byte   PAN , c_v-4
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   W96
@  #07 @001   ----------------------------------------
 .byte   W96
@  #07 @002   ----------------------------------------
 .byte   W96
@  #07 @003   ----------------------------------------
 .byte   W96
@  #07 @004   ----------------------------------------
 .byte   W96
@  #07 @005   ----------------------------------------
 .byte   W96
@  #07 @006   ----------------------------------------
 .byte   N05 ,Bn4 ,v080
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Cs6
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #07 @007   ----------------------------------------
 .byte   An4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   As5
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   En6
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   An4
 .byte   W06
@  #07 @008   ----------------------------------------
 .byte   Bn4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   An6
 .byte   W06
 .byte   En6
 .byte   W06
 .byte   Dn6
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   Dn6
 .byte   W06
 .byte   En6
 .byte   W06
 .byte   An6
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   Dn6
 .byte   W06
 .byte   En6
 .byte   W06
 .byte   An5
 .byte   W06
@  #07 @009   ----------------------------------------
 .byte   W96
@  #07 @010   ----------------------------------------
 .byte   W24
Label_01135AD4:
 .byte   W72
@  #07 @011   ----------------------------------------
 .byte   W96
@  #07 @012   ----------------------------------------
 .byte   W96
@  #07 @013   ----------------------------------------
 .byte   W96
@  #07 @014   ----------------------------------------
 .byte   W96
@  #07 @015   ----------------------------------------
 .byte   N17 ,Gs1 ,v080
 .byte   N17 ,Ds2
 .byte   N17 ,Gs2
 .byte   N17 ,Ds4
 .byte   N17 ,Gs4
 .byte   N17 ,Cs5
 .byte   W18
 .byte   Fs1
 .byte   N17 ,Cs2
 .byte   N17 ,Fs2
 .byte   N17 ,Gs4
 .byte   N17 ,Cs5
 .byte   N17 ,Fs5
 .byte   W18
 .byte   En1
 .byte   N17 ,An1
 .byte   N17 ,En2
 .byte   N17 ,An4
 .byte   N17 ,Bn4
 .byte   N17 ,En5
 .byte   W18
 .byte   Dn1
 .byte   N17 ,An1
 .byte   N17 ,Dn2
 .byte   N17 ,An4
 .byte   N17 ,Dn5
 .byte   N17 ,En5
 .byte   N17 ,An5
 .byte   W18
 .byte   N11 ,Gs1
 .byte   N11 ,Ds2
 .byte   N11 ,Gs2
 .byte   N11 ,Fs4
 .byte   N11 ,Bn4
 .byte   N11 ,Cs5
 .byte   N11 ,Fs5
 .byte   W12
 .byte   Gs1
 .byte   N11 ,Ds2
 .byte   N11 ,Gs2
 .byte   N11 ,Fs4
 .byte   N11 ,Bn4
 .byte   N11 ,En5
 .byte   W12
@  #07 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @017   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @018   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @019   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @020   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @021   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @022   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @024   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @025   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @026   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @027   ----------------------------------------
 .byte   W72
Label_01135B3F:
 .byte   W42
@  #07 @028   ----------------------------------------
 .byte   N02 ,En5 ,v096
 .byte   W03
 .byte   Ds5
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   Fs4
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Cs4
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   An3
 .byte   W03
 .byte   PEND 
 .byte   W72
@  #07 @029   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @030   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @031   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @032   ----------------------------------------
 .byte   PATT
  .word Label_01135B3F
@  #07 @033   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @034   ----------------------------------------
 .byte   W72
 .byte   W30
@  #07 @035   ----------------------------------------
 .byte   N02 ,An3 ,v096
 .byte   N02 ,An4
 .byte   W03
 .byte   Bn3
 .byte   N02 ,Bn4
 .byte   W03
 .byte   N05 ,En4
 .byte   N05 ,En5
 .byte   W06
 .byte   Ds4
 .byte   N05 ,Ds5
 .byte   W06
 .byte   Bn3
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Fs3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   En3
 .byte   N05 ,En4
 .byte   W06
 .byte   Ds3
 .byte   N05 ,Ds4
 .byte   W06
 .byte   W72
@  #07 @036   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @037   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @038   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @039   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @040   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @041   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @042   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @043   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @044   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @045   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @046   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @047   ----------------------------------------
 .byte   W72
 .byte   N24 ,BnM1 ,v064
 .byte   W24
@  #07 @048   ----------------------------------------
 .byte   N05 ,Bn4 ,v080
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Cs6
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #07 @049   ----------------------------------------
 .byte   An4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   As5
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   En6
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   An4
 .byte   W06
@  #07 @050   ----------------------------------------
 .byte   Bn4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   An6
 .byte   W06
 .byte   En6
 .byte   W06
 .byte   Dn6
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   Dn6
 .byte   W06
 .byte   En6
 .byte   W06
 .byte   An6
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   Dn6
 .byte   W06
 .byte   En6
 .byte   W06
 .byte   An5
 .byte   W54
@  #07 @051   ----------------------------------------
 .byte   W48
 .byte   GOTO
  .word Label_01135AD4
@  #07 @052   ----------------------------------------
 .byte   W24
 .byte   W72
@  #07 @053   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @054   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @055   ----------------------------------------
 .byte   W72
 .byte   W24
@  #07 @056   ----------------------------------------
 .byte   N17 ,Gs1 ,v080
 .byte   N17 ,Ds2
 .byte   N17 ,Gs2
 .byte   N17 ,Ds4
 .byte   N17 ,Gs4
 .byte   N17 ,Cs5
 .byte   W18
 .byte   Fs1
 .byte   N17 ,Cs2
 .byte   N17 ,Fs2
 .byte   N17 ,Gs4
 .byte   N17 ,Cs5
 .byte   N17 ,Fs5
 .byte   W18
 .byte   En1
 .byte   N17 ,An1
 .byte   N17 ,En2
 .byte   N17 ,An4
 .byte   N17 ,Bn4
 .byte   N17 ,En5
 .byte   W18
 .byte   Dn1
 .byte   N17 ,An1
 .byte   N17 ,Dn2
 .byte   N17 ,An4
 .byte   N17 ,Dn5
 .byte   N17 ,En5
 .byte   N17 ,An5
 .byte   W18
 .byte   N11 ,Gs1
 .byte   N11 ,Ds2
 .byte   N11 ,Gs2
 .byte   N11 ,Fs4
 .byte   N11 ,Bn4
 .byte   N11 ,Cs5
 .byte   N11 ,Fs5
 .byte   W12
 .byte   Gs1
 .byte   N11 ,Ds2
 .byte   N11 ,Gs2
 .byte   N11 ,Fs4
 .byte   N11 ,Bn4
 .byte   N11 ,En5
 .byte   W60
@  #07 @057   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @058   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @064   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @065   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @067   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @068   ----------------------------------------
Label_01135C7B:
 .byte   W66
 .byte   N02 ,En5 ,v096
 .byte   W03
 .byte   Ds5
 .byte   W03
 .byte   PEND 
Label_01135C83:
 .byte   N02 ,Bn4 ,v096
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   Fs4
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Cs4
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   An3
 .byte   W48
@  #07 @069   ----------------------------------------
 .byte   W03
 .byte   PEND 
 .byte   W72
 .byte   W72
@  #07 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @071   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @072   ----------------------------------------
 .byte   PATT
  .word Label_01135C7B
@  #07 @073   ----------------------------------------
 .byte   PATT
  .word Label_01135C83
@  #07 @074   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @075   ----------------------------------------
 .byte   W54
 .byte   N02 ,An3 ,v096
 .byte   N02 ,An4
 .byte   W03
 .byte   Bn3
 .byte   N02 ,Bn4
 .byte   W03
 .byte   N05 ,En4
 .byte   N05 ,En5
 .byte   W06
 .byte   Ds4
 .byte   N05 ,Ds5
 .byte   W06
 .byte   Bn3
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Fs3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   En3
 .byte   N05 ,En4
 .byte   W06
 .byte   Ds3
 .byte   N05 ,Ds4
 .byte   W54
@  #07 @076   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @077   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @078   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @079   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @080   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @082   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @083   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

.align 2, 0
song0B_008:
@  #08 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   VOICE , 28
 .byte   PAN , c_v+3
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   N11 ,Ds0 ,v080
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N23
 .byte   W06
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   N17
 .byte   W12
@  #08 @001   ----------------------------------------
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Fn0
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N17 ,Fs0
 .byte   W12
@  #08 @002   ----------------------------------------
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N11 ,Gs0
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11 ,Fn0
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
@  #08 @003   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N23
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W12
@  #08 @004   ----------------------------------------
 .byte   W06
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N23
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N32 ,Gn0
 .byte   W36
 .byte   Ds0
 .byte   W12
@  #08 @005   ----------------------------------------
 .byte   W24
 .byte   Dn0
 .byte   W36
 .byte   As0
 .byte   W36
@  #08 @006   ----------------------------------------
 .byte   Bn0 ,v096
 .byte   W36
 .byte   As0
 .byte   W36
 .byte   An0
 .byte   W24
@  #08 @007   ----------------------------------------
 .byte   W12
 .byte   Gs0
 .byte   W36
 .byte   N68 ,Gn0
 .byte   W48
@  #08 @008   ----------------------------------------
 .byte   W24
 .byte   An0
 .byte   W72
@  #08 @009   ----------------------------------------
Label_01135D52:
 .byte   N17 ,Gs0 ,v080
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05 ,As0
 .byte   W06
 .byte   N32 ,Bn0
 .byte   W36
 .byte   En1
 .byte   W24
 .byte   PEND 
@  #08 @010   ----------------------------------------
 .byte   W12
 .byte   Cs1
 .byte   W12
Label_01135D64:
 .byte   W24
 .byte   N17 ,Gs0 ,v080
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05 ,As0
 .byte   W06
 .byte   N32 ,Bn0
 .byte   W12
@  #08 @011   ----------------------------------------
Label_01135D71:
 .byte   W24
 .byte   N32 ,En1 ,v080
 .byte   W36
 .byte   Fs1
 .byte   W36
 .byte   PEND 
@  #08 @012   ----------------------------------------
 .byte   PATT
  .word Label_01135D52
@  #08 @013   ----------------------------------------
 .byte   W12
 .byte   N32 ,Cs1 ,v080
 .byte   W36
 .byte   N17 ,Gs0
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05 ,As0
 .byte   W06
 .byte   N32 ,Bn0
 .byte   W12
@  #08 @014   ----------------------------------------
 .byte   PATT
  .word Label_01135D71
@  #08 @015   ----------------------------------------
Label_01135D93:
 .byte   N17 ,Gs0 ,v080
 .byte   W18
 .byte   Fs0
 .byte   W18
 .byte   En0
 .byte   W18
 .byte   Dn0
 .byte   W18
 .byte   N11 ,Gs0
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #08 @016   ----------------------------------------
Label_01135DA3:
 .byte   N17 ,Gs0 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11 ,En0
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_01135DB1:
 .byte   N17 ,Fs0 ,v096
 .byte   W18
 .byte   N11
 .byte   W12
@  #08 @017   ----------------------------------------
 .byte   N05 ,En0
 .byte   W06
 .byte   N23 ,Ds0
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #08 @018   ----------------------------------------
 .byte   PATT
  .word Label_01135DA3
@  #08 @019   ----------------------------------------
Label_01135DC5:
 .byte   N68 ,Fs0 ,v096
 .byte   W72
 .byte   PEND 
@  #08 @020   ----------------------------------------
 .byte   PATT
  .word Label_01135DA3
@  #08 @021   ----------------------------------------
 .byte   PATT
  .word Label_01135DB1
@  #08 @022   ----------------------------------------
 .byte   PATT
  .word Label_01135DA3
@  #08 @023   ----------------------------------------
 .byte   PATT
  .word Label_01135DC5
@  #08 @024   ----------------------------------------
Label_01135DDE:
 .byte   N17 ,Fs0 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_01135DE7:
 .byte   N17 ,Fs0 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
@  #08 @025   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #08 @026   ----------------------------------------
 .byte   PATT
  .word Label_01135DDE
@  #08 @027   ----------------------------------------
 .byte   PATT
  .word Label_01135DE7
@  #08 @028   ----------------------------------------
Label_01135DFC:
 .byte   N17 ,Gs0 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_01135E05:
 .byte   N17 ,Gs0 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
@  #08 @029   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_01135E10:
 .byte   N17 ,An0 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N32
 .byte   W36
 .byte   PEND 
@  #08 @030   ----------------------------------------
Label_01135E19:
 .byte   N17 ,Bn0 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_01135E24:
 .byte   N17 ,Cs1 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
@  #08 @031   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_01135E2D:
 .byte   N17 ,Cs1 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #08 @032   ----------------------------------------
 .byte   PATT
  .word Label_01135E24
@  #08 @033   ----------------------------------------
Label_01135E3D:
 .byte   N17 ,Cs1 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   PEND 
Label_01135E48:
 .byte   N17 ,Cs1 ,v096
 .byte   W18
 .byte   Gs0
 .byte   W18
@  #08 @034   ----------------------------------------
 .byte   N23 ,An0
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_01135E54:
 .byte   N17 ,Bn0 ,v096
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N05 ,An0
 .byte   W06
 .byte   N23 ,Gs0
 .byte   W24
@  #08 @035   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_01135E63:
 .byte   N17 ,Cs1 ,v096
 .byte   W18
 .byte   Gs0
 .byte   W18
 .byte   N32 ,An0
 .byte   W36
 .byte   PEND 
Label_01135E6D:
 .byte   N56 ,Bn0 ,v096
 .byte   W48
@  #08 @036   ----------------------------------------
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #08 @037   ----------------------------------------
 .byte   PATT
  .word Label_01135E48
@  #08 @038   ----------------------------------------
 .byte   PATT
  .word Label_01135E54
@  #08 @039   ----------------------------------------
 .byte   PATT
  .word Label_01135E63
@  #08 @040   ----------------------------------------
 .byte   PATT
  .word Label_01135E6D
@  #08 @041   ----------------------------------------
 .byte   PATT
  .word Label_01135E48
@  #08 @042   ----------------------------------------
 .byte   PATT
  .word Label_01135E54
@  #08 @043   ----------------------------------------
 .byte   PATT
  .word Label_01135E63
@  #08 @044   ----------------------------------------
 .byte   PATT
  .word Label_01135E6D
@  #08 @045   ----------------------------------------
 .byte   PATT
  .word Label_01135E48
@  #08 @046   ----------------------------------------
 .byte   PATT
  .word Label_01135E54
@  #08 @047   ----------------------------------------
 .byte   PATT
  .word Label_01135E63
@  #08 @048   ----------------------------------------
 .byte   PATT
  .word Label_01135E6D
@  #08 @049   ----------------------------------------
Label_01135EB1:
 .byte   N17 ,An0 ,v096
 .byte   N44 ,Cs4 ,v112
 .byte   W18
 .byte   N17 ,An0 ,v096
 .byte   W18
 .byte   N32
 .byte   W12
 .byte   N05 ,Gs3 ,v112
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   PEND 
Label_01135EC9:
 .byte   N17 ,Gs0 ,v096
 .byte   N44 ,Ds4 ,v112
 .byte   W18
 .byte   N17 ,Gs0 ,v096
 .byte   W18
@  #08 @050   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   N05 ,Gs3 ,v112
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   PEND 
Label_01135EE2:
 .byte   N17 ,Cs1 ,v096
 .byte   N44 ,En4 ,v112
 .byte   W18
 .byte   N17 ,Cs1 ,v096
 .byte   W18
 .byte   N32
 .byte   W12
 .byte   N05 ,Gs3 ,v112
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #08 @051   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   PEND 
Label_01135EFA:
 .byte   N17 ,Bn0 ,v096
 .byte   N32 ,Fs4 ,v112
 .byte   W18
 .byte   N17 ,Bn0 ,v096
 .byte   W18
 .byte   N11
 .byte   N05 ,En4 ,v112
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N23 ,Bn0 ,v096
 .byte   N05 ,Gs4 ,v112
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   PEND 
Label_01135F1A:
 .byte   N17 ,An0 ,v096
 .byte   N17 ,Gs4 ,v112
 .byte   W18
@  #08 @052   ----------------------------------------
 .byte   An0 ,v096
 .byte   N32 ,Cs4 ,v112
 .byte   W18
 .byte   An0 ,v096
 .byte   W18
 .byte   N05 ,Ds4 ,v112
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   PEND 
Label_01135F33:
 .byte   N17 ,Gs0 ,v096
 .byte   N17 ,Bn4 ,v112
 .byte   W18
 .byte   Gs0 ,v096
 .byte   N02 ,An4 ,v112
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N23 ,An4
 .byte   W12
 .byte   N11 ,Gs0 ,v096
 .byte   W12
@  #08 @053   ----------------------------------------
 .byte   N23
 .byte   N11 ,Gs4 ,v112
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
Label_01135F51:
 .byte   N17 ,Cs1 ,v096
 .byte   N32 ,Fs4 ,v112
 .byte   W18
 .byte   N17 ,Cs1 ,v096
 .byte   W18
 .byte   N32
 .byte   TIE ,Gs4 ,v112
 .byte   W36
 .byte   PEND 
@  #08 @054   ----------------------------------------
Label_01135F62:
 .byte   N17 ,Cs1 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Gs4
 .byte   W01
Label_01135F70:
 .byte   N17 ,An0 ,v096
 .byte   W18
 .byte   N28
 .byte   W06
@  #08 @055   ----------------------------------------
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #08 @056   ----------------------------------------
 .byte   PATT
  .word Label_01135E05
@  #08 @057   ----------------------------------------
Label_01135F7F:
 .byte   N17 ,Cs1 ,v096
 .byte   W18
 .byte   N28
 .byte   W06
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_01135F89:
 .byte   N17 ,Bn0 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
@  #08 @058   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   N11 ,En0
 .byte   W12
 .byte   PEND 
@  #08 @059   ----------------------------------------
 .byte   PATT
  .word Label_01135F70
@  #08 @060   ----------------------------------------
Label_01135F9A:
 .byte   N17 ,Gs0 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #08 @061   ----------------------------------------
 .byte   PATT
  .word Label_01135F7F
@  #08 @062   ----------------------------------------
 .byte   PATT
  .word Label_01135E2D
@  #08 @063   ----------------------------------------
 .byte   N11 ,Ds0 ,v080
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N23
 .byte   W06
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   N17
 .byte   W18
@  #08 @064   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N11 ,Fn0
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N17 ,Fs0
 .byte   W18
@  #08 @065   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N11 ,Gs0
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11 ,Fn0
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
Label_01135FE5:
 .byte   N11 ,Fn0 ,v080
 .byte   W12
@  #08 @066   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N23
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @067   ----------------------------------------
 .byte   PATT
  .word Label_01135FE5
@  #08 @068   ----------------------------------------
 .byte   N32 ,Gn0 ,v080
 .byte   W36
 .byte   Ds0
 .byte   W36
 .byte   Dn0
 .byte   W36
@  #08 @069   ----------------------------------------
 .byte   As0
 .byte   W36
 .byte   Bn0 ,v096
 .byte   W36
 .byte   As0
 .byte   W36
@  #08 @070   ----------------------------------------
 .byte   An0
 .byte   W36
 .byte   Gs0
 .byte   W36
 .byte   N68 ,Gn0
 .byte   W72
@  #08 @071   ----------------------------------------
 .byte   An0
 .byte   W72
Label_01136010:
 .byte   N17 ,Gs0 ,v080
 .byte   W18
 .byte   N11
 .byte   W12
@  #08 @072   ----------------------------------------
 .byte   N05 ,As0
 .byte   W06
 .byte   N32 ,Bn0
 .byte   W36
 .byte   PEND 
 .byte   En1
 .byte   W36
 .byte   Cs1
 .byte   W12
 .byte   GOTO
  .word Label_01135D64
@  #08 @073   ----------------------------------------
 .byte   W24
@  #08 @074   ----------------------------------------
 .byte   PATT
  .word Label_01136010
@  #08 @075   ----------------------------------------
Label_0113602C:
 .byte   N32 ,En1 ,v080
 .byte   W36
 .byte   Fs1
 .byte   W36
 .byte   PEND 
@  #08 @076   ----------------------------------------
 .byte   PATT
  .word Label_01136010
@  #08 @077   ----------------------------------------
 .byte   N32 ,En1 ,v080
 .byte   W36
 .byte   Cs1
 .byte   W36
@  #08 @078   ----------------------------------------
 .byte   PATT
  .word Label_01136010
@  #08 @079   ----------------------------------------
 .byte   PATT
  .word Label_0113602C
@  #08 @080   ----------------------------------------
 .byte   PATT
  .word Label_01135D93
@  #08 @081   ----------------------------------------
 .byte   PATT
  .word Label_01135DA3
@  #08 @082   ----------------------------------------
 .byte   PATT
  .word Label_01135DB1
@  #08 @083   ----------------------------------------
 .byte   PATT
  .word Label_01135DA3
@  #08 @084   ----------------------------------------
 .byte   PATT
  .word Label_01135DC5
@  #08 @085   ----------------------------------------
 .byte   PATT
  .word Label_01135DA3
@  #08 @086   ----------------------------------------
 .byte   PATT
  .word Label_01135DB1
@  #08 @087   ----------------------------------------
 .byte   PATT
  .word Label_01135DA3
@  #08 @088   ----------------------------------------
 .byte   PATT
  .word Label_01135DC5
@  #08 @089   ----------------------------------------
 .byte   PATT
  .word Label_01135DDE
@  #08 @090   ----------------------------------------
 .byte   PATT
  .word Label_01135DE7
@  #08 @091   ----------------------------------------
 .byte   PATT
  .word Label_01135DDE
@  #08 @092   ----------------------------------------
 .byte   PATT
  .word Label_01135DE7
@  #08 @093   ----------------------------------------
 .byte   PATT
  .word Label_01135DFC
@  #08 @094   ----------------------------------------
 .byte   PATT
  .word Label_01135E05
@  #08 @095   ----------------------------------------
 .byte   PATT
  .word Label_01135E10
@  #08 @096   ----------------------------------------
 .byte   PATT
  .word Label_01135E19
@  #08 @097   ----------------------------------------
 .byte   PATT
  .word Label_01135E24
@  #08 @098   ----------------------------------------
 .byte   PATT
  .word Label_01135E2D
@  #08 @099   ----------------------------------------
 .byte   PATT
  .word Label_01135E24
@  #08 @100   ----------------------------------------
 .byte   PATT
  .word Label_01135E3D
@  #08 @101   ----------------------------------------
 .byte   PATT
  .word Label_01135E48
@  #08 @102   ----------------------------------------
 .byte   PATT
  .word Label_01135E54
@  #08 @103   ----------------------------------------
 .byte   PATT
  .word Label_01135E63
@  #08 @104   ----------------------------------------
 .byte   PATT
  .word Label_01135E6D
@  #08 @105   ----------------------------------------
 .byte   PATT
  .word Label_01135E48
@  #08 @106   ----------------------------------------
 .byte   PATT
  .word Label_01135E54
@  #08 @107   ----------------------------------------
 .byte   PATT
  .word Label_01135E63
@  #08 @108   ----------------------------------------
 .byte   PATT
  .word Label_01135E6D
@  #08 @109   ----------------------------------------
 .byte   PATT
  .word Label_01135E48
@  #08 @110   ----------------------------------------
 .byte   PATT
  .word Label_01135E54
@  #08 @111   ----------------------------------------
 .byte   PATT
  .word Label_01135E63
@  #08 @112   ----------------------------------------
 .byte   PATT
  .word Label_01135E6D
@  #08 @113   ----------------------------------------
 .byte   PATT
  .word Label_01135E48
@  #08 @114   ----------------------------------------
 .byte   PATT
  .word Label_01135E54
@  #08 @115   ----------------------------------------
 .byte   PATT
  .word Label_01135E63
@  #08 @116   ----------------------------------------
 .byte   PATT
  .word Label_01135E6D
@  #08 @117   ----------------------------------------
 .byte   PATT
  .word Label_01135EB1
@  #08 @118   ----------------------------------------
 .byte   PATT
  .word Label_01135EC9
@  #08 @119   ----------------------------------------
 .byte   PATT
  .word Label_01135EE2
@  #08 @120   ----------------------------------------
 .byte   PATT
  .word Label_01135EFA
@  #08 @121   ----------------------------------------
 .byte   PATT
  .word Label_01135F1A
@  #08 @122   ----------------------------------------
 .byte   PATT
  .word Label_01135F33
@  #08 @123   ----------------------------------------
 .byte   PATT
  .word Label_01135F51
@  #08 @124   ----------------------------------------
 .byte   PATT
  .word Label_01135F62
@  #08 @125   ----------------------------------------
 .byte   EOT
 .byte   Gs4
 .byte   W01
@  #08 @126   ----------------------------------------
 .byte   PATT
  .word Label_01135F70
@  #08 @127   ----------------------------------------
 .byte   PATT
  .word Label_01135E05
@  #08 @128   ----------------------------------------
 .byte   PATT
  .word Label_01135F7F
@  #08 @129   ----------------------------------------
 .byte   PATT
  .word Label_01135F89
@  #08 @130   ----------------------------------------
 .byte   PATT
  .word Label_01135F70
@  #08 @131   ----------------------------------------
 .byte   PATT
  .word Label_01135F9A
@  #08 @132   ----------------------------------------
 .byte   PATT
  .word Label_01135F7F
@  #08 @133   ----------------------------------------
 .byte   PATT
  .word Label_01135E2D
@  #08 @134   ----------------------------------------
 .byte   N23 ,Cs1 ,v096
 .byte   W23
 .byte   FINE

@**************** Track 9 (Midi-Chn.8) ****************@

.align 2, 0
song0B_009:
@  #09 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   VOICE , 24
 .byte   PAN , c_v+3
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds4
 .byte   W06
@  #09 @001   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cn5
 .byte   W06
@  #09 @002   ----------------------------------------
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   N02 ,As5 ,v096
 .byte   W03
 .byte   Cn6
 .byte   W03
 .byte   N05 ,As4 ,v080
 .byte   N02 ,Cs6 ,v096
 .byte   W03
 .byte   Ds6
 .byte   W03
@  #09 @003   ----------------------------------------
 .byte   N05 ,Fn4 ,v080
 .byte   N05 ,Fn6 ,v096
 .byte   W06
 .byte   As4 ,v080
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn4
 .byte   W06
@  #09 @004   ----------------------------------------
 .byte   As4
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn5
 .byte   W06
@  #09 @005   ----------------------------------------
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
@  #09 @006   ----------------------------------------
 .byte   Bn3 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05 ,En4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
@  #09 @007   ----------------------------------------
 .byte   W12
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05 ,En4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W06
@  #09 @008   ----------------------------------------
 .byte   W06
 .byte   N11
 .byte   W18
 .byte   N05 ,An4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #09 @009   ----------------------------------------
 .byte   W78
 .byte   N05 ,As4 ,v080
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
@  #09 @010   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
Label_01136283:
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W12
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   As3
 .byte   W06
@  #09 @011   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W12
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   N02 ,Cs6 ,v096
 .byte   W03
 .byte   Ds6
 .byte   W03
 .byte   N05 ,As4 ,v080
 .byte   N02 ,En6 ,v096
 .byte   W03
 .byte   Fs6
 .byte   W03
@  #09 @012   ----------------------------------------
 .byte   N05 ,Gs6
 .byte   W78
 .byte   As4 ,v080
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
@  #09 @013   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W12
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   As3
 .byte   W06
@  #09 @014   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N01 ,En4
 .byte   W01
 .byte   Fs4
 .byte   W02
 .byte   Gs4
 .byte   W01
 .byte   As4
 .byte   W02
 .byte   Bn4
 .byte   W01
 .byte   Cs5
 .byte   W02
 .byte   Ds5
 .byte   W01
 .byte   En5
 .byte   W02
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #09 @015   ----------------------------------------
Label_0113631B:
 .byte   N05 ,Cs4 ,v096
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   Fs4
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   En4
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   An4
 .byte   W05
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W07
 .byte   Fs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #09 @016   ----------------------------------------
Label_0113633E:
 .byte   W18
 .byte   N05 ,Ds5 ,v080
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W12
 .byte   Cs5
 .byte   W06
 .byte   PEND 
Label_01136352:
 .byte   N05 ,Fs5 ,v080
 .byte   W12
 .byte   As5
 .byte   W06
 .byte   Bn5
 .byte   W12
@  #09 @017   ----------------------------------------
 .byte   As5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   PEND 
Label_01136369:
 .byte   N05 ,Bn4 ,v080
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #09 @018   ----------------------------------------
 .byte   Ds5
 .byte   W18
 .byte   PEND 
Label_01136380:
 .byte   N05 ,Bn4 ,v080
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   PEND 
Label_0113639B:
 .byte   N05 ,Bn4 ,v080
 .byte   W18
@  #09 @019   ----------------------------------------
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Cs5
 .byte   W12
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   PEND 
Label_011363B0:
 .byte   N05 ,Fs5 ,v080
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   As5
 .byte   W06
 .byte   Bn5
 .byte   W06
 .byte   As5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   N05
 .byte   W06
@  #09 @020   ----------------------------------------
 .byte   Cs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   PEND 
Label_011363CB:
 .byte   N05 ,Fs5 ,v080
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
@  #09 @021   ----------------------------------------
 .byte   Ds5
 .byte   W06
 .byte   PEND 
Label_011363E6:
 .byte   N05 ,Fs5 ,v080
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   PEND 
Label_01136401:
 .byte   N05 ,En4 ,v096
 .byte   W12
 .byte   Fs3
 .byte   W06
@  #09 @022   ----------------------------------------
 .byte   En4
 .byte   W12
 .byte   Fs3
 .byte   W06
 .byte   En4
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   PEND 
Label_01136414:
 .byte   N05 ,Fs4 ,v096
 .byte   W12
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W12
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W18
@  #09 @023   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   PEND 
Label_01136427:
 .byte   N05 ,Gs4 ,v096
 .byte   W12
 .byte   Cs4
 .byte   W06
 .byte   Gs4
 .byte   W12
 .byte   Cs4
 .byte   W06
 .byte   Gs4
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   PEND 
Label_0113643A:
 .byte   N23 ,Fs4 ,v096
 .byte   W24
@  #09 @024   ----------------------------------------
 .byte   Gs4
 .byte   W24
 .byte   An4
 .byte   W24
 .byte   PEND 
Label_01136443:
 .byte   N68 ,Bn4 ,v096
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
@  #09 @025   ----------------------------------------
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   PEND 
Label_01136457:
 .byte   N23 ,Cs5 ,v112
 .byte   W24
 .byte   Ds5
 .byte   W24
 .byte   En5
 .byte   W24
 .byte   PEND 
Label_01136460:
 .byte   N68 ,En5 ,v112
 .byte   W72
 .byte   PEND 
@  #09 @026   ----------------------------------------
Label_01136465:
 .byte   N68 ,Fs5 ,v112
 .byte   W72
 .byte   PEND 
Label_0113646A:
 .byte   N17 ,Ds5 ,v112
 .byte   W18
 .byte   En5
 .byte   W18
@  #09 @027   ----------------------------------------
 .byte   TIE ,Bn5
 .byte   W36
 .byte   PEND 
Label_01136474:
 .byte   W68
@  #09 @028   ----------------------------------------
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Bn5
 .byte   W01
Label_0113647A:
 .byte   N11 ,Ds5 ,v112
 .byte   W12
 .byte   N05 ,En5
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Bn4 ,v127
 .byte   N11 ,Bn5
 .byte   W06
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   PEND 
Label_01136497:
 .byte   N05 ,Bn4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #09 @029   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W18
 .byte   PEND 
Label_011364AE:
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   En4
 .byte   W06
@  #09 @030   ----------------------------------------
 .byte   An3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   PEND 
@  #09 @031   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @032   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @033   ----------------------------------------
Label_011364D3:
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   PEND 
@  #09 @034   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @035   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @036   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @037   ----------------------------------------
Label_011364FD:
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W12
 .byte   N01 ,Fs3
 .byte   W01
 .byte   Gs3 ,v100
 .byte   W01
 .byte   W01
 .byte   An3
 .byte   W01
 .byte   Bn3 ,v104
 .byte   W01
 .byte   W01
 .byte   Cs4
 .byte   W01
 .byte   Ds4 ,v108
 .byte   W01
 .byte   W01
 .byte   En4
 .byte   W01
 .byte   Fs4 ,v112
 .byte   W01
 .byte   W01
 .byte   PEND 
Label_0113652B:
 .byte   N17 ,Gs4 ,v112
 .byte   W18
 .byte   Bn4
 .byte   W18
@  #09 @038   ----------------------------------------
 .byte   N23 ,Fs4
 .byte   W24
 .byte   N11 ,En4
 .byte   W12
 .byte   PEND 
Label_01136538:
 .byte   N17 ,Fs4 ,v112
 .byte   W18
 .byte   Bn4
 .byte   W18
 .byte   N23 ,En4
 .byte   W24
@  #09 @039   ----------------------------------------
 .byte   N11 ,Ds4
 .byte   W12
 .byte   PEND 
Label_01136545:
 .byte   N17 ,Ds4 ,v112
 .byte   W18
 .byte   TIE ,Cs4
 .byte   W18
 .byte   W36
 .byte   PEND 
@  #09 @040   ----------------------------------------
 .byte   PATT
  .word Label_01136474
@  #09 @041   ----------------------------------------
 .byte   EOT
 .byte   Cs4
 .byte   W01
@  #09 @042   ----------------------------------------
 .byte   PATT
  .word Label_0113652B
@  #09 @043   ----------------------------------------
Label_0113655B:
 .byte   N17 ,Fs4 ,v112
 .byte   W18
 .byte   Bn4
 .byte   W18
 .byte   N11 ,Ds5
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   PEND 
Label_01136569:
 .byte   N17 ,Ds5 ,v112
 .byte   W18
 .byte   TIE ,Cs5
 .byte   W18
@  #09 @044   ----------------------------------------
 .byte   W36
 .byte   PEND 
Label_01136572:
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W05
@  #09 @045   ----------------------------------------
 .byte   W04
 .byte   W04
 .byte   PEND 
 .byte   EOT
 .byte   Cs5
 .byte   W01
Label_01136586:
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   PEND 
Label_011365A1:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
@  #09 @046   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   PEND 
Label_011365BC:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
@  #09 @047   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   PEND 
Label_011365D7:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Gs3
 .byte   W06
@  #09 @048   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   PEND 
Label_011365F2:
 .byte   N05 ,Gs3 ,v096
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   PEND 
Label_0113660D:
 .byte   N05 ,Gs2 ,v096
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   En3
 .byte   W06
@  #09 @049   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   PEND 
Label_01136628:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
@  #09 @050   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   PEND 
Label_01136643:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #09 @051   ----------------------------------------
 .byte   En3
 .byte   W06
 .byte   PEND 
@  #09 @052   ----------------------------------------
 .byte   PATT
  .word Label_01136586
@  #09 @053   ----------------------------------------
Label_01136663:
 .byte   N05 ,Bn2 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   PEND 
@  #09 @054   ----------------------------------------
 .byte   PATT
  .word Label_011365BC
@  #09 @055   ----------------------------------------
 .byte   PATT
  .word Label_011365D7
@  #09 @056   ----------------------------------------
 .byte   PATT
  .word Label_011365F2
@  #09 @057   ----------------------------------------
 .byte   PATT
  .word Label_0113660D
@  #09 @058   ----------------------------------------
Label_01136692:
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   PEND 
Label_011366AD:
 .byte   N05 ,En3 ,v096
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
@  #09 @059   ----------------------------------------
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   PEND 
Label_011366C8:
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cn5
 .byte   W06
@  #09 @060   ----------------------------------------
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   PEND 
@  #09 @061   ----------------------------------------
 .byte   PATT
  .word Label_011366C8
@  #09 @062   ----------------------------------------
 .byte   PATT
  .word Label_011366C8
@  #09 @063   ----------------------------------------
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   N02 ,As5 ,v096
 .byte   W03
 .byte   Cn6
 .byte   W03
 .byte   N05 ,As4 ,v080
 .byte   N02 ,Cs6 ,v096
 .byte   W03
 .byte   Ds6
 .byte   W03
 .byte   N05 ,Fn4 ,v080
 .byte   N05 ,Fn6 ,v096
 .byte   W06
 .byte   As4 ,v080
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn4
 .byte   W06
@  #09 @064   ----------------------------------------
 .byte   As4
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
Label_01136731:
 .byte   N05 ,Fn4 ,v080
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn5
 .byte   W06
@  #09 @065   ----------------------------------------
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   PEND 
@  #09 @066   ----------------------------------------
 .byte   PATT
  .word Label_01136731
@  #09 @067   ----------------------------------------
 .byte   PATT
  .word Label_01136731
@  #09 @068   ----------------------------------------
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05 ,En4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #09 @069   ----------------------------------------
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05 ,En4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
@  #09 @070   ----------------------------------------
 .byte   N05 ,An4
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   W72
@  #09 @071   ----------------------------------------
 .byte   W06
 .byte   N05 ,As4 ,v080
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   GOTO
  .word Label_01136283
@  #09 @072   ----------------------------------------
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #09 @073   ----------------------------------------
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   N02 ,Cs6 ,v096
 .byte   W03
 .byte   Ds6
 .byte   W03
 .byte   N05 ,As4 ,v080
 .byte   N02 ,En6 ,v096
 .byte   W03
 .byte   Fs6
 .byte   W03
 .byte   N05 ,Gs6
 .byte   W72
@  #09 @074   ----------------------------------------
 .byte   W06
 .byte   As4 ,v080
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   As4
 .byte   W06
@  #09 @075   ----------------------------------------
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N01 ,En4
 .byte   W01
 .byte   Fs4
 .byte   W02
 .byte   Gs4
 .byte   W01
 .byte   As4
 .byte   W02
 .byte   Bn4
 .byte   W01
 .byte   Cs5
 .byte   W02
 .byte   Ds5
 .byte   W01
 .byte   En5
 .byte   W02
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #09 @076   ----------------------------------------
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #09 @077   ----------------------------------------
 .byte   PATT
  .word Label_0113631B
@  #09 @078   ----------------------------------------
 .byte   PATT
  .word Label_0113633E
@  #09 @079   ----------------------------------------
 .byte   PATT
  .word Label_01136352
@  #09 @080   ----------------------------------------
 .byte   PATT
  .word Label_01136369
@  #09 @081   ----------------------------------------
 .byte   PATT
  .word Label_01136380
@  #09 @082   ----------------------------------------
 .byte   PATT
  .word Label_0113639B
@  #09 @083   ----------------------------------------
 .byte   PATT
  .word Label_011363B0
@  #09 @084   ----------------------------------------
 .byte   PATT
  .word Label_011363CB
@  #09 @085   ----------------------------------------
 .byte   PATT
  .word Label_011363E6
@  #09 @086   ----------------------------------------
 .byte   PATT
  .word Label_01136401
@  #09 @087   ----------------------------------------
 .byte   PATT
  .word Label_01136414
@  #09 @088   ----------------------------------------
 .byte   PATT
  .word Label_01136427
@  #09 @089   ----------------------------------------
 .byte   PATT
  .word Label_0113643A
@  #09 @090   ----------------------------------------
 .byte   PATT
  .word Label_01136443
@  #09 @091   ----------------------------------------
 .byte   PATT
  .word Label_01136457
@  #09 @092   ----------------------------------------
 .byte   PATT
  .word Label_01136460
@  #09 @093   ----------------------------------------
 .byte   PATT
  .word Label_01136465
@  #09 @094   ----------------------------------------
 .byte   PATT
  .word Label_0113646A
@  #09 @095   ----------------------------------------
 .byte   PATT
  .word Label_01136474
@  #09 @096   ----------------------------------------
 .byte   EOT
 .byte   Bn5
 .byte   W01
@  #09 @097   ----------------------------------------
 .byte   PATT
  .word Label_0113647A
@  #09 @098   ----------------------------------------
 .byte   PATT
  .word Label_01136497
@  #09 @099   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @100   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @101   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @102   ----------------------------------------
 .byte   PATT
  .word Label_011364D3
@  #09 @103   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @104   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @105   ----------------------------------------
 .byte   PATT
  .word Label_011364AE
@  #09 @106   ----------------------------------------
 .byte   PATT
  .word Label_011364FD
@  #09 @107   ----------------------------------------
 .byte   PATT
  .word Label_0113652B
@  #09 @108   ----------------------------------------
 .byte   PATT
  .word Label_01136538
@  #09 @109   ----------------------------------------
 .byte   PATT
  .word Label_01136545
@  #09 @110   ----------------------------------------
 .byte   PATT
  .word Label_01136474
@  #09 @111   ----------------------------------------
 .byte   EOT
 .byte   Cs4
 .byte   W01
@  #09 @112   ----------------------------------------
 .byte   PATT
  .word Label_0113652B
@  #09 @113   ----------------------------------------
 .byte   PATT
  .word Label_0113655B
@  #09 @114   ----------------------------------------
 .byte   PATT
  .word Label_01136569
@  #09 @115   ----------------------------------------
 .byte   PATT
  .word Label_01136572
@  #09 @116   ----------------------------------------
 .byte   EOT
 .byte   Cs5
 .byte   W01
@  #09 @117   ----------------------------------------
 .byte   PATT
  .word Label_01136586
@  #09 @118   ----------------------------------------
 .byte   PATT
  .word Label_011365A1
@  #09 @119   ----------------------------------------
 .byte   PATT
  .word Label_011365BC
@  #09 @120   ----------------------------------------
 .byte   PATT
  .word Label_011365D7
@  #09 @121   ----------------------------------------
 .byte   PATT
  .word Label_011365F2
@  #09 @122   ----------------------------------------
 .byte   PATT
  .word Label_0113660D
@  #09 @123   ----------------------------------------
 .byte   PATT
  .word Label_01136628
@  #09 @124   ----------------------------------------
 .byte   PATT
  .word Label_01136643
@  #09 @125   ----------------------------------------
 .byte   PATT
  .word Label_01136586
@  #09 @126   ----------------------------------------
 .byte   PATT
  .word Label_01136663
@  #09 @127   ----------------------------------------
 .byte   PATT
  .word Label_011365BC
@  #09 @128   ----------------------------------------
 .byte   PATT
  .word Label_011365D7
@  #09 @129   ----------------------------------------
 .byte   PATT
  .word Label_011365F2
@  #09 @130   ----------------------------------------
 .byte   PATT
  .word Label_0113660D
@  #09 @131   ----------------------------------------
 .byte   PATT
  .word Label_01136692
@  #09 @132   ----------------------------------------
 .byte   PATT
  .word Label_011366AD
@  #09 @133   ----------------------------------------
 .byte   N23 ,Gs3 ,v096
 .byte   W23
 .byte   FINE

@**************** Track 10 (Midi-Chn.9) ****************@

.align 2, 0
song0B_010:
@  #10 @000   ----------------------------------------
 .byte   KEYSH , song0B_key+0
 .byte   VOICE , 121
 .byte   PAN , c_v+3
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   Dn3 ,v062
 .byte   Dn3 ,v062
 .byte   VOL , 32*song0B_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   TIE ,An2 ,v096
 .byte   W06
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @001   ----------------------------------------
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @002   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @003   ----------------------------------------
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @004   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @005   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @006   ----------------------------------------
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @007   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @008   ----------------------------------------
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v100
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v104
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v108
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   EOT
 .byte   An2
 .byte   N06 ,Fs1
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02 ,An2 ,v072
 .byte   W01
 .byte   N06 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v072
 .byte   W03
 .byte   N02 ,An2 ,v076
 .byte   W01
 .byte   N06 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   N02 ,An2 ,v084
 .byte   W01
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v084
 .byte   W03
 .byte   N02 ,An2 ,v088
 .byte   W01
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02 ,An2 ,v096
 .byte   W01
 .byte   N12 ,Cn1
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v096
 .byte   W03
 .byte   N02 ,An2 ,v100
 .byte   W01
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v104
 .byte   W03
 .byte   N02 ,An2 ,v108
 .byte   W01
 .byte   N06 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   TIE ,An2 ,v108
 .byte   W04
@  #10 @009   ----------------------------------------
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @010   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
Label_01136CCD:
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @011   ----------------------------------------
 .byte   N24 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @012   ----------------------------------------
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @013   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @014   ----------------------------------------
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @015   ----------------------------------------
 .byte   N12 ,Cn1 ,v112
 .byte   N18 ,Fs1 ,v036
 .byte   W12
 .byte   N06 ,Cn1 ,v112
 .byte   W06
 .byte   N12
 .byte   N18 ,Fs1 ,v036
 .byte   W12
 .byte   N06 ,Cn1 ,v112
 .byte   W06
 .byte   N12
 .byte   N18 ,Fs1 ,v036
 .byte   W12
 .byte   N12 ,Cn1 ,v112
 .byte   W06
 .byte   N18 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v112
 .byte   W12
 .byte   N12
 .byte   N12 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v036
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N24 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v036
 .byte   W11
 .byte   EOT
 .byte   An2
 .byte   W01
@  #10 @016   ----------------------------------------
Label_01136E77:
 .byte   N18 ,Cn1 ,v112
 .byte   N05 ,Fs1 ,v036
 .byte   TIE ,An2 ,v096
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N18 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N30 ,Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W01
 .byte   N30 ,Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N24 ,Cn1 ,v112
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N24 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W07
 .byte   PEND 
Label_01136EB8:
 .byte   N18 ,Cn1 ,v112
 .byte   N05 ,Fs1 ,v036
 .byte   W05
 .byte   N06
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N18 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N18 ,Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
@  #10 @017   ----------------------------------------
 .byte   N06
 .byte   W01
 .byte   N30 ,Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N12 ,Cn1 ,v112
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N24 ,Cn1 ,v112
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N24 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W07
 .byte   PEND 
Label_01136EFA:
 .byte   N18 ,Cn1 ,v112
 .byte   N05 ,Fs1 ,v036
 .byte   W05
 .byte   N06
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N18 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N30 ,Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W01
 .byte   N30 ,Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N24 ,Cn1 ,v112
 .byte   W05
@  #10 @018   ----------------------------------------
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N18 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W07
 .byte   PEND 
Label_01136F36:
 .byte   N18 ,Cn1 ,v112
 .byte   N05 ,Fs1 ,v036
 .byte   W05
 .byte   N06
 .byte   W01
 .byte   N30 ,Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W01
 .byte   Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N18 ,Cn1 ,v112
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N18 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N30 ,Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W01
 .byte   Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N06 ,Dn1 ,v080
 .byte   W05
 .byte   Fs1 ,v036
 .byte   W01
 .byte   N18 ,Dn1 ,v080
 .byte   W06
 .byte   PEND 
 .byte   EOT
 .byte   An2
Label_01136F81:
 .byte   N18 ,Cn1 ,v112
 .byte   N05 ,Fs1 ,v036
 .byte   N18 ,An2 ,v096
 .byte   W05
@  #10 @019   ----------------------------------------
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N18 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N30 ,Cn1 ,v112
 .byte   TIE ,An2 ,v096
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W01
 .byte   N30 ,Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N24 ,Cn1 ,v112
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N24 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W07
 .byte   PEND 
@  #10 @020   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @021   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @022   ----------------------------------------
Label_01136FCF:
 .byte   N18 ,Cn1 ,v112
 .byte   N05 ,Fs1 ,v036
 .byte   W05
 .byte   N06
 .byte   W01
 .byte   N30 ,Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W01
 .byte   Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N18 ,Cn1 ,v112
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N12 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N30 ,Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   PEND 
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1 ,v080
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v096
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v100
 .byte   W03
 .byte   N36 ,Dn1 ,v080
 .byte   TIE ,An2 ,v108
 .byte   W03
Label_01137040:
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N54 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @023   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N84 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
Label_01137068:
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @024   ----------------------------------------
 .byte   N60 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
@  #10 @025   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @026   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @027   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @028   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @029   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @030   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @031   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @032   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @033   ----------------------------------------
 .byte   EOT
 .byte   An2
Label_011370BF:
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   N18 ,An2 ,v096
 .byte   W06
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N54 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   TIE ,An2 ,v096
 .byte   W06
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N84 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
Label_011370F1:
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @034   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18
 .byte   W18
 .byte   PEND 
 .byte   EOT
 .byte   An2
@  #10 @035   ----------------------------------------
 .byte   PATT
  .word Label_01136E77
@  #10 @036   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @037   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @038   ----------------------------------------
 .byte   PATT
  .word Label_01136F36
@  #10 @039   ----------------------------------------
Label_01137130:
 .byte   N18 ,Cn1 ,v112
 .byte   N05 ,Fs1 ,v036
 .byte   W05
 .byte   N06
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N18 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N30 ,Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W01
 .byte   N30 ,Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N24 ,Cn1 ,v112
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N24 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W07
 .byte   PEND 
@  #10 @040   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @041   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @042   ----------------------------------------
 .byte   PATT
  .word Label_01136FCF
@  #10 @043   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1 ,v080
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v096
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v100
 .byte   W03
 .byte   N15 ,Dn1 ,v080
 .byte   TIE ,An2 ,v108
 .byte   W03
@  #10 @044   ----------------------------------------
 .byte   PATT
  .word Label_01137130
@  #10 @045   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @046   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @047   ----------------------------------------
 .byte   PATT
  .word Label_01136F36
@  #10 @048   ----------------------------------------
 .byte   PATT
  .word Label_01137130
@  #10 @049   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @050   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @051   ----------------------------------------
 .byte   PATT
  .word Label_01136FCF
@  #10 @052   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1 ,v080
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v096
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v100
 .byte   W03
 .byte   N36 ,Dn1 ,v080
 .byte   N03 ,An2 ,v108
 .byte   W03
Label_0113721B:
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   TIE ,An2 ,v096
 .byte   W06
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N54 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N84 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
@  #10 @053   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @054   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @055   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @056   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @057   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @058   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @059   ----------------------------------------
Label_01137266:
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
 .byte   EOT
 .byte   An2
 .byte   N36 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W03
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W03
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   An2 ,v096
 .byte   W03
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v100
 .byte   W03
 .byte   An2 ,v108
 .byte   W03
@  #10 @060   ----------------------------------------
 .byte   PATT
  .word Label_01136E77
@  #10 @061   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @062   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @063   ----------------------------------------
Label_011372C2:
 .byte   N18 ,Cn1 ,v112
 .byte   N05 ,Fs1 ,v036
 .byte   W05
 .byte   N06
 .byte   W01
 .byte   N30 ,Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W01
 .byte   Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N18 ,Cn1 ,v112
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N05
 .byte   W01
 .byte   N18 ,Dn1 ,v080
 .byte   W05
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N30 ,Cn1 ,v112
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W01
 .byte   Dn1 ,v080
 .byte   W05
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   W03
 .byte   N03
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   W03
 .byte   N15
 .byte   W03
 .byte   PEND 
@  #10 @064   ----------------------------------------
 .byte   PATT
  .word Label_01137130
@  #10 @065   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @066   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @067   ----------------------------------------
 .byte   PATT
  .word Label_01136FCF
@  #10 @068   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1 ,v080
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v096
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v100
 .byte   W03
 .byte   TIE ,Dn1 ,v080
 .byte   N03 ,An2 ,v108
 .byte   W03
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   TIE ,An2 ,v096
 .byte   W06
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @069   ----------------------------------------
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @070   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   N24 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @071   ----------------------------------------
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
Label_01137446:
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   PEND 
@  #10 @072   ----------------------------------------
 .byte   PATT
  .word Label_01137446
@  #10 @073   ----------------------------------------
Label_01137484:
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   PEND 
@  #10 @074   ----------------------------------------
 .byte   PATT
  .word Label_01137446
@  #10 @075   ----------------------------------------
Label_011374C6:
 .byte   N06 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   PEND 
@  #10 @076   ----------------------------------------
 .byte   PATT
  .word Label_011374C6
@  #10 @077   ----------------------------------------
 .byte   N06 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v100
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v104
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v108
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18 ,Cn1 ,v112
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @078   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   N06 ,Fs1
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02 ,An2 ,v072
 .byte   W01
 .byte   N06 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v072
 .byte   W03
 .byte   N02 ,An2 ,v076
 .byte   W01
 .byte   N06 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   N02 ,An2 ,v084
 .byte   W01
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v084
 .byte   W03
 .byte   N02 ,An2 ,v088
 .byte   W01
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02 ,An2 ,v096
 .byte   W01
 .byte   N12 ,Cn1
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v096
 .byte   W03
 .byte   N02 ,An2 ,v100
 .byte   W01
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   N03 ,An2 ,v104
 .byte   W03
 .byte   N02 ,An2 ,v108
 .byte   W01
 .byte   N06 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W02
 .byte   TIE ,An2 ,v108
 .byte   W04
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
@  #10 @079   ----------------------------------------
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   GOTO
  .word Label_01136CCD
@  #10 @080   ----------------------------------------
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @081   ----------------------------------------
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @082   ----------------------------------------
 .byte   PATT
  .word Label_01137484
@  #10 @083   ----------------------------------------
Label_011376B8:
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
@  #10 @084   ----------------------------------------
 .byte   PATT
  .word Label_011376B8
@  #10 @085   ----------------------------------------
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v112
 .byte   N18 ,Fs1 ,v036
 .byte   W12
 .byte   N06 ,Cn1 ,v112
 .byte   W06
 .byte   N12
 .byte   N18 ,Fs1 ,v036
 .byte   W12
@  #10 @086   ----------------------------------------
 .byte   N06 ,Cn1 ,v112
 .byte   W06
 .byte   N12
 .byte   N18 ,Fs1 ,v036
 .byte   W12
 .byte   N12 ,Cn1 ,v112
 .byte   W06
 .byte   N18 ,Fs1 ,v036
 .byte   W06
 .byte   N12 ,Cn1 ,v112
 .byte   W12
 .byte   EOT
 .byte   Dn1
 .byte   N12 ,Cn1
 .byte   N12 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v036
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N24 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v036
 .byte   W11
 .byte   EOT
 .byte   An2
 .byte   W01
@  #10 @087   ----------------------------------------
 .byte   PATT
  .word Label_01136E77
@  #10 @088   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @089   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @090   ----------------------------------------
 .byte   PATT
  .word Label_01136F36
@  #10 @091   ----------------------------------------
 .byte   EOT
 .byte   An2
@  #10 @092   ----------------------------------------
 .byte   PATT
  .word Label_01136F81
@  #10 @093   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @094   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @095   ----------------------------------------
 .byte   PATT
  .word Label_01136FCF
@  #10 @096   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1 ,v080
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v096
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v100
 .byte   W03
 .byte   N36 ,Dn1 ,v080
 .byte   TIE ,An2 ,v108
 .byte   W03
@  #10 @097   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @098   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @099   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @100   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @101   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @102   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @103   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @104   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @105   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @106   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @107   ----------------------------------------
 .byte   EOT
 .byte   An2
@  #10 @108   ----------------------------------------
 .byte   PATT
  .word Label_011370BF
@  #10 @109   ----------------------------------------
 .byte   PATT
  .word Label_011370F1
@  #10 @110   ----------------------------------------
 .byte   EOT
 .byte   An2
@  #10 @111   ----------------------------------------
 .byte   PATT
  .word Label_01136E77
@  #10 @112   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @113   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @114   ----------------------------------------
 .byte   PATT
  .word Label_01136F36
@  #10 @115   ----------------------------------------
 .byte   PATT
  .word Label_01137130
@  #10 @116   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @117   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @118   ----------------------------------------
 .byte   PATT
  .word Label_01136FCF
@  #10 @119   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1 ,v080
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v096
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v100
 .byte   W03
 .byte   N15 ,Dn1 ,v080
 .byte   TIE ,An2 ,v108
 .byte   W03
@  #10 @120   ----------------------------------------
 .byte   PATT
  .word Label_01137130
@  #10 @121   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @122   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @123   ----------------------------------------
 .byte   PATT
  .word Label_01136F36
@  #10 @124   ----------------------------------------
 .byte   PATT
  .word Label_01137130
@  #10 @125   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @126   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @127   ----------------------------------------
 .byte   PATT
  .word Label_01136FCF
@  #10 @128   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1 ,v080
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v096
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v100
 .byte   W03
 .byte   N36 ,Dn1 ,v080
 .byte   N03 ,An2 ,v108
 .byte   W03
@  #10 @129   ----------------------------------------
 .byte   PATT
  .word Label_0113721B
@  #10 @130   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @131   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @132   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @133   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @134   ----------------------------------------
 .byte   PATT
  .word Label_01137068
@  #10 @135   ----------------------------------------
 .byte   PATT
  .word Label_01137040
@  #10 @136   ----------------------------------------
 .byte   PATT
  .word Label_01137266
@  #10 @137   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   N36 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W03
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W03
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   An2 ,v096
 .byte   W03
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v100
 .byte   W03
 .byte   An2 ,v108
 .byte   W03
@  #10 @138   ----------------------------------------
 .byte   PATT
  .word Label_01136E77
@  #10 @139   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @140   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @141   ----------------------------------------
 .byte   PATT
  .word Label_011372C2
@  #10 @142   ----------------------------------------
 .byte   PATT
  .word Label_01137130
@  #10 @143   ----------------------------------------
 .byte   PATT
  .word Label_01136EB8
@  #10 @144   ----------------------------------------
 .byte   PATT
  .word Label_01136EFA
@  #10 @145   ----------------------------------------
 .byte   PATT
  .word Label_01136FCF
@  #10 @146   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1 ,v080
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W02
 .byte   N06 ,Fs1 ,v036
 .byte   W01
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Fs1 ,v036
 .byte   W01
 .byte   N03 ,Dn1 ,v080
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v096
 .byte   W03
 .byte   Dn1 ,v080
 .byte   N03 ,An2 ,v100
 .byte   W06
 .byte   W23
 .byte   FINE

@******************************************************@
	.align	2

Song_TempestOfSeasons_SurfingKyogre:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0B_pri	@ Priority
	.byte	song0B_rev	@ Reverb.
    
	.word	song0B_grp
    
	.word	song0B_001
	.word	song0B_002
	.word	song0B_003
	.word	song0B_004
	.word	song0B_005
	.word	song0B_006
	.word	song0B_007
	.word	song0B_008
	.word	song0B_009
	.word	song0B_010

	.end
