	.include "MPlayDef.s"

	.equ	song06_grp, AllInstrument
	.equ	song06_pri, 0
	.equ	song06_rev, 0
	.equ	song06_mvl, 127
	.equ	song06_key, 0
	.equ	song06_tbs, 1
	.equ	song06_exg, 0
	.equ	song06_cmp, 1

	.section .content_data
	.global	Song_BetweenHeavenAndEarth
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

.align 2, 0
song06_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   TEMPO , 116*song06_tbs/2
 .byte   VOICE , 71
 .byte   PAN , c_v+3
 .byte   VOL , 52*song06_mvl/mxv
 .byte   VOL , 52*song06_mvl/mxv
 .byte   W96
@  #01 @001   ----------------------------------------
 .byte   W96
@  #01 @002   ----------------------------------------
 .byte   W96
@  #01 @003   ----------------------------------------
 .byte   W96
@  #01 @004   ----------------------------------------
 .byte   W96
@  #01 @005   ----------------------------------------
 .byte   W96
@  #01 @006   ----------------------------------------
 .byte   W96
@  #01 @007   ----------------------------------------
 .byte   W96
@  #01 @008   ----------------------------------------
 .byte   W96
@  #01 @009   ----------------------------------------
Label_0112A33C:
 .byte   W96
@  #01 @010   ----------------------------------------
 .byte   W96
@  #01 @011   ----------------------------------------
 .byte   W96
@  #01 @012   ----------------------------------------
 .byte   W96
@  #01 @013   ----------------------------------------
 .byte   W96
@  #01 @014   ----------------------------------------
 .byte   W96
@  #01 @015   ----------------------------------------
 .byte   W96
@  #01 @016   ----------------------------------------
 .byte   W96
@  #01 @017   ----------------------------------------
 .byte   W96
@  #01 @018   ----------------------------------------
 .byte   W96
@  #01 @019   ----------------------------------------
 .byte   W96
@  #01 @020   ----------------------------------------
 .byte   W96
@  #01 @021   ----------------------------------------
 .byte   W96
@  #01 @022   ----------------------------------------
 .byte   W96
@  #01 @023   ----------------------------------------
 .byte   W96
@  #01 @024   ----------------------------------------
 .byte   W96
@  #01 @025   ----------------------------------------
 .byte   W96
@  #01 @026   ----------------------------------------
 .byte   W96
@  #01 @027   ----------------------------------------
 .byte   W96
@  #01 @028   ----------------------------------------
 .byte   W96
@  #01 @029   ----------------------------------------
Label_0112A350:
 .byte   W12
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   PEND 
@  #01 @030   ----------------------------------------
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #01 @031   ----------------------------------------
 .byte   PATT
  .word Label_0112A350
@  #01 @032   ----------------------------------------
 .byte   N11 ,Fs3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   En3
 .byte   W12
@  #01 @033   ----------------------------------------
Label_0112A388:
 .byte   W12
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #01 @034   ----------------------------------------
Label_0112A39A:
 .byte   W12
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #01 @035   ----------------------------------------
 .byte   PATT
  .word Label_0112A388
@  #01 @036   ----------------------------------------
 .byte   N11 ,An3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N17 ,Fn3 ,v080
 .byte   W18
 .byte   Gn3
 .byte   W18
 .byte   N11 ,En3
 .byte   W12
@  #01 @037   ----------------------------------------
 .byte   TIE ,Fn3
 .byte   W96
@  #01 @038   ----------------------------------------
Label_0112A3C7:
 .byte   W44
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fn3
 .byte   W01
 .byte   N17 ,Fn3 ,v080
 .byte   W18
 .byte   Gn3
 .byte   W18
 .byte   N11 ,En3
 .byte   W12
@  #01 @039   ----------------------------------------
 .byte   TIE ,Cn3
 .byte   W96
@  #01 @040   ----------------------------------------
 .byte   PATT
  .word Label_0112A3C7
@  #01 @041   ----------------------------------------
 .byte   EOT
 .byte   Cn3
 .byte   W01
 .byte   N17 ,Fn3 ,v080
 .byte   W18
 .byte   Gn3
 .byte   W18
 .byte   N11 ,En3
 .byte   W12
 .byte   N44 ,Fn3
 .byte   W48
@  #01 @042   ----------------------------------------
 .byte   Cn4
 .byte   W48
 .byte   N23
 .byte   W24
 .byte   As3
 .byte   W24
@  #01 @043   ----------------------------------------
 .byte   An3
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W12
 .byte   TIE ,An3
 .byte   W12
 .byte   W96
@  #01 @044   ----------------------------------------
 .byte   PATT
  .word Label_0112A3C7
@  #01 @045   ----------------------------------------
 .byte   EOT
 .byte   An3
 .byte   W01
 .byte   N17 ,Fn3 ,v080
 .byte   W18
 .byte   Gn3
 .byte   W18
 .byte   N11 ,En3
 .byte   W12
 .byte   N44 ,Fn3
 .byte   W48
@  #01 @046   ----------------------------------------
 .byte   Fn4
 .byte   W48
 .byte   N80 ,En4
 .byte   W72
@  #01 @047   ----------------------------------------
 .byte   W12
 .byte   N05 ,Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N80 ,Fn4
 .byte   W72
@  #01 @048   ----------------------------------------
 .byte   W12
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N80 ,En4
 .byte   W72
@  #01 @049   ----------------------------------------
 .byte   W12
 .byte   N05 ,Fn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N44 ,Dn4
 .byte   W48
 .byte   N17 ,As3
 .byte   W18
 .byte   Cn4
 .byte   W18
@  #01 @050   ----------------------------------------
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N44 ,En4
 .byte   W48
 .byte   N23 ,Fn4
 .byte   W24
 .byte   En4
 .byte   W24
@  #01 @051   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   N11 ,Dn4
 .byte   W12
 .byte   TIE
 .byte   W48
@  #01 @052   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #01 @053   ----------------------------------------
 .byte   PATT
  .word Label_0112A388
@  #01 @054   ----------------------------------------
 .byte   PATT
  .word Label_0112A39A
@  #01 @055   ----------------------------------------
 .byte   PATT
  .word Label_0112A388
@  #01 @056   ----------------------------------------
 .byte   N11 ,An3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
@  #01 @057   ----------------------------------------
Label_0112A46C:
 .byte   W12
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #01 @058   ----------------------------------------
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
@  #01 @059   ----------------------------------------
 .byte   PATT
  .word Label_0112A46C
@  #01 @060   ----------------------------------------
 .byte   N11 ,Cn4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
@  #01 @061   ----------------------------------------
 .byte   W96
@  #01 @062   ----------------------------------------
 .byte   W96
@  #01 @063   ----------------------------------------
 .byte   W96
@  #01 @064   ----------------------------------------
 .byte   W96
@  #01 @065   ----------------------------------------
 .byte   W96
@  #01 @066   ----------------------------------------
 .byte   W96
@  #01 @067   ----------------------------------------
 .byte   W96
@  #01 @068   ----------------------------------------
 .byte   W96
@  #01 @069   ----------------------------------------
 .byte   W96
@  #01 @070   ----------------------------------------
 .byte   W96
@  #01 @071   ----------------------------------------
 .byte   W96
@  #01 @072   ----------------------------------------
 .byte   W96
@  #01 @073   ----------------------------------------
 .byte   W96
@  #01 @074   ----------------------------------------
 .byte   W96
@  #01 @075   ----------------------------------------
 .byte   W96
@  #01 @076   ----------------------------------------
 .byte   W96
@  #01 @077   ----------------------------------------
 .byte   W72
 .byte   N23 ,Fn3
 .byte   W24
@  #01 @078   ----------------------------------------
 .byte   N17 ,Cn4
 .byte   W18
 .byte   As3
 .byte   W18
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N17 ,Cn4
 .byte   W18
 .byte   N23 ,As3
 .byte   W06
 .byte   W18
 .byte   N05 ,Cs4
 .byte   W06
@  #01 @079   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   Cn4
 .byte   W18
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N17 ,Cs4
 .byte   W18
 .byte   N28 ,Cn4
 .byte   W06
 .byte   W24
@  #01 @080   ----------------------------------------
 .byte   N17 ,As3
 .byte   W18
 .byte   Gn4
 .byte   W18
 .byte   N11 ,Gs4
 .byte   W12
 .byte   N17 ,Gn4
 .byte   W18
 .byte   Ds4
 .byte   W18
 .byte   N11 ,Cn4
 .byte   W12
@  #01 @081   ----------------------------------------
 .byte   N17 ,As3
 .byte   W18
 .byte   Ds4
 .byte   W18
 .byte   N11 ,Gn3
 .byte   W12
 .byte   Fn3
 .byte   W24
 .byte   N23 ,Ds3
 .byte   W24
@  #01 @082   ----------------------------------------
 .byte   Fn3
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W24
 .byte   N23 ,Fn3
 .byte   W24
@  #01 @083   ----------------------------------------
 .byte   Cn4
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W24
 .byte   N23 ,Fn3
 .byte   W24
 .byte   As3
 .byte   W24
@  #01 @084   ----------------------------------------
 .byte   Gn3
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   TIE ,Fn3
 .byte   W96
@  #01 @085   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #01 @086   ----------------------------------------
 .byte   W96
@  #01 @087   ----------------------------------------
 .byte   W96
@  #01 @088   ----------------------------------------
 .byte   W96
@  #01 @089   ----------------------------------------
 .byte   W96
@  #01 @090   ----------------------------------------
 .byte   W96
@  #01 @091   ----------------------------------------
 .byte   W96
@  #01 @092   ----------------------------------------
 .byte   GOTO
  .word Label_0112A33C
@  #01 @093   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

.align 2, 0
song06_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 49
 .byte   PAN , c_v+3
 .byte   VOL , 52*song06_mvl/mxv
 .byte   VOL , 52*song06_mvl/mxv
 .byte   W96
@  #02 @001   ----------------------------------------
 .byte   W96
@  #02 @002   ----------------------------------------
 .byte   W96
@  #02 @003   ----------------------------------------
 .byte   W96
@  #02 @004   ----------------------------------------
 .byte   W96
@  #02 @005   ----------------------------------------
 .byte   W96
@  #02 @006   ----------------------------------------
 .byte   W96
@  #02 @007   ----------------------------------------
 .byte   W96
@  #02 @008   ----------------------------------------
 .byte   W96
@  #02 @009   ----------------------------------------
Label_0112D4B2:
 .byte   N92 ,Fs2 ,v064
 .byte   W96
@  #02 @010   ----------------------------------------
 .byte   Gn2
 .byte   W96
@  #02 @011   ----------------------------------------
 .byte   N44 ,Fs2
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   N23 ,En2 ,v076
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   Dn2 ,v084
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
@  #02 @012   ----------------------------------------
 .byte   N92 ,Cs2 ,v088
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   N17 ,Dn3 ,v096
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W02
 .byte   En3
 .byte   W02
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   N11 ,Cs3
 .byte   W04
 .byte   W04
 .byte   W04
@  #02 @013   ----------------------------------------
 .byte   Bn1 ,v112
 .byte   TIE ,Dn3 ,v096
 .byte   W24
 .byte   N11 ,Bn1 ,v112
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @014   ----------------------------------------
Label_0112D508:
 .byte   N11 ,Bn1 ,v112
 .byte   W24
 .byte   N11
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Dn3
 .byte   W01
 .byte   N11 ,Bn1
 .byte   N17 ,Dn3 ,v096
 .byte   W18
 .byte   Bn1 ,v112
 .byte   N17 ,En3 ,v096
 .byte   W06
 .byte   W12
 .byte   N11 ,Cs3
 .byte   W12
@  #02 @015   ----------------------------------------
 .byte   Gn1 ,v112
 .byte   TIE ,An2 ,v096
 .byte   W24
 .byte   N11 ,Gn1 ,v112
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @016   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W23
 .byte   EOT
 .byte   An2
 .byte   W01
 .byte   N11 ,Gn1
 .byte   N17 ,Dn3 ,v096
 .byte   W18
 .byte   Gn1 ,v112
 .byte   N17 ,En3 ,v096
 .byte   W06
 .byte   W12
 .byte   N11 ,Cs3
 .byte   W12
@  #02 @017   ----------------------------------------
 .byte   En1 ,v112
 .byte   N44 ,Dn3 ,v096
 .byte   W24
 .byte   N11 ,En1 ,v112
 .byte   W24
 .byte   N11
 .byte   N44 ,An3 ,v096
 .byte   W18
 .byte   N17 ,En1 ,v112
 .byte   W06
 .byte   W24
@  #02 @018   ----------------------------------------
 .byte   N11
 .byte   N23 ,An3 ,v096
 .byte   W24
 .byte   N11 ,En1 ,v112
 .byte   N23 ,Gn3 ,v096
 .byte   W24
 .byte   N11 ,En1 ,v112
 .byte   N23 ,Fs3 ,v096
 .byte   W18
 .byte   N17 ,En1 ,v112
 .byte   W06
 .byte   N11 ,En3 ,v096
 .byte   W12
 .byte   TIE ,Fs3
 .byte   W12
@  #02 @019   ----------------------------------------
 .byte   N11 ,Bn1 ,v112
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @020   ----------------------------------------
 .byte   PATT
  .word Label_0112D508
@  #02 @021   ----------------------------------------
 .byte   EOT
 .byte   Fs3
 .byte   W01
 .byte   N11 ,Bn1 ,v112
 .byte   N17 ,Dn3 ,v096
 .byte   W18
 .byte   Bn1 ,v112
 .byte   N17 ,En3 ,v096
 .byte   W06
 .byte   W12
 .byte   N11 ,Cs3
 .byte   W12
 .byte   En1 ,v112
 .byte   N44 ,Dn3 ,v096
 .byte   W24
 .byte   N11 ,En1 ,v112
 .byte   W24
@  #02 @022   ----------------------------------------
 .byte   N11
 .byte   N44 ,Dn4
 .byte   W18
 .byte   N17 ,En1
 .byte   W06
 .byte   W24
 .byte   N11
 .byte   N80 ,Cs4
 .byte   W24
 .byte   N11 ,En1
 .byte   W24
@  #02 @023   ----------------------------------------
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W12
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N80 ,Dn4
 .byte   W24
 .byte   N11 ,Bn1
 .byte   W24
@  #02 @024   ----------------------------------------
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W12
 .byte   N05 ,En4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,An1
 .byte   N80 ,Cs4
 .byte   W24
 .byte   N11 ,An1
 .byte   W24
@  #02 @025   ----------------------------------------
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W12
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,En1
 .byte   N44 ,Bn3
 .byte   W24
 .byte   N11 ,En1
 .byte   W24
@  #02 @026   ----------------------------------------
 .byte   N11
 .byte   N17 ,Gn3
 .byte   W18
 .byte   En1
 .byte   N17 ,An3
 .byte   W06
 .byte   W12
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Fs1
 .byte   N44 ,Cs4
 .byte   W24
 .byte   N11 ,Fs1
 .byte   W24
@  #02 @027   ----------------------------------------
 .byte   N11
 .byte   N23 ,Dn4
 .byte   W18
 .byte   N17 ,Fs1
 .byte   W06
 .byte   N23 ,Cs4
 .byte   W24
 .byte   N11 ,Bn1
 .byte   N32 ,Cs4
 .byte   W24
 .byte   N11 ,Bn1
 .byte   W12
 .byte   Bn3
 .byte   W12
@  #02 @028   ----------------------------------------
 .byte   Bn1
 .byte   TIE ,Bn3
 .byte   W18
 .byte   N17 ,Bn1
 .byte   W06
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
@  #02 @029   ----------------------------------------
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W23
 .byte   EOT
 .byte   Bn3
 .byte   W01
Label_0112D628:
 .byte   N11 ,Bn1 ,v112
 .byte   W12
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Bn1 ,v112
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #02 @030   ----------------------------------------
 .byte   Bn1 ,v112
 .byte   N11 ,Cs3 ,v096
 .byte   W12
 .byte   En3
 .byte   W06
 .byte   N17 ,Bn1 ,v112
 .byte   W06
 .byte   N11 ,En3 ,v096
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   PEND 
 .byte   Bn1 ,v112
 .byte   W12
 .byte   N11
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   Bn1 ,v112
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   Bn1 ,v112
 .byte   N11 ,Cs3 ,v096
 .byte   W12
