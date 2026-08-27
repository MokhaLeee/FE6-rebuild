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
	.global	Song_TeatimeJoy_SurfingKyogre
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

.align 2, 0
song06_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   TEMPO , 120*song06_tbs/2
 .byte   VOICE , 13
 .byte   VOL , 62*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N11 ,Gn3 ,v112
 .byte   N11 ,Gn4
 .byte   W24
 .byte   N05 ,Cn3
 .byte   N05 ,En3
 .byte   W12
 .byte   Dn3
 .byte   N05 ,Fn3
 .byte   W12
 .byte   N11 ,En3
 .byte   N11 ,Gn3
 .byte   W24
 .byte   N11
 .byte   W24
@  #01 @001   ----------------------------------------
 .byte   An3
 .byte   W72
 .byte   Gn3
 .byte   W24
@  #01 @002   ----------------------------------------
 .byte   Cn3
 .byte   W24
 .byte   Gn2
 .byte   W24
 .byte   Dn3
 .byte   W48
@  #01 @003   ----------------------------------------
 .byte   N28 ,Gn3
 .byte   W48
 .byte   W12
Label_0113197E:
 .byte   N05 ,Cn3 ,v112
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W24
@  #01 @004   ----------------------------------------
 .byte   Bn3
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   N28 ,Gn3
 .byte   W48
@  #01 @005   ----------------------------------------
 .byte   W12
 .byte   N05 ,Cn3
 .byte   W12
 .byte   N11 ,Gn3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   En3
 .byte   W24
@  #01 @006   ----------------------------------------
 .byte   N32 ,Dn3
 .byte   W72
 .byte   N11
 .byte   W24
@  #01 @007   ----------------------------------------
 .byte   Fn3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Cn3
 .byte   W24
 .byte   Dn3
 .byte   W24
@  #01 @008   ----------------------------------------
 .byte   En3
 .byte   W48
 .byte   Bn4
 .byte   W24
 .byte   An4
 .byte   W24
@  #01 @009   ----------------------------------------
 .byte   N03 ,Bn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Cn4
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   N08 ,Bn2
 .byte   W18
 .byte   N02
 .byte   W06
 .byte   N28 ,Cn3
 .byte   W24
@  #01 @010   ----------------------------------------
 .byte   W24
 .byte   W12
 .byte   N05 ,Bn2
 .byte   W12
 .byte   N11 ,Cn3
 .byte   W24
 .byte   N17 ,Gn2
 .byte   W24
@  #01 @011   ----------------------------------------
 .byte   W12
 .byte   N05 ,Bn2
 .byte   W12
 .byte   N28 ,Cn3
 .byte   W48
 .byte   W12
 .byte   N05 ,Bn2
 .byte   W12
@  #01 @012   ----------------------------------------
 .byte   N11 ,Cn3
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   Gn2
 .byte   W24
@  #01 @013   ----------------------------------------
 .byte   N05 ,Cn3
 .byte   N05 ,En3
 .byte   W12
 .byte   Dn3
 .byte   N05 ,Fn3
 .byte   W12
 .byte   N11 ,En3
 .byte   N11 ,Gn3
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   An3
 .byte   W24
@  #01 @014   ----------------------------------------
 .byte   W48
 .byte   Gn3
 .byte   W24
 .byte   Cn3
 .byte   W24
@  #01 @015   ----------------------------------------
 .byte   W24
 .byte   N05 ,Dn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N03 ,Dn4
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   N11 ,Gn4
 .byte   W24
@  #01 @016   ----------------------------------------
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N05 ,Cn4
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   N11 ,Bn4
 .byte   W24
@  #01 @017   ----------------------------------------
 .byte   An4
 .byte   W24
 .byte   N28 ,Gn4
 .byte   W48
 .byte   W12
 .byte   N05 ,Cn4
 .byte   W12
@  #01 @018   ----------------------------------------
 .byte   N11 ,Gn4
 .byte   W24
 .byte   Fn4
 .byte   W24
 .byte   En4
 .byte   W24
 .byte   N32 ,Dn4
 .byte   W24
@  #01 @019   ----------------------------------------
 .byte   W48
 .byte   N11
 .byte   W24
 .byte   Fn4
 .byte   W24
@  #01 @020   ----------------------------------------
 .byte   En4
 .byte   W24
 .byte   Cn4
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   En4
 .byte   W24
@  #01 @021   ----------------------------------------
 .byte   W24
 .byte   Bn5
 .byte   W24
 .byte   An5
 .byte   W24
 .byte   N03 ,Bn5
 .byte   W08
 .byte   An5
 .byte   W08
 .byte   En5
 .byte   W08
@  #01 @022   ----------------------------------------
 .byte   Cn5
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   N08 ,Bn3
 .byte   W18
 .byte   N02
 .byte   W06
 .byte   N28 ,Cn4
 .byte   W48
@  #01 @023   ----------------------------------------
 .byte   W12
 .byte   N05 ,Bn3
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W24
 .byte   N17 ,Gn3
 .byte   W36
 .byte   N05 ,Bn3
 .byte   W12