@  #02 @031   ----------------------------------------
 .byte   Bn1 ,v112
 .byte   N11 ,Cs3 ,v096
 .byte   W12
 .byte   An2
 .byte   W06
 .byte   N17 ,Bn1 ,v112
 .byte   W06
 .byte   N11 ,An2 ,v096
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #02 @032   ----------------------------------------
 .byte   PATT
  .word Label_0112D628
@  #02 @033   ----------------------------------------
 .byte   N11 ,Gn1 ,v112
 .byte   N11 ,Fs3 ,v096
 .byte   W12
 .byte   Gn1 ,v112
 .byte   N11 ,Fs3 ,v096
 .byte   W12
 .byte   N23 ,Gn1 ,v112
 .byte   N11 ,En3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   An1 ,v112
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   An1 ,v112
 .byte   N11 ,Cs3 ,v096
 .byte   W12
 .byte   N23 ,An1 ,v112
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   En3
 .byte   W12
@  #02 @034   ----------------------------------------
Label_0112D6A0:
 .byte   N11 ,Dn2 ,v112
 .byte   W12
 .byte   Fn3 ,v096
 .byte   W12
 .byte   Dn2 ,v112
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Dn2 ,v112
 .byte   N11 ,En3 ,v096
 .byte   W12
 .byte   Gn3
 .byte   W06
 .byte   N17 ,Dn2 ,v112
 .byte   W06
 .byte   N11 ,Gn3 ,v096
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #02 @035   ----------------------------------------
Label_0112D6C2:
 .byte   N11 ,Dn2 ,v112
 .byte   W12
 .byte   N11
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   Dn2 ,v112
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   Dn2 ,v112
 .byte   N11 ,En3 ,v096
 .byte   W12
 .byte   Dn2 ,v112
 .byte   N11 ,En3 ,v096
 .byte   W12
 .byte   Cn3
 .byte   W06
 .byte   N17 ,Dn2 ,v112
 .byte   W06
 .byte   N11 ,Cn3 ,v096
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #02 @036   ----------------------------------------
 .byte   PATT
  .word Label_0112D6A0
@  #02 @037   ----------------------------------------
 .byte   N11 ,As1 ,v112
 .byte   N11 ,An3 ,v096
 .byte   W12
 .byte   As1 ,v112
 .byte   N11 ,An3 ,v096
 .byte   W12
 .byte   N23 ,As1 ,v112
 .byte   N11 ,Gn3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn2 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
@  #02 @038   ----------------------------------------
Label_0112D70C:
 .byte   TIE ,Dn2 ,v064
 .byte   W96
 .byte   PEND 
@  #02 @039   ----------------------------------------
Label_0112D711:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Dn2
 .byte   W01
@  #02 @040   ----------------------------------------
 .byte   N44 ,Dn2 ,v064
 .byte   W48
 .byte   N23 ,En2
 .byte   W24
 .byte   Fn2
 .byte   W24
@  #02 @041   ----------------------------------------
 .byte   N92 ,En2
 .byte   W96
@  #02 @042   ----------------------------------------
 .byte   PATT
  .word Label_0112D70C
@  #02 @043   ----------------------------------------
 .byte   PATT
  .word Label_0112D711
@  #02 @044   ----------------------------------------
 .byte   EOT
 .byte   Dn2
 .byte   W01
@  #02 @045   ----------------------------------------
 .byte   PATT
  .word Label_0112D70C
@  #02 @046   ----------------------------------------
 .byte   PATT
  .word Label_0112D711
@  #02 @047   ----------------------------------------
 .byte   EOT
 .byte   Dn2
 .byte   W01
 .byte   TIE ,Dn2 ,v064
 .byte   W48
 .byte   N44 ,An3 ,v080
 .byte   W48
@  #02 @048   ----------------------------------------
 .byte   N92 ,Gn3
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Dn2
 .byte   W01
@  #02 @049   ----------------------------------------
 .byte   N92 ,Dn2 ,v064
 .byte   N44 ,Dn3 ,v080
 .byte   W48
 .byte   An3
 .byte   W48
@  #02 @050   ----------------------------------------
 .byte   N92 ,Cn2 ,v064
 .byte   N23 ,En3 ,v080
 .byte   N92 ,Cn4
 .byte   W24
 .byte   N44 ,Fn3
 .byte   W48
 .byte   N23 ,En3
 .byte   W24
@  #02 @051   ----------------------------------------
 .byte   N68 ,Gn2 ,v064
 .byte   N44 ,Fn3 ,v080
 .byte   W48
 .byte   Dn3
 .byte   N44 ,As3
 .byte   W24
 .byte   N23 ,An2 ,v064
 .byte   W24
@  #02 @052   ----------------------------------------
 .byte   Gn2
 .byte   N44 ,En3 ,v080
 .byte   N92 ,Cn4
 .byte   W24
 .byte   N23 ,Fn2 ,v064
 .byte   W24
 .byte   N44 ,En2
 .byte   N23 ,Fn3 ,v080
 .byte   W24
 .byte   En3
 .byte   W24
@  #02 @053   ----------------------------------------
 .byte   N32 ,En2 ,v064
 .byte   N32 ,En3 ,v080
 .byte   W36
 .byte   N11 ,Dn2 ,v064
 .byte   N11 ,Dn3 ,v080
 .byte   W12
 .byte   N44 ,Dn2 ,v064
 .byte   TIE ,Dn3 ,v080
 .byte   W48
@  #02 @054   ----------------------------------------
 .byte   N92 ,Dn2 ,v064
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Dn3
 .byte   W01
@  #02 @055   ----------------------------------------
 .byte   PATT
  .word Label_0112D6A0
@  #02 @056   ----------------------------------------
 .byte   PATT
  .word Label_0112D6C2
@  #02 @057   ----------------------------------------
 .byte   PATT
  .word Label_0112D6A0
@  #02 @058   ----------------------------------------
 .byte   N11 ,As1 ,v112
 .byte   N11 ,An3 ,v096
 .byte   W12
 .byte   As1 ,v112
 .byte   N11 ,An3 ,v096
 .byte   W12
 .byte   N23 ,As1 ,v112
 .byte   N11 ,Gn3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn2 ,v112
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   Cn2 ,v112
 .byte   N11 ,En3 ,v096
 .byte   W12
 .byte   N23 ,Cn2 ,v112
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   Gn3
 .byte   W12
@  #02 @059   ----------------------------------------
Label_0112D7DD:
 .byte   N11 ,Fn1 ,v112
 .byte   N11 ,Fn2
 .byte   W12
 .byte   Gs3 ,v096
 .byte   W12
 .byte   Fn1 ,v112
 .byte   N11 ,Fn2
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Fn1 ,v112
 .byte   N11 ,Fn2
 .byte   N11 ,Gn3 ,v096
 .byte   W12
 .byte   As3
 .byte   W06
 .byte   N17 ,Fn1 ,v112
 .byte   N17 ,Fn2
 .byte   W06
 .byte   N11 ,As3 ,v096
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #02 @060   ----------------------------------------
 .byte   Fn1 ,v112
 .byte   N11 ,Fn2
 .byte   W12
 .byte   Fn1
 .byte   N11 ,Fn2
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   Fn1 ,v112
 .byte   N11 ,Fn2
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   Fn1 ,v112
 .byte   N11 ,Fn2
 .byte   N11 ,Gn3 ,v096
 .byte   W12
 .byte   Fn1 ,v112
 .byte   N11 ,Fn2
 .byte   N11 ,Gn3 ,v096
 .byte   W12
 .byte   Ds3
 .byte   W06
 .byte   N17 ,Fn1 ,v112
 .byte   N17 ,Fn2
 .byte   W06
 .byte   N11 ,Ds3 ,v096
 .byte   W12
 .byte   Gn3
 .byte   W12
@  #02 @061   ----------------------------------------
 .byte   PATT
  .word Label_0112D7DD
@  #02 @062   ----------------------------------------
 .byte   N11 ,Cs1 ,v112
 .byte   N11 ,Cs2
 .byte   N11 ,Cn4 ,v096
 .byte   W12
 .byte   Cs1 ,v112
 .byte   N11 ,Cs2
 .byte   N11 ,Cn4 ,v096
 .byte   W12
 .byte   N23 ,Cs1 ,v112
 .byte   N23 ,Cs2
 .byte   N11 ,As3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Ds1 ,v112
 .byte   N11 ,Ds2
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   Ds1 ,v112
 .byte   N11 ,Ds2
 .byte   N11 ,Gn3 ,v096
 .byte   W12
 .byte   N23 ,Ds1 ,v112
 .byte   N23 ,Ds2
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   As3
 .byte   W12
@  #02 @063   ----------------------------------------
Label_0112D875:
 .byte   N44 ,Cs2 ,v064
 .byte   W48
 .byte   Ds2
 .byte   W48
 .byte   PEND 
@  #02 @064   ----------------------------------------
Label_0112D87C:
 .byte   N92 ,Fn1 ,v064
 .byte   W96
 .byte   PEND 
@  #02 @065   ----------------------------------------
 .byte   N44 ,As1
 .byte   W48
 .byte   Cn2
 .byte   W48
@  #02 @066   ----------------------------------------
 .byte   PATT
  .word Label_0112D87C
@  #02 @067   ----------------------------------------
 .byte   PATT
  .word Label_0112D875
@  #02 @068   ----------------------------------------
 .byte   PATT
  .word Label_0112D87C
@  #02 @069   ----------------------------------------
 .byte   N92 ,As1 ,v064
 .byte   W96
@  #02 @070   ----------------------------------------
 .byte   Cn2
 .byte   W96
@  #02 @071   ----------------------------------------
 .byte   W96
@  #02 @072   ----------------------------------------
 .byte   N11 ,Fn2 ,v112
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @073   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @074   ----------------------------------------
 .byte   N11 ,Cs2
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @075   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @076   ----------------------------------------
 .byte   N11 ,As1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @077   ----------------------------------------
 .byte   N11 ,Cn2
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   En2
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @078   ----------------------------------------
 .byte   N11 ,Fn2
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #02 @079   ----------------------------------------
 .byte   N11 ,Ds2
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   Dn2
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   N23 ,Fn2 ,v096
 .byte   W24
@  #02 @080   ----------------------------------------
 .byte   N11 ,Cs2 ,v112
 .byte   N17 ,Cn3 ,v096
 .byte   W18
 .byte   As2
 .byte   W06
 .byte   N11 ,Cs2 ,v112
 .byte   W12
 .byte   Fn2 ,v096
 .byte   W12
 .byte   Cs2 ,v112
 .byte   N17 ,Cn3 ,v096
 .byte   W18
 .byte   Cs2 ,v112
 .byte   N23 ,As2 ,v096
 .byte   W06
 .byte   W18
 .byte   N05 ,Cs3
 .byte   W06
@  #02 @081   ----------------------------------------
 .byte   N11 ,Ds2 ,v112
 .byte   N17 ,Cs3 ,v096
 .byte   W18
 .byte   Cn3
 .byte   W06
 .byte   N11 ,Ds2 ,v112
 .byte   W12
 .byte   Ds2 ,v096
 .byte   W12
 .byte   Ds2 ,v112
 .byte   N17 ,Cs3 ,v096
 .byte   W18
 .byte   Ds2 ,v112
 .byte   N28 ,Cn3 ,v096
 .byte   W06
 .byte   W24
@  #02 @082   ----------------------------------------
 .byte   N11 ,Cn2 ,v112
 .byte   N17 ,As2 ,v096
 .byte   W18
 .byte   N11 ,Cn2 ,v112
 .byte   N17 ,Gn3 ,v096
 .byte   W18
 .byte   N11 ,Cn2 ,v112
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   Cn2 ,v112
 .byte   N17 ,Gn3 ,v096
 .byte   W18
 .byte   N11 ,Cn2 ,v112
 .byte   N17 ,Ds3 ,v096
 .byte   W18
 .byte   N11 ,Cn2 ,v112
 .byte   N11 ,Cn3 ,v096
 .byte   W12
@  #02 @083   ----------------------------------------
 .byte   Fn2 ,v112
 .byte   N17 ,As2 ,v096
 .byte   W18
 .byte   N11 ,Fn2 ,v112
 .byte   N17 ,Ds3 ,v096
 .byte   W18
 .byte   N11 ,Fn2 ,v112
 .byte   N11 ,Gn2 ,v096
 .byte   W12
 .byte   Fn2 ,v112
 .byte   W24
 .byte   N23 ,Ds2 ,v096
 .byte   N23 ,Fn2 ,v112
 .byte   W24
@  #02 @084   ----------------------------------------
 .byte   Fn2 ,v096
 .byte   W24
 .byte   As1 ,v112
 .byte   N23 ,As2 ,v096
 .byte   W24
 .byte   N11 ,Cn2 ,v112
 .byte   N11 ,Gn2 ,v096
 .byte   W24
 .byte   N23 ,Fn2
 .byte   W24
@  #02 @085   ----------------------------------------
 .byte   As1 ,v112
 .byte   N23 ,Cn3 ,v096
 .byte   W24
 .byte   N11 ,Cn2 ,v112
 .byte   N11 ,Gn2 ,v096
 .byte   W24
 .byte   N23 ,Fn2
 .byte   W24
 .byte   As1 ,v112
 .byte   N23 ,As2 ,v096
 .byte   W24
@  #02 @086   ----------------------------------------
 .byte   N44 ,Cn2 ,v112
 .byte   N23 ,Gn2 ,v096
 .byte   W24
 .byte   Ds2
 .byte   W24
 .byte   TIE ,Fn2 ,v080
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #02 @087   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #02 @088   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   TIE ,Fn2 ,v064
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #02 @089   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #02 @090   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W11
 .byte   EOT
 .byte   W01
Label_0112D9DC:
 .byte   TIE ,Gn2 ,v080
 .byte   W96
 .byte   PEND 
@  #02 @091   ----------------------------------------
Label_0112D9E1:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Gn2
 .byte   W01
@  #02 @092   ----------------------------------------
 .byte   PATT
  .word Label_0112D9DC
@  #02 @093   ----------------------------------------
 .byte   PATT
  .word Label_0112D9E1
@  #02 @094   ----------------------------------------
 .byte   EOT
 .byte   Gn2
 .byte   W01
 .byte   GOTO
  .word Label_0112D4B2
@  #02 @095   ----------------------------------------
 .byte   N92 ,Fn2 ,v080
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

.align 2, 0
song06_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 44
 .byte   PAN , c_v-5
 .byte   VOL , 52*song06_mvl/mxv
 .byte   VOL , 52*song06_mvl/mxv
 .byte   W96
@  #03 @001   ----------------------------------------
 .byte   W96
@  #03 @002   ----------------------------------------
 .byte   W96
@  #03 @003   ----------------------------------------
 .byte   W96
@  #03 @004   ----------------------------------------
 .byte   W96
@  #03 @005   ----------------------------------------
 .byte   W96
@  #03 @006   ----------------------------------------
 .byte   W96
@  #03 @007   ----------------------------------------
 .byte   W96
@  #03 @008   ----------------------------------------
 .byte   W96
@  #03 @009   ----------------------------------------
Label_0112CD4A:
 .byte   W96
@  #03 @010   ----------------------------------------
 .byte   W96
@  #03 @011   ----------------------------------------
 .byte   W96
@  #03 @012   ----------------------------------------
 .byte   W96
@  #03 @013   ----------------------------------------
 .byte   W96
@  #03 @014   ----------------------------------------
 .byte   W96
@  #03 @015   ----------------------------------------
 .byte   W96
@  #03 @016   ----------------------------------------
 .byte   W96
@  #03 @017   ----------------------------------------
 .byte   W96
@  #03 @018   ----------------------------------------
 .byte   W96
@  #03 @019   ----------------------------------------
 .byte   W96
@  #03 @020   ----------------------------------------
 .byte   W96
@  #03 @021   ----------------------------------------
 .byte   W96
@  #03 @022   ----------------------------------------
 .byte   W96
@  #03 @023   ----------------------------------------
 .byte   W96
@  #03 @024   ----------------------------------------
 .byte   W96
@  #03 @025   ----------------------------------------
 .byte   W96
@  #03 @026   ----------------------------------------
 .byte   W96
@  #03 @027   ----------------------------------------
 .byte   W96
@  #03 @028   ----------------------------------------
 .byte   W96
@  #03 @029   ----------------------------------------
 .byte   W96
@  #03 @030   ----------------------------------------
 .byte   W96
@  #03 @031   ----------------------------------------
 .byte   W96
@  #03 @032   ----------------------------------------
 .byte   W96