@  #01 @024   ----------------------------------------
 .byte   N28 ,Cn4
 .byte   W48
 .byte   W12
 .byte   N05 ,Bn3
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W24
@  #01 @025   ----------------------------------------
 .byte   Dn4
 .byte   W24
 .byte   En4
 .byte   W24
 .byte   Cn4
 .byte   W24
 .byte   N05
 .byte   N05 ,En4
 .byte   W12
 .byte   Dn4
 .byte   N05 ,Fn4
 .byte   W12
@  #01 @026   ----------------------------------------
 .byte   N11 ,En4
 .byte   N11 ,Gn4
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   An4
 .byte   W48
@  #01 @027   ----------------------------------------
 .byte   W24
 .byte   Gn4
 .byte   W24
 .byte   Cn4
 .byte   W48
@  #01 @028   ----------------------------------------
 .byte   N23 ,Dn5
 .byte   W48
 .byte   N28 ,Gn3
 .byte   W48
@  #01 @029   ----------------------------------------
 .byte   W12
 .byte   GOTO
  .word Label_0113197E
@  #01 @030   ----------------------------------------
 .byte   N05 ,Cn3 ,v112
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W24
 .byte   Bn3
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   N28 ,Gn3
 .byte   W48
@  #01 @031   ----------------------------------------
 .byte   W12
 .byte   N05 ,Cn3
 .byte   W12
 .byte   N11 ,Gn3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   En3
 .byte   W24
@  #01 @032   ----------------------------------------
 .byte   N32 ,Dn3
 .byte   W48
 .byte   W24
 .byte   N11
 .byte   W24
@  #01 @033   ----------------------------------------
 .byte   Fn3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Cn3
 .byte   W24
 .byte   Dn3
 .byte   W24
@  #01 @034   ----------------------------------------
 .byte   En3
 .byte   W48
 .byte   Bn4
 .byte   W24
 .byte   An4
 .byte   W24
@  #01 @035   ----------------------------------------
 .byte   N03 ,Bn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Cn4
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   N08 ,Bn2
 .byte   W18
 .byte   N02
 .byte   W06
 .byte   N28 ,Cn3
 .byte   W48
@  #01 @036   ----------------------------------------
 .byte   W12
 .byte   N05 ,Bn2
 .byte   W12
 .byte   N11 ,Cn3
 .byte   W24
 .byte   N17 ,Gn2
 .byte   W36
 .byte   N05 ,Bn2
 .byte   W12
@  #01 @037   ----------------------------------------
 .byte   N28 ,Cn3
 .byte   W24
 .byte   W24
 .byte   W12
 .byte   N05 ,Bn2
 .byte   W12
 .byte   N11 ,Cn3
 .byte   W24
@  #01 @038   ----------------------------------------
 .byte   Dn3
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   Gn2
 .byte   W24
 .byte   N05 ,Cn3
 .byte   N05 ,En3
 .byte   W12
 .byte   Dn3
 .byte   N05 ,Fn3
 .byte   W12
@  #01 @039   ----------------------------------------
 .byte   N11 ,En3
 .byte   N11 ,Gn3
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   An3
 .byte   W72
@  #01 @040   ----------------------------------------
 .byte   Gn3
 .byte   W24
 .byte   Cn3
 .byte   W48
 .byte   N05 ,Dn3
 .byte   W12
 .byte   Cn4
 .byte   W12
@  #01 @041   ----------------------------------------
 .byte   N03 ,Dn4
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   N11 ,Gn4
 .byte   W48
 .byte   N11
 .byte   W24
@  #01 @042   ----------------------------------------
 .byte   N05 ,Cn4
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   N11 ,Bn4
 .byte   W24
 .byte   An4
 .byte   W24
 .byte   N28 ,Gn4
 .byte   W24
@  #01 @043   ----------------------------------------
 .byte   W24
 .byte   W12
 .byte   N05 ,Cn4
 .byte   W12
 .byte   N11 ,Gn4
 .byte   W24
 .byte   Fn4
 .byte   W24
@  #01 @044   ----------------------------------------
 .byte   En4
 .byte   W24
 .byte   N32 ,Dn4
 .byte   W72
@  #01 @045   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   Fn4
 .byte   W24
 .byte   En4
 .byte   W24
 .byte   Cn4
 .byte   W24
@  #01 @046   ----------------------------------------
 .byte   Dn4
 .byte   W24
 .byte   En4
 .byte   W48
 .byte   Bn5
 .byte   W24
@  #01 @047   ----------------------------------------
 .byte   An5
 .byte   W24
 .byte   N03 ,Bn5
 .byte   W08
 .byte   An5
 .byte   W08
 .byte   En5
 .byte   W08
 .byte   Cn5
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   N08 ,Bn3
 .byte   W18
 .byte   N02
 .byte   W06
@  #01 @048   ----------------------------------------
 .byte   N28 ,Cn4
 .byte   W48
 .byte   W12
 .byte   N05 ,Bn3
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W24
@  #01 @049   ----------------------------------------
 .byte   N17 ,Gn3
 .byte   W36
 .byte   N05 ,Bn3
 .byte   W12
 .byte   N28 ,Cn4
 .byte   W48
@  #01 @050   ----------------------------------------
 .byte   W12
 .byte   N05 ,Bn3
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   En4
 .byte   W24
@  #01 @051   ----------------------------------------
 .byte   Cn4
 .byte   W24
 .byte   N05
 .byte   N05 ,En4
 .byte   W12
 .byte   Dn4
 .byte   N05 ,Fn4
 .byte   W12
 .byte   N11 ,En4
 .byte   N11 ,Gn4
 .byte   W24
 .byte   N11
 .byte   W24
@  #01 @052   ----------------------------------------
 .byte   An4
 .byte   W72
 .byte   Gn4
 .byte   W24
@  #01 @053   ----------------------------------------
 .byte   Cn4
 .byte   W48
 .byte   N23 ,Dn5
 .byte   W23
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

.align 2, 0
song06_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 45
 .byte   VOL , 47*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W24
 .byte   N05 ,Gn4 ,v064
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N11 ,Gn4
 .byte   N11 ,Cn5
 .byte   W48
@  #02 @001   ----------------------------------------
 .byte   An4
 .byte   N11 ,Cn5
 .byte   W72
 .byte   Gn4
 .byte   N11 ,Cn5
 .byte   W24
@  #02 @002   ----------------------------------------
 .byte   N05 ,Fn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   Gn3
 .byte   W48
@  #02 @003   ----------------------------------------
 .byte   W24
 .byte   Gn4
 .byte   N11 ,En5
 .byte   W24
 .byte   N05 ,Fn4
 .byte   N05 ,Dn5
 .byte   W12
Label_011320AF:
 .byte   N05 ,Gn4 ,v064
 .byte   N05 ,En5
 .byte   W36
@  #02 @004   ----------------------------------------
 .byte   N11 ,An4
 .byte   N11 ,Fn5
 .byte   W72
 .byte   Gn4
 .byte   N11 ,Dn5
 .byte   W24
@  #02 @005   ----------------------------------------
 .byte   N05 ,Fn4
 .byte   N05 ,Cn5
 .byte   W12
 .byte   Gn4
 .byte   N05 ,Dn5
 .byte   W36
 .byte   N11 ,Gn4
 .byte   N11 ,Dn5
 .byte   W48
@  #02 @006   ----------------------------------------
 .byte   W24
 .byte   An4
 .byte   N11 ,Fn5
 .byte   W24
 .byte   N05 ,Gn4
 .byte   N05 ,En5
 .byte   W12
 .byte   An4
 .byte   N05 ,Fn5
 .byte   W36
@  #02 @007   ----------------------------------------
 .byte   N11 ,Gs4
 .byte   N11 ,Dn5
 .byte   W24
 .byte   N05 ,Gn4
 .byte   N05 ,Cn5
 .byte   W12
 .byte   Gs4
 .byte   N05 ,Dn5
 .byte   W36
 .byte   N11 ,Gn4
 .byte   N11 ,Cn5
 .byte   W24
@  #02 @008   ----------------------------------------
 .byte   N05 ,Fn4
 .byte   N05 ,Bn4
 .byte   W12
 .byte   Gn4
 .byte   N05 ,Cn5
 .byte   W12
 .byte   N32 ,Bn3
 .byte   W72
@  #02 @009   ----------------------------------------
 .byte   W96
@  #02 @010   ----------------------------------------
 .byte   N11 ,En4
 .byte   N11 ,Bn4
 .byte   W72
 .byte   Gn4
 .byte   N11 ,Cn5
 .byte   W24
@  #02 @011   ----------------------------------------
 .byte   W48
 .byte   Gn4
 .byte   N11 ,Dn5
 .byte   W24
 .byte   N05 ,Fn4
 .byte   N05 ,Cn5
 .byte   W12
 .byte   Gn4
 .byte   N05 ,Dn5
 .byte   W12
@  #02 @012   ----------------------------------------
 .byte   W96
@  #02 @013   ----------------------------------------
 .byte   Gn4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N11 ,Gn4
 .byte   N11 ,Cn5
 .byte   W48
 .byte   An4
 .byte   N11 ,Cn5
 .byte   W24
@  #02 @014   ----------------------------------------
 .byte   W48
 .byte   Gn4
 .byte   N11 ,Cn5
 .byte   W24
 .byte   N05 ,Fn4
 .byte   W12
 .byte   Gn4
 .byte   W12
@  #02 @015   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   Gn3
 .byte   W72
@  #02 @016   ----------------------------------------
 .byte   Gn5
 .byte   N11 ,En6
 .byte   W24
 .byte   N05 ,Fn5
 .byte   N05 ,Dn6
 .byte   W12
 .byte   Gn5
 .byte   N05 ,En6
 .byte   W36
 .byte   N11 ,An5
 .byte   N11 ,Fn6
 .byte   W24