@  #03 @033   ----------------------------------------
 .byte   W96
@  #03 @034   ----------------------------------------
 .byte   W96
@  #03 @035   ----------------------------------------
 .byte   W96
@  #03 @036   ----------------------------------------
 .byte   W96
@  #03 @037   ----------------------------------------
 .byte   W96
@  #03 @038   ----------------------------------------
 .byte   W96
@  #03 @039   ----------------------------------------
 .byte   W96
@  #03 @040   ----------------------------------------
 .byte   W96
@  #03 @041   ----------------------------------------
 .byte   W96
@  #03 @042   ----------------------------------------
 .byte   W96
@  #03 @043   ----------------------------------------
 .byte   W96
@  #03 @044   ----------------------------------------
 .byte   W96
@  #03 @045   ----------------------------------------
 .byte   W48
 .byte   N44 ,Fn4 ,v080
 .byte   W48
@  #03 @046   ----------------------------------------
 .byte   N80 ,En4
 .byte   W72
 .byte   W12
 .byte   N05 ,Dn4
 .byte   W06
 .byte   En4
 .byte   W06
@  #03 @047   ----------------------------------------
 .byte   N80 ,Fn4
 .byte   W72
 .byte   W12
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
@  #03 @048   ----------------------------------------
 .byte   N80 ,En4
 .byte   W72
 .byte   W12
 .byte   N05 ,Fn4
 .byte   W06
 .byte   En4
 .byte   W06
@  #03 @049   ----------------------------------------
 .byte   N44 ,Dn4
 .byte   W48
 .byte   N17 ,As3
 .byte   W18
 .byte   Cn4
 .byte   W18
 .byte   N11 ,Dn4
 .byte   W12
@  #03 @050   ----------------------------------------
 .byte   N44 ,En4
 .byte   W48
 .byte   N23 ,Fn4
 .byte   W24
 .byte   En4
 .byte   W24
@  #03 @051   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   N11 ,Dn4
 .byte   W12
 .byte   TIE
 .byte   W48
@  #03 @052   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @053   ----------------------------------------
 .byte   W96
@  #03 @054   ----------------------------------------
 .byte   W96
@  #03 @055   ----------------------------------------
 .byte   W96
@  #03 @056   ----------------------------------------
 .byte   W96
@  #03 @057   ----------------------------------------
 .byte   W96
@  #03 @058   ----------------------------------------
 .byte   W96
@  #03 @059   ----------------------------------------
 .byte   W96
@  #03 @060   ----------------------------------------
 .byte   W96
@  #03 @061   ----------------------------------------
 .byte   W96
@  #03 @062   ----------------------------------------
 .byte   W96
@  #03 @063   ----------------------------------------
 .byte   W96
@  #03 @064   ----------------------------------------
 .byte   W96
@  #03 @065   ----------------------------------------
 .byte   W96
@  #03 @066   ----------------------------------------
 .byte   W96
@  #03 @067   ----------------------------------------
 .byte   W96
@  #03 @068   ----------------------------------------
 .byte   W96
@  #03 @069   ----------------------------------------
 .byte   W96
@  #03 @070   ----------------------------------------
Label_0112CDBD:
 .byte   N17 ,Gs3 ,v112
 .byte   W18
 .byte   As3
 .byte   W18
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N17 ,Gs3
 .byte   W18
 .byte   Ds4
 .byte   W18
 .byte   N11 ,Fn4
 .byte   W12
 .byte   PEND 
@  #03 @071   ----------------------------------------
 .byte   N92 ,Cn4
 .byte   W96
@  #03 @072   ----------------------------------------
 .byte   PATT
  .word Label_0112CDBD
@  #03 @073   ----------------------------------------
Label_0112CDD7:
 .byte   N68 ,Cn4 ,v112
 .byte   W72
 .byte   N23 ,Fn3
 .byte   W24
 .byte   PEND 
@  #03 @074   ----------------------------------------
 .byte   N17 ,Cn4
 .byte   W18
 .byte   As3
 .byte   W18
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N17 ,Cn4
 .byte   W18
 .byte   N28 ,As3
 .byte   W06
 .byte   W24
@  #03 @075   ----------------------------------------
 .byte   N17 ,Cs4
 .byte   W18
 .byte   Cn4
 .byte   W18
 .byte   N11 ,En3
 .byte   W12
 .byte   N17 ,Cs4
 .byte   W18
 .byte   N28 ,Cn4
 .byte   W06
 .byte   W24
@  #03 @076   ----------------------------------------
 .byte   N23 ,As3
 .byte   W24
 .byte   Gs3
 .byte   W24
 .byte   N32 ,Gs4
 .byte   W36
 .byte   N11 ,Gn4
 .byte   W12
@  #03 @077   ----------------------------------------
 .byte   PATT
  .word Label_0112CDD7
@  #03 @078   ----------------------------------------
 .byte   N17 ,Cn4 ,v112
 .byte   W18
 .byte   As3
 .byte   W18
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N17 ,Cn4
 .byte   W18
 .byte   N23 ,As3
 .byte   W06
 .byte   W18
 .byte   N05 ,Cs4
 .byte   W06
@  #03 @079   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   Cn4
 .byte   W18
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N17 ,Cs4
 .byte   W18
 .byte   N28 ,Cn4
 .byte   W06
 .byte   W24
@  #03 @080   ----------------------------------------
 .byte   N17 ,As3
 .byte   W18
 .byte   Gn4
 .byte   W18
 .byte   N11 ,Gs4
 .byte   W12
 .byte   N17 ,Gn4
 .byte   W18
 .byte   Ds4
 .byte   W18
 .byte   N11 ,Cn4
 .byte   W12
@  #03 @081   ----------------------------------------
 .byte   N17 ,As3
 .byte   W18
 .byte   Ds4
 .byte   W18
 .byte   N11 ,Gn3
 .byte   W12
 .byte   Fn3
 .byte   W24
 .byte   N23 ,Ds3
 .byte   W24
@  #03 @082   ----------------------------------------
 .byte   Fn3
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W24
 .byte   N23 ,Fn3
 .byte   W24
@  #03 @083   ----------------------------------------
 .byte   Cn4
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W24
 .byte   N23 ,Fn3
 .byte   W24
 .byte   As3
 .byte   W24
@  #03 @084   ----------------------------------------
 .byte   Gn3
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   TIE ,Fn3
 .byte   W96
@  #03 @085   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @086   ----------------------------------------
 .byte   W96
@  #03 @087   ----------------------------------------
 .byte   W96
@  #03 @088   ----------------------------------------
 .byte   W96
@  #03 @089   ----------------------------------------
 .byte   W96
@  #03 @090   ----------------------------------------
 .byte   W96
@  #03 @091   ----------------------------------------
 .byte   W96
@  #03 @092   ----------------------------------------
 .byte   GOTO
  .word Label_0112CD4A
@  #03 @093   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

.align 2, 0
song06_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 56
 .byte   PAN , c_v+3
 .byte   VOL , 52*song06_mvl/mxv
 .byte   VOL , 52*song06_mvl/mxv
 .byte   W96
@  #04 @001   ----------------------------------------
 .byte   W96
@  #04 @002   ----------------------------------------
 .byte   W96
@  #04 @003   ----------------------------------------
 .byte   W96
@  #04 @004   ----------------------------------------
 .byte   W96
@  #04 @005   ----------------------------------------
 .byte   W96
@  #04 @006   ----------------------------------------
 .byte   W96
@  #04 @007   ----------------------------------------
 .byte   W96
@  #04 @008   ----------------------------------------
 .byte   W96
@  #04 @009   ----------------------------------------
Label_0112F3B2:
 .byte   N92 ,Bn0 ,v064
 .byte   W96
 .byte   PEND 
@  #04 @010   ----------------------------------------
 .byte   PATT
  .word Label_0112F3B2
@  #04 @011   ----------------------------------------
 .byte   N92 ,En1 ,v064
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
@  #04 @012   ----------------------------------------
 .byte   Fs1 ,v088
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
 .byte   W04
@  #04 @013   ----------------------------------------
Label_0112F3F1:
 .byte   N11 ,Bn0 ,v112
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #04 @014   ----------------------------------------
 .byte   PATT
  .word Label_0112F3F1
@  #04 @015   ----------------------------------------
Label_0112F402:
 .byte   N11 ,Gn0 ,v112
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #04 @016   ----------------------------------------
 .byte   PATT
  .word Label_0112F402
@  #04 @017   ----------------------------------------
Label_0112F413:
 .byte   N11 ,En0 ,v112
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #04 @018   ----------------------------------------
 .byte   PATT
  .word Label_0112F413
@  #04 @019   ----------------------------------------
 .byte   PATT
  .word Label_0112F3F1
@  #04 @020   ----------------------------------------
 .byte   PATT
  .word Label_0112F3F1
@  #04 @021   ----------------------------------------
 .byte   PATT
  .word Label_0112F413
@  #04 @022   ----------------------------------------
 .byte   PATT
  .word Label_0112F413
@  #04 @023   ----------------------------------------
 .byte   PATT
  .word Label_0112F3F1
@  #04 @024   ----------------------------------------
 .byte   N11 ,An0 ,v112
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @025   ----------------------------------------
 .byte   PATT
  .word Label_0112F413
@  #04 @026   ----------------------------------------
 .byte   N11 ,Fs0 ,v112
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @027   ----------------------------------------
 .byte   PATT
  .word Label_0112F3F1
@  #04 @028   ----------------------------------------
 .byte   PATT
  .word Label_0112F3F1
@  #04 @029   ----------------------------------------
 .byte   PATT
  .word Label_0112F3F1
@  #04 @030   ----------------------------------------
 .byte   N11 ,Bn0 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @031   ----------------------------------------
 .byte   PATT
  .word Label_0112F3F1
@  #04 @032   ----------------------------------------
 .byte   N11 ,Gn0 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,An0
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
@  #04 @033   ----------------------------------------
Label_0112F48A:
 .byte   N11 ,Dn1 ,v112
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #04 @034   ----------------------------------------
Label_0112F496:
 .byte   N11 ,Dn1 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #04 @035   ----------------------------------------
 .byte   PATT
  .word Label_0112F48A
@  #04 @036   ----------------------------------------
Label_0112F4AB:
 .byte   N11 ,As0 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #04 @037   ----------------------------------------
Label_0112F4BB:
 .byte   TIE ,Dn1 ,v064
 .byte   W96
 .byte   PEND 
@  #04 @038   ----------------------------------------
Label_0112F4C0:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Dn1
 .byte   W01
@  #04 @039   ----------------------------------------
 .byte   TIE ,As0 ,v064
 .byte   W96
@  #04 @040   ----------------------------------------
 .byte   PATT
  .word Label_0112F4C0
@  #04 @041   ----------------------------------------
 .byte   EOT
 .byte   As0
 .byte   W01
Label_0112F4D2:
 .byte   TIE ,Gn0 ,v064
 .byte   W96
 .byte   PEND 
@  #04 @042   ----------------------------------------
 .byte   PATT
  .word Label_0112F4C0
@  #04 @043   ----------------------------------------
 .byte   EOT
 .byte   Gn0
 .byte   W01
@  #04 @044   ----------------------------------------
 .byte   PATT
  .word Label_0112F4BB
@  #04 @045   ----------------------------------------
 .byte   PATT
  .word Label_0112F4C0
@  #04 @046   ----------------------------------------
 .byte   EOT
 .byte   Dn1
 .byte   W01
@  #04 @047   ----------------------------------------
 .byte   PATT
  .word Label_0112F4D2
@  #04 @048   ----------------------------------------
 .byte   PATT
  .word Label_0112F4C0
@  #04 @049   ----------------------------------------
 .byte   EOT
 .byte   Gn0
 .byte   W01
 .byte   N92 ,Dn1 ,v064
 .byte   W96
@  #04 @050   ----------------------------------------
Label_0112F4FD:
 .byte   N92 ,Cn1 ,v064
 .byte   W96
 .byte   PEND 
@  #04 @051   ----------------------------------------
 .byte   Gn0
 .byte   W96
@  #04 @052   ----------------------------------------
 .byte   An0
 .byte   W96
@  #04 @053   ----------------------------------------
 .byte   PATT
  .word Label_0112F4BB
@  #04 @054   ----------------------------------------
 .byte   PATT
  .word Label_0112F4C0
@  #04 @055   ----------------------------------------
 .byte   EOT
 .byte   Dn1
 .byte   W01
@  #04 @056   ----------------------------------------
 .byte   PATT
  .word Label_0112F48A
@  #04 @057   ----------------------------------------
 .byte   PATT
  .word Label_0112F496
@  #04 @058   ----------------------------------------
 .byte   PATT
  .word Label_0112F48A
@  #04 @059   ----------------------------------------
 .byte   PATT
  .word Label_0112F4AB
@  #04 @060   ----------------------------------------
Label_0112F527:
 .byte   N11 ,Fn0 ,v112
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #04 @061   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @062   ----------------------------------------
 .byte   PATT
  .word Label_0112F527
@  #04 @063   ----------------------------------------
 .byte   N11 ,Cs1 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,Ds1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
@  #04 @064   ----------------------------------------
 .byte   W96
@  #04 @065   ----------------------------------------
 .byte   W96
@  #04 @066   ----------------------------------------
 .byte   W96
@  #04 @067   ----------------------------------------
 .byte   W96
@  #04 @068   ----------------------------------------
 .byte   N44 ,Cs1 ,v064
 .byte   W48
 .byte   Ds1
 .byte   W48
@  #04 @069   ----------------------------------------
 .byte   N92 ,Fn1
 .byte   W96
@  #04 @070   ----------------------------------------
 .byte   As0
 .byte   W96
@  #04 @071   ----------------------------------------
 .byte   PATT
  .word Label_0112F4FD
@  #04 @072   ----------------------------------------
 .byte   W96
@  #04 @073   ----------------------------------------
 .byte   N11 ,Fn1 ,v112
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @074   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @075   ----------------------------------------
 .byte   N11 ,Cs1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @076   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @077   ----------------------------------------
 .byte   N11 ,As0
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @078   ----------------------------------------
 .byte   N11 ,Cn1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   En1
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @079   ----------------------------------------
 .byte   N11 ,Fn1
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @080   ----------------------------------------
 .byte   N11 ,Ds1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @081   ----------------------------------------
 .byte   N11 ,Cs1
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @082   ----------------------------------------
 .byte   N11 ,Ds1
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #04 @083   ----------------------------------------
 .byte   N11 ,Cn1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
@  #04 @084   ----------------------------------------
 .byte   Fn1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   N23
 .byte   W24
@  #04 @085   ----------------------------------------
 .byte   W24
 .byte   As0
 .byte   W24
 .byte   N11 ,Cn1
 .byte   W48
@  #04 @086   ----------------------------------------
 .byte   N23 ,As0
 .byte   W24
 .byte   N11 ,Cn1
 .byte   W24
 .byte   W24
 .byte   N23 ,As0
 .byte   W24
@  #04 @087   ----------------------------------------
 .byte   N44 ,Cn1
 .byte   W48
 .byte   TIE ,Fn1 ,v080
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #04 @088   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #04 @089   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   TIE ,Cs1 ,v064
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #04 @090   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #04 @091   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W11
 .byte   EOT
 .byte   W01
Label_0112F62E:
 .byte   TIE ,Cn1 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @092   ----------------------------------------
Label_0112F633:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Cn1
 .byte   W01
@  #04 @093   ----------------------------------------
 .byte   PATT
  .word Label_0112F62E
@  #04 @094   ----------------------------------------
 .byte   PATT
  .word Label_0112F633
@  #04 @095   ----------------------------------------
 .byte   EOT
 .byte   Cn1
 .byte   W01
 .byte   GOTO
  .word Label_0112F3B2
@  #04 @096   ----------------------------------------
 .byte   N92 ,Fn1 ,v080
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

.align 2, 0
song06_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 40
 .byte   PAN , c_v-8
 .byte   VOL , 52*song06_mvl/mxv
 .byte   VOL , 52*song06_mvl/mxv
 .byte   W96
@  #05 @001   ----------------------------------------
 .byte   W96
@  #05 @002   ----------------------------------------
 .byte   W96
@  #05 @003   ----------------------------------------
 .byte   W96
@  #05 @004   ----------------------------------------
 .byte   W96
@  #05 @005   ----------------------------------------
 .byte   W96
@  #05 @006   ----------------------------------------
 .byte   W96
@  #05 @007   ----------------------------------------
 .byte   W96