@  #02 @017   ----------------------------------------
 .byte   W48
 .byte   Gn5
 .byte   N11 ,Dn6
 .byte   W24
 .byte   N05 ,Fn5
 .byte   N05 ,Cn6
 .byte   W12
 .byte   Gn5
 .byte   N05 ,Dn6
 .byte   W12
@  #02 @018   ----------------------------------------
 .byte   W24
 .byte   N11 ,Gn5
 .byte   N11 ,Dn6
 .byte   W72
@  #02 @019   ----------------------------------------
 .byte   An5
 .byte   N11 ,Fn6
 .byte   W24
 .byte   N05 ,Gn5
 .byte   N05 ,En6
 .byte   W12
 .byte   An5
 .byte   N05 ,Fn6
 .byte   W36
 .byte   N11 ,Gs5
 .byte   N11 ,Dn6
 .byte   W24
@  #02 @020   ----------------------------------------
 .byte   N05 ,Gn5
 .byte   N05 ,Cn6
 .byte   W12
 .byte   Gs5
 .byte   N05 ,Dn6
 .byte   W36
 .byte   N11 ,Gn5
 .byte   N11 ,Cn6
 .byte   W24
 .byte   N05 ,Fn5
 .byte   N05 ,Bn5
 .byte   W12
 .byte   Gn5
 .byte   N05 ,Cn6
 .byte   W12
@  #02 @021   ----------------------------------------
 .byte   N32 ,Bn4
 .byte   W96
@  #02 @022   ----------------------------------------
 .byte   W72
 .byte   N11 ,En5
 .byte   N11 ,Bn5
 .byte   W24
@  #02 @023   ----------------------------------------
 .byte   W48
 .byte   Gn5
 .byte   N11 ,Cn6
 .byte   W48
@  #02 @024   ----------------------------------------
 .byte   W24
 .byte   Gn5
 .byte   N11 ,Dn6
 .byte   W24
 .byte   N05 ,Fn5
 .byte   N05 ,Cn6
 .byte   W12
 .byte   Gn5
 .byte   N05 ,Dn6
 .byte   W36
@  #02 @025   ----------------------------------------
 .byte   W72
 .byte   Gn5
 .byte   W12
 .byte   Fn5
 .byte   W12
@  #02 @026   ----------------------------------------
 .byte   N11 ,Gn5
 .byte   N11 ,Cn6
 .byte   W48
 .byte   An5
 .byte   N11 ,Cn6
 .byte   W48
@  #02 @027   ----------------------------------------
 .byte   W24
 .byte   Gn5
 .byte   N11 ,Cn6
 .byte   W24
 .byte   N05 ,Fn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   N11
 .byte   W24
@  #02 @028   ----------------------------------------
 .byte   N23 ,Gn4
 .byte   W72
 .byte   N11
 .byte   N11 ,En5
 .byte   W24
@  #02 @029   ----------------------------------------
 .byte   N05 ,Fn4
 .byte   N05 ,Dn5
 .byte   W12
 .byte   GOTO
  .word Label_011320AF
@  #02 @030   ----------------------------------------
 .byte   N05 ,Gn4 ,v064
 .byte   N05 ,En5
 .byte   W36
 .byte   N11 ,An4
 .byte   N11 ,Fn5
 .byte   W48
 .byte   W24
@  #02 @031   ----------------------------------------
 .byte   Gn4
 .byte   N11 ,Dn5
 .byte   W24
 .byte   N05 ,Fn4
 .byte   N05 ,Cn5
 .byte   W12
 .byte   Gn4
 .byte   N05 ,Dn5
 .byte   W36
 .byte   N11 ,Gn4
 .byte   N11 ,Dn5
 .byte   W72
@  #02 @032   ----------------------------------------
 .byte   An4
 .byte   N11 ,Fn5
 .byte   W24
 .byte   N05 ,Gn4
 .byte   N05 ,En5
 .byte   W12
 .byte   An4
 .byte   N05 ,Fn5
 .byte   W36
 .byte   N11 ,Gs4
 .byte   N11 ,Dn5
 .byte   W24
@  #02 @033   ----------------------------------------
 .byte   N05 ,Gn4
 .byte   N05 ,Cn5
 .byte   W12
 .byte   Gs4
 .byte   N05 ,Dn5
 .byte   W12
 .byte   W24
 .byte   N11 ,Gn4
 .byte   N11 ,Cn5
 .byte   W24
 .byte   N05 ,Fn4
 .byte   N05 ,Bn4
 .byte   W12
 .byte   Gn4
 .byte   N05 ,Cn5
 .byte   W12
@  #02 @034   ----------------------------------------
 .byte   N32 ,Bn3
 .byte   W24
 .byte   W96
@  #02 @035   ----------------------------------------
 .byte   W48
 .byte   N11 ,En4
 .byte   N11 ,Bn4
 .byte   W48
@  #02 @036   ----------------------------------------
 .byte   W24
 .byte   Gn4
 .byte   N11 ,Cn5
 .byte   W72