@  #05 @008   ----------------------------------------
 .byte   W96
@  #05 @009   ----------------------------------------
Label_0112DEBA:
 .byte   W96
@  #05 @010   ----------------------------------------
 .byte   W96
@  #05 @011   ----------------------------------------
 .byte   W96
@  #05 @012   ----------------------------------------
 .byte   W96
@  #05 @013   ----------------------------------------
 .byte   W96
@  #05 @014   ----------------------------------------
 .byte   W96
@  #05 @015   ----------------------------------------
 .byte   W96
@  #05 @016   ----------------------------------------
 .byte   W96
@  #05 @017   ----------------------------------------
 .byte   W96
@  #05 @018   ----------------------------------------
 .byte   W96
@  #05 @019   ----------------------------------------
 .byte   W96
@  #05 @020   ----------------------------------------
 .byte   W96
@  #05 @021   ----------------------------------------
 .byte   W96
@  #05 @022   ----------------------------------------
 .byte   W96
@  #05 @023   ----------------------------------------
 .byte   W96
@  #05 @024   ----------------------------------------
 .byte   W96
@  #05 @025   ----------------------------------------
 .byte   W96
@  #05 @026   ----------------------------------------
 .byte   W96
@  #05 @027   ----------------------------------------
 .byte   W96
@  #05 @028   ----------------------------------------
 .byte   W96
@  #05 @029   ----------------------------------------
Label_0112DECE:
 .byte   W12
 .byte   N11 ,Fs2 ,v096
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   N11 ,An2
 .byte   W12
 .byte   Fs2
 .byte   N11 ,An2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   PEND 
@  #05 @030   ----------------------------------------
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En2
 .byte   W12
@  #05 @031   ----------------------------------------
 .byte   PATT
  .word Label_0112DECE
@  #05 @032   ----------------------------------------
 .byte   N11 ,Dn2 ,v096
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Dn2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Dn2
 .byte   N11 ,An2
 .byte   W12
 .byte   Dn2
 .byte   N11 ,An2
 .byte   W12
 .byte   En2
 .byte   N11 ,An2
 .byte   W12
 .byte   En2
 .byte   N11 ,An2
 .byte   W12
 .byte   En2
 .byte   N11 ,An2
 .byte   W12
 .byte   En2
 .byte   N11 ,Cs3
 .byte   W12
@  #05 @033   ----------------------------------------
Label_0112DF22:
 .byte   W12
 .byte   N11 ,An2 ,v096
 .byte   N11 ,Dn3
 .byte   W12
 .byte   An2
 .byte   N11 ,Dn3
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   N11 ,Cn3
 .byte   W12
 .byte   An2
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #05 @034   ----------------------------------------
Label_0112DF3C:
 .byte   W12
 .byte   N11 ,An2 ,v096
 .byte   N11 ,Dn3
 .byte   W12
 .byte   An2
 .byte   N11 ,Dn3
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #05 @035   ----------------------------------------
 .byte   PATT
  .word Label_0112DF22
@  #05 @036   ----------------------------------------
 .byte   N11 ,Fn2 ,v096
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Fn2
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Fn2
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Fn2
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N17 ,Fn2 ,v080
 .byte   W18
 .byte   Gn2
 .byte   W18
 .byte   N11 ,En2
 .byte   W12
@  #05 @037   ----------------------------------------
 .byte   TIE ,Fn2
 .byte   W96
@  #05 @038   ----------------------------------------
Label_0112DF75:
 .byte   W44
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fn2
 .byte   W01
 .byte   N17 ,Fn2 ,v080
 .byte   W18
 .byte   Gn2
 .byte   W18
 .byte   N11 ,En2
 .byte   W12
@  #05 @039   ----------------------------------------
 .byte   TIE ,Cn2
 .byte   W96
@  #05 @040   ----------------------------------------
 .byte   PATT
  .word Label_0112DF75
@  #05 @041   ----------------------------------------
 .byte   EOT
 .byte   Cn2
 .byte   W01
 .byte   N17 ,Fn2 ,v080
 .byte   W18
 .byte   Gn2
 .byte   W18
 .byte   N11 ,En2
 .byte   W12
 .byte   N44 ,Fn2
 .byte   W48
@  #05 @042   ----------------------------------------
 .byte   Cn3
 .byte   W48
 .byte   N23
 .byte   W24
 .byte   As2
 .byte   W24
@  #05 @043   ----------------------------------------
 .byte   An2
 .byte   W24
 .byte   N11 ,Gn2
 .byte   W12
 .byte   TIE ,An2
 .byte   W12
 .byte   W96
@  #05 @044   ----------------------------------------
 .byte   PATT
  .word Label_0112DF75
@  #05 @045   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   W01
 .byte   N17 ,Fn2 ,v080
 .byte   W18
 .byte   Gn2
 .byte   W18
 .byte   N11 ,En2
 .byte   W12
 .byte   N44 ,Fn2
 .byte   W48
@  #05 @046   ----------------------------------------
 .byte   Fn3
 .byte   W48
 .byte   N80 ,En3
 .byte   W72
@  #05 @047   ----------------------------------------
 .byte   W12
 .byte   N05 ,Dn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   N80 ,Fn3
 .byte   W72
@  #05 @048   ----------------------------------------
 .byte   W12
 .byte   N05 ,Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N80 ,En3
 .byte   W72
@  #05 @049   ----------------------------------------
 .byte   W12
 .byte   N05 ,Fn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   N44 ,Dn3
 .byte   W48
 .byte   N17 ,As2
 .byte   W18
 .byte   Cn3
 .byte   W18
@  #05 @050   ----------------------------------------
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N44 ,En3
 .byte   W48
 .byte   N23 ,Fn3
 .byte   W24
 .byte   En3
 .byte   W24
@  #05 @051   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   N11 ,Dn3
 .byte   W12
 .byte   TIE
 .byte   W48
@  #05 @052   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #05 @053   ----------------------------------------
 .byte   PATT
  .word Label_0112DF22
@  #05 @054   ----------------------------------------
 .byte   PATT
  .word Label_0112DF3C
@  #05 @055   ----------------------------------------
 .byte   PATT
  .word Label_0112DF22
@  #05 @056   ----------------------------------------
 .byte   N11 ,Fn2 ,v096
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Fn2
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Fn2
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Fn2
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Gn2
 .byte   N11 ,En3
 .byte   W12
@  #05 @057   ----------------------------------------
Label_0112E02A:
 .byte   W12
 .byte   N11 ,Cn3 ,v096
 .byte   N11 ,Fn3
 .byte   W12
 .byte   Cn3
 .byte   N11 ,Fn3
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Cn3
 .byte   N11 ,Ds3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
@  #05 @058   ----------------------------------------
 .byte   W12
 .byte   Cn3
 .byte   N11 ,Fn3
 .byte   W12
 .byte   Cn3
 .byte   N11 ,Fn3
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As2
 .byte   W12
@  #05 @059   ----------------------------------------
 .byte   PATT
  .word Label_0112E02A
@  #05 @060   ----------------------------------------
 .byte   N11 ,Gs2 ,v096
 .byte   N11 ,Fn3
 .byte   W12
 .byte   Gs2
 .byte   N11 ,Fn3
 .byte   W12
 .byte   Gs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Gs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   As2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   As2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   As2
 .byte   W12
@  #05 @061   ----------------------------------------
 .byte   W96
@  #05 @062   ----------------------------------------
 .byte   W96
@  #05 @063   ----------------------------------------
 .byte   W96
@  #05 @064   ----------------------------------------
 .byte   W96
@  #05 @065   ----------------------------------------
 .byte   W96
@  #05 @066   ----------------------------------------
 .byte   W96
@  #05 @067   ----------------------------------------
 .byte   W96
@  #05 @068   ----------------------------------------
 .byte   W96
@  #05 @069   ----------------------------------------
 .byte   W96
@  #05 @070   ----------------------------------------
Label_0112E083:
 .byte   N17 ,Gs2 ,v096
 .byte   W18
 .byte   As2
 .byte   W18
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N17 ,Gs2
 .byte   W18
 .byte   Ds3
 .byte   W18
 .byte   N11 ,Fn3
 .byte   W12
 .byte   PEND 
@  #05 @071   ----------------------------------------
 .byte   N92 ,Cn3
 .byte   W96
@  #05 @072   ----------------------------------------
 .byte   PATT
  .word Label_0112E083
@  #05 @073   ----------------------------------------
Label_0112E09D:
 .byte   N68 ,Cn3 ,v096
 .byte   W72
 .byte   N23 ,Fn2
 .byte   W24
 .byte   PEND 
@  #05 @074   ----------------------------------------
 .byte   N17 ,Cn3
 .byte   W18
 .byte   As2
 .byte   W18
 .byte   N11 ,Fn2
 .byte   W12
 .byte   N17 ,Cn3
 .byte   W18
 .byte   N28 ,As2
 .byte   W06
 .byte   W24
@  #05 @075   ----------------------------------------
 .byte   N17 ,Cs3
 .byte   W18
 .byte   Cn3
 .byte   W18
 .byte   N11 ,En2
 .byte   W12
 .byte   N17 ,Cs3
 .byte   W18
 .byte   N28 ,Cn3
 .byte   W06
 .byte   W24
@  #05 @076   ----------------------------------------
 .byte   N23 ,As2
 .byte   W24
 .byte   Gs2
 .byte   W24
 .byte   N32 ,Gs3
 .byte   W36
 .byte   N11 ,Gn3
 .byte   W12
@  #05 @077   ----------------------------------------
 .byte   PATT
  .word Label_0112E09D
@  #05 @078   ----------------------------------------
 .byte   N17 ,Cn3 ,v096
 .byte   W18
 .byte   As2
 .byte   W18
 .byte   N11 ,Fn2
 .byte   W12
 .byte   N17 ,Cn3
 .byte   W18
 .byte   N23 ,As2
 .byte   W06
 .byte   W18
 .byte   N05 ,Cs3
 .byte   W06
@  #05 @079   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   Cn3
 .byte   W18
 .byte   N11 ,Ds2
 .byte   W12
 .byte   N17 ,Cs3
 .byte   W18
 .byte   N28 ,Cn3
 .byte   W06
 .byte   W24
@  #05 @080   ----------------------------------------
 .byte   N17 ,As2
 .byte   W18
 .byte   Gn3
 .byte   W18
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N17 ,Gn3
 .byte   W18
 .byte   Ds3
 .byte   W18
 .byte   N11 ,Cn3
 .byte   W12
@  #05 @081   ----------------------------------------
 .byte   N17 ,As2
 .byte   W18
 .byte   Ds3
 .byte   W18
 .byte   N11 ,Gn2
 .byte   W12
 .byte   Fn2
 .byte   W24
 .byte   N23 ,Ds2
 .byte   W24
@  #05 @082   ----------------------------------------
 .byte   Fn2
 .byte   W24
 .byte   As2
 .byte   W24
 .byte   N11 ,Gn2
 .byte   W24
 .byte   N23 ,Fn2
 .byte   W24
@  #05 @083   ----------------------------------------
 .byte   Cn3
 .byte   W24
 .byte   N11 ,Gn2
 .byte   W24
 .byte   N23 ,Fn2
 .byte   W24
 .byte   As2
 .byte   W24
@  #05 @084   ----------------------------------------
 .byte   Gn2
 .byte   W24
 .byte   Ds2
 .byte   W24
 .byte   TIE ,Fn2
 .byte   W96
@  #05 @085   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #05 @086   ----------------------------------------
 .byte   W96
@  #05 @087   ----------------------------------------
 .byte   W96
@  #05 @088   ----------------------------------------
 .byte   W96
@  #05 @089   ----------------------------------------
 .byte   W96
@  #05 @090   ----------------------------------------
 .byte   W96
@  #05 @091   ----------------------------------------
 .byte   W96
@  #05 @092   ----------------------------------------
 .byte   GOTO
  .word Label_0112DEBA
@  #05 @093   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

.align 2, 0
song06_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 58
 .byte   PAN , c_v+3
 .byte   VOL , 52*song06_mvl/mxv
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
Label_0112DD29:
 .byte   W96
@  #06 @010   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #06 @017   ----------------------------------------
 .byte   W96
@  #06 @018   ----------------------------------------
 .byte   W96
@  #06 @019   ----------------------------------------
 .byte   W96
@  #06 @020   ----------------------------------------
 .byte   W96
@  #06 @021   ----------------------------------------
 .byte   W96
@  #06 @022   ----------------------------------------
 .byte   W96
@  #06 @023   ----------------------------------------
 .byte   W96
@  #06 @024   ----------------------------------------
 .byte   W96
@  #06 @025   ----------------------------------------
 .byte   W96
@  #06 @026   ----------------------------------------
 .byte   W96
@  #06 @027   ----------------------------------------
 .byte   W96
@  #06 @028   ----------------------------------------
 .byte   W96
@  #06 @029   ----------------------------------------
Label_0112DD3D:
 .byte   N11 ,Bn0 ,v096
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #06 @030   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @031   ----------------------------------------
 .byte   PATT
  .word Label_0112DD3D
@  #06 @032   ----------------------------------------
 .byte   N11 ,Gn0 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,An0
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
@  #06 @033   ----------------------------------------
Label_0112DD6A:
 .byte   N11 ,Dn1 ,v096
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #06 @034   ----------------------------------------
Label_0112DD76:
 .byte   N11 ,Dn1 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #06 @035   ----------------------------------------
 .byte   PATT
  .word Label_0112DD6A
@  #06 @036   ----------------------------------------
Label_0112DD8B:
 .byte   N11 ,As0 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #06 @037   ----------------------------------------
 .byte   W96
@  #06 @038   ----------------------------------------
 .byte   W96
@  #06 @039   ----------------------------------------
 .byte   W96
@  #06 @040   ----------------------------------------
 .byte   W96
@  #06 @041   ----------------------------------------
 .byte   W96
@  #06 @042   ----------------------------------------
 .byte   W96
@  #06 @043   ----------------------------------------
 .byte   W96
@  #06 @044   ----------------------------------------
 .byte   W96
@  #06 @045   ----------------------------------------
 .byte   W96
@  #06 @046   ----------------------------------------
 .byte   W96
@  #06 @047   ----------------------------------------
 .byte   W96
@  #06 @048   ----------------------------------------
 .byte   W96
@  #06 @049   ----------------------------------------
 .byte   W96
@  #06 @050   ----------------------------------------
 .byte   W96
@  #06 @051   ----------------------------------------
 .byte   W96
@  #06 @052   ----------------------------------------
 .byte   W96
@  #06 @053   ----------------------------------------
 .byte   PATT
  .word Label_0112DD6A
@  #06 @054   ----------------------------------------
 .byte   PATT
  .word Label_0112DD76
@  #06 @055   ----------------------------------------
 .byte   PATT
  .word Label_0112DD6A
@  #06 @056   ----------------------------------------
 .byte   PATT
  .word Label_0112DD8B
@  #06 @057   ----------------------------------------
Label_0112DDBF:
 .byte   N11 ,Fn1 ,v096
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
 .byte   PEND 
@  #06 @058   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @059   ----------------------------------------
 .byte   PATT
  .word Label_0112DDBF
@  #06 @060   ----------------------------------------
 .byte   N11 ,Cs1 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,Ds1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
@  #06 @061   ----------------------------------------
 .byte   W96
@  #06 @062   ----------------------------------------
 .byte   W96
@  #06 @063   ----------------------------------------
 .byte   W96
@  #06 @064   ----------------------------------------
 .byte   W96
@  #06 @065   ----------------------------------------
 .byte   W96
@  #06 @066   ----------------------------------------
 .byte   W96
@  #06 @067   ----------------------------------------
 .byte   W96
@  #06 @068   ----------------------------------------
 .byte   W96
@  #06 @069   ----------------------------------------
 .byte   W96
@  #06 @070   ----------------------------------------
 .byte   N11 ,Fn1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @071   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @072   ----------------------------------------
 .byte   N11 ,Cs1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @073   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @074   ----------------------------------------
 .byte   N11 ,As0
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @075   ----------------------------------------
 .byte   N11 ,Cn1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   En1
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @076   ----------------------------------------
 .byte   PATT
  .word Label_0112DDBF
@  #06 @077   ----------------------------------------
 .byte   N11 ,Ds1 ,v096
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @078   ----------------------------------------
 .byte   N11 ,Cs1
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @079   ----------------------------------------
 .byte   N11 ,Ds1
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W18
 .byte   N17
 .byte   W06
 .byte   W24
@  #06 @080   ----------------------------------------
 .byte   N11 ,Cn1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
@  #06 @081   ----------------------------------------
 .byte   Fn1
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   N23
 .byte   W24
@  #06 @082   ----------------------------------------
 .byte   W24
 .byte   As0
 .byte   W24
 .byte   N11 ,Cn1
 .byte   W48
@  #06 @083   ----------------------------------------
 .byte   N23 ,As0
 .byte   W24
 .byte   N11 ,Cn1
 .byte   W24
 .byte   W24
 .byte   N23 ,As0
 .byte   W24
@  #06 @084   ----------------------------------------
 .byte   N44 ,Cn1
 .byte   W48
 .byte   W96
@  #06 @085   ----------------------------------------
 .byte   W96
@  #06 @086   ----------------------------------------
 .byte   W96
@  #06 @087   ----------------------------------------
 .byte   W96
@  #06 @088   ----------------------------------------
 .byte   W96
@  #06 @089   ----------------------------------------
 .byte   W96
@  #06 @090   ----------------------------------------
 .byte   W96
@  #06 @091   ----------------------------------------
 .byte   W96
@  #06 @092   ----------------------------------------
 .byte   GOTO
  .word Label_0112DD29
@  #06 @093   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

.align 2, 0
song06_007:
@  #07 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 47
 .byte   PAN , c_v-4
 .byte   VOL , 52*song06_mvl/mxv
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
 .byte   W96
@  #07 @007   ----------------------------------------
 .byte   W96
@  #07 @008   ----------------------------------------
 .byte   W96
@  #07 @009   ----------------------------------------
Label_0112BAF1:
 .byte   W96
@  #07 @010   ----------------------------------------
 .byte   W96
@  #07 @011   ----------------------------------------
 .byte   W96
@  #07 @012   ----------------------------------------
 .byte   W48
 .byte   N02 ,Fs1 ,v064
 .byte   W02
 .byte   Fs1 ,v068
 .byte   W03
 .byte   Fs1 ,v072
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Fs1 ,v076
 .byte   W03
 .byte   Fs1 ,v080
 .byte   W03
 .byte   Fs1 ,v084
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Fs1 ,v088
 .byte   W03
 .byte   Fs1 ,v092
 .byte   W03
 .byte   Fs1 ,v096
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Fs1 ,v100
 .byte   W03
 .byte   Fs1 ,v104
 .byte   W03
 .byte   Fs1 ,v108
 .byte   W03
 .byte   N02
 .byte   W04
@  #07 @013   ----------------------------------------
 .byte   N92 ,Bn1 ,v112
 .byte   W96
@  #07 @014   ----------------------------------------
 .byte   W96
@  #07 @015   ----------------------------------------
 .byte   W96
@  #07 @016   ----------------------------------------
 .byte   W96
@  #07 @017   ----------------------------------------
 .byte   W96
@  #07 @018   ----------------------------------------
 .byte   W96
@  #07 @019   ----------------------------------------
 .byte   W96
@  #07 @020   ----------------------------------------
 .byte   W96
@  #07 @021   ----------------------------------------
 .byte   W96
@  #07 @022   ----------------------------------------
 .byte   W96
@  #07 @023   ----------------------------------------
 .byte   W96
@  #07 @024   ----------------------------------------
 .byte   W96
@  #07 @025   ----------------------------------------
 .byte   W96
@  #07 @026   ----------------------------------------
 .byte   W96
@  #07 @027   ----------------------------------------
 .byte   W96
@  #07 @028   ----------------------------------------
 .byte   W96
@  #07 @029   ----------------------------------------
 .byte   W96
@  #07 @030   ----------------------------------------
 .byte   W96
@  #07 @031   ----------------------------------------
 .byte   W96
@  #07 @032   ----------------------------------------
 .byte   W96
@  #07 @033   ----------------------------------------
 .byte   W96
@  #07 @034   ----------------------------------------
 .byte   W96
@  #07 @035   ----------------------------------------
 .byte   W96
@  #07 @036   ----------------------------------------
 .byte   W96
@  #07 @037   ----------------------------------------
 .byte   W96
@  #07 @038   ----------------------------------------
 .byte   W96
@  #07 @039   ----------------------------------------
 .byte   W96
@  #07 @040   ----------------------------------------
 .byte   W96
@  #07 @041   ----------------------------------------
 .byte   W96
@  #07 @042   ----------------------------------------
 .byte   W96
@  #07 @043   ----------------------------------------
 .byte   W96
@  #07 @044   ----------------------------------------
 .byte   W96
@  #07 @045   ----------------------------------------
 .byte   W96
@  #07 @046   ----------------------------------------
 .byte   W96
@  #07 @047   ----------------------------------------
 .byte   W96
@  #07 @048   ----------------------------------------
 .byte   W96
@  #07 @049   ----------------------------------------
 .byte   W96
@  #07 @050   ----------------------------------------
 .byte   W96
@  #07 @051   ----------------------------------------
 .byte   W96
@  #07 @052   ----------------------------------------
 .byte   W96
@  #07 @053   ----------------------------------------
 .byte   W96
@  #07 @054   ----------------------------------------
 .byte   W96
@  #07 @055   ----------------------------------------
 .byte   W96
@  #07 @056   ----------------------------------------
 .byte   W96
@  #07 @057   ----------------------------------------
 .byte   W96
@  #07 @058   ----------------------------------------
 .byte   W96
@  #07 @059   ----------------------------------------
 .byte   W96
@  #07 @060   ----------------------------------------
 .byte   W96
@  #07 @061   ----------------------------------------
 .byte   W96
@  #07 @062   ----------------------------------------
 .byte   W96
@  #07 @063   ----------------------------------------
 .byte   W96
@  #07 @064   ----------------------------------------
 .byte   W96
@  #07 @065   ----------------------------------------
 .byte   W96
@  #07 @066   ----------------------------------------
 .byte   W96
@  #07 @067   ----------------------------------------
 .byte   W96
@  #07 @068   ----------------------------------------
 .byte   W96
@  #07 @069   ----------------------------------------
 .byte   N02 ,Cn2 ,v052
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v056
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v060
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v064
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v068
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v072
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v076
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v084
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v088
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v096
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v100
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v108
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn2 ,v112
 .byte   W04
@  #07 @070   ----------------------------------------
 .byte   N92 ,Fn1
 .byte   W96
@  #07 @071   ----------------------------------------
 .byte   W96
@  #07 @072   ----------------------------------------
 .byte   W96
@  #07 @073   ----------------------------------------
 .byte   W96
@  #07 @074   ----------------------------------------
 .byte   W96
@  #07 @075   ----------------------------------------
 .byte   W96
@  #07 @076   ----------------------------------------
 .byte   W96
@  #07 @077   ----------------------------------------
 .byte   W96
@  #07 @078   ----------------------------------------
 .byte   W96
@  #07 @079   ----------------------------------------
 .byte   W96
@  #07 @080   ----------------------------------------
 .byte   N17 ,Cn2 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
@  #07 @081   ----------------------------------------
 .byte   N17 ,Fn1
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N02
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W04
@  #07 @082   ----------------------------------------
 .byte   W48
 .byte   N23 ,Cn2
 .byte   W48
@  #07 @083   ----------------------------------------
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   W48
@  #07 @084   ----------------------------------------
 .byte   N02
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W04
 .byte   N92 ,Fn1
 .byte   W96
@  #07 @085   ----------------------------------------
 .byte   W96
@  #07 @086   ----------------------------------------
 .byte   W96
@  #07 @087   ----------------------------------------
 .byte   W96
@  #07 @088   ----------------------------------------
 .byte   W96
@  #07 @089   ----------------------------------------
 .byte   W96
@  #07 @090   ----------------------------------------
 .byte   W96
@  #07 @091   ----------------------------------------
 .byte   W96
@  #07 @092   ----------------------------------------
 .byte   GOTO
  .word Label_0112BAF1
@  #07 @093   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

.align 2, 0
song06_008:
@  #08 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 1
 .byte   PAN , c_v+8
 .byte   VOL , 52*song06_mvl/mxv
 .byte   W96
@  #08 @001   ----------------------------------------
 .byte   W96
@  #08 @002   ----------------------------------------
 .byte   W96
@  #08 @003   ----------------------------------------
 .byte   W96
@  #08 @004   ----------------------------------------
 .byte   W96
@  #08 @005   ----------------------------------------
 .byte   W96
@  #08 @006   ----------------------------------------
 .byte   W96
@  #08 @007   ----------------------------------------
 .byte   W96
@  #08 @008   ----------------------------------------
 .byte   W96
@  #08 @009   ----------------------------------------
Label_0112AD41:
 .byte   N68 ,Bn3 ,v064
 .byte   W72
 .byte   N05 ,Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #08 @010   ----------------------------------------
 .byte   N68 ,Cs4
 .byte   W72
 .byte   N05 ,Cs3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #08 @011   ----------------------------------------
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N05 ,Dn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N17 ,Bn3
 .byte   W18
 .byte   N05 ,Dn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N17 ,Bn3
 .byte   W18
@  #08 @012   ----------------------------------------
 .byte   N05 ,An5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Cs2
 .byte   W06
@  #08 @013   ----------------------------------------
 .byte   W96
@  #08 @014   ----------------------------------------
 .byte   W96
@  #08 @015   ----------------------------------------
 .byte   W96
@  #08 @016   ----------------------------------------
 .byte   W96
@  #08 @017   ----------------------------------------
 .byte   W96
@  #08 @018   ----------------------------------------
 .byte   W96
@  #08 @019   ----------------------------------------
 .byte   W96
@  #08 @020   ----------------------------------------
 .byte   W96
@  #08 @021   ----------------------------------------
 .byte   W96
@  #08 @022   ----------------------------------------
 .byte   W96
@  #08 @023   ----------------------------------------
 .byte   W96
@  #08 @024   ----------------------------------------
 .byte   W96
@  #08 @025   ----------------------------------------
 .byte   W96
@  #08 @026   ----------------------------------------
 .byte   W96
@  #08 @027   ----------------------------------------
 .byte   W96
@  #08 @028   ----------------------------------------
 .byte   W96
@  #08 @029   ----------------------------------------
 .byte   W96
@  #08 @030   ----------------------------------------
 .byte   W96
@  #08 @031   ----------------------------------------
 .byte   W96
@  #08 @032   ----------------------------------------
 .byte   W96
@  #08 @033   ----------------------------------------
 .byte   W96
@  #08 @034   ----------------------------------------
 .byte   W96
@  #08 @035   ----------------------------------------
 .byte   W96
@  #08 @036   ----------------------------------------
 .byte   W96
@  #08 @037   ----------------------------------------
Label_0112ADAA:
 .byte   W12
 .byte   N11 ,Cn6 ,v064
 .byte   W48
 .byte   N11
 .byte   W36
 .byte   PEND 
@  #08 @038   ----------------------------------------
 .byte   PATT
  .word Label_0112ADAA
@  #08 @039   ----------------------------------------
 .byte   PATT
  .word Label_0112ADAA
@  #08 @040   ----------------------------------------
 .byte   W12
 .byte   N05 ,An5 ,v064
 .byte   W06
 .byte   As5
 .byte   W06
 .byte   Cn6
 .byte   W06
 .byte   As5
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   Gn5
 .byte   W54
@  #08 @041   ----------------------------------------
 .byte   PATT
  .word Label_0112ADAA
@  #08 @042   ----------------------------------------
 .byte   PATT
  .word Label_0112ADAA
@  #08 @043   ----------------------------------------
 .byte   PATT
  .word Label_0112ADAA
@  #08 @044   ----------------------------------------
 .byte   N11 ,Dn5 ,v064
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   Dn6
 .byte   W06
 .byte   An5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   N17 ,An5
 .byte   W18
 .byte   Cn6
 .byte   W18
 .byte   N11 ,Gn5
 .byte   W12
@  #08 @045   ----------------------------------------
 .byte   PATT
  .word Label_0112ADAA
@  #08 @046   ----------------------------------------
 .byte   PATT
  .word Label_0112ADAA
@  #08 @047   ----------------------------------------
Label_0112ADFC:
 .byte   W12
 .byte   N11 ,Cn5 ,v064
 .byte   W48
 .byte   N11
 .byte   W36
 .byte   PEND 
@  #08 @048   ----------------------------------------
 .byte   PATT
  .word Label_0112ADFC
@  #08 @049   ----------------------------------------
 .byte   PATT
  .word Label_0112ADFC
@  #08 @050   ----------------------------------------
 .byte   PATT
  .word Label_0112ADFC
@  #08 @051   ----------------------------------------
 .byte   PATT
  .word Label_0112ADFC
@  #08 @052   ----------------------------------------
 .byte   W12
 .byte   N11 ,Cn5 ,v064
 .byte   W84
@  #08 @053   ----------------------------------------
 .byte   W96
@  #08 @054   ----------------------------------------
 .byte   W96
@  #08 @055   ----------------------------------------
 .byte   W96
@  #08 @056   ----------------------------------------
 .byte   W96
@  #08 @057   ----------------------------------------
 .byte   W96
@  #08 @058   ----------------------------------------
 .byte   W96
@  #08 @059   ----------------------------------------
 .byte   W96
@  #08 @060   ----------------------------------------
 .byte   W96
@  #08 @061   ----------------------------------------
 .byte   N23 ,Gs3 ,v036
 .byte   N23 ,Cs4
 .byte   N23 ,Fn4
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   N23
 .byte   N23 ,Ds4
 .byte   N23 ,Gn4
 .byte   W24
 .byte   Cn4
 .byte   W24
@  #08 @062   ----------------------------------------
 .byte   N23
 .byte   N23 ,Fn4
 .byte   N23 ,Gs4
 .byte   W24
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N23 ,Ds5
 .byte   W24
 .byte   As4
 .byte   W24
@  #08 @063   ----------------------------------------
 .byte   Fn4
 .byte   N23 ,As4
 .byte   N23 ,Cs5
 .byte   W48
 .byte   Gn4
 .byte   N23 ,Cn5
 .byte   N23 ,Ds5
 .byte   W24
 .byte   Ds4
 .byte   W24
@  #08 @064   ----------------------------------------
 .byte   Cn4
 .byte   N23 ,Fn4
 .byte   N23 ,As4
 .byte   W48
 .byte   N05 ,Gs5 ,v052
 .byte   W06
 .byte   Gn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cn4
 .byte   W06
@  #08 @065   ----------------------------------------
 .byte   W12
 .byte   Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N11 ,As3
 .byte   N11 ,Ds4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   N05 ,As3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gs4
 .byte   W06
@  #08 @066   ----------------------------------------
 .byte   N11 ,Cn4
 .byte   N11 ,Fn4
 .byte   N11 ,Gs4
 .byte   W12
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N11 ,As4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   As3
 .byte   N11 ,Gn4
 .byte   W12
@  #08 @067   ----------------------------------------
 .byte   N23 ,Fn3
 .byte   N23 ,Gs3
 .byte   N23 ,Fn4
 .byte   W24
 .byte   Cn4
 .byte   N23 ,Fn4
 .byte   N23 ,Cn5
 .byte   W24
 .byte   As3
 .byte   N23 ,Fn4
 .byte   N23 ,As4
 .byte   W24
 .byte   Gs3
 .byte   N23 ,Fn4
 .byte   N23 ,Gs4
 .byte   W24
@  #08 @068   ----------------------------------------
 .byte   N44 ,Gn3
 .byte   N44 ,Cn4
 .byte   N44 ,Fn4
 .byte   N44 ,Gn4
 .byte   W48
 .byte   N05 ,As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Gn5
 .byte   W06
@  #08 @069   ----------------------------------------
 .byte   N92 ,En5
 .byte   W96
@  #08 @070   ----------------------------------------
Label_0112AEEB:
 .byte   N05 ,Fn2 ,v080
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   PEND 
@  #08 @071   ----------------------------------------
 .byte   PATT
  .word Label_0112AEEB
@  #08 @072   ----------------------------------------
 .byte   N05 ,Fn2 ,v080
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   Cs2
 .byte   W06
@  #08 @073   ----------------------------------------
Label_0112AF35:
 .byte   N05 ,Fn2 ,v080
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   PEND 
@  #08 @074   ----------------------------------------
 .byte   Fn2
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   Cs2
 .byte   W06
@  #08 @075   ----------------------------------------
 .byte   En2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   Cn2
 .byte   W06