@  #02 @037   ----------------------------------------
 .byte   Gn4
 .byte   N11 ,Dn5
 .byte   W24
 .byte   N05 ,Fn4
 .byte   N05 ,Cn5
 .byte   W12
 .byte   Gn4
 .byte   N05 ,Dn5
 .byte   W60
@  #02 @038   ----------------------------------------
 .byte   W48
 .byte   Gn4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N11 ,Gn4
 .byte   N11 ,Cn5
 .byte   W24
@  #02 @039   ----------------------------------------
 .byte   W24
 .byte   An4
 .byte   N11 ,Cn5
 .byte   W72
@  #02 @040   ----------------------------------------
 .byte   Gn4
 .byte   N11 ,Cn5
 .byte   W24
 .byte   N05 ,Fn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   Gn3
 .byte   W24
@  #02 @041   ----------------------------------------
 .byte   W48
 .byte   Gn5
 .byte   N11 ,En6
 .byte   W24
 .byte   N05 ,Fn5
 .byte   N05 ,Dn6
 .byte   W12
 .byte   Gn5
 .byte   N05 ,En6
 .byte   W12
@  #02 @042   ----------------------------------------
 .byte   W24
 .byte   N11 ,An5
 .byte   N11 ,Fn6
 .byte   W72
@  #02 @043   ----------------------------------------
 .byte   Gn5
 .byte   N11 ,Dn6
 .byte   W24
 .byte   N05 ,Fn5
 .byte   N05 ,Cn6
 .byte   W12
 .byte   Gn5
 .byte   N05 ,Dn6
 .byte   W36
 .byte   N11 ,Gn5
 .byte   N11 ,Dn6
 .byte   W24
@  #02 @044   ----------------------------------------
 .byte   W48
 .byte   An5
 .byte   N11 ,Fn6
 .byte   W24
 .byte   N05 ,Gn5
 .byte   N05 ,En6
 .byte   W12
 .byte   An5
 .byte   N05 ,Fn6
 .byte   W12
@  #02 @045   ----------------------------------------
 .byte   W24
 .byte   N11 ,Gs5
 .byte   N11 ,Dn6
 .byte   W24
 .byte   N05 ,Gn5
 .byte   N05 ,Cn6
 .byte   W12
 .byte   Gs5
 .byte   N05 ,Dn6
 .byte   W36
@  #02 @046   ----------------------------------------
 .byte   N11 ,Gn5
 .byte   N11 ,Cn6
 .byte   W24
 .byte   N05 ,Fn5
 .byte   N05 ,Bn5
 .byte   W12
 .byte   Gn5
 .byte   N05 ,Cn6
 .byte   W12
 .byte   N32 ,Bn4
 .byte   W48
@  #02 @047   ----------------------------------------
 .byte   W96
@  #02 @048   ----------------------------------------
 .byte   W24
 .byte   N11 ,En5
 .byte   N11 ,Bn5
 .byte   W72
@  #02 @049   ----------------------------------------
 .byte   Gn5
 .byte   N11 ,Cn6
 .byte   W72
 .byte   Gn5
 .byte   N11 ,Dn6
 .byte   W24
@  #02 @050   ----------------------------------------
 .byte   N05 ,Fn5
 .byte   N05 ,Cn6
 .byte   W12
 .byte   Gn5
 .byte   N05 ,Dn6
 .byte   W84
@  #02 @051   ----------------------------------------
 .byte   W24
 .byte   Gn5
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   N11 ,Gn5
 .byte   N11 ,Cn6
 .byte   W48
@  #02 @052   ----------------------------------------
 .byte   An5
 .byte   N11 ,Cn6
 .byte   W72
 .byte   Gn5
 .byte   N11 ,Cn6
 .byte   W24
@  #02 @053   ----------------------------------------
 .byte   N05 ,Fn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   N23 ,Gn4
 .byte   W23
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

.align 2, 0
song06_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 1
 .byte   VOL , 47*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N32 ,Cn2 ,v096
 .byte   W72
 .byte   Fn2
 .byte   W24
@  #03 @001   ----------------------------------------
 .byte   W48
 .byte   Dn2
 .byte   W48
@  #03 @002   ----------------------------------------
 .byte   W96
@  #03 @003   ----------------------------------------
 .byte   Cn2
 .byte   W60
Label_011323B4:
 .byte   W12
 .byte   N32 ,Fn2 ,v096
 .byte   W24
@  #03 @004   ----------------------------------------
Label_011323B9:
 .byte   W48
 .byte   N32 ,En2 ,v096
 .byte   W48
 .byte   PEND 
@  #03 @005   ----------------------------------------
Label_011323BF:
 .byte   W24
 .byte   N32 ,Dn2 ,v096
 .byte   W72
 .byte   PEND 
@  #03 @006   ----------------------------------------
 .byte   Fn2
 .byte   W72
 .byte   En2
 .byte   W24
@  #03 @007   ----------------------------------------
 .byte   W48
 .byte   An1
 .byte   W48