@  #08 @076   ----------------------------------------
 .byte   PATT
  .word Label_0112AEEB
@  #08 @077   ----------------------------------------
 .byte   PATT
  .word Label_0112AEEB
@  #08 @078   ----------------------------------------
 .byte   PATT
  .word Label_0112AF35
@  #08 @079   ----------------------------------------
 .byte   N05 ,Ds2 ,v080
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   As1
 .byte   W06
@  #08 @080   ----------------------------------------
 .byte   W96
@  #08 @081   ----------------------------------------
 .byte   W96
@  #08 @082   ----------------------------------------
 .byte   W96
@  #08 @083   ----------------------------------------
 .byte   W48
 .byte   W96
@  #08 @084   ----------------------------------------
 .byte   Fn4 ,v052
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
@  #08 @085   ----------------------------------------
 .byte   Fn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gn3
 .byte   W06
@  #08 @086   ----------------------------------------
Label_0112B00F:
 .byte   N05 ,Fn4 ,v052
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   PEND 
@  #08 @087   ----------------------------------------
 .byte   PATT
  .word Label_0112B00F
@  #08 @088   ----------------------------------------
 .byte   W96
@  #08 @089   ----------------------------------------
 .byte   W96
@  #08 @090   ----------------------------------------
 .byte   W96
@  #08 @091   ----------------------------------------
 .byte   W96
@  #08 @092   ----------------------------------------
 .byte   GOTO
  .word Label_0112AD41
@  #08 @093   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 9 (Midi-Chn.8) ****************@

.align 2, 0
song06_009:
@  #09 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 48
 .byte   PAN , c_v+3
 .byte   VOL , 37*song06_mvl/mxv
 .byte   W96
@  #09 @001   ----------------------------------------
 .byte   W96
@  #09 @002   ----------------------------------------
 .byte   W96
@  #09 @003   ----------------------------------------
 .byte   W96
@  #09 @004   ----------------------------------------
 .byte   W96
@  #09 @005   ----------------------------------------
 .byte   W96
@  #09 @006   ----------------------------------------
 .byte   W96
@  #09 @007   ----------------------------------------
 .byte   W96
@  #09 @008   ----------------------------------------
 .byte   W96
@  #09 @009   ----------------------------------------
Label_01130FCD:
 .byte   N92 ,Dn3 ,v064
 .byte   W96
@  #09 @010   ----------------------------------------
 .byte   Cs3
 .byte   W96
@  #09 @011   ----------------------------------------
 .byte   Dn3
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #09 @012   ----------------------------------------
 .byte   En3 ,v072
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #09 @013   ----------------------------------------
Label_01130FE6:
 .byte   N92 ,Fs3 ,v080
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #09 @014   ----------------------------------------
 .byte   N92 ,Fs3
 .byte   W12
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
@  #09 @015   ----------------------------------------
 .byte   PATT
  .word Label_01130FE6
@  #09 @016   ----------------------------------------
 .byte   N92 ,En3 ,v080
 .byte   W12
 .byte   N11 ,An3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
@  #09 @017   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Dn4
 .byte   W12
@  #09 @018   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Dn4
 .byte   W12
@  #09 @019   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Cs4
 .byte   W12
@  #09 @020   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Bn3
 .byte   W12
@  #09 @021   ----------------------------------------
 .byte   N92 ,Gn3
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Dn4
 .byte   W12
@  #09 @022   ----------------------------------------
 .byte   N92 ,Gn3
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Dn4
 .byte   W12
@  #09 @023   ----------------------------------------
 .byte   N18 ,Fs3
 .byte   W12
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs3
 .byte   W06
@  #09 @024   ----------------------------------------
 .byte   N18
 .byte   W12
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,An3
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,An3
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Fs3
 .byte   W06
@  #09 @025   ----------------------------------------
 .byte   N18 ,Gn3
 .byte   W12
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Gn3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,Gn3
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N12 ,Gn3
 .byte   W06
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Gn3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,Gn3
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N12 ,Gn3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Gn3
 .byte   W06
@  #09 @026   ----------------------------------------
 .byte   N18 ,An3
 .byte   W12
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,An3
 .byte   W06
 .byte   N05 ,En4
 .byte   W06
 .byte   N12 ,An3
 .byte   W06
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,An3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,An3
 .byte   W06
 .byte   N05 ,En4
 .byte   W06
 .byte   N12 ,An3
 .byte   W06
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,An3
 .byte   W06
 .byte   N05 ,En4
 .byte   W06
 .byte   An3
 .byte   W06
@  #09 @027   ----------------------------------------
 .byte   N18 ,Fs3
 .byte   W12
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs3
 .byte   W06
@  #09 @028   ----------------------------------------
 .byte   N18
 .byte   W12
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Cs4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Dn4
 .byte   W06
 .byte   N12 ,Fs3
 .byte   W06
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N17 ,Fs3
 .byte   W06
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
@  #09 @029   ----------------------------------------
Label_01131196:
 .byte   W12
 .byte   N11 ,Bn3 ,v096
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Bn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Fs3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Fs3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   En3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   PEND 
@  #09 @030   ----------------------------------------
 .byte   W12
 .byte   Bn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Bn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Fs3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Fs3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Cs3
 .byte   N11 ,An3
 .byte   W12
 .byte   Cs3
 .byte   N11 ,An3
 .byte   W12
 .byte   En3
 .byte   N11 ,Cs4
 .byte   W12
@  #09 @031   ----------------------------------------
 .byte   PATT
  .word Label_01131196
@  #09 @032   ----------------------------------------
 .byte   N11 ,Bn3 ,v096
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Bn3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   An3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   An3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   An3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Cs4
 .byte   N11 ,En4
 .byte   W12
@  #09 @033   ----------------------------------------
Label_011311FA:
 .byte   W12
 .byte   N11 ,Dn4 ,v096
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Dn4
 .byte   N11 ,Fn4
 .byte   W12
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Gn3
 .byte   N11 ,En4
 .byte   W12
 .byte   PEND 
@  #09 @034   ----------------------------------------
Label_0113121A:
 .byte   W12
 .byte   N11 ,Dn4 ,v096
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Dn4
 .byte   N11 ,Fn4
 .byte   W12
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   En3
 .byte   N11 ,Cn4
 .byte   W12
 .byte   En3
 .byte   N11 ,Cn4
 .byte   W12
 .byte   Gn3
 .byte   N11 ,En4
 .byte   W12
 .byte   PEND 
@  #09 @035   ----------------------------------------
 .byte   PATT
  .word Label_011311FA
@  #09 @036   ----------------------------------------
 .byte   N11 ,Dn4 ,v096
 .byte   N11 ,An4
 .byte   W12
 .byte   Dn4
 .byte   N11 ,An4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   N17 ,Fn3 ,v080
 .byte   W18
 .byte   Gn3
 .byte   W18
 .byte   N11 ,En3
 .byte   W12
@  #09 @037   ----------------------------------------
 .byte   TIE ,Dn3
 .byte   TIE ,Fn3
 .byte   W96
@  #09 @038   ----------------------------------------
Label_0113125F:
 .byte   W44
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fn3
 .byte   W01
 .byte   N17 ,Fn3 ,v080
 .byte   W18
 .byte   Gn3
 .byte   W18
 .byte   N11 ,En3
 .byte   W11
 .byte   EOT
 .byte   Dn3
 .byte   W01
@  #09 @039   ----------------------------------------
 .byte   N96 ,Cn3
 .byte   N92 ,Dn3
 .byte   W96
@  #09 @040   ----------------------------------------
 .byte   Cn3
 .byte   W48
 .byte   N17 ,Fn3
 .byte   W18
 .byte   Gn3
 .byte   W18
 .byte   N11 ,En3
 .byte   W12
@  #09 @041   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   N44 ,Fn3
 .byte   W48
 .byte   Cn4
 .byte   W48
@  #09 @042   ----------------------------------------
 .byte   Dn3
 .byte   N23 ,Cn4
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   N44 ,En3
 .byte   N23 ,An3
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W12
 .byte   TIE ,An3
 .byte   W12
@  #09 @043   ----------------------------------------
Label_01131298:
 .byte   TIE ,En3 ,v080
 .byte   W96
 .byte   PEND 
@  #09 @044   ----------------------------------------
 .byte   PATT
  .word Label_0113125F
@  #09 @045   ----------------------------------------
 .byte   EOT
 .byte   An3
 .byte   W01
 .byte   N17 ,Fn3 ,v080
 .byte   W18
 .byte   Gn3
 .byte   W18
 .byte   EOT
 .byte   En3
 .byte   N11
 .byte   W12
 .byte   N44 ,Fn3
 .byte   W48
@  #09 @046   ----------------------------------------
 .byte   An3
 .byte   N44 ,Fn4
 .byte   W48
 .byte   Gn3
 .byte   N80 ,En4
 .byte   W48
@  #09 @047   ----------------------------------------
 .byte   N44 ,Fn3
 .byte   W24
 .byte   W12
 .byte   N05 ,Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N92 ,Fn3
 .byte   N80 ,Fn4
 .byte   W72
@  #09 @048   ----------------------------------------
 .byte   W12
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N23 ,En3
 .byte   N80 ,En4
 .byte   W24
 .byte   N44 ,Fn3
 .byte   W48
@  #09 @049   ----------------------------------------
 .byte   N23 ,En3
 .byte   W12
 .byte   N05 ,Fn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N92 ,Fn3
 .byte   N44 ,Dn4
 .byte   W48
 .byte   N17 ,As3
 .byte   W18
 .byte   Cn4
 .byte   W18
@  #09 @050   ----------------------------------------
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N92 ,Gn3
 .byte   N44 ,En4
 .byte   W48
 .byte   N23 ,Fn4
 .byte   W24
 .byte   En4
 .byte   W24
@  #09 @051   ----------------------------------------
 .byte   N32 ,Gn3
 .byte   N32 ,En4
 .byte   W36
 .byte   N11 ,Fn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N44 ,Fn3
 .byte   TIE ,Dn4
 .byte   W48
@  #09 @052   ----------------------------------------
 .byte   N32 ,En3
 .byte   W36
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N44
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn4
 .byte   W01
@  #09 @053   ----------------------------------------
 .byte   PATT
  .word Label_011311FA
@  #09 @054   ----------------------------------------
 .byte   PATT
  .word Label_0113121A
@  #09 @055   ----------------------------------------
 .byte   PATT
  .word Label_011311FA
@  #09 @056   ----------------------------------------
 .byte   N11 ,Dn4 ,v096
 .byte   N11 ,An4
 .byte   W12
 .byte   Dn4
 .byte   N11 ,An4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,En4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Fn4
 .byte   W12
 .byte   En4
 .byte   N11 ,Gn4
 .byte   W12
@  #09 @057   ----------------------------------------
Label_01131341:
 .byte   W12
 .byte   N11 ,Fn4 ,v096
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Fn4
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Ds4
 .byte   N11 ,As4
 .byte   W12
 .byte   Ds4
 .byte   N11 ,As4
 .byte   W12
 .byte   As3
 .byte   N11 ,Gn4
 .byte   W12
 .byte   PEND 
@  #09 @058   ----------------------------------------
 .byte   W12
 .byte   Fn4
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Fn4
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Gn3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Gn3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   As3
 .byte   N11 ,Gn4
 .byte   W12
@  #09 @059   ----------------------------------------
 .byte   PATT
  .word Label_01131341
@  #09 @060   ----------------------------------------
 .byte   N11 ,Fn4 ,v096
 .byte   N11 ,Cn5
 .byte   W12
 .byte   Fn4
 .byte   N11 ,Cn5
 .byte   W12
 .byte   Ds4
 .byte   N11 ,As4
 .byte   W12
 .byte   Ds4
 .byte   N11 ,As4
 .byte   W12
 .byte   Ds4
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Ds4
 .byte   N11 ,Gn4
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W24
@  #09 @061   ----------------------------------------
 .byte   N44 ,Fn3 ,v064
 .byte   W48
 .byte   N23 ,Gn3
 .byte   W24
 .byte   Ds3
 .byte   W24
@  #09 @062   ----------------------------------------
Label_011313A9:
 .byte   N44 ,Gs3 ,v064
 .byte   W48
 .byte   N23 ,As3
 .byte   W24
 .byte   Gn3
 .byte   W24
 .byte   PEND 
@  #09 @063   ----------------------------------------
 .byte   Fn3
 .byte   W24
 .byte   Cn4
 .byte   W24
 .byte   Gn3
 .byte   W24
 .byte   Ds3
 .byte   W24
@  #09 @064   ----------------------------------------
 .byte   N44 ,As2
 .byte   N68 ,Fn3
 .byte   W48
 .byte   N44 ,Gs2
 .byte   W24
 .byte   N23 ,Cn3
 .byte   W24
@  #09 @065   ----------------------------------------
 .byte   N44 ,Fn3
 .byte   W48
 .byte   N23 ,Gn3
 .byte   W24
 .byte   Ds3
 .byte   W24
@  #09 @066   ----------------------------------------
 .byte   PATT
  .word Label_011313A9
@  #09 @067   ----------------------------------------
 .byte   N23 ,Fn3 ,v064
 .byte   W24
 .byte   Cn4
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   Gs3
 .byte   W24
@  #09 @068   ----------------------------------------
 .byte   N92 ,Fn3
 .byte   N92 ,Gn3
 .byte   W96
@  #09 @069   ----------------------------------------
 .byte   N92
 .byte   N92 ,En4
 .byte   W96
@  #09 @070   ----------------------------------------
 .byte   N05 ,Gs3 ,v096
 .byte   N17 ,Gs4
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   N17 ,As4
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   N11 ,Gn4
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gs3
 .byte   N17 ,Gs4
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   N17 ,Ds5
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   N11 ,Fn5
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
@  #09 @071   ----------------------------------------
 .byte   Gs3
 .byte   N92 ,Cn5
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
@  #09 @072   ----------------------------------------
 .byte   N05
 .byte   N17 ,Gs4
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   N17 ,As4
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   N11 ,Gn4
 .byte   W06
 .byte   N05 ,Cs3
 .byte   W06
 .byte   Fn3
 .byte   N17 ,Gs4
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   N17 ,Ds5
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   N11 ,Fn5
 .byte   W06
 .byte   N05 ,Cs3
 .byte   W06
@  #09 @073   ----------------------------------------
 .byte   Fn3
 .byte   N68 ,Cn5
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   N23 ,Fn4
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
@  #09 @074   ----------------------------------------
 .byte   N05
 .byte   N17 ,Cn5
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   As3
 .byte   N17 ,As4
 .byte   W06
 .byte   N05 ,Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   N11 ,Fn4
 .byte   W06
 .byte   N05 ,As3
 .byte   W06
 .byte   Cs3
 .byte   N17 ,Cn5
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   As3
 .byte   N28 ,As4
 .byte   W06
 .byte   N05 ,Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   As3
 .byte   W06
@  #09 @075   ----------------------------------------
 .byte   Gn3
 .byte   N17 ,Cs5
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   N17 ,Cn5
 .byte   W06
 .byte   N05 ,Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gn3
 .byte   N11 ,En4
 .byte   W06
 .byte   N05 ,Cn4
 .byte   W06
 .byte   Gn3
 .byte   N17 ,Cs5
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   N28 ,Cn5
 .byte   W06
 .byte   N05 ,Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
@  #09 @076   ----------------------------------------
 .byte   Gs3
 .byte   N23 ,As4
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   N23 ,Gs4
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   N32 ,Gs5
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   N11 ,Gn5
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
@  #09 @077   ----------------------------------------
 .byte   Gs3
 .byte   N68 ,Cn5
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   N23 ,Fn4
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
@  #09 @078   ----------------------------------------
 .byte   N05
 .byte   N17 ,Cn5
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   N17 ,As4
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   N11 ,Fn4
 .byte   W06
 .byte   N05 ,Cs3
 .byte   W06
 .byte   Fn3
 .byte   N17 ,Cn5
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   N23 ,As4
 .byte   W06
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   N05 ,Cs5
 .byte   W06
@  #09 @079   ----------------------------------------
 .byte   Gn3
 .byte   N17 ,Cs5
 .byte   W06
 .byte   N05 ,As3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Ds3
 .byte   N17 ,Cn5
 .byte   W06
 .byte   N05 ,Gn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gn3
 .byte   N11 ,Ds4
 .byte   W06
 .byte   N05 ,Ds3
 .byte   W06
 .byte   Gn3
 .byte   N17 ,Cs5
 .byte   W06
 .byte   N05 ,As3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Ds3
 .byte   N28 ,Cn5
 .byte   W06
 .byte   N05 ,Gn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Ds3
 .byte   W06