@  #03 @008   ----------------------------------------
 .byte   W24
 .byte   Fs2
 .byte   W72
@  #03 @009   ----------------------------------------
 .byte   W72
 .byte   Fn2
 .byte   W24
@  #03 @010   ----------------------------------------
 .byte   PATT
  .word Label_011323B9
@  #03 @011   ----------------------------------------
 .byte   PATT
  .word Label_011323BF
@  #03 @012   ----------------------------------------
 .byte   W72
 .byte   N32 ,Cn2 ,v096
 .byte   W24
@  #03 @013   ----------------------------------------
Label_011323E1:
 .byte   W48
 .byte   N32 ,Fn2 ,v096
 .byte   W48
 .byte   PEND 
@  #03 @014   ----------------------------------------
 .byte   PATT
  .word Label_011323BF
@  #03 @015   ----------------------------------------
 .byte   W72
 .byte   N32 ,Cn3 ,v096
 .byte   W24
@  #03 @016   ----------------------------------------
Label_011323F1:
 .byte   W48
 .byte   N32 ,Fn3 ,v096
 .byte   W48
 .byte   PEND 
@  #03 @017   ----------------------------------------
Label_011323F7:
 .byte   W24
 .byte   N32 ,En3 ,v096
 .byte   W72
 .byte   PEND 
@  #03 @018   ----------------------------------------
 .byte   Dn3
 .byte   W72
 .byte   Fn3
 .byte   W24
@  #03 @019   ----------------------------------------
Label_01132401:
 .byte   W48
 .byte   N32 ,En3 ,v096
 .byte   W48
 .byte   PEND 
@  #03 @020   ----------------------------------------
 .byte   W24
 .byte   An2
 .byte   W72
@  #03 @021   ----------------------------------------
 .byte   Fs3
 .byte   W96
@  #03 @022   ----------------------------------------
 .byte   PATT
  .word Label_011323F1
@  #03 @023   ----------------------------------------
 .byte   PATT
  .word Label_011323F7
@  #03 @024   ----------------------------------------
Label_01132416:
 .byte   N32 ,Dn3 ,v096
 .byte   W96
 .byte   PEND 
@  #03 @025   ----------------------------------------
 .byte   PATT
  .word Label_01132401
@  #03 @026   ----------------------------------------
Label_01132420:
 .byte   W24
 .byte   N32 ,Fn3 ,v096
 .byte   W72
 .byte   PEND 
@  #03 @027   ----------------------------------------
 .byte   PATT
  .word Label_01132416
@  #03 @028   ----------------------------------------
 .byte   W48
 .byte   N32 ,Cn2 ,v096
 .byte   W48
@  #03 @029   ----------------------------------------
 .byte   W12
 .byte   GOTO
  .word Label_011323B4
@  #03 @030   ----------------------------------------
 .byte   W12
 .byte   N32 ,Fn2 ,v096
 .byte   W72
Label_0113243B:
 .byte   N32 ,En2 ,v096
 .byte   W72
@  #03 @031   ----------------------------------------
 .byte   Dn2
 .byte   W24
 .byte   PEND 
@  #03 @032   ----------------------------------------
 .byte   PATT
  .word Label_011323E1
@  #03 @033   ----------------------------------------
 .byte   W24
 .byte   N32 ,En2 ,v096
 .byte   W72
@  #03 @034   ----------------------------------------
 .byte   An1
 .byte   W72
 .byte   Fs2
 .byte   W24
@  #03 @035   ----------------------------------------
 .byte   W96
@  #03 @036   ----------------------------------------
 .byte   W24
 .byte   Fn2
 .byte   W72
@  #03 @037   ----------------------------------------
 .byte   PATT
  .word Label_0113243B
@  #03 @038   ----------------------------------------
 .byte   W96
@  #03 @039   ----------------------------------------
 .byte   W24
 .byte   N32 ,Cn2 ,v096
 .byte   W72
@  #03 @040   ----------------------------------------
 .byte   Fn2
 .byte   W72
 .byte   Dn2
 .byte   W24
@  #03 @041   ----------------------------------------
 .byte   W96
@  #03 @042   ----------------------------------------
 .byte   W24
 .byte   Cn3
 .byte   W72
@  #03 @043   ----------------------------------------
Label_01132467:
 .byte   N32 ,Fn3 ,v096
 .byte   W72
 .byte   En3
 .byte   W24
 .byte   PEND 
@  #03 @044   ----------------------------------------
Label_0113246E:
 .byte   W48
 .byte   N32 ,Dn3 ,v096
 .byte   W48
 .byte   PEND 
@  #03 @045   ----------------------------------------
 .byte   PATT
  .word Label_01132420
@  #03 @046   ----------------------------------------
 .byte   N32 ,En3 ,v096
 .byte   W72
 .byte   An2
 .byte   W24
@  #03 @047   ----------------------------------------
 .byte   W48
 .byte   Fs3
 .byte   W48
@  #03 @048   ----------------------------------------
 .byte   W96