@  #09 @080   ----------------------------------------
 .byte   N17 ,Cn3
 .byte   N17 ,As4
 .byte   W18
 .byte   Cn3
 .byte   N17 ,Gn5
 .byte   W18
 .byte   N11 ,Cn3
 .byte   N11 ,Gs5
 .byte   W12
 .byte   N17 ,Cn3
 .byte   N17 ,Gn5
 .byte   W18
 .byte   Cn3
 .byte   N17 ,Ds5
 .byte   W18
 .byte   N11 ,Cn3
 .byte   N11 ,Cn5
 .byte   W12
@  #09 @081   ----------------------------------------
 .byte   N17 ,Cn3
 .byte   N17 ,As4
 .byte   W18
 .byte   Cn3
 .byte   N17 ,Ds5
 .byte   W18
 .byte   N11 ,Cn3
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Cn3
 .byte   N11 ,Fn4
 .byte   W24
 .byte   N23 ,Ds4
 .byte   W24
@  #09 @082   ----------------------------------------
 .byte   Fn4
 .byte   W24
 .byte   Cs3
 .byte   N23 ,As4
 .byte   W24
 .byte   N11 ,Ds3
 .byte   N11 ,Gn4
 .byte   W24
 .byte   N23 ,Fn4
 .byte   W24
@  #09 @083   ----------------------------------------
 .byte   Fn3
 .byte   N23 ,Cn5
 .byte   W24
 .byte   N11 ,Ds3
 .byte   N11 ,Gn4
 .byte   W24
 .byte   N23 ,Fn4
 .byte   W24
 .byte   Cs3
 .byte   N23 ,As4
 .byte   W24
@  #09 @084   ----------------------------------------
 .byte   N44 ,Ds3
 .byte   N23 ,Gn4
 .byte   W24
 .byte   Ds4
 .byte   W24
 .byte   N92 ,Gs3 ,v080
 .byte   TIE ,Fn4
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #09 @085   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   N92 ,Gn3 ,v072
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #09 @086   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W11
 .byte   EOT
 .byte   Fn4
 .byte   W01
 .byte   N92 ,Fn3 ,v064
 .byte   TIE ,Fn4
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #09 @087   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   N92 ,As3 ,v072
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #09 @088   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W11
 .byte   EOT
 .byte   Fn4
 .byte   W01
 .byte   TIE ,Fn3 ,v080
 .byte   W96
@  #09 @089   ----------------------------------------
Label_01131635:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fn3
 .byte   W01
@  #09 @090   ----------------------------------------
 .byte   PATT
  .word Label_01131298
@  #09 @091   ----------------------------------------
 .byte   PATT
  .word Label_01131635
@  #09 @092   ----------------------------------------
 .byte   EOT
 .byte   En3
 .byte   W01
 .byte   GOTO
  .word Label_01130FCD
@  #09 @093   ----------------------------------------
 .byte   N92 ,Fn3 ,v080
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 10 (Midi-Chn.9) ****************@

.align 2, 0
song06_010:
@  #10 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 121
 .byte   PAN , c_v-7
 .byte   VOL , 52*song06_mvl/mxv
 .byte   Dn3 ,v062
 .byte   Dn3 ,v062
 .byte   VOL , 52*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N44 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   N92 ,An2
 .byte   W06
 .byte   N05 ,Fn1
 .byte   W06
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N44 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
@  #10 @001   ----------------------------------------
Label_011316B0:
 .byte   N44 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N44 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   PEND 
@  #10 @002   ----------------------------------------
 .byte   PATT
  .word Label_011316B0
@  #10 @003   ----------------------------------------
 .byte   N44 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N03 ,Cn1
 .byte   N05 ,Dn1 ,v080
 .byte   N03 ,Fn1 ,v096
 .byte   N01 ,An2 ,v064
 .byte   W02
 .byte   An2 ,v072
 .byte   W02
 .byte   N03 ,Cn1 ,v096
 .byte   N03 ,Fn1
 .byte   N01 ,An2 ,v076
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,An2
 .byte   W02
 .byte   N03 ,Cn1 ,v096
 .byte   N03 ,Fn1
 .byte   N01 ,An2 ,v088
 .byte   W02
 .byte   An2 ,v092
 .byte   W02
@  #10 @004   ----------------------------------------
 .byte   N44 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   N92 ,An2
 .byte   W06
 .byte   N05 ,Fn1
 .byte   W06
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N44 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N03 ,Fn1 ,v096
 .byte   W04
 .byte   N03
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   W02
 .byte   N03 ,Fn1 ,v096
 .byte   W04
@  #10 @005   ----------------------------------------
 .byte   N44 ,Cn1
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N44 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N03 ,Fn1 ,v096
 .byte   W04
 .byte   N03
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   W02
 .byte   N03 ,Fn1 ,v096
 .byte   W04
@  #10 @006   ----------------------------------------
 .byte   N44 ,Cn1
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N44 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   N01 ,An2 ,v052
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Fn1 ,v096
 .byte   N01 ,An2 ,v056
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v060
 .byte   W02
 .byte   N05 ,Fn1 ,v096
 .byte   N01 ,An2 ,v060
 .byte   W02
 .byte   An2 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N17 ,Dn1 ,v080
 .byte   N05 ,Fn1 ,v096
 .byte   N01 ,An2 ,v068
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v072
 .byte   W02
 .byte   N05 ,Fn1 ,v096
 .byte   N01 ,An2 ,v072
 .byte   W02
 .byte   An2 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Fn1 ,v096
 .byte   N01 ,An2 ,v080
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   N03 ,Fn1 ,v096
 .byte   N01 ,An2 ,v084
 .byte   W02
 .byte   An2 ,v088
 .byte   W02
 .byte   N03 ,Fn1 ,v096
 .byte   N01 ,An2 ,v088
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,An2 ,v092
 .byte   W02
 .byte   N03 ,Fn1 ,v096
 .byte   N01 ,An2 ,v092
 .byte   W02
 .byte   An2 ,v096
 .byte   W02
@  #10 @007   ----------------------------------------
 .byte   N92 ,Cn1
 .byte   N92 ,Dn1 ,v080
 .byte   N92 ,Fn1 ,v096
 .byte   W96
@  #10 @008   ----------------------------------------
 .byte   W72
 .byte   N01 ,An2 ,v052
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v056
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v060
 .byte   W02
 .byte   An2 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v068
 .byte   W02
 .byte   An2 ,v072
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v076
 .byte   W02
 .byte   An2 ,v080
 .byte   W02
@  #10 @009   ----------------------------------------
Label_011318D3:
 .byte   N17 ,Dn1 ,v064
 .byte   N92 ,An2 ,v080
 .byte   W18
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #10 @010   ----------------------------------------
Label_011318EB:
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #10 @011   ----------------------------------------
 .byte   PATT
  .word Label_011318EB
@  #10 @012   ----------------------------------------
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05 ,Dn1 ,v068
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17 ,Dn1 ,v072
 .byte   W18
 .byte   N02 ,Cn1 ,v064
 .byte   N17 ,Dn1 ,v072
 .byte   W02
 .byte   N02 ,Cn1 ,v068
 .byte   W03
 .byte   Cn1 ,v072
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn1 ,v076
 .byte   W03
 .byte   Cn1 ,v080
 .byte   W03
 .byte   Cn1 ,v084
 .byte   W01
 .byte   N17 ,Dn1 ,v076
 .byte   W02
 .byte   N02 ,Cn1 ,v084
 .byte   W03
 .byte   Cn1 ,v088
 .byte   W03
 .byte   Cn1 ,v092
 .byte   W03
 .byte   Cn1 ,v096
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn1 ,v100
 .byte   W01
 .byte   N05 ,Dn1 ,v080
 .byte   W02
 .byte   N02 ,Cn1 ,v104
 .byte   W03
 .byte   Cn1 ,v108
 .byte   W01
 .byte   N05 ,Dn1 ,v080
 .byte   W02
 .byte   N02 ,Cn1 ,v108
 .byte   W04
@  #10 @013   ----------------------------------------
 .byte   N23 ,Cn1 ,v112
 .byte   N17 ,Dn1 ,v080
 .byte   N92 ,An2 ,v096
 .byte   W18
 .byte   N05 ,Dn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @014   ----------------------------------------
Label_01131976:
 .byte   N23 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #10 @015   ----------------------------------------
 .byte   PATT
  .word Label_01131976
@  #10 @016   ----------------------------------------
 .byte   N23 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N03 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v080
 .byte   W04
 .byte   N03 ,Cn1 ,v096
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   W02
 .byte   N03 ,Cn1 ,v096
 .byte   W04
@  #10 @017   ----------------------------------------
Label_011319C7:
 .byte   N23 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N92 ,An2 ,v096
 .byte   W18
 .byte   N05 ,Dn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #10 @018   ----------------------------------------
 .byte   PATT
  .word Label_01131976
@  #10 @019   ----------------------------------------
 .byte   PATT
  .word Label_01131976
@  #10 @020   ----------------------------------------
 .byte   PATT
  .word Label_01131976
@  #10 @021   ----------------------------------------
 .byte   PATT
  .word Label_011319C7
@  #10 @022   ----------------------------------------
 .byte   PATT
  .word Label_01131976
@  #10 @023   ----------------------------------------
 .byte   PATT
  .word Label_01131976
@  #10 @024   ----------------------------------------
 .byte   PATT
  .word Label_01131976
@  #10 @025   ----------------------------------------
 .byte   PATT
  .word Label_011319C7
@  #10 @026   ----------------------------------------
 .byte   PATT
  .word Label_01131976
@  #10 @027   ----------------------------------------
 .byte   PATT
  .word Label_01131976
@  #10 @028   ----------------------------------------
 .byte   N23 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v112
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,An2 ,v052
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v056
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v060
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N17 ,Cn1 ,v112
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,An2 ,v068
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v072
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v080
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v084
 .byte   W02
 .byte   N11 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,An2 ,v084
 .byte   W02
 .byte   An2 ,v088
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,An2 ,v092
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v096
 .byte   W02
@  #10 @029   ----------------------------------------
 .byte   N23 ,Cn1 ,v112
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   N92 ,An2 ,v096
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
@  #10 @030   ----------------------------------------
Label_01131AE0:
 .byte   N23 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   PEND 
@  #10 @031   ----------------------------------------
Label_01131B35:
 .byte   N23 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W06
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   PEND 
@  #10 @032   ----------------------------------------
 .byte   N11 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   N01 ,An2
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v056
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v060
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,An2 ,v068
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v072
 .byte   W02
 .byte   Fs1 ,v052
 .byte   N01 ,An2 ,v072
 .byte   W02
 .byte   An2 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v080
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v084
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,An2 ,v084
 .byte   W02
 .byte   An2 ,v088
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,An2 ,v092
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v096
 .byte   W02
@  #10 @033   ----------------------------------------
 .byte   N23 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   N92 ,An2 ,v096
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
@  #10 @034   ----------------------------------------
 .byte   PATT
  .word Label_01131AE0
@  #10 @035   ----------------------------------------
 .byte   PATT
  .word Label_01131B35
@  #10 @036   ----------------------------------------
 .byte   N11 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
@  #10 @037   ----------------------------------------
Label_01131CD8:
 .byte   N17 ,Dn1 ,v064
 .byte   N92 ,An2 ,v096
 .byte   W18
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #10 @038   ----------------------------------------
 .byte   PATT
  .word Label_011318EB
@  #10 @039   ----------------------------------------
 .byte   PATT
  .word Label_011318EB
@  #10 @040   ----------------------------------------
 .byte   PATT
  .word Label_011318EB
@  #10 @041   ----------------------------------------
 .byte   PATT
  .word Label_01131CD8
@  #10 @042   ----------------------------------------
 .byte   PATT
  .word Label_011318EB
@  #10 @043   ----------------------------------------
 .byte   PATT
  .word Label_011318EB
@  #10 @044   ----------------------------------------
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   N02 ,Cn1
 .byte   N17 ,Dn1
 .byte   W02
 .byte   N02 ,Cn1 ,v068
 .byte   W03
 .byte   Cn1 ,v072
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn1 ,v076
 .byte   W03
 .byte   Cn1 ,v080
 .byte   W03
 .byte   Cn1 ,v084
 .byte   W01
 .byte   N17 ,Dn1 ,v064
 .byte   W02
 .byte   N02 ,Cn1 ,v084
 .byte   W03
 .byte   Cn1 ,v088
 .byte   W03
 .byte   Cn1 ,v092
 .byte   W03
 .byte   Cn1 ,v096
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Cn1 ,v100
 .byte   W01
 .byte   N05 ,Dn1 ,v064
 .byte   W02
 .byte   N02 ,Cn1 ,v104
 .byte   W03
 .byte   Cn1 ,v108
 .byte   W01
 .byte   N05 ,Dn1 ,v064
 .byte   W02
 .byte   N02 ,Cn1 ,v108
 .byte   W04
@  #10 @045   ----------------------------------------
 .byte   N23 ,Cn1 ,v112
 .byte   N17 ,Dn1 ,v064
 .byte   N92 ,An2 ,v096
 .byte   W18
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05 ,Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @046   ----------------------------------------
Label_01131D7B:
 .byte   N23 ,Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05 ,Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #10 @047   ----------------------------------------
 .byte   PATT
  .word Label_01131D7B
@  #10 @048   ----------------------------------------
 .byte   PATT
  .word Label_01131D7B
@  #10 @049   ----------------------------------------
 .byte   N23 ,Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05 ,Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05 ,Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   W06
@  #10 @050   ----------------------------------------
 .byte   PATT
  .word Label_01131D7B
@  #10 @051   ----------------------------------------
 .byte   PATT
  .word Label_01131D7B
@  #10 @052   ----------------------------------------
 .byte   N23 ,Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,An2 ,v052
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v056
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v060
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,An2 ,v060
 .byte   W02
 .byte   An2 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v068
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v072
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N11 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,An2 ,v072
 .byte   W02
 .byte   An2 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,An2 ,v076
 .byte   W02
 .byte   An2 ,v080
 .byte   W02
 .byte   N01
 .byte   W02
@  #10 @053   ----------------------------------------
Label_01131E35:
 .byte   N23 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   N92 ,An2 ,v080
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   PEND 
@  #10 @054   ----------------------------------------
 .byte   PATT
  .word Label_01131AE0
@  #10 @055   ----------------------------------------
 .byte   PATT
  .word Label_01131B35
@  #10 @056   ----------------------------------------
 .byte   N11 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W18
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W06
 .byte   N01 ,Fs1 ,v052
 .byte   W12
 .byte   N05 ,Dn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @057   ----------------------------------------
 .byte   PATT
  .word Label_01131E35
@  #10 @058   ----------------------------------------
 .byte   PATT
  .word Label_01131AE0
@  #10 @059   ----------------------------------------
 .byte   PATT
  .word Label_01131B35
@  #10 @060   ----------------------------------------
 .byte   N11 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W03
 .byte   N01
 .byte   W03
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N01
 .byte   W06
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   N01 ,An2
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v056
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   An2 ,v060
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N01 ,An2 ,v060
 .byte   W02
 .byte   An2 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   Fs1 ,v052
 .byte   N01 ,An2 ,v064
 .byte   W02
 .byte   An2 ,v068
 .byte   W01
 .byte   Fs1 ,v052
 .byte   W01
 .byte   An2 ,v068
 .byte   W02
 .byte   Fs1 ,v052
 .byte   N01 ,An2 ,v068
 .byte   W02
 .byte   An2 ,v072
 .byte   W01
 .byte   Fs1 ,v052
 .byte   W01
 .byte   An2 ,v072
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   N01 ,An2 ,v072
 .byte   W02
 .byte   An2 ,v076
 .byte   W01
 .byte   Fs1 ,v052
 .byte   W01
 .byte   An2 ,v076
 .byte   W02
 .byte   N05 ,Dn1 ,v080
 .byte   N01 ,Fs1 ,v052
 .byte   N01 ,An2 ,v076
 .byte   W02
 .byte   An2 ,v080
 .byte   W01
 .byte   Fs1 ,v052
 .byte   W01
 .byte   An2 ,v080
 .byte   W02
@  #10 @061   ----------------------------------------
 .byte   N92
 .byte   W96
@  #10 @062   ----------------------------------------
 .byte   W96
@  #10 @063   ----------------------------------------
 .byte   W96