@  #03 @049   ----------------------------------------
 .byte   PATT
  .word Label_01132467
@  #03 @050   ----------------------------------------
 .byte   PATT
  .word Label_0113246E
@  #03 @051   ----------------------------------------
 .byte   W96
@  #03 @052   ----------------------------------------
 .byte   N32 ,En3 ,v096
 .byte   W72
 .byte   Fn3
 .byte   W24
@  #03 @053   ----------------------------------------
 .byte   PATT
  .word Label_0113246E
@  #03 @054   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

.align 2, 0
song06_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 19
 .byte   VOL , 32*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W24
 .byte   N11 ,Gn2 ,v096
 .byte   W24
 .byte   N11
 .byte   N11 ,Cn3
 .byte   W48
@  #04 @001   ----------------------------------------
 .byte   An2
 .byte   N11 ,Cn3
 .byte   W72
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W24
@  #04 @002   ----------------------------------------
 .byte   Gn2
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   Gn1
 .byte   W48
@  #04 @003   ----------------------------------------
 .byte   W24
 .byte   Gn2
 .byte   N11 ,En3
 .byte   W24
 .byte   Gn2
 .byte   N11 ,En3
 .byte   W12
Label_01142294:
 .byte   W36
@  #04 @004   ----------------------------------------
 .byte   N11 ,An2 ,v096
 .byte   N11 ,Fn3
 .byte   W72
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W24
@  #04 @005   ----------------------------------------
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W48
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W48
@  #04 @006   ----------------------------------------
 .byte   W24
 .byte   An2
 .byte   N11 ,Fn3
 .byte   W24
 .byte   An2
 .byte   N11 ,Fn3
 .byte   W48
@  #04 @007   ----------------------------------------
 .byte   Gs2
 .byte   N11 ,Dn3
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Dn3
 .byte   W48
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W24
@  #04 @008   ----------------------------------------
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W24
 .byte   N32 ,Bn2
 .byte   W72
@  #04 @009   ----------------------------------------
 .byte   W96
@  #04 @010   ----------------------------------------
 .byte   N11 ,Gn2
 .byte   N11 ,Dn3
 .byte   W72
 .byte   Bn2
 .byte   N11 ,En3
 .byte   W24
@  #04 @011   ----------------------------------------
 .byte   W48
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W24
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W24
@  #04 @012   ----------------------------------------
 .byte   W96
@  #04 @013   ----------------------------------------
 .byte   Gn2
 .byte   W24
 .byte   N11
 .byte   N11 ,Cn3
 .byte   W48
 .byte   An2
 .byte   N11 ,Cn3
 .byte   W24
@  #04 @014   ----------------------------------------
 .byte   W48
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W24
 .byte   Gn2
 .byte   W24
@  #04 @015   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   Gn1
 .byte   W72
@  #04 @016   ----------------------------------------
 .byte   Gn3
 .byte   N11 ,En4
 .byte   W24
 .byte   Gn3
 .byte   N11 ,En4
 .byte   W48
 .byte   An3
 .byte   N11 ,Fn4
 .byte   W24
@  #04 @017   ----------------------------------------
 .byte   W48
 .byte   Gn3
 .byte   N11 ,Dn4
 .byte   W24
 .byte   Gn3
 .byte   N11 ,Dn4
 .byte   W24
@  #04 @018   ----------------------------------------
Label_01142301:
 .byte   W24
 .byte   N11 ,Gn3 ,v096
 .byte   N11 ,Dn4
 .byte   W72
 .byte   PEND 
@  #04 @019   ----------------------------------------
 .byte   An3
 .byte   N11 ,Fn4
 .byte   W24
 .byte   An3
 .byte   N11 ,Fn4
 .byte   W48
 .byte   Gs3
 .byte   N11 ,Dn4
 .byte   W24
@  #04 @020   ----------------------------------------
 .byte   Gs3
 .byte   N11 ,Dn4
 .byte   W48
 .byte   Gn3
 .byte   N11 ,Cn4
 .byte   W24
 .byte   Gn3
 .byte   N11 ,Cn4
 .byte   W24
@  #04 @021   ----------------------------------------
 .byte   N32 ,Bn3
 .byte   W96
@  #04 @022   ----------------------------------------
 .byte   W72
 .byte   N11 ,Gn3
 .byte   N11 ,Dn4
 .byte   W24
@  #04 @023   ----------------------------------------
 .byte   W48
 .byte   Bn3
 .byte   N11 ,En4
 .byte   W48
@  #04 @024   ----------------------------------------
 .byte   W24
 .byte   Gn3
 .byte   N11 ,Dn4
 .byte   W24
 .byte   Gn3
 .byte   N11 ,Dn4
 .byte   W48
@  #04 @025   ----------------------------------------
 .byte   W72
 .byte   Gn3
 .byte   W24
@  #04 @026   ----------------------------------------
 .byte   N11
 .byte   N11 ,Cn4
 .byte   W48
 .byte   An3
 .byte   N11 ,Cn4
 .byte   W48
@  #04 @027   ----------------------------------------
 .byte   W24
 .byte   Gn3
 .byte   N11 ,Cn4
 .byte   W24
 .byte   Gn3
 .byte   W24
 .byte   N11
 .byte   W24
@  #04 @028   ----------------------------------------
 .byte   N23 ,Gn2
 .byte   W72
 .byte   N11
 .byte   N11 ,En3
 .byte   W24
@  #04 @029   ----------------------------------------
 .byte   Gn2
 .byte   N11 ,En3
 .byte   W12
 .byte   GOTO
  .word Label_01142294
@  #04 @030   ----------------------------------------
 .byte   W36
 .byte   N11 ,An2 ,v096
 .byte   N11 ,Fn3
 .byte   W48
 .byte   W24
@  #04 @031   ----------------------------------------
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W24
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W48
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W72
@  #04 @032   ----------------------------------------
 .byte   An2
 .byte   N11 ,Fn3
 .byte   W24
 .byte   An2
 .byte   N11 ,Fn3
 .byte   W48
 .byte   Gs2
 .byte   N11 ,Dn3
 .byte   W24
@  #04 @033   ----------------------------------------
 .byte   Gs2
 .byte   N11 ,Dn3
 .byte   W24
 .byte   W24
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W24
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W24
@  #04 @034   ----------------------------------------
 .byte   N32 ,Bn2
 .byte   W24
 .byte   W96
@  #04 @035   ----------------------------------------
 .byte   W48
 .byte   N11 ,Gn2
 .byte   N11 ,Dn3
 .byte   W48
@  #04 @036   ----------------------------------------
 .byte   W24
 .byte   Bn2
 .byte   N11 ,En3
 .byte   W72
@  #04 @037   ----------------------------------------
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W24
 .byte   Gn2
 .byte   N11 ,Dn3
 .byte   W72
@  #04 @038   ----------------------------------------
 .byte   W48
 .byte   Gn2
 .byte   W24
 .byte   N11
 .byte   N11 ,Cn3
 .byte   W24
@  #04 @039   ----------------------------------------
 .byte   W24
 .byte   An2
 .byte   N11 ,Cn3
 .byte   W72
@  #04 @040   ----------------------------------------
 .byte   Gn2
 .byte   N11 ,Cn3
 .byte   W24
 .byte   Gn2
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   Gn1
 .byte   W24
@  #04 @041   ----------------------------------------
 .byte   W48
 .byte   Gn3
 .byte   N11 ,En4
 .byte   W24
 .byte   Gn3
 .byte   N11 ,En4
 .byte   W24
@  #04 @042   ----------------------------------------
 .byte   W24
 .byte   An3
 .byte   N11 ,Fn4
 .byte   W72
@  #04 @043   ----------------------------------------
 .byte   Gn3
 .byte   N11 ,Dn4
 .byte   W24
 .byte   Gn3
 .byte   N11 ,Dn4
 .byte   W48
 .byte   Gn3
 .byte   N11 ,Dn4
 .byte   W24
@  #04 @044   ----------------------------------------
 .byte   W48
 .byte   An3
 .byte   N11 ,Fn4
 .byte   W24
 .byte   An3
 .byte   N11 ,Fn4
 .byte   W24
@  #04 @045   ----------------------------------------
 .byte   W24
 .byte   Gs3
 .byte   N11 ,Dn4
 .byte   W24
 .byte   Gs3
 .byte   N11 ,Dn4
 .byte   W48
@  #04 @046   ----------------------------------------
 .byte   Gn3
 .byte   N11 ,Cn4
 .byte   W24
 .byte   Gn3
 .byte   N11 ,Cn4
 .byte   W24
 .byte   N32 ,Bn3
 .byte   W48
@  #04 @047   ----------------------------------------
 .byte   W96
@  #04 @048   ----------------------------------------
 .byte   PATT
  .word Label_01142301
@  #04 @049   ----------------------------------------
 .byte   N11 ,Bn3 ,v096
 .byte   N11 ,En4
 .byte   W72
 .byte   Gn3
 .byte   N11 ,Dn4
 .byte   W24
@  #04 @050   ----------------------------------------
 .byte   Gn3
 .byte   N11 ,Dn4
 .byte   W96
@  #04 @051   ----------------------------------------
 .byte   W24
 .byte   Gn3
 .byte   W24
 .byte   N11
 .byte   N11 ,Cn4
 .byte   W48
@  #04 @052   ----------------------------------------
 .byte   An3
 .byte   N11 ,Cn4
 .byte   W72
 .byte   Gn3
 .byte   N11 ,Cn4
 .byte   W24
@  #04 @053   ----------------------------------------
 .byte   Gn3
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N23 ,Gn2
 .byte   W23
 .byte   FINE

@******************************************************@
	.align	2

Song_TeatimeJoy_SurfingKyogre:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song06_pri	@ Priority
	.byte	song06_rev	@ Reverb.
    
	.word	song06_grp
    
	.word	song06_001
	.word	song06_002
	.word	song06_003
	.word	song06_004

	.end