@  #10 @064   ----------------------------------------
 .byte   W96
@  #10 @065   ----------------------------------------
 .byte   PATT
  .word Label_011318D3
@  #10 @066   ----------------------------------------
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @067   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @068   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @069   ----------------------------------------
 .byte   N02
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W01
 .byte   Cn1
 .byte   N01 ,An2
 .byte   W02
 .byte   N02 ,Cn1 ,v068
 .byte   N02 ,Dn1 ,v064
 .byte   N01 ,An2 ,v068
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N02 ,Cn1
 .byte   N02 ,Dn1 ,v064
 .byte   W01
 .byte   N01 ,An2 ,v068
 .byte   W02
 .byte   N02 ,Cn1 ,v072
 .byte   N02 ,Dn1 ,v064
 .byte   N01 ,An2 ,v072
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N02 ,Cn1
 .byte   N02 ,Dn1 ,v064
 .byte   W01
 .byte   N01 ,An2 ,v072
 .byte   W02
 .byte   N02 ,Cn1 ,v076
 .byte   N02 ,Dn1 ,v064
 .byte   N01 ,An2 ,v076
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N02 ,Cn1
 .byte   N02 ,Dn1 ,v064
 .byte   W01
 .byte   N01 ,An2 ,v076
 .byte   W02
 .byte   N02 ,Cn1 ,v080
 .byte   N02 ,Dn1 ,v064
 .byte   N01 ,An2 ,v080
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N02 ,Cn1
 .byte   N02 ,Dn1 ,v064
 .byte   W01
 .byte   N01 ,An2 ,v080
 .byte   W02
 .byte   N02 ,Cn1 ,v084
 .byte   N02 ,Dn1 ,v064
 .byte   N01 ,An2 ,v084
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N02 ,Cn1
 .byte   N02 ,Dn1 ,v064
 .byte   W01
 .byte   N01 ,An2 ,v084
 .byte   W02
 .byte   N02 ,Cn1 ,v088
 .byte   N02 ,Dn1 ,v064
 .byte   N01 ,An2 ,v088
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N02 ,Cn1
 .byte   N02 ,Dn1 ,v064
 .byte   W01
 .byte   N01 ,An2 ,v088
 .byte   W02
 .byte   N02 ,Cn1 ,v092
 .byte   N02 ,Dn1 ,v064
 .byte   N01 ,An2 ,v092
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N02 ,Cn1
 .byte   N02 ,Dn1 ,v064
 .byte   W01
 .byte   N01 ,An2 ,v092
 .byte   W02
 .byte   N02 ,Cn1 ,v096
 .byte   N02 ,Dn1 ,v064
 .byte   N01 ,An2 ,v096
 .byte   W02
 .byte   N01
 .byte   W02
@  #10 @070   ----------------------------------------
Label_011320A8:
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   N92 ,An2 ,v096
 .byte   W18
 .byte   N17 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v080
 .byte   W12
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N28 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #10 @071   ----------------------------------------
Label_011320D2:
 .byte   N23 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N23 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v080
 .byte   W06
 .byte   N17
 .byte   W18
 .byte   Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N28 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #10 @072   ----------------------------------------
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v080
 .byte   W12
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N28 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @073   ----------------------------------------
 .byte   PATT
  .word Label_011320D2
@  #10 @074   ----------------------------------------
 .byte   PATT
  .word Label_011320A8
@  #10 @075   ----------------------------------------
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N11 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N28 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @076   ----------------------------------------
 .byte   N23 ,Dn1 ,v096
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N17
 .byte   W18
 .byte   N28 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @077   ----------------------------------------
 .byte   N17 ,Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   Cn1 ,v096
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v080
 .byte   W12
 .byte   N17 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v080
 .byte   W18
 .byte   N28 ,Cn1 ,v096
 .byte   W06
 .byte   N02 ,Dn1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
@  #10 @078   ----------------------------------------
 .byte   N17 ,Dn1 ,v096
 .byte   N92 ,An2
 .byte   W18
 .byte   N17 ,Dn1
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N28 ,Cn1
 .byte   N17 ,Dn1 ,v080
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @079   ----------------------------------------
 .byte   N17 ,Dn1 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N28 ,Cn1
 .byte   W06
 .byte   N02 ,Dn1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
@  #10 @080   ----------------------------------------
 .byte   N17 ,Dn1 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
@  #10 @081   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N02 ,Dn1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
@  #10 @082   ----------------------------------------
 .byte   N11 ,Dn1 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Cn1
 .byte   N02 ,Dn1
 .byte   N23 ,An2
 .byte   W03
 .byte   N02 ,Dn1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N23 ,Cn1
 .byte   N23 ,Dn1
 .byte   N23 ,An2
 .byte   W24
 .byte   N11 ,Dn1
 .byte   W12
 .byte   N11
 .byte   W12
@  #10 @083   ----------------------------------------
 .byte   N23 ,Cn1
 .byte   N02 ,Dn1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N23 ,Cn1
 .byte   N23 ,Dn1
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Cn1
 .byte   N02 ,Dn1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
@  #10 @084   ----------------------------------------
 .byte   N44 ,Cn1
 .byte   N23 ,Dn1
 .byte   W24
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N92 ,Cn1
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
@  #10 @085   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
Label_0113226F:
 .byte   N23 ,Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N56 ,Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N17
 .byte   W18
@  #10 @086   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N05 ,Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
Label_01132293:
 .byte   N92 ,Cn1 ,v080
 .byte   N17 ,Dn1 ,v064
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N17
 .byte   W18
@  #10 @087   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_011322A9:
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N68 ,Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N17
 .byte   W18
@  #10 @088   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #10 @089   ----------------------------------------
 .byte   PATT
  .word Label_01132293
@  #10 @090   ----------------------------------------
 .byte   PATT
  .word Label_0113226F
@  #10 @091   ----------------------------------------
 .byte   PATT
  .word Label_01132293
@  #10 @092   ----------------------------------------
 .byte   PATT
  .word Label_011322A9
@  #10 @093   ----------------------------------------
 .byte   GOTO
  .word Label_011318D3
@  #10 @094   ----------------------------------------
 .byte   N23 ,Dn1 ,v064
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 11 (Midi-Chn.10) ****************@

.align 2, 0
song06_011:
@  #11 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 48
 .byte   PAN , c_v+2
 .byte   VOL , 52*song06_mvl/mxv
 .byte   W96
@  #11 @001   ----------------------------------------
 .byte   W96
@  #11 @002   ----------------------------------------
 .byte   W96
@  #11 @003   ----------------------------------------
 .byte   W96
@  #11 @004   ----------------------------------------
 .byte   W96
@  #11 @005   ----------------------------------------
 .byte   W96
@  #11 @006   ----------------------------------------
 .byte   W96
@  #11 @007   ----------------------------------------
 .byte   W96
@  #11 @008   ----------------------------------------
 .byte   W96
@  #11 @009   ----------------------------------------
Label_011322F5:
 .byte   N44 ,Cs3 ,v064
 .byte   W48
 .byte   Bn2
 .byte   W48
@  #11 @010   ----------------------------------------
 .byte   N92
 .byte   W96
@  #11 @011   ----------------------------------------
 .byte   N92
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #11 @012   ----------------------------------------
 .byte   Cs3 ,v072
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #11 @013   ----------------------------------------
Label_01132310:
 .byte   N92 ,Dn3 ,v080
 .byte   W96
 .byte   PEND 
@  #11 @014   ----------------------------------------
 .byte   PATT
  .word Label_01132310
@  #11 @015   ----------------------------------------
 .byte   PATT
  .word Label_01132310
@  #11 @016   ----------------------------------------
Label_0113231F:
 .byte   N92 ,Cs3 ,v080
 .byte   W96
 .byte   PEND 
@  #11 @017   ----------------------------------------
Label_01132324:
 .byte   N92 ,Bn2 ,v080
 .byte   W96
 .byte   PEND 
@  #11 @018   ----------------------------------------
 .byte   PATT
  .word Label_01132324
@  #11 @019   ----------------------------------------
 .byte   PATT
  .word Label_0113231F
@  #11 @020   ----------------------------------------
 .byte   PATT
  .word Label_0113231F
@  #11 @021   ----------------------------------------
 .byte   PATT
  .word Label_01132310
@  #11 @022   ----------------------------------------
 .byte   N92 ,En3 ,v080
 .byte   W96
@  #11 @023   ----------------------------------------
 .byte   PATT
  .word Label_01132310
@  #11 @024   ----------------------------------------
 .byte   PATT
  .word Label_0113231F
@  #11 @025   ----------------------------------------
 .byte   PATT
  .word Label_01132310
@  #11 @026   ----------------------------------------
 .byte   N92 ,En3 ,v080
 .byte   W96
@  #11 @027   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N44
 .byte   W48
@  #11 @028   ----------------------------------------
 .byte   PATT
  .word Label_01132310
@  #11 @029   ----------------------------------------
Label_01132360:
 .byte   W12
 .byte   N11 ,Fs3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #11 @030   ----------------------------------------
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
@  #11 @031   ----------------------------------------
 .byte   PATT
  .word Label_01132360
@  #11 @032   ----------------------------------------
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
@  #11 @033   ----------------------------------------
Label_01132398:
 .byte   W12
 .byte   N11 ,An3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #11 @034   ----------------------------------------
Label_011323AA:
 .byte   W12
 .byte   N11 ,An3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #11 @035   ----------------------------------------
 .byte   PATT
  .word Label_01132398
@  #11 @036   ----------------------------------------
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W60
@  #11 @037   ----------------------------------------
 .byte   N44 ,An2 ,v064
 .byte   W48
 .byte   Cn3
 .byte   W48
@  #11 @038   ----------------------------------------
 .byte   N23 ,Gn2
 .byte   W24
 .byte   N68 ,En2
 .byte   W72
@  #11 @039   ----------------------------------------
 .byte   N44 ,Fn2
 .byte   W48
 .byte   N23 ,Gn2
 .byte   W24
 .byte   An2
 .byte   W24
@  #11 @040   ----------------------------------------
 .byte   N92 ,Gn2
 .byte   W96
@  #11 @041   ----------------------------------------
Label_011323E2:
 .byte   N92 ,As2 ,v064
 .byte   W96
 .byte   PEND 
@  #11 @042   ----------------------------------------
 .byte   N23 ,An2
 .byte   W24
 .byte   N68 ,Gn2
 .byte   W72
@  #11 @043   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #11 @044   ----------------------------------------
Label_011323EF:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Gn2
 .byte   W01
@  #11 @045   ----------------------------------------
 .byte   TIE ,As2 ,v064
 .byte   W96
@  #11 @046   ----------------------------------------
 .byte   PATT
  .word Label_011323EF
@  #11 @047   ----------------------------------------
 .byte   EOT
 .byte   As2
 .byte   W01
 .byte   TIE ,An2 ,v064
 .byte   W96
@  #11 @048   ----------------------------------------
 .byte   PATT
  .word Label_011323EF
@  #11 @049   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   W01
@  #11 @050   ----------------------------------------
 .byte   PATT
  .word Label_011323E2
@  #11 @051   ----------------------------------------
Label_01132412:
 .byte   N92 ,Cn3 ,v064
 .byte   W96
 .byte   PEND 
@  #11 @052   ----------------------------------------
 .byte   An2
 .byte   W96
@  #11 @053   ----------------------------------------
 .byte   N32 ,Gn2
 .byte   W36
 .byte   N11 ,Fn2
 .byte   W12
 .byte   N44
 .byte   W48
@  #11 @054   ----------------------------------------
 .byte   PATT
  .word Label_01132398
@  #11 @055   ----------------------------------------
 .byte   PATT
  .word Label_011323AA
@  #11 @056   ----------------------------------------
 .byte   PATT
  .word Label_01132398
@  #11 @057   ----------------------------------------
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
@  #11 @058   ----------------------------------------
Label_01132442:
 .byte   W12
 .byte   N11 ,Cn4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
@  #11 @059   ----------------------------------------
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As3
 .byte   W12
@  #11 @060   ----------------------------------------
 .byte   PATT
  .word Label_01132442
@  #11 @061   ----------------------------------------
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Cn3
 .byte   W24
@  #11 @062   ----------------------------------------
Label_01132479:
 .byte   N23 ,Cn3 ,v064
 .byte   W24
 .byte   As2
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   Gn2
 .byte   W24
 .byte   PEND 
@  #11 @063   ----------------------------------------
Label_01132484:
 .byte   N92 ,Ds2 ,v064
 .byte   W96
 .byte   PEND 
@  #11 @064   ----------------------------------------
 .byte   N23 ,Cn3
 .byte   W24
 .byte   Gs2
 .byte   W24
 .byte   Cn3
 .byte   W24
 .byte   Gs2
 .byte   W24
@  #11 @065   ----------------------------------------
 .byte   N44 ,Gn2
 .byte   W48
 .byte   Fn2
 .byte   W48
@  #11 @066   ----------------------------------------
 .byte   PATT
  .word Label_01132479
@  #11 @067   ----------------------------------------
 .byte   PATT
  .word Label_01132484
@  #11 @068   ----------------------------------------
 .byte   N92 ,Gs2 ,v064
 .byte   W96
@  #11 @069   ----------------------------------------
 .byte   W24
 .byte   N68 ,As2
 .byte   W72
@  #11 @070   ----------------------------------------
 .byte   PATT
  .word Label_01132412
@  #11 @071   ----------------------------------------
Label_011324AE:
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   PEND 
@  #11 @072   ----------------------------------------
 .byte   PATT
  .word Label_011324AE
@  #11 @073   ----------------------------------------
Label_011324D6:
 .byte   N05 ,Fn3 ,v080
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   PEND 
@  #11 @074   ----------------------------------------
 .byte   PATT
  .word Label_011324D6
@  #11 @075   ----------------------------------------
 .byte   N05 ,Cs3 ,v080
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   As3
 .byte   W06
@  #11 @076   ----------------------------------------
 .byte   Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Cn4
 .byte   W06
@  #11 @077   ----------------------------------------
 .byte   PATT
  .word Label_011324AE
@  #11 @078   ----------------------------------------
 .byte   PATT
  .word Label_011324AE
@  #11 @079   ----------------------------------------
 .byte   PATT
  .word Label_011324D6
@  #11 @080   ----------------------------------------
 .byte   N05 ,Gn3 ,v080
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Ds3
 .byte   W06
@  #11 @081   ----------------------------------------
 .byte   N17 ,Cn3
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
@  #11 @082   ----------------------------------------
 .byte   N17
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W48
@  #11 @083   ----------------------------------------
 .byte   W24
 .byte   N23 ,Fn2
 .byte   W24
 .byte   N11 ,Gn2
 .byte   W48
@  #11 @084   ----------------------------------------
 .byte   N23 ,Gs2
 .byte   W24
 .byte   N11 ,Gn2
 .byte   W24
 .byte   W24
 .byte   N23 ,Fn2
 .byte   W24
@  #11 @085   ----------------------------------------
 .byte   N44 ,Gn2
 .byte   W48
 .byte   TIE ,Cn3
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #11 @086   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #11 @087   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   TIE ,Cs3 ,v064
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #11 @088   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W12
@  #11 @089   ----------------------------------------
 .byte   W12
 .byte   W12
 .byte   W12
 .byte   W11
 .byte   EOT
 .byte   W01
Label_011325C3:
 .byte   TIE ,As2 ,v080
 .byte   W96
 .byte   PEND 
@  #11 @090   ----------------------------------------
Label_011325C8:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   As2
 .byte   W01
@  #11 @091   ----------------------------------------
 .byte   PATT
  .word Label_011325C3
@  #11 @092   ----------------------------------------
 .byte   PATT
  .word Label_011325C8
@  #11 @093   ----------------------------------------
 .byte   EOT
 .byte   As2
 .byte   W01
 .byte   GOTO
  .word Label_011322F5
@  #11 @094   ----------------------------------------
 .byte   N92 ,Gs2 ,v080
 .byte   W92
 .byte   W03
 .byte   FINE

@******************************************************@
	.align	2

Song_BetweenHeavenAndEarth:
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song06_pri	@ Priority
	.byte	song06_rev	@ Reverb.
    
	.word	song06_grp
    
	.word	song06_001
	.word	song06_002
	.word	song06_003
	.word	song06_004
	.word	song06_005
	.word	song06_006
	.word	song06_007
	.word	song06_008
	.word	song06_009
	.word	song06_010
	.word	song06_011

	.end
