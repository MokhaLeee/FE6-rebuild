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
	.global	Song_AFuneralOfFlowers
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

.align 2, 0
song06_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   TEMPO , 78*song06_tbs/2
Label_01016274:
 .byte   VOICE , 46
 .byte   VOL , 40*song06_mvl/mxv
 .byte   PAN , c_v-27
 .byte   N23 ,Bn3 ,v080
 .byte   N11 ,Bn0
 .byte   W02
 .byte   N21 ,Dn4
 .byte   W02
 .byte   N19 ,Fs4
 .byte   W08
 .byte   N05 ,Cs2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Fs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   N06 ,Fs3
 .byte   N05 ,Dn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En3
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N11 ,Bn0
 .byte   N24 ,Bn2
 .byte   N22 ,Gn3
 .byte   N22 ,Gn4
 .byte   W12
 .byte   N05 ,Dn2
 .byte   W06
 .byte   Gn2
 .byte   W06
@  #01 @001   ----------------------------------------
 .byte   Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N17 ,Cs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N32 ,Dn3 ,v080 ,gtp3
 .byte   N23 ,Gn3
 .byte   N05 ,An0
 .byte   W02
 .byte   N21 ,Cs4
 .byte   W02
 .byte   N19 ,Gn4
 .byte   W02
 .byte   N05 ,Cs1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N05 ,An3
 .byte   N05 ,Cs4
 .byte   N05 ,An4
 .byte   W06
 .byte   En3
 .byte   W06
@  #01 @002   ----------------------------------------
 .byte   An3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   An0
 .byte   N24 ,An2
 .byte   N22 ,Fs3
 .byte   N22 ,Fs4
 .byte   W06
 .byte   N05 ,An1
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N32 ,Bn2 ,v080 ,gtp3
 .byte   W06
 .byte   N05 ,En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Dn4
 .byte   N05 ,Dn5
 .byte   W06
 .byte   En4
 .byte   N05 ,En5
 .byte   W06
@  #01 @003   ----------------------------------------
 .byte   Gn1
 .byte   N32 ,Fs3 ,v080 ,gtp3
 .byte   Fs4
 .byte   TIE ,Gn0
 .byte   W02
 .byte   N32 ,Bn4 ,v080 ,gtp1
 .byte   W02
 .byte   N30 ,Dn5 ,v080 ,gtp1
 .byte   W02
 .byte   N05 ,Dn2
 .byte   N28 ,Fs5 ,v080 ,gtp1
 .byte   W06
 .byte   N05 ,Gn2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Dn3
 .byte   N32 ,Gn3 ,v080 ,gtp3
 .byte   N32 ,Gn4 ,v080 ,gtp2
 .byte   Gn5
 .byte   W06
 .byte   N05 ,Cs3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Gn1
 .byte   N32 ,Bn3 ,v080 ,gtp3
 .byte   N32 ,Bn4 ,v080 ,gtp2
 .byte   Bn5
 .byte   W06
 .byte   N05 ,Dn2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   An2
 .byte   W06
@  #01 @004   ----------------------------------------
 .byte   Cs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   En3
 .byte   N32 ,An3 ,v080 ,gtp3
 .byte   N32 ,An4 ,v080 ,gtp2
 .byte   An5
 .byte   W06
 .byte   N05 ,Dn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Dn2
 .byte   W05
 .byte   EOT
 .byte   Gn0
 .byte   W01
 .byte   N05 ,Fs1
 .byte   N32 ,An3 ,v080 ,gtp3
 .byte   N32 ,An4 ,v080 ,gtp2
 .byte   An5
 .byte   N68 ,Fs0 ,v080 ,gtp3
 .byte   W06
 .byte   N05 ,Dn2
 .byte   W06
 .byte   Fs2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   En3
 .byte   N32 ,Gn3 ,v080 ,gtp3
 .byte   N32 ,Gn4 ,v080 ,gtp2
 .byte   Gn5
 .byte   W06
 .byte   N05 ,Dn3
 .byte   W06
@  #01 @005   ----------------------------------------
 .byte   Cs3
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   N32 ,Fs3 ,v080 ,gtp3
 .byte   N32 ,Fs4 ,v080 ,gtp2
 .byte   Fs5
 .byte   N05 ,Cn1
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N17 ,En3
 .byte   N22 ,En4
 .byte   N22 ,En5
 .byte   W18
 .byte   N17 ,Cn3
 .byte   W06
 .byte   N05 ,Dn4 ,v064
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @006   ----------------------------------------
 .byte   N11 ,Bn1
 .byte   N68 ,Fs3 ,v049 ,gtp3
 .byte   N05 ,Bn3 ,v064
 .byte   N05 ,Fs4
 .byte   W01
 .byte   N04 ,Bn4
 .byte   W05
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N22 ,Dn3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
@  #01 @007   ----------------------------------------
 .byte   N11 ,Bn2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,En3
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Fs3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   N11 ,En3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Dn3
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #01 @008   ----------------------------------------
 .byte   N22 ,Fs3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,En4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Gn3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N22 ,En3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @009   ----------------------------------------
 .byte   N11 ,Bn0
 .byte   N05 ,Bn3
 .byte   N05 ,Fs4
 .byte   W01
 .byte   N04 ,Bn4
 .byte   W05
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N11 ,Fs1
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Gn0
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Dn1
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
@  #01 @010   ----------------------------------------
 .byte   N11 ,Gn1
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,Cs5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,An0
 .byte   N05 ,En4
 .byte   N05 ,An4
 .byte   W01
 .byte   N04 ,Dn5
 .byte   W05
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,En1
 .byte   N05 ,An4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   N11 ,An1
 .byte   N05 ,En4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,Cs5
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @011   ----------------------------------------
 .byte   N22 ,En2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N03 ,An4 ,v076
 .byte   W06
 .byte   N05 ,Cs4 ,v064
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N11 ,Fs0
 .byte   N05 ,En5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Fs1
 .byte   N05 ,An4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   N11 ,An1
 .byte   N05 ,Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N22 ,Fs2
 .byte   N05 ,An4
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
@  #01 @012   ----------------------------------------
 .byte   N11 ,Fs4 ,v080
 .byte   N11 ,Fs5
 .byte   N05 ,En1 ,v064
 .byte   W06
 .byte   Bn1 ,v080
 .byte   W06
 .byte   En2
 .byte   N11 ,Gn4
 .byte   N11 ,Gn5
 .byte   W06
 .byte   N05 ,Gn2
 .byte   W06
 .byte   Bn2
 .byte   N22 ,An4
 .byte   N22 ,An5
 .byte   W06
 .byte   N05 ,En3
 .byte   W06
 .byte   N32 ,Gn3 ,v080 ,gtp2
 .byte   W12
 .byte   N11 ,Gn4
 .byte   N11 ,Gn5
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5
 .byte   N11 ,Gn1 ,v064
 .byte   W12
 .byte   En4 ,v080
 .byte   N11 ,En5
 .byte   N05 ,Fs1 ,v064
 .byte   W06
 .byte   Dn2 ,v080
 .byte   W06
 .byte   Fs2
 .byte   N22 ,Fs4
 .byte   N22 ,Fs5
 .byte   W06
 .byte   N05 ,An2
 .byte   W06
@  #01 @013   ----------------------------------------
 .byte   Cs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   N32 ,Fs3 ,v080 ,gtp2
 .byte   N11 ,En4
 .byte   N11 ,En5
 .byte   W12
 .byte   Dn4
 .byte   N11 ,Dn5
 .byte   W12
 .byte   Cs4
 .byte   N11 ,Cs5
 .byte   W12
 .byte   N05 ,Cs4
 .byte   N05 ,Cs5
 .byte   N05 ,Bn0 ,v064
 .byte   W06
 .byte   Fs1 ,v080
 .byte   N05 ,Dn4
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Bn1
 .byte   N11 ,Bn3
 .byte   N11 ,Bn4
 .byte   W06
 .byte   N05 ,Dn2
 .byte   W06
 .byte   Fs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Dn3
 .byte   W06
@  #01 @014   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   N17 ,Bn3
 .byte   W18
 .byte   N05 ,Bn0
 .byte   N05 ,Gn3
 .byte   W01
 .byte   N04 ,Cs4
 .byte   W05
 .byte   N05 ,Bn0
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Dn2
 .byte   N11 ,Bn3
 .byte   W06
 .byte   N05 ,Gn2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N17 ,Bn3
 .byte   W18
@  #01 @015   ----------------------------------------
 .byte   N02 ,Fn5
 .byte   N03 ,Dn3 ,v096
 .byte   N03 ,Fn3
 .byte   N03 ,An3
 .byte   N03 ,Dn4
 .byte   W04
 .byte   Fn4
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N03 ,An4 ,v096
 .byte   W04
 .byte   N11 ,En1
 .byte   N11 ,En2
 .byte   N02 ,An4 ,v080
 .byte   N11 ,An2 ,v096
 .byte   N03 ,Dn5
 .byte   W04
 .byte   Fn4
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N03 ,An4 ,v096
 .byte   W04
 .byte   N11 ,Fn1
 .byte   N11 ,Fn2
 .byte   N02 ,Fn5 ,v080
 .byte   N11 ,Dn3 ,v096
 .byte   N03 ,Fn4
 .byte   W04
 .byte   An4
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N01 ,Dn5 ,v096
 .byte   W04
 .byte   N11 ,Dn1
 .byte   N11 ,Dn2
 .byte   N11 ,En3
 .byte   N02 ,An4
 .byte   W04
 .byte   Dn5
 .byte   W02
 .byte   N01 ,Dn5 ,v080
 .byte   W02
 .byte   N03 ,Fn5 ,v096
 .byte   W04
 .byte   N07 ,An0
 .byte   N07 ,An1
 .byte   N02 ,Fn5 ,v080
 .byte   N11 ,Fn3 ,v096
 .byte   N03 ,An5
 .byte   W04
 .byte   Fn5
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N07 ,Fn0 ,v096
 .byte   N07 ,Fn1
 .byte   N01 ,Dn5
 .byte   W04
 .byte   N11 ,An3
 .byte   N02 ,An4
 .byte   W04
 .byte   N07 ,Dn0
 .byte   N07 ,Dn1
 .byte   N03 ,Fn4
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N03 ,Dn4 ,v096
 .byte   W04
 .byte   N02 ,Fn5 ,v080
 .byte   N03 ,Fn3 ,v096
 .byte   N03 ,Gs3
 .byte   N03 ,Cn4
 .byte   W04
 .byte   Cn4
 .byte   W02
 .byte   N02 ,Cn5 ,v080
 .byte   W02
 .byte   N07 ,Gn3 ,v096
 .byte   N03 ,Fn4
 .byte   W04
 .byte   N11 ,Fn0
 .byte   N11 ,Fn1
 .byte   N02 ,Gs4 ,v080
 .byte   N03 ,Cn4 ,v096
 .byte   W04
 .byte   N54 ,Cn3 ,v096 ,gtp1
 .byte   N03 ,Fn4
 .byte   W02
 .byte   N02 ,Cn5 ,v080
 .byte   W02
 .byte   N03 ,Gs4 ,v096
 .byte   W04
@  #01 @016   ----------------------------------------
 .byte   N11 ,Cn1
 .byte   N11 ,Cn2
 .byte   N02 ,Fn5 ,v080
 .byte   N03 ,Fn4 ,v096
 .byte   W04
 .byte   Gs4
 .byte   W02
 .byte   N02 ,Cn5 ,v080
 .byte   W02
 .byte   N01 ,Cn5 ,v096
 .byte   W04
 .byte   N11 ,Fn1
 .byte   N11 ,Fn2
 .byte   N02 ,Gs4
 .byte   W04
 .byte   Cn5
 .byte   W02
 .byte   N01 ,Cn5 ,v080
 .byte   W02
 .byte   N03 ,Fn5 ,v096
 .byte   W04
 .byte   N07 ,Gn1
 .byte   N07 ,Gn2
 .byte   N02 ,Fn5 ,v080
 .byte   N03 ,Ds5 ,v096
 .byte   N03 ,Gs5
 .byte   W04
 .byte   N02 ,Cn5
 .byte   N03 ,Fn5
 .byte   W02
 .byte   N01 ,Cn5 ,v080
 .byte   W02
 .byte   N07 ,Gs1 ,v096
 .byte   N07 ,Gs2
 .byte   N03 ,Gs4
 .byte   N01 ,Cn5
 .byte   W04
 .byte   N11 ,Fn4
 .byte   N02 ,Gs4
 .byte   W04
 .byte   N07 ,As1
 .byte   N07 ,As2
 .byte   W02
 .byte   N02 ,Cn5 ,v080
 .byte   W06
 .byte   Gs5
 .byte   N03 ,Ds3 ,v096
 .byte   N03 ,Gs3
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Ds4
 .byte   W02
 .byte   N02 ,Ds5 ,v080
 .byte   W02
 .byte   N03 ,Gs4 ,v096
 .byte   W04
 .byte   N11 ,As1
 .byte   N02 ,Bn4 ,v080
 .byte   N11 ,As2 ,v096
 .byte   N03 ,Ds4
 .byte   W04
 .byte   Gs4
 .byte   W02
 .byte   N02 ,Ds5 ,v080
 .byte   W02
 .byte   N03 ,Bn4 ,v096
 .byte   W04
 .byte   N11 ,Bn1
 .byte   N02 ,Gs5 ,v080
 .byte   N11 ,Bn2 ,v096
 .byte   N03 ,Gs4
 .byte   W04
 .byte   Bn4
 .byte   W02
 .byte   N02 ,Ds5 ,v080
 .byte   W02
 .byte   N01 ,Ds5 ,v096
 .byte   W04
 .byte   N11 ,Gs1
 .byte   N11 ,Gs2
 .byte   N11 ,Ds3
 .byte   N03 ,Ds4
 .byte   N02 ,Bn4
 .byte   W04
 .byte   N03 ,Gs4
 .byte   N02 ,Ds5
 .byte   W02
 .byte   N01 ,Ds5 ,v080
 .byte   W02
 .byte   N03 ,Bn4 ,v096
 .byte   N03 ,Gs5
 .byte   W04
@  #01 @017   ----------------------------------------
 .byte   N07 ,Ds1
 .byte   N07 ,Ds2
 .byte   N02 ,Gs5 ,v080
 .byte   N11 ,Gs3 ,v096
 .byte   N03 ,Ds5
 .byte   N03 ,Bn5
 .byte   W04
 .byte   Bn4
 .byte   N03 ,Gs5
 .byte   W02
 .byte   N02 ,Ds5 ,v080
 .byte   W02
 .byte   N07 ,Bn0 ,v096
 .byte   N07 ,Bn1
 .byte   N03 ,Gs4
 .byte   N01 ,Ds5
 .byte   W04
 .byte   N11 ,As3
 .byte   N02 ,Bn4
 .byte   N03 ,Gs5
 .byte   W04
 .byte   N07 ,Ds0
 .byte   N07 ,Ds1
 .byte   N03 ,Gs4
 .byte   N02 ,Ds5
 .byte   W02
 .byte   N01 ,Ds5 ,v080
 .byte   W02
 .byte   N03 ,Ds4 ,v096
 .byte   N03 ,Bn4
 .byte   W04
 .byte   N23 ,Bn3
 .byte   N03 ,En5
 .byte   N07 ,En0 ,v064
 .byte   W04
 .byte   N03 ,Bn4 ,v095
 .byte   W04
 .byte   N07 ,Bn1 ,v093
 .byte   N03 ,Gs4
 .byte   W04
 .byte   En4 ,v091
 .byte   W04
 .byte   N07 ,En2 ,v089
 .byte   N03 ,Gs4
 .byte   W04
 .byte   Bn4 ,v088
 .byte   W04
 .byte   N07 ,Fs2 ,v086
 .byte   N24 ,En3 ,v096
 .byte   N03 ,Ds5 ,v086
 .byte   W04
 .byte   Bn4 ,v084
 .byte   W04
 .byte   N07 ,Gs2 ,v082
 .byte   N03 ,Gs4
 .byte   W04
 .byte   En4 ,v080
 .byte   W04
 .byte   N07 ,Bn2 ,v079
 .byte   N03 ,Gs4
 .byte   W04
 .byte   En4 ,v077
 .byte   W04
 .byte   N22 ,En3 ,v075
 .byte   N03 ,Bn4
 .byte   W04
 .byte   Gs4 ,v073
 .byte   W04
 .byte   En4 ,v072
 .byte   W04
 .byte   Bn3 ,v070
 .byte   W04
 .byte   Gs3 ,v068
 .byte   W04
 .byte   Bn3 ,v066
 .byte   W04
@  #01 @018   ----------------------------------------
 .byte   N07 ,En0 ,v064
 .byte   N12 ,Gs3 ,v096
 .byte   N03 ,Gs4 ,v064
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   N07 ,Bn0
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Gs3
 .byte   W04
 .byte   N07 ,En1
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   N07 ,Gs1
 .byte   N68 ,Bn2 ,v096
 .byte   N03 ,Gs4 ,v064
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   N07 ,Bn1
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Gs3
 .byte   W04
 .byte   N07 ,En2
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   N22 ,Gs2
 .byte   N03 ,Bn4
 .byte   W04
 .byte   Gs4
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   Gs3
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Bn3 ,v070
 .byte   W04
 .byte   As3 ,v076
 .byte   W04
 .byte   Gs3 ,v082
 .byte   W04
 .byte   Ds3 ,v088
 .byte   W04
 .byte   Bn2 ,v095
 .byte   W04
@  #01 @019   ----------------------------------------
 .byte   Gs2 ,v101
 .byte   W03
 .byte   N02 ,Ds4 ,v080
 .byte   W01
 .byte   N03 ,Ds2 ,v107
 .byte   W02
 .byte   N02 ,En4 ,v080
 .byte   W02
 .byte   N03 ,Bn1 ,v113
 .byte   W01
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   N03 ,Gs1 ,v119
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   As4
 .byte   W01
 .byte   N03 ,Ds1 ,v126
 .byte   W02
 .byte   N02 ,Bn4 ,v064
 .byte   W02
 .byte   N03 ,Bn0
 .byte   W01
 .byte   N02 ,Cs5
 .byte   W03
 .byte   TEMPO , 156*song06_tbs/2
 .byte   N05 ,Ds5
 .byte   TIE ,Gs0
 .byte   W12
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
@  #01 @020   ----------------------------------------
 .byte   Cs5
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Gs1
 .byte   N11 ,Bn4
 .byte   W12
 .byte   En2
 .byte   N11 ,Bn3
 .byte   W12
@  #01 @021   ----------------------------------------
 .byte   Gs2
 .byte   N11 ,En4
 .byte   W12
 .byte   N32 ,Bn2 ,v064 ,gtp2
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   N32 ,Bn4 ,v064 ,gtp2
 .byte   W12
@  #01 @022   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0
 .byte   W01
 .byte   N11 ,Gs1
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   As2
 .byte   N32 ,Bn3 ,v076 ,gtp3
 .byte   W04
 .byte   N30 ,Ds4 ,v076 ,gtp1
 .byte   W04
 .byte   N24 ,Gs4 ,v076 ,gtp3
 .byte   W04
 .byte   N11 ,Bn2 ,v064
 .byte   N23 ,Bn4 ,v076
 .byte   W12
 .byte   N11 ,Ds3 ,v064
 .byte   W12
@  #01 @023   ----------------------------------------
 .byte   Ds3
 .byte   N24 ,Cs4 ,v076
 .byte   N24 ,Cs5
 .byte   W12
 .byte   N11 ,Bn2 ,v064
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Gs2
 .byte   N24 ,As3 ,v076
 .byte   N24 ,As4
 .byte   W12
 .byte   N11 ,Fs2 ,v064
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Gs1
 .byte   N24 ,Bn3 ,v076
 .byte   N24 ,Bn4
 .byte   W12
 .byte   N11 ,Ds2 ,v064
 .byte   W12
@  #01 @024   ----------------------------------------
 .byte   Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Gs2
 .byte   W12
@  #01 @025   ----------------------------------------
 .byte   Ds2
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Fs2
 .byte   N24 ,Bn3 ,v076
 .byte   N24 ,Bn4
 .byte   W12
 .byte   N11 ,Gs2 ,v064
 .byte   W12
 .byte   Bn2
 .byte   W12
@  #01 @026   ----------------------------------------
 .byte   Bn2
 .byte   N24 ,Cs4 ,v076
 .byte   N24 ,Cs5
 .byte   W12
 .byte   N11 ,Gs2 ,v064
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N32 ,En2 ,v064 ,gtp2
 .byte   N24 ,As3 ,v076
 .byte   N24 ,As4
 .byte   W36
 .byte   N11 ,En1 ,v064
 .byte   N24 ,Fs3 ,v076
 .byte   N24 ,Fs4
 .byte   W12
 .byte   N11 ,Bn1 ,v064
 .byte   W12
@  #01 @027   ----------------------------------------
 .byte   En2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N22 ,En2
 .byte   W12
@  #01 @028   ----------------------------------------
 .byte   W12
 .byte   N11 ,Bn1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   As2
 .byte   N24 ,Bn3 ,v076
 .byte   N24 ,Bn4
 .byte   W12
 .byte   N11 ,Bn2 ,v064
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #01 @029   ----------------------------------------
 .byte   Cs3
 .byte   N24 ,Cs4 ,v076
 .byte   N24 ,Cs5
 .byte   W12
 .byte   N11 ,As2 ,v064
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   N22 ,Fs2
 .byte   N24 ,As3 ,v076
 .byte   N24 ,As4
 .byte   W24
 .byte   N11 ,Cs2 ,v064
 .byte   W12
 .byte   Fs1
 .byte   N48 ,Bn3 ,v076
 .byte   N48 ,Bn4
 .byte   W12
 .byte   N11 ,Cs2 ,v064
 .byte   W12
@  #01 @030   ----------------------------------------
 .byte   Fs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Cs3
 .byte   N48 ,Fs4 ,v076
 .byte   N48 ,Fs5
 .byte   W12
 .byte   N11 ,As2 ,v064
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   N22 ,Fs2
 .byte   W12
@  #01 @031   ----------------------------------------
 .byte   W12
 .byte   N11 ,Cs2
 .byte   W12
 .byte   N32 ,Fs4 ,v076 ,gtp3
 .byte   N11 ,Ds1 ,v064
 .byte   W04
 .byte   N30 ,As4 ,v076 ,gtp1
 .byte   W04
 .byte   N24 ,Ds5 ,v076 ,gtp3
 .byte   W04
 .byte   N11 ,As1 ,v064
 .byte   N23 ,Fs5 ,v076
 .byte   W12
 .byte   N11 ,Ds2 ,v064
 .byte   W12
 .byte   Fn2
 .byte   N24 ,En4 ,v076
 .byte   N24 ,En5
 .byte   W12
 .byte   N11 ,Fs2 ,v064
 .byte   W12
 .byte   Gs2
 .byte   W12
@  #01 @032   ----------------------------------------
 .byte   As2
 .byte   N24 ,Ds4 ,v076
 .byte   N24 ,Ds5
 .byte   W12
 .byte   N11 ,Gs2 ,v064
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N22 ,Fn2
 .byte   N24 ,Cs4 ,v076
 .byte   N24 ,Cs5
 .byte   W24
 .byte   N11 ,As1 ,v064
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   As1
 .byte   W12
@  #01 @033   ----------------------------------------
 .byte   Ds2
 .byte   W12
 .byte   Fn2
 .byte   N24 ,Ds4 ,v076
 .byte   N24 ,Ds5
 .byte   W12
 .byte   N11 ,Fs2 ,v064
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N22 ,Fn2
 .byte   N24 ,As3 ,v076
 .byte   N24 ,As4
 .byte   W12
@  #01 @034   ----------------------------------------
 .byte   W12
 .byte   N11 ,As1 ,v064
 .byte   W12
 .byte   N23 ,Gs3
 .byte   N11 ,En1
 .byte   W04
 .byte   N19 ,Ds4
 .byte   W04
 .byte   N15 ,Gs4
 .byte   W04
 .byte   N11 ,Bn1
 .byte   W12
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N22 ,Gs2
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Gs3
 .byte   W12
@  #01 @035   ----------------------------------------
 .byte   En1
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En2
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N22 ,Gs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
@  #01 @036   ----------------------------------------
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N22 ,Gs2
 .byte   N11 ,As3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En2
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Gs3
 .byte   W12
@  #01 @037   ----------------------------------------
 .byte   N22 ,Gs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,As3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En1
 .byte   N11 ,As3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
@  #01 @038   ----------------------------------------
 .byte   En1
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En1
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Ds3
 .byte   W12
@  #01 @039   ----------------------------------------
 .byte   En2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,As3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Bn3
 .byte   W12
 .byte   En1
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Bn1
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Gs3 ,v066
 .byte   W06
 .byte   N11 ,En1 ,v069
 .byte   N05 ,As3
 .byte   W06
 .byte   Bn3 ,v072
 .byte   W06
 .byte   N11 ,Bn1 ,v074
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Ds4 ,v077
 .byte   W06
 .byte   N11 ,En1 ,v080
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4 ,v082
 .byte   W06
@  #01 @040   ----------------------------------------
 .byte   N11 ,Bn1 ,v085
 .byte   N05 ,Gs4
 .byte   W06
 .byte   As4 ,v088
 .byte   W06
 .byte   N11 ,En1 ,v090
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Cs5 ,v093
 .byte   W06
 .byte   Gs5 ,v096
 .byte   TIE ,En1 ,v064
 .byte   W06
 .byte   N05 ,Gs4 ,v096
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @041   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds3
 .byte   W05
 .byte   EOT
 .byte   En1
 .byte   W01
 .byte   TEMPO , 78*song06_tbs/2
 .byte   N07 ,En0 ,v064
 .byte   W12
 .byte   N05 ,Gs2 ,v080
 .byte   W06
 .byte   As2
 .byte   W06
@  #01 @042   ----------------------------------------
 .byte   Bn2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   N11 ,Ds5 ,v096
 .byte   W01
 .byte   N10 ,Gs5
 .byte   W01
 .byte   N09 ,Bn5
 .byte   W02
 .byte   N07 ,Ds6
 .byte   W02
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   N23 ,As3 ,v096
 .byte   N05 ,Bn3
 .byte   N11 ,En1 ,v080
 .byte   N05 ,Ds4 ,v096
 .byte   W01
 .byte   N04 ,Gs4
 .byte   W01
 .byte   N03 ,As4
 .byte   W04
 .byte   N05 ,Bn3 ,v080
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N11 ,En2
 .byte   N06 ,Gs3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N32 ,Ds3 ,v096 ,gtp3
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
@  #01 @043   ----------------------------------------
 .byte   N11 ,Gs2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   N11 ,Fs1
 .byte   W06
 .byte   N05 ,As3
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,As3 ,v096
 .byte   N05 ,Ds4
 .byte   W01
 .byte   N04 ,As4
 .byte   W05
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N11 ,Gs3 ,v096
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N32 ,As2 ,v080 ,gtp2
 .byte   N23 ,Ds3 ,v096
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Fs3 ,v080
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Cs3 ,v096
 .byte   N03 ,Fs3
 .byte   N03 ,Cs4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
@  #01 @044   ----------------------------------------
 .byte   N11 ,Ds3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Ds4
 .byte   N11 ,Gs1 ,v080
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   N11 ,Ds2
 .byte   N11 ,Fs3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Fs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N06 ,Gs3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,As2
 .byte   N23 ,Ds3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Cs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Bn0
 .byte   N68 ,Ds3 ,v096 ,gtp3
 .byte   N03 ,Ds4
 .byte   N24 ,Bn1 ,v080
 .byte   W06
 .byte   N05 ,Fs3
 .byte   W06
 .byte   N11 ,Fs1
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #01 @045   ----------------------------------------
 .byte   N11 ,Bn1
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Ds2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N03 ,As3 ,v096
 .byte   N03 ,En4
 .byte   N03 ,As4
 .byte   N11 ,Cs1 ,v080
 .byte   W06
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Gs1
 .byte   N05 ,Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N03 ,Gs3 ,v096
 .byte   N03 ,En4
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   N11 ,En2
 .byte   N03 ,Ds3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,En4
 .byte   W06
 .byte   N05 ,Cs4 ,v080
 .byte   W06
@  #01 @046   ----------------------------------------
 .byte   N22 ,Gs2
 .byte   N05 ,Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   N11 ,Ds1
 .byte   W06
 .byte   N05 ,As3
 .byte   W06
 .byte   N11 ,As1
 .byte   N06 ,As3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,As4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N11 ,Ds2
 .byte   N11 ,Gs3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N23 ,Ds3 ,v096
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Fs3 ,v080
 .byte   W06
 .byte   N22 ,As2
 .byte   N05 ,Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Cs3 ,v096
 .byte   N03 ,Cs4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
@  #01 @047   ----------------------------------------
 .byte   N11 ,Ds3 ,v096
 .byte   N03 ,Gs3
 .byte   N03 ,Ds4
 .byte   N11 ,En1 ,v080
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N11 ,Fs3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,Fs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,En2
 .byte   N06 ,Gs3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N23 ,Ds3 ,v096
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N22 ,Gs2
 .byte   N05 ,As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N11 ,Cs3 ,v096
 .byte   N03 ,Cs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N56 ,Ds3 ,v096 ,gtp3
 .byte   N03 ,Ds4
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Fs3
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,As3
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #01 @048   ----------------------------------------
 .byte   N11 ,Fs2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N22 ,As2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N01 ,Bn2 ,v096
 .byte   N02 ,Fs4
 .byte   W01
 .byte   N01 ,Cn3
 .byte   W01
 .byte   Cs3
 .byte   W01
 .byte   N02 ,Gs4
 .byte   N01 ,Dn3
 .byte   W01
 .byte   Ds3
 .byte   W02
 .byte   En3
 .byte   N02 ,An4
 .byte   W01
 .byte   N01 ,Fn3
 .byte   W01
 .byte   Fs3
 .byte   W01
 .byte   N02 ,Bn4
 .byte   N01 ,Gn3
 .byte   W01
 .byte   Gs3
 .byte   W02
 .byte   N07 ,Gn1 ,v115
 .byte   N23 ,An3 ,v096
 .byte   N05 ,Cs4 ,v115
 .byte   N07 ,Gn0 ,v080
 .byte   N05 ,Fs4 ,v115
 .byte   W01
 .byte   N04 ,Cs5
 .byte   W05
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Gn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N11 ,Fs3
 .byte   N03 ,Fs4 ,v115
 .byte   N03 ,Bn4
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N11 ,Dn3
 .byte   N32 ,En3 ,v096 ,gtp3
 .byte   N03 ,Fs4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
@  #01 @049   ----------------------------------------
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Fs2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N07 ,An1 ,v115
 .byte   N32 ,En3 ,v096 ,gtp3
 .byte   N05 ,Fs4
 .byte   N07 ,An0 ,v080
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,En2
 .byte   N11 ,An2
 .byte   N05 ,En4 ,v115
 .byte   N05 ,An4
 .byte   W01
 .byte   N04 ,Cs5
 .byte   W05
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,An2
 .byte   N11 ,Cs3
 .byte   N03 ,Bn4 ,v115
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   N32 ,Fs3 ,v096 ,gtp3
 .byte   N03 ,Fs4 ,v115
 .byte   W06
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   N11 ,An2
 .byte   N11 ,Cs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,En2
 .byte   N11 ,An2
 .byte   N03 ,En4 ,v115
 .byte   W06
 .byte   N05 ,Cs4 ,v096
 .byte   W06
@  #01 @050   ----------------------------------------
 .byte   N11 ,Bn1
 .byte   N11 ,Fs3
 .byte   N01 ,Dn4 ,v127
 .byte   N05 ,Bn3 ,v115
 .byte   N11 ,Bn0 ,v080
 .byte   N05 ,Dn4 ,v115
 .byte   W01
 .byte   N04 ,Fs4
 .byte   W05
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N11 ,An3
 .byte   N03 ,An4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N11 ,Dn3
 .byte   N06 ,Bn3
 .byte   N23 ,Cs4 ,v127
 .byte   N03 ,Bn4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Dn3
 .byte   N11 ,Fs3
 .byte   N03 ,Fs4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N11 ,Dn3
 .byte   N23 ,An3 ,v127
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N11 ,En3
 .byte   N03 ,En4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N36 ,Fs3
 .byte   N06 ,An3 ,v127
 .byte   N05 ,Fs4 ,v096
 .byte   N11 ,Dn1 ,v080
 .byte   W06
 .byte   N05 ,An3 ,v096
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,An2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #01 @051   ----------------------------------------
 .byte   N11 ,An2
 .byte   N11 ,Cs3
 .byte   N23 ,Gn3 ,v127
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N04 ,Fs3
 .byte   N03 ,Fs4
 .byte   W04
 .byte   N07 ,Fs3
 .byte   W04
 .byte   N03 ,Fs4
 .byte   W04
 .byte   N11 ,An2
 .byte   N11 ,Cs3
 .byte   N23 ,Fs3 ,v127
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   N11 ,Fs2
 .byte   N11 ,An2
 .byte   N03 ,An4
 .byte   W04
 .byte   An3
 .byte   W04
 .byte   An4
 .byte   W04
 .byte   N07 ,En1 ,v115
 .byte   N36 ,Dn3 ,v096
 .byte   N05 ,Cs4 ,v115
 .byte   N07 ,En0 ,v080
 .byte   N05 ,Fs4 ,v115
 .byte   W01
 .byte   N04 ,Cs5
 .byte   W05
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N11 ,Gn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Bn2
 .byte   N03 ,Fs4 ,v115
 .byte   N03 ,Bn4
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N07 ,Gn2 ,v115
 .byte   N07 ,Dn3
 .byte   N03 ,Fs4
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
@  #01 @052   ----------------------------------------
 .byte   N11 ,Dn2
 .byte   N11 ,Bn2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N11 ,Gn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N07 ,Fs1 ,v115
 .byte   N32 ,En3 ,v096 ,gtp3
 .byte   N05 ,Fs4
 .byte   N07 ,Fs0 ,v080
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N11 ,An2
 .byte   N02 ,Dn5 ,v115
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   N11 ,En2 ,v096
 .byte   N11 ,Cs3
 .byte   N02 ,Cs5 ,v115
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Cs5
 .byte   W04
 .byte   N11 ,An2 ,v096
 .byte   N11 ,En3
 .byte   N32 ,An3 ,v096 ,gtp3
 .byte   N02 ,En5 ,v115
 .byte   W04
 .byte   En4
 .byte   W04
 .byte   En5
 .byte   W04
 .byte   N11 ,En2 ,v096
 .byte   N11 ,Cs3
 .byte   N02 ,Dn5 ,v115
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   N11 ,Cs2 ,v096
 .byte   N11 ,An2
 .byte   N02 ,Cs5 ,v115
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Cs5
 .byte   W04
@  #01 @053   ----------------------------------------
 .byte   N07 ,Gn1
 .byte   N32 ,Fs3 ,v096 ,gtp3
 .byte   N03 ,Cs5 ,v115
 .byte   N07 ,Gn0 ,v080
 .byte   W06
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Gn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N03 ,Bn4 ,v115
 .byte   W06
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N11 ,Dn3
 .byte   N96 ,Bn3
 .byte   N05 ,An4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Fs2
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N07 ,Gn1 ,v115
 .byte   N05 ,En5 ,v096
 .byte   N07 ,Gn0 ,v080
 .byte   W06
 .byte   N05 ,An4 ,v096
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Gn2
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
@  #01 @054   ----------------------------------------
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N05 ,Dn5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Bn2
 .byte   N05 ,Dn3
 .byte   N11 ,Cs5
 .byte   W02
 .byte   N09 ,En5
 .byte   W02
 .byte   N07 ,Fs5
 .byte   W02
 .byte   N05 ,Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   N11 ,Bn3
 .byte   W12
 .byte   TEMPO , 82*song06_tbs/2
 .byte   N23 ,Fs4
 .byte   N05 ,Bn1 ,v080
 .byte   W02
 .byte   N21 ,Bn4 ,v096
 .byte   W02
 .byte   N19 ,Dn5
 .byte   W02
 .byte   N05 ,Fs2
 .byte   N17 ,Fs5
 .byte   W06
 .byte   N05 ,Bn2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N05 ,An1 ,v080
 .byte   W06
 .byte   An2 ,v096
 .byte   W06
@  #01 @055   ----------------------------------------
 .byte   Bn2
 .byte   N11 ,En4
 .byte   N11 ,En5
 .byte   W06
 .byte   N05 ,Cs3
 .byte   W06
 .byte   N11 ,En3
 .byte   N05 ,Dn4
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Cs5
 .byte   W06
 .byte   N11 ,Bn3
 .byte   N05 ,Gs1 ,v080
 .byte   W01
 .byte   N10 ,Dn4 ,v096
 .byte   W01
 .byte   N09 ,Fs4
 .byte   W02
 .byte   N07 ,Bn4
 .byte   W02
 .byte   N05 ,Gs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N11 ,Fs3
 .byte   W12
 .byte   N05 ,Bn3
 .byte   N05 ,Bn4
 .byte   N05 ,Cs1 ,v080
 .byte   W06
 .byte   Cs2 ,v096
 .byte   N05 ,Cs4
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Fn2
 .byte   N05 ,Bn3
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,An3
 .byte   N05 ,An4
 .byte   W06
 .byte   Bn2
 .byte   N05 ,Gs3
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Cs3
 .byte   N05 ,Cs4
 .byte   W06
@  #01 @056   ----------------------------------------
 .byte   Cs4
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   Cs2 ,v096
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Fn4
 .byte   W06
 .byte   An2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N05 ,An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   N05 ,En1 ,v080
 .byte   W06
 .byte   Cs2 ,v096
 .byte   N05 ,Cs4
 .byte   W06
 .byte   En2
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,An4
 .byte   W06
 .byte   An2
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Cs3
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Bn4
 .byte   N05 ,Ds1 ,v080
 .byte   W06
 .byte   Ds2 ,v096
 .byte   N05 ,An4
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Gs4
 .byte   W06
 .byte   An2
 .byte   N05 ,An4
 .byte   W06
@  #01 @057   ----------------------------------------
 .byte   N11 ,Cs3
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   N05 ,Ds1 ,v080
 .byte   W06
 .byte   Ds2 ,v096
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Cn3
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Ds3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs2
 .byte   N05 ,Cs4
 .byte   N05 ,Cs1 ,v080
 .byte   N05 ,En4 ,v096
 .byte   W01
 .byte   N04 ,Gs4
 .byte   W05
 .byte   N05 ,Gs0
 .byte   N05 ,Gs1
 .byte   N05 ,Cn4
 .byte   W06
 .byte   Cs1
 .byte   N05 ,Cs2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Gs1
 .byte   N05 ,Ds4
 .byte   W06
 .byte   En2
 .byte   N05 ,En4
 .byte   W06
 .byte   Gs1
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N03 ,Gs4
 .byte   N05 ,Bn0 ,v080
 .byte   W04
 .byte   N03 ,Gs3 ,v096
 .byte   W02
 .byte   N05 ,Bn1
 .byte   W02
 .byte   N03 ,Gs4
 .byte   W04
@  #01 @058   ----------------------------------------
 .byte   N05 ,Ds2
 .byte   N03 ,An4
 .byte   W04
 .byte   An3
 .byte   W02
 .byte   N05 ,En2
 .byte   W02
 .byte   N03 ,An4
 .byte   W04
 .byte   N05 ,Fs2
 .byte   N03 ,Bn4
 .byte   W04
 .byte   Bn3
 .byte   W02
 .byte   N05 ,Bn1
 .byte   W02
 .byte   N03 ,Bn4
 .byte   W04
 .byte   N05 ,As1
 .byte   N05 ,Cs5
 .byte   N05 ,As0 ,v080
 .byte   W06
 .byte   Gs1 ,v096
 .byte   N05 ,Cn5
 .byte   W06
 .byte   Cs2
 .byte   N05 ,Cs5
 .byte   W06
 .byte   En2
 .byte   N05 ,Ds5
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N05 ,En5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Gn4
 .byte   N05 ,Gn5
 .byte   N05 ,Ds1 ,v080
 .byte   W06
 .byte   Ds2 ,v096
 .byte   N05 ,Dn4
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Gn2
 .byte   N05 ,Ds4
 .byte   N05 ,Ds5
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Fn4
 .byte   N05 ,Fn5
 .byte   W06
 .byte   N11 ,As2
 .byte   N05 ,Fs4
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Gn4
 .byte   N05 ,Gn5
 .byte   W06
@  #01 @059   ----------------------------------------
 .byte   N48 ,En1 ,v115
 .byte   N02 ,Gs5 ,v096
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   En5
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   Ds5
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   As4
 .byte   W03
 .byte   As3
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   Gs3
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   As4
 .byte   W03
 .byte   As3
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   Gs3
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   En3
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Ds3
 .byte   W03
 .byte   Cs4
 .byte   W03
 .byte   Cs3
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   En3
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Ds3
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Gs3
 .byte   W03
 .byte   Gs2
 .byte   W03
@  #01 @060   ----------------------------------------
 .byte   En3
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   Ds3
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   N11
 .byte   W12
 .byte   As0
 .byte   N11 ,As1
 .byte   N11 ,Gs4
 .byte   N11 ,Gs5
 .byte   W12
 .byte   As0
 .byte   N11 ,As1
 .byte   N11 ,As4
 .byte   N11 ,As5
 .byte   W12
 .byte   Cs2
 .byte   N22 ,Bn4
 .byte   N22 ,Bn5
 .byte   W12
 .byte   N11 ,Gs2
 .byte   W12
 .byte   Cs3
 .byte   N22 ,As4
 .byte   N22 ,As5
 .byte   W12
 .byte   N32 ,En3 ,v096 ,gtp2
 .byte   W12
@  #01 @061   ----------------------------------------
 .byte   N11 ,Gs4
 .byte   N11 ,Gs5
 .byte   W12
 .byte   Fs4
 .byte   N11 ,Fs5
 .byte   W12
 .byte   Ds2
 .byte   N22 ,Gs4
 .byte   N22 ,Gs5
 .byte   W12
 .byte   N11 ,As2
 .byte   W12
 .byte   Ds3
 .byte   N22 ,Fs4
 .byte   N22 ,Fs5
 .byte   W12
 .byte   N32 ,Fs3 ,v096 ,gtp2
 .byte   W12
 .byte   N11 ,En4
 .byte   N11 ,En5
 .byte   W12
 .byte   Ds4
 .byte   N11 ,Ds5
 .byte   W12
@  #01 @062   ----------------------------------------
 .byte   En2
 .byte   N22 ,Cs4
 .byte   N22 ,Cs5
 .byte   W12
 .byte   N11 ,Bn2
 .byte   W12
 .byte   En3
 .byte   N44 ,Ds4 ,v096 ,gtp1
 .byte   Ds5
 .byte   W12
 .byte   N22 ,Gs3
 .byte   W24
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #01 @063   ----------------------------------------
 .byte   Fs3
 .byte   W12
 .byte   N32 ,As3 ,v096 ,gtp2
 .byte   W12
 .byte   N11 ,Gs4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   N05 ,Gs0
 .byte   N11 ,Ds2 ,v080
 .byte   N05 ,Bn4 ,v096
 .byte   N12 ,Gs1 ,v080
 .byte   W06
 .byte   N05 ,Ds1 ,v096
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Gs1
 .byte   N11 ,Gs2 ,v080
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   As1
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Bn1
 .byte   N11 ,As2 ,v080
 .byte   N05 ,As4 ,v096
 .byte   W06
 .byte   Ds2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N24 ,Gs2
 .byte   N23 ,Bn2 ,v080
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   As4
 .byte   W06
@  #01 @064   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N10 ,Gs2 ,v080
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   As0
 .byte   N18 ,Fs2 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   N06 ,As1 ,v080
 .byte   W06
 .byte   N05 ,As1 ,v096
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Cs2
 .byte   N05 ,As3
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   As2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Fs3
 .byte   W06
 .byte   N32 ,Cs3 ,v080 ,gtp2
 .byte   N05 ,Fs3 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,En4
 .byte   W12
 .byte   Ds4
 .byte   W12
@  #01 @065   ----------------------------------------
 .byte   N05 ,Bn0
 .byte   N30 ,Fs2 ,v080
 .byte   N05 ,Cs4 ,v096
 .byte   N12 ,Bn1 ,v080
 .byte   W06
 .byte   N05 ,Fs1 ,v096
 .byte   N05 ,En3
 .byte   W06
 .byte   Bn1
 .byte   N05 ,Fs3
 .byte   W06
 .byte   Cs2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Ds2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Cs3
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Ds3
 .byte   W06
 .byte   Fs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Bn3
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N11 ,Ds2
 .byte   N05 ,Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cn1
 .byte   N32 ,Ds3 ,v080 ,gtp3
 .byte   N05 ,Ds4 ,v096
 .byte   N06 ,Cn2 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   W01
 .byte   N04 ,Ds5
 .byte   W05
 .byte   N05 ,Cn2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Ds2
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Ds5
 .byte   W06
@  #01 @066   ----------------------------------------
 .byte   As2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Cn3
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Cn3
 .byte   N17 ,En3 ,v080
 .byte   N05 ,En5 ,v096
 .byte   W06
 .byte   Gs2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Ds2
 .byte   N17 ,Fs3 ,v080
 .byte   N05 ,Fs5 ,v096
 .byte   W06
 .byte   N11 ,Cn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   N32 ,Gs3 ,v080 ,gtp3
 .byte   N05 ,Fs5 ,v096
 .byte   N05 ,Cs1 ,v080
 .byte   W06
 .byte   Gs0 ,v096
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs1
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Ds2
 .byte   N05 ,En5
 .byte   W06
 .byte   N11 ,En2
 .byte   N05 ,En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs1
 .byte   N17 ,As3 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   W06
 .byte   Gs0
 .byte   N05 ,Cs4
 .byte   W06
@  #01 @067   ----------------------------------------
 .byte   Cs1
 .byte   N05 ,En4
 .byte   W06
 .byte   Ds2
 .byte   N17 ,Bn3 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   W06
 .byte   N11 ,En2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N32 ,As3 ,v080 ,gtp3
 .byte   N05 ,Ds4 ,v096
 .byte   N05 ,Ds1 ,v080
 .byte   N05 ,Gn4 ,v096
 .byte   W01
 .byte   N04 ,As4
 .byte   W05
 .byte   N05 ,Ds2
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Fn2
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Gn2
 .byte   N05 ,Cs5
 .byte   W06
 .byte   N11 ,As2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Ds1
 .byte   N17 ,Bn3 ,v080
 .byte   N05 ,Ds5 ,v096
 .byte   W06
 .byte   Ds2
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Fn2
 .byte   N05 ,As4
 .byte   W06
 .byte   Gn2
 .byte   N17 ,Cs4 ,v080
 .byte   N05 ,En5 ,v096
 .byte   W06
 .byte   N11 ,As2
 .byte   N05 ,Gn4
 .byte   W06
 .byte   As4
 .byte   W06
@  #01 @068   ----------------------------------------
 .byte   N32 ,As3 ,v080 ,gtp3
 .byte   N05 ,En5 ,v096
 .byte   N05 ,Bn0 ,v080
 .byte   W06
 .byte   Bn1 ,v096
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Ds2
 .byte   N05 ,As4
 .byte   W06
 .byte   Gn2
 .byte   N05 ,Ds5
 .byte   W06
 .byte   N11 ,As2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Bn0
 .byte   N32 ,Gs3 ,v080 ,gtp3
 .byte   N05 ,Gs4 ,v096
 .byte   W06
 .byte   Bn1
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Ds2
 .byte   N05 ,As4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Bn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N32 ,Cs3 ,v080 ,gtp3
 .byte   N05 ,En4 ,v096
 .byte   N05 ,En1 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   W01
 .byte   N04 ,Ds5
 .byte   W05
 .byte   N05 ,Bn0
 .byte   N05 ,En4
 .byte   W06
 .byte   En1
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Ds5
 .byte   W06
@  #01 @069   ----------------------------------------
 .byte   N11 ,Bn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   En1
 .byte   N32 ,Ds3 ,v080 ,gtp3
 .byte   N11 ,Cs5 ,v096
 .byte   W06
 .byte   N05 ,Bn0
 .byte   W06
 .byte   En1
 .byte   N11 ,Bn4
 .byte   W06
 .byte   N05 ,Gs2
 .byte   W06
 .byte   Bn2
 .byte   N11 ,As4
 .byte   W06
 .byte   N05 ,Gs2
 .byte   W06
 .byte   N23 ,Bn2
 .byte   N23 ,Bn3
 .byte   N12 ,Dn1
 .byte   W02
 .byte   N21 ,Dn4
 .byte   W02
 .byte   N19 ,Fs4
 .byte   W02
 .byte   N17 ,Bn4
 .byte   W06
 .byte   N11 ,Dn1 ,v127
 .byte   N11 ,Dn2
 .byte   W12
 .byte   Cs2
 .byte   N11 ,An2 ,v096
 .byte   N11 ,An3
 .byte   N11 ,An4
 .byte   N11 ,Cs1
 .byte   W12
 .byte   Bn1 ,v127
 .byte   N11 ,Gs2 ,v096
 .byte   N11 ,Gs3
 .byte   N11 ,Gs4
 .byte   N11 ,Bn0
 .byte   W12
@  #01 @070   ----------------------------------------
 .byte   An1 ,v127
 .byte   N11 ,An2 ,v096
 .byte   N11 ,An3
 .byte   N11 ,An4
 .byte   N11 ,An0
 .byte   W12
 .byte   Fs1 ,v127
 .byte   N11 ,Bn2 ,v096
 .byte   N11 ,Bn3
 .byte   N11 ,Bn4
 .byte   N11 ,Fs0
 .byte   W12
 .byte   N32 ,Gs1 ,v127 ,gtp3
 .byte   Gs0 ,v096
 .byte   W12
 .byte   N11 ,Cs3
 .byte   N11 ,Fs3
 .byte   N11 ,Cs4
 .byte   N11 ,Cs5
 .byte   W12
 .byte   Bn2
 .byte   N11 ,Fs3
 .byte   N11 ,Bn3
 .byte   N11 ,Bn4
 .byte   W12
 .byte   N32 ,Gn1 ,v127 ,gtp3
 .byte   N11 ,Cs3 ,v096
 .byte   N11 ,Fs3
 .byte   N11 ,Cs4
 .byte   N11 ,Cs5
 .byte   N32 ,Gn0 ,v096 ,gtp3
 .byte   W12
 .byte   N11 ,Dn3
 .byte   N11 ,Fs3
 .byte   N11 ,Dn4
 .byte   N11 ,Dn5
 .byte   W12
 .byte   En3
 .byte   N11 ,Fs3
 .byte   N11 ,En4
 .byte   N11 ,En5
 .byte   W12
@  #01 @071   ----------------------------------------
 .byte   N05 ,En2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   N05 ,En1 ,v096
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Bn4 ,v127
 .byte   N11 ,Dn5
 .byte   N11 ,Fs5
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N11 ,En5 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,An4 ,v080
 .byte   N03 ,Bn4 ,v127
 .byte   N11 ,Dn5
 .byte   N11 ,An5
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Fs5 ,v127
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N11 ,Dn5 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,Fs4 ,v080
 .byte   N11 ,En4 ,v127
 .byte   N11 ,An4
 .byte   N11 ,Cs5
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Bn4 ,v127
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
@  #01 @072   ----------------------------------------
 .byte   N11 ,Gn2
 .byte   N11 ,En5 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,An4 ,v080
 .byte   N11 ,En4 ,v127
 .byte   N11 ,Cs5
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Cs4 ,v127
 .byte   N11 ,An4
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   En1
 .byte   N05 ,En2
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Bn3 ,v127
 .byte   N11 ,En4
 .byte   N11 ,Fs4
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N11 ,En4 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N11 ,Dn4 ,v127
 .byte   N11 ,Fs4
 .byte   N02 ,An4
 .byte   W03
 .byte   Bn4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Fs4 ,v127
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
@  #01 @073   ----------------------------------------
 .byte   N11 ,Gn2
 .byte   N11 ,Dn4 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,Fs4 ,v080
 .byte   N11 ,Fs3 ,v127
 .byte   N11 ,An3
 .byte   N11 ,Cs4
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Bn3 ,v127
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N11 ,En4 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,An4 ,v080
 .byte   N11 ,En3 ,v127
 .byte   N11 ,An3
 .byte   N11 ,Cs4
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   TIE ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Bn4 ,v127
 .byte   N11 ,Dn5
 .byte   N11 ,Fs5
 .byte   W06
 .byte   N05 ,Cs3 ,v112
 .byte   W06
 .byte   N11 ,Dn3
 .byte   N07 ,Fs3 ,v096
 .byte   N11 ,En5 ,v127
 .byte   W08
 .byte   N03 ,En3 ,v096
 .byte   W04
@  #01 @074   ----------------------------------------
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   N56 ,An3 ,v096 ,gtp3
 .byte   N03 ,Bn4 ,v127
 .byte   N11 ,Dn5
 .byte   N11 ,An5
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Fs5 ,v127
 .byte   W06
 .byte   N05 ,Cs3 ,v112
 .byte   W06
 .byte   N11 ,Dn3
 .byte   N11 ,Dn5 ,v127
 .byte   W12
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   N11 ,En4 ,v127
 .byte   N11 ,An4
 .byte   N11 ,Cs5
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Bn4 ,v127
 .byte   W06
 .byte   N05 ,Cs3 ,v112
 .byte   W06
 .byte   N11 ,Dn3 ,v096
 .byte   N11 ,En5 ,v127
 .byte   W12
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   N11 ,Cs3 ,v096
 .byte   N11 ,En4 ,v127
 .byte   N11 ,Cs5
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
@  #01 @075   ----------------------------------------
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Bn3 ,v127
 .byte   N11 ,En4
 .byte   N11 ,Fs4
 .byte   W06
 .byte   N05 ,Dn3 ,v112
 .byte   W06
 .byte   N08 ,En3
 .byte   N07 ,Fs3 ,v096
 .byte   N11 ,En4 ,v127
 .byte   W08
 .byte   N03 ,En3 ,v096
 .byte   W04
 .byte   N05 ,Bn1 ,v112
 .byte   N36 ,An3 ,v096
 .byte   N11 ,Dn4 ,v127
 .byte   N11 ,Fs4
 .byte   N02 ,An4
 .byte   W03
 .byte   Bn4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Fs4 ,v127
 .byte   W06
 .byte   N05 ,Dn3 ,v112
 .byte   W06
 .byte   N11 ,En3
 .byte   N11 ,Dn4 ,v127
 .byte   W12
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   N11 ,Fs3 ,v127
 .byte   N11 ,An3
 .byte   N11 ,Cs4
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Bn3 ,v127
 .byte   W06
 .byte   N05 ,Dn3 ,v112
 .byte   W06
 .byte   N11 ,En3
 .byte   N11 ,En4 ,v127
 .byte   W12
@  #01 @076   ----------------------------------------
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,As4 ,v080
 .byte   N11 ,Cs4 ,v127
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,As4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,An3 ,v127
 .byte   W06
 .byte   N05 ,Dn3 ,v112
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   Fs5
 .byte   W02
 .byte   EOT
 .byte   Bn0
 .byte   W01
 .byte   N03 ,Bn0 ,v127
 .byte   N03 ,Bn1
 .byte   N05 ,Bn5 ,v080
 .byte   W06
 .byte   Fs1 ,v112
 .byte   W06
 .byte   N44 ,Bn1 ,v112 ,gtp1
 .byte   N02 ,Cs3
 .byte   W03
 .byte   Dn3
 .byte   W03
 .byte   En3
 .byte   W03
 .byte   Fs3
 .byte   W03
 .byte   N05 ,Fs3 ,v115
 .byte   N02 ,Gn3 ,v112
 .byte   N07 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,An3 ,v112
 .byte   W03
 .byte   Bn3
 .byte   W02
 .byte   N05 ,Fs3 ,v115
 .byte   N07 ,Bn0 ,v096
 .byte   W01
 .byte   N02 ,Cs4 ,v112
 .byte   W03
 .byte   Dn4
 .byte   W03
 .byte   En4
 .byte   W01
 .byte   N05 ,Fs3 ,v115
 .byte   N07 ,Bn0 ,v096
 .byte   W02
 .byte   N02 ,Fs4 ,v112
 .byte   W03
 .byte   Gn4
 .byte   W03
 .byte   N07 ,Fs3 ,v115
 .byte   N02 ,An4 ,v112
 .byte   N11 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,Bn4 ,v112
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   N01 ,Dn5
 .byte   W01
 .byte   N03 ,Cs5
 .byte   W02
 .byte   N80 ,Gn3 ,v096 ,gtp3
 .byte   N12 ,Bn0
 .byte   W01
 .byte   N01 ,Dn5 ,v112
 .byte   W02
 .byte   Cs5
 .byte   W01
 .byte   Dn5
 .byte   W02
 .byte   Cs5
 .byte   W01
 .byte   Dn5
 .byte   W02
 .byte   Cs5
 .byte   W01
 .byte   Dn5
 .byte   W02
@  #01 @077   ----------------------------------------
 .byte   N05 ,Bn0
 .byte   N02 ,Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   N05 ,Gn1
 .byte   N02 ,Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   N44 ,Bn1 ,v112 ,gtp1
 .byte   N02 ,Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   N04 ,Cs5
 .byte   W04
 .byte   N05 ,Bn4
 .byte   W05
 .byte   N04 ,Fs4
 .byte   W05
 .byte   Bn4
 .byte   W04
 .byte   N05 ,Cs5
 .byte   W05
 .byte   N04 ,Dn5
 .byte   W05
 .byte   En5
 .byte   W04
 .byte   N05 ,Fs5
 .byte   W05
 .byte   N04 ,Gn5
 .byte   W05
 .byte   N05 ,Bn0
 .byte   N02 ,Bn5
 .byte   W03
 .byte   Gn5
 .byte   W03
 .byte   N05 ,Fs1
 .byte   N02 ,Fs5
 .byte   W03
 .byte   En5
 .byte   W03
 .byte   N44 ,Bn1 ,v112 ,gtp1
 .byte   N02 ,Dn5
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   An4
 .byte   W03
@  #01 @078   ----------------------------------------
 .byte   N05 ,Fs3 ,v115
 .byte   N02 ,Gn4 ,v112
 .byte   N07 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,Fs4 ,v112
 .byte   W03
 .byte   En4
 .byte   W02
 .byte   N05 ,Fs3 ,v115
 .byte   N07 ,Bn0 ,v096
 .byte   W01
 .byte   N02 ,Dn4 ,v112
 .byte   W03
 .byte   Cs4
 .byte   W03
 .byte   Bn3
 .byte   W01
 .byte   N05 ,Fs3 ,v115
 .byte   N07 ,Bn0 ,v096
 .byte   W02
 .byte   N02 ,An3 ,v112
 .byte   W03
 .byte   Gn3
 .byte   W03
 .byte   Fs3
 .byte   N11 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,Gn3 ,v112
 .byte   W03
 .byte   An3
 .byte   W03
 .byte   Gn3
 .byte   W03
 .byte   N24 ,An3 ,v096 ,gtp3
 .byte   N02 ,Fs3 ,v112
 .byte   N90 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,En3 ,v112
 .byte   W03
 .byte   Dn3
 .byte   W03
 .byte   Cs3
 .byte   W03
 .byte   N05 ,Cn1
 .byte   N05 ,Cn3
 .byte   W06
 .byte   Bn1
 .byte   N02 ,En3
 .byte   W03
 .byte   Fs3
 .byte   W03
 .byte   N44 ,En2 ,v112 ,gtp1
 .byte   N02 ,Gn3
 .byte   W03
 .byte   An3
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   Cn4
 .byte   W03
 .byte   Dn4
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   Fs4
 .byte   W03
 .byte   Gn4
 .byte   W03
 .byte   An4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
@  #01 @079   ----------------------------------------
 .byte   En5
 .byte   W03
 .byte   Fs5
 .byte   W03
 .byte   N05 ,Gn5
 .byte   W24
 .byte   N02 ,Bn0
 .byte   W03
 .byte   Bn0
 .byte   W03
 .byte   N23 ,Bn3 ,v080
 .byte   N11 ,Bn0
 .byte   TEMPO , 78*song06_tbs/2
 .byte   GOTO
  .word Label_01016274
@  #01 @080   ----------------------------------------
 .byte   W02
 .byte   N21 ,Dn4
 .byte   W02
 .byte   N19 ,Fs4
 .byte   W08
 .byte   N05 ,Cs2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Fs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   N06 ,Fs3
 .byte   N05 ,Dn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En3
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N11 ,Bn0
 .byte   N24 ,Bn2
 .byte   N22 ,Gn3
 .byte   N22 ,Gn4
 .byte   W12
 .byte   N05 ,Dn2
 .byte   W06
 .byte   Gn2
 .byte   W06
@  #01 @081   ----------------------------------------
 .byte   Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N17 ,Cs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N32 ,Dn3 ,v080 ,gtp3
 .byte   N23 ,Gn3
 .byte   N05 ,An0
 .byte   W02
 .byte   N21 ,Cs4
 .byte   W02
 .byte   N19 ,Gn4
 .byte   W02
 .byte   N05 ,Cs1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N05 ,An3
 .byte   N05 ,Cs4
 .byte   N05 ,An4
 .byte   W06
 .byte   En3
 .byte   W06
@  #01 @082   ----------------------------------------
 .byte   An3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   An0
 .byte   N24 ,An2
 .byte   N22 ,Fs3
 .byte   N22 ,Fs4
 .byte   W06
 .byte   N05 ,An1
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N32 ,Bn2 ,v080 ,gtp3
 .byte   W06
 .byte   N05 ,En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Dn4
 .byte   N05 ,Dn5
 .byte   W06
 .byte   En4
 .byte   N05 ,En5
 .byte   W06
@  #01 @083   ----------------------------------------
 .byte   Gn1
 .byte   N32 ,Fs3 ,v080 ,gtp3
 .byte   Fs4
 .byte   TIE ,Gn0
 .byte   W02
 .byte   N32 ,Bn4 ,v080 ,gtp1
 .byte   W02
 .byte   N30 ,Dn5 ,v080 ,gtp1
 .byte   W02
 .byte   N05 ,Dn2
 .byte   N28 ,Fs5 ,v080 ,gtp1
 .byte   W06
 .byte   N05 ,Gn2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Dn3
 .byte   N32 ,Gn3 ,v080 ,gtp3
 .byte   N32 ,Gn4 ,v080 ,gtp2
 .byte   Gn5
 .byte   W06
 .byte   N05 ,Cs3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Gn1
 .byte   N32 ,Bn3 ,v080 ,gtp3
 .byte   N32 ,Bn4 ,v080 ,gtp2
 .byte   Bn5
 .byte   W06
 .byte   N05 ,Dn2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   An2
 .byte   W06
@  #01 @084   ----------------------------------------
 .byte   Cs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   En3
 .byte   N32 ,An3 ,v080 ,gtp3
 .byte   N32 ,An4 ,v080 ,gtp2
 .byte   An5
 .byte   W06
 .byte   N05 ,Dn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Dn2
 .byte   W05
 .byte   EOT
 .byte   Gn0
 .byte   W01
 .byte   N05 ,Fs1
 .byte   N32 ,An3 ,v080 ,gtp3
 .byte   N32 ,An4 ,v080 ,gtp2
 .byte   An5
 .byte   N68 ,Fs0 ,v080 ,gtp3
 .byte   W06
 .byte   N05 ,Dn2
 .byte   W06
 .byte   Fs2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   En3
 .byte   N32 ,Gn3 ,v080 ,gtp3
 .byte   N32 ,Gn4 ,v080 ,gtp2
 .byte   Gn5
 .byte   W06
 .byte   N05 ,Dn3
 .byte   W06
@  #01 @085   ----------------------------------------
 .byte   Cs3
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   N32 ,Fs3 ,v080 ,gtp3
 .byte   N32 ,Fs4 ,v080 ,gtp2
 .byte   Fs5
 .byte   N05 ,Cn1
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N17 ,En3
 .byte   N22 ,En4
 .byte   N22 ,En5
 .byte   W18
 .byte   N17 ,Cn3
 .byte   W06
 .byte   N05 ,Dn4 ,v064
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @086   ----------------------------------------
 .byte   N11 ,Bn1
 .byte   N68 ,Fs3 ,v049 ,gtp3
 .byte   N05 ,Bn3 ,v064
 .byte   N05 ,Fs4
 .byte   W01
 .byte   N04 ,Bn4
 .byte   W05
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N22 ,Dn3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
@  #01 @087   ----------------------------------------
 .byte   N11 ,Bn2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,En3
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Fs3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   N11 ,En3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Dn3
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #01 @088   ----------------------------------------
 .byte   N22 ,Fs3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,En4
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Gn3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N22 ,En3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @089   ----------------------------------------
 .byte   N11 ,Bn0
 .byte   N05 ,Bn3
 .byte   N05 ,Fs4
 .byte   W01
 .byte   N04 ,Bn4
 .byte   W05
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N11 ,Fs1
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Gn0
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Dn1
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs5
 .byte   W06
@  #01 @090   ----------------------------------------
 .byte   N11 ,Gn1
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,Cs5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,An0
 .byte   N05 ,En4
 .byte   N05 ,An4
 .byte   W01
 .byte   N04 ,Dn5
 .byte   W05
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,En1
 .byte   N05 ,An4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   N11 ,An1
 .byte   N05 ,En4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,Cs5
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @091   ----------------------------------------
 .byte   N22 ,En2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N03 ,An4 ,v076
 .byte   W06
 .byte   N05 ,Cs4 ,v064
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N11 ,Fs0
 .byte   N05 ,En5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Fs1
 .byte   N05 ,An4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   N11 ,An1
 .byte   N05 ,Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N22 ,Fs2
 .byte   N05 ,An4
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
@  #01 @092   ----------------------------------------
 .byte   N11 ,Fs4 ,v080
 .byte   N11 ,Fs5
 .byte   N05 ,En1 ,v064
 .byte   W06
 .byte   Bn1 ,v080
 .byte   W06
 .byte   En2
 .byte   N11 ,Gn4
 .byte   N11 ,Gn5
 .byte   W06
 .byte   N05 ,Gn2
 .byte   W06
 .byte   Bn2
 .byte   N22 ,An4
 .byte   N22 ,An5
 .byte   W06
 .byte   N05 ,En3
 .byte   W06
 .byte   N32 ,Gn3 ,v080 ,gtp2
 .byte   W12
 .byte   N11 ,Gn4
 .byte   N11 ,Gn5
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5
 .byte   N11 ,Gn1 ,v064
 .byte   W12
 .byte   En4 ,v080
 .byte   N11 ,En5
 .byte   N05 ,Fs1 ,v064
 .byte   W06
 .byte   Dn2 ,v080
 .byte   W06
 .byte   Fs2
 .byte   N22 ,Fs4
 .byte   N22 ,Fs5
 .byte   W06
 .byte   N05 ,An2
 .byte   W06
@  #01 @093   ----------------------------------------
 .byte   Cs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   N32 ,Fs3 ,v080 ,gtp2
 .byte   N11 ,En4
 .byte   N11 ,En5
 .byte   W12
 .byte   Dn4
 .byte   N11 ,Dn5
 .byte   W12
 .byte   Cs4
 .byte   N11 ,Cs5
 .byte   W12
 .byte   N05 ,Cs4
 .byte   N05 ,Cs5
 .byte   N05 ,Bn0 ,v064
 .byte   W06
 .byte   Fs1 ,v080
 .byte   N05 ,Dn4
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Bn1
 .byte   N11 ,Bn3
 .byte   N11 ,Bn4
 .byte   W06
 .byte   N05 ,Dn2
 .byte   W06
 .byte   Fs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Dn3
 .byte   W06
@  #01 @094   ----------------------------------------
 .byte   Fs3
 .byte   W06
 .byte   N17 ,Bn3
 .byte   W18
 .byte   N05 ,Bn0
 .byte   N05 ,Gn3
 .byte   W01
 .byte   N04 ,Cs4
 .byte   W05
 .byte   N05 ,Bn0
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Dn2
 .byte   N11 ,Bn3
 .byte   W06
 .byte   N05 ,Gn2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N17 ,Bn3
 .byte   W18
@  #01 @095   ----------------------------------------
 .byte   N02 ,Fn5
 .byte   N03 ,Dn3 ,v096
 .byte   N03 ,Fn3
 .byte   N03 ,An3
 .byte   N03 ,Dn4
 .byte   W04
 .byte   Fn4
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N03 ,An4 ,v096
 .byte   W04
 .byte   N11 ,En1
 .byte   N11 ,En2
 .byte   N02 ,An4 ,v080
 .byte   N11 ,An2 ,v096
 .byte   N03 ,Dn5
 .byte   W04
 .byte   Fn4
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N03 ,An4 ,v096
 .byte   W04
 .byte   N11 ,Fn1
 .byte   N11 ,Fn2
 .byte   N02 ,Fn5 ,v080
 .byte   N11 ,Dn3 ,v096
 .byte   N03 ,Fn4
 .byte   W04
 .byte   An4
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N01 ,Dn5 ,v096
 .byte   W04
 .byte   N11 ,Dn1
 .byte   N11 ,Dn2
 .byte   N11 ,En3
 .byte   N02 ,An4
 .byte   W04
 .byte   Dn5
 .byte   W02
 .byte   N01 ,Dn5 ,v080
 .byte   W02
 .byte   N03 ,Fn5 ,v096
 .byte   W04
 .byte   N07 ,An0
 .byte   N07 ,An1
 .byte   N02 ,Fn5 ,v080
 .byte   N11 ,Fn3 ,v096
 .byte   N03 ,An5
 .byte   W04
 .byte   Fn5
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N07 ,Fn0 ,v096
 .byte   N07 ,Fn1
 .byte   N01 ,Dn5
 .byte   W04
 .byte   N11 ,An3
 .byte   N02 ,An4
 .byte   W04
 .byte   N07 ,Dn0
 .byte   N07 ,Dn1
 .byte   N03 ,Fn4
 .byte   W02
 .byte   N02 ,Dn5 ,v080
 .byte   W02
 .byte   N03 ,Dn4 ,v096
 .byte   W04
 .byte   N02 ,Fn5 ,v080
 .byte   N03 ,Fn3 ,v096
 .byte   N03 ,Gs3
 .byte   N03 ,Cn4
 .byte   W04
 .byte   Cn4
 .byte   W02
 .byte   N02 ,Cn5 ,v080
 .byte   W02
 .byte   N07 ,Gn3 ,v096
 .byte   N03 ,Fn4
 .byte   W04
 .byte   N11 ,Fn0
 .byte   N11 ,Fn1
 .byte   N02 ,Gs4 ,v080
 .byte   N03 ,Cn4 ,v096
 .byte   W04
 .byte   N54 ,Cn3 ,v096 ,gtp1
 .byte   N03 ,Fn4
 .byte   W02
 .byte   N02 ,Cn5 ,v080
 .byte   W02
 .byte   N03 ,Gs4 ,v096
 .byte   W04
@  #01 @096   ----------------------------------------
 .byte   N11 ,Cn1
 .byte   N11 ,Cn2
 .byte   N02 ,Fn5 ,v080
 .byte   N03 ,Fn4 ,v096
 .byte   W04
 .byte   Gs4
 .byte   W02
 .byte   N02 ,Cn5 ,v080
 .byte   W02
 .byte   N01 ,Cn5 ,v096
 .byte   W04
 .byte   N11 ,Fn1
 .byte   N11 ,Fn2
 .byte   N02 ,Gs4
 .byte   W04
 .byte   Cn5
 .byte   W02
 .byte   N01 ,Cn5 ,v080
 .byte   W02
 .byte   N03 ,Fn5 ,v096
 .byte   W04
 .byte   N07 ,Gn1
 .byte   N07 ,Gn2
 .byte   N02 ,Fn5 ,v080
 .byte   N03 ,Ds5 ,v096
 .byte   N03 ,Gs5
 .byte   W04
 .byte   N02 ,Cn5
 .byte   N03 ,Fn5
 .byte   W02
 .byte   N01 ,Cn5 ,v080
 .byte   W02
 .byte   N07 ,Gs1 ,v096
 .byte   N07 ,Gs2
 .byte   N03 ,Gs4
 .byte   N01 ,Cn5
 .byte   W04
 .byte   N11 ,Fn4
 .byte   N02 ,Gs4
 .byte   W04
 .byte   N07 ,As1
 .byte   N07 ,As2
 .byte   W02
 .byte   N02 ,Cn5 ,v080
 .byte   W06
 .byte   Gs5
 .byte   N03 ,Ds3 ,v096
 .byte   N03 ,Gs3
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Ds4
 .byte   W02
 .byte   N02 ,Ds5 ,v080
 .byte   W02
 .byte   N03 ,Gs4 ,v096
 .byte   W04
 .byte   N11 ,As1
 .byte   N02 ,Bn4 ,v080
 .byte   N11 ,As2 ,v096
 .byte   N03 ,Ds4
 .byte   W04
 .byte   Gs4
 .byte   W02
 .byte   N02 ,Ds5 ,v080
 .byte   W02
 .byte   N03 ,Bn4 ,v096
 .byte   W04
 .byte   N11 ,Bn1
 .byte   N02 ,Gs5 ,v080
 .byte   N11 ,Bn2 ,v096
 .byte   N03 ,Gs4
 .byte   W04
 .byte   Bn4
 .byte   W02
 .byte   N02 ,Ds5 ,v080
 .byte   W02
 .byte   N01 ,Ds5 ,v096
 .byte   W04
 .byte   N11 ,Gs1
 .byte   N11 ,Gs2
 .byte   N11 ,Ds3
 .byte   N03 ,Ds4
 .byte   N02 ,Bn4
 .byte   W04
 .byte   N03 ,Gs4
 .byte   N02 ,Ds5
 .byte   W02
 .byte   N01 ,Ds5 ,v080
 .byte   W02
 .byte   N03 ,Bn4 ,v096
 .byte   N03 ,Gs5
 .byte   W04
@  #01 @097   ----------------------------------------
 .byte   N07 ,Ds1
 .byte   N07 ,Ds2
 .byte   N02 ,Gs5 ,v080
 .byte   N11 ,Gs3 ,v096
 .byte   N03 ,Ds5
 .byte   N03 ,Bn5
 .byte   W04
 .byte   Bn4
 .byte   N03 ,Gs5
 .byte   W02
 .byte   N02 ,Ds5 ,v080
 .byte   W02
 .byte   N07 ,Bn0 ,v096
 .byte   N07 ,Bn1
 .byte   N03 ,Gs4
 .byte   N01 ,Ds5
 .byte   W04
 .byte   N11 ,As3
 .byte   N02 ,Bn4
 .byte   N03 ,Gs5
 .byte   W04
 .byte   N07 ,Ds0
 .byte   N07 ,Ds1
 .byte   N03 ,Gs4
 .byte   N02 ,Ds5
 .byte   W02
 .byte   N01 ,Ds5 ,v080
 .byte   W02
 .byte   N03 ,Ds4 ,v096
 .byte   N03 ,Bn4
 .byte   W04
 .byte   N23 ,Bn3
 .byte   N03 ,En5
 .byte   N07 ,En0 ,v064
 .byte   W04
 .byte   N03 ,Bn4 ,v095
 .byte   W04
 .byte   N07 ,Bn1 ,v093
 .byte   N03 ,Gs4
 .byte   W04
 .byte   En4 ,v091
 .byte   W04
 .byte   N07 ,En2 ,v089
 .byte   N03 ,Gs4
 .byte   W04
 .byte   Bn4 ,v088
 .byte   W04
 .byte   N07 ,Fs2 ,v086
 .byte   N24 ,En3 ,v096
 .byte   N03 ,Ds5 ,v086
 .byte   W04
 .byte   Bn4 ,v084
 .byte   W04
 .byte   N07 ,Gs2 ,v082
 .byte   N03 ,Gs4
 .byte   W04
 .byte   En4 ,v080
 .byte   W04
 .byte   N07 ,Bn2 ,v079
 .byte   N03 ,Gs4
 .byte   W04
 .byte   En4 ,v077
 .byte   W04
 .byte   N22 ,En3 ,v075
 .byte   N03 ,Bn4
 .byte   W04
 .byte   Gs4 ,v073
 .byte   W04
 .byte   En4 ,v072
 .byte   W04
 .byte   Bn3 ,v070
 .byte   W04
 .byte   Gs3 ,v068
 .byte   W04
 .byte   Bn3 ,v066
 .byte   W04
@  #01 @098   ----------------------------------------
 .byte   N07 ,En0 ,v064
 .byte   N12 ,Gs3 ,v096
 .byte   N03 ,Gs4 ,v064
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   N07 ,Bn0
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Gs3
 .byte   W04
 .byte   N07 ,En1
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   N07 ,Gs1
 .byte   N68 ,Bn2 ,v096
 .byte   N03 ,Gs4 ,v064
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   N07 ,Bn1
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Gs3
 .byte   W04
 .byte   N07 ,En2
 .byte   N03 ,Bn3
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   N22 ,Gs2
 .byte   N03 ,Bn4
 .byte   W04
 .byte   Gs4
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   Gs3
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Bn3 ,v070
 .byte   W04
 .byte   As3 ,v076
 .byte   W04
 .byte   Gs3 ,v082
 .byte   W04
 .byte   Ds3 ,v088
 .byte   W04
 .byte   Bn2 ,v095
 .byte   W04
@  #01 @099   ----------------------------------------
 .byte   Gs2 ,v101
 .byte   W03
 .byte   N02 ,Ds4 ,v080
 .byte   W01
 .byte   N03 ,Ds2 ,v107
 .byte   W02
 .byte   N02 ,En4 ,v080
 .byte   W02
 .byte   N03 ,Bn1 ,v113
 .byte   W01
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   N03 ,Gs1 ,v119
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   As4
 .byte   W01
 .byte   N03 ,Ds1 ,v126
 .byte   W02
 .byte   N02 ,Bn4 ,v064
 .byte   W02
 .byte   N03 ,Bn0
 .byte   W01
 .byte   N02 ,Cs5
 .byte   W03
 .byte   TEMPO , 156*song06_tbs/2
 .byte   N05 ,Ds5
 .byte   TIE ,Gs0
 .byte   W12
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
@  #01 @100   ----------------------------------------
 .byte   Cs5
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Gs1
 .byte   N11 ,Bn4
 .byte   W12
 .byte   En2
 .byte   N11 ,Bn3
 .byte   W12
@  #01 @101   ----------------------------------------
 .byte   Gs2
 .byte   N11 ,En4
 .byte   W12
 .byte   N32 ,Bn2 ,v064 ,gtp2
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   N32 ,Bn4 ,v064 ,gtp2
 .byte   W32
@  #01 @102   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   Gs0
 .byte   W01
 .byte   N11 ,Gs1
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   As2
 .byte   N32 ,Bn3 ,v076 ,gtp3
 .byte   W04
 .byte   N30 ,Ds4 ,v076 ,gtp1
 .byte   W04
 .byte   N24 ,Gs4 ,v076 ,gtp3
 .byte   W04
 .byte   N11 ,Bn2 ,v064
 .byte   N23 ,Bn4 ,v076
 .byte   W12
 .byte   N11 ,Ds3 ,v064
 .byte   W12
 .byte   Ds3
 .byte   N24 ,Cs4 ,v076
 .byte   N24 ,Cs5
 .byte   W12
 .byte   N11 ,Bn2 ,v064
 .byte   W12
@  #01 @103   ----------------------------------------
 .byte   As2
 .byte   W12
 .byte   Gs2
 .byte   N24 ,As3 ,v076
 .byte   N24 ,As4
 .byte   W12
 .byte   N11 ,Fs2 ,v064
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Gs1
 .byte   N24 ,Bn3 ,v076
 .byte   N24 ,Bn4
 .byte   W12
 .byte   N11 ,Ds2 ,v064
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   As2
 .byte   W12
@  #01 @104   ----------------------------------------
 .byte   Bn2
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Gs1
 .byte   W12
@  #01 @105   ----------------------------------------
 .byte   En1
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Fs2
 .byte   N24 ,Bn3 ,v076
 .byte   N24 ,Bn4
 .byte   W12
 .byte   N11 ,Gs2 ,v064
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Bn2
 .byte   N24 ,Cs4 ,v076
 .byte   N24 ,Cs5
 .byte   W12
 .byte   N11 ,Gs2 ,v064
 .byte   W12
@  #01 @106   ----------------------------------------
 .byte   Fs2
 .byte   W12
 .byte   N32 ,En2 ,v064 ,gtp2
 .byte   N24 ,As3 ,v076
 .byte   N24 ,As4
 .byte   W24
 .byte   W12
 .byte   N11 ,En1 ,v064
 .byte   N24 ,Fs3 ,v076
 .byte   N24 ,Fs4
 .byte   W12
 .byte   N11 ,Bn1 ,v064
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Fs2
 .byte   W12
@  #01 @107   ----------------------------------------
 .byte   Gs2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N22 ,En2
 .byte   W24
 .byte   N11 ,Bn1
 .byte   W12
@  #01 @108   ----------------------------------------
 .byte   Fs1
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   As2
 .byte   N24 ,Bn3 ,v076
 .byte   N24 ,Bn4
 .byte   W12
 .byte   N11 ,Bn2 ,v064
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Cs3
 .byte   N24 ,Cs4 ,v076
 .byte   N24 ,Cs5
 .byte   W12
 .byte   N11 ,As2 ,v064
 .byte   W12
@  #01 @109   ----------------------------------------
 .byte   Gs2
 .byte   W12
 .byte   N22 ,Fs2
 .byte   N24 ,As3 ,v076
 .byte   N24 ,As4
 .byte   W24
 .byte   N11 ,Cs2 ,v064
 .byte   W12
 .byte   Fs1
 .byte   N48 ,Bn3 ,v076
 .byte   N48 ,Bn4
 .byte   W12
 .byte   N11 ,Cs2 ,v064
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   As2
 .byte   W12
@  #01 @110   ----------------------------------------
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Cs3
 .byte   N48 ,Fs4 ,v076
 .byte   N48 ,Fs5
 .byte   W12
 .byte   N11 ,As2 ,v064
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   N22 ,Fs2
 .byte   W24
 .byte   N11 ,Cs2
 .byte   W12
@  #01 @111   ----------------------------------------
 .byte   N32 ,Fs4 ,v076 ,gtp3
 .byte   N11 ,Ds1 ,v064
 .byte   W04
 .byte   N30 ,As4 ,v076 ,gtp1
 .byte   W04
 .byte   N24 ,Ds5 ,v076 ,gtp3
 .byte   W04
 .byte   N11 ,As1 ,v064
 .byte   N23 ,Fs5 ,v076
 .byte   W12
 .byte   N11 ,Ds2 ,v064
 .byte   W12
 .byte   Fn2
 .byte   N24 ,En4 ,v076
 .byte   N24 ,En5
 .byte   W12
 .byte   N11 ,Fs2 ,v064
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   As2
 .byte   N24 ,Ds4 ,v076
 .byte   N24 ,Ds5
 .byte   W12
 .byte   N11 ,Gs2 ,v064
 .byte   W12
@  #01 @112   ----------------------------------------
 .byte   Fs2
 .byte   W12
 .byte   N22 ,Fn2
 .byte   N24 ,Cs4 ,v076
 .byte   N24 ,Cs5
 .byte   W24
 .byte   N11 ,As1 ,v064
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Fn2
 .byte   N24 ,Ds4 ,v076
 .byte   N24 ,Ds5
 .byte   W12
@  #01 @113   ----------------------------------------
 .byte   N11 ,Fs2 ,v064
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N22 ,Fn2
 .byte   N24 ,As3 ,v076
 .byte   N24 ,As4
 .byte   W24
 .byte   N11 ,As1 ,v064
 .byte   W12
@  #01 @114   ----------------------------------------
 .byte   N23 ,Gs3
 .byte   N11 ,En1
 .byte   W04
 .byte   N19 ,Ds4
 .byte   W04
 .byte   N15 ,Gs4
 .byte   W04
 .byte   N11 ,Bn1
 .byte   W12
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N22 ,Gs2
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
@  #01 @115   ----------------------------------------
 .byte   En2
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N22 ,Gs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Gs3
 .byte   W12
@  #01 @116   ----------------------------------------
 .byte   N22 ,Gs2
 .byte   N11 ,As3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En2
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N22 ,Gs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Gs3
 .byte   W12
@  #01 @117   ----------------------------------------
 .byte   En1
 .byte   N11 ,As3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En1
 .byte   N11 ,As3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En1
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Gs3
 .byte   W12
@  #01 @118   ----------------------------------------
 .byte   En2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En1
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En2
 .byte   N11 ,Gs3
 .byte   W12
 .byte   En1
 .byte   N11 ,As3
 .byte   W12
@  #01 @119   ----------------------------------------
 .byte   Bn1
 .byte   N11 ,Bn3
 .byte   W12
 .byte   En1
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Bn1
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Gs3 ,v066
 .byte   W06
 .byte   N11 ,En1 ,v069
 .byte   N05 ,As3
 .byte   W06
 .byte   Bn3 ,v072
 .byte   W06
 .byte   N11 ,Bn1 ,v074
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Ds4 ,v077
 .byte   W06
 .byte   N11 ,En1 ,v080
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4 ,v082
 .byte   W06
 .byte   N11 ,Bn1 ,v085
 .byte   N05 ,Gs4
 .byte   W06
 .byte   As4 ,v088
 .byte   W06
 .byte   N11 ,En1 ,v090
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Cs5 ,v093
 .byte   W06
@  #01 @120   ----------------------------------------
 .byte   Gs5 ,v096
 .byte   TIE ,En1 ,v064
 .byte   W06
 .byte   N05 ,Gs4 ,v096
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @121   ----------------------------------------
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds3
 .byte   W05
 .byte   EOT
 .byte   En1
 .byte   W01
 .byte   TEMPO , 78*song06_tbs/2
 .byte   N07 ,En0 ,v064
 .byte   W12
 .byte   N05 ,Gs2 ,v080
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   N11 ,Ds5 ,v096
 .byte   W01
 .byte   N10 ,Gs5
 .byte   W01
 .byte   N09 ,Bn5
 .byte   W02
 .byte   N07 ,Ds6
 .byte   W02
 .byte   N05 ,Gs3 ,v080
 .byte   W06
@  #01 @122   ----------------------------------------
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   N23 ,As3 ,v096
 .byte   N05 ,Bn3
 .byte   N11 ,En1 ,v080
 .byte   N05 ,Ds4 ,v096
 .byte   W01
 .byte   N04 ,Gs4
 .byte   W01
 .byte   N03 ,As4
 .byte   W04
 .byte   N05 ,Bn3 ,v080
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N11 ,En2
 .byte   N06 ,Gs3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N32 ,Ds3 ,v096 ,gtp3
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
@  #01 @123   ----------------------------------------
 .byte   Ds4
 .byte   N11 ,Fs1
 .byte   W06
 .byte   N05 ,As3
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,As3 ,v096
 .byte   N05 ,Ds4
 .byte   W01
 .byte   N04 ,As4
 .byte   W05
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N11 ,Gs3 ,v096
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N32 ,As2 ,v080 ,gtp2
 .byte   N23 ,Ds3 ,v096
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Fs3 ,v080
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Cs3 ,v096
 .byte   N03 ,Fs3
 .byte   N03 ,Cs4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N11 ,Ds3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Ds4
 .byte   N11 ,Gs1 ,v080
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   N11 ,Ds2
 .byte   N11 ,Fs3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Fs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
@  #01 @124   ----------------------------------------
 .byte   N11 ,Gs2
 .byte   N06 ,Gs3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,As2
 .byte   N23 ,Ds3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3 ,v096
 .byte   N03 ,Bn3
 .byte   N03 ,Cs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Bn0
 .byte   N68 ,Ds3 ,v096 ,gtp3
 .byte   N03 ,Ds4
 .byte   N24 ,Bn1 ,v080
 .byte   W06
 .byte   N05 ,Fs3
 .byte   W06
 .byte   N11 ,Fs1
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #01 @125   ----------------------------------------
 .byte   N11 ,Ds2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N03 ,As3 ,v096
 .byte   N03 ,En4
 .byte   N03 ,As4
 .byte   N11 ,Cs1 ,v080
 .byte   W06
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Gs1
 .byte   N05 ,Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N03 ,Gs3 ,v096
 .byte   N03 ,En4
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   N11 ,En2
 .byte   N03 ,Ds3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,En4
 .byte   W06
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   N22 ,Gs2
 .byte   N05 ,Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
@  #01 @126   ----------------------------------------
 .byte   Ds4
 .byte   N11 ,Ds1
 .byte   W06
 .byte   N05 ,As3
 .byte   W06
 .byte   N11 ,As1
 .byte   N06 ,As3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,As4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N11 ,Ds2
 .byte   N11 ,Gs3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N23 ,Ds3 ,v096
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Fs3 ,v080
 .byte   W06
 .byte   N22 ,As2
 .byte   N05 ,Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Cs3 ,v096
 .byte   N03 ,Cs4
 .byte   W06
 .byte   N05 ,As3 ,v080
 .byte   W06
 .byte   N11 ,Ds3 ,v096
 .byte   N03 ,Gs3
 .byte   N03 ,Ds4
 .byte   N11 ,En1 ,v080
 .byte   W06
 .byte   N05 ,Gs3
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N11 ,Fs3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,Fs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
@  #01 @127   ----------------------------------------
 .byte   N11 ,En2
 .byte   N06 ,Gs3 ,v096
 .byte   N03 ,Ds4
 .byte   N03 ,Gs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N23 ,Ds3 ,v096
 .byte   N03 ,Ds4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N22 ,Gs2
 .byte   N05 ,As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N11 ,Cs3 ,v096
 .byte   N03 ,Cs4
 .byte   W06
 .byte   N05 ,Gs3 ,v080
 .byte   W06
 .byte   N56 ,Ds3 ,v096 ,gtp3
 .byte   N03 ,Ds4
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Fs3
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N05 ,As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #01 @128   ----------------------------------------
 .byte   N22 ,As2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N01 ,Bn2 ,v096
 .byte   N02 ,Fs4
 .byte   W01
 .byte   N01 ,Cn3
 .byte   W01
 .byte   Cs3
 .byte   W01
 .byte   N02 ,Gs4
 .byte   N01 ,Dn3
 .byte   W01
 .byte   Ds3
 .byte   W02
 .byte   En3
 .byte   N02 ,An4
 .byte   W01
 .byte   N01 ,Fn3
 .byte   W01
 .byte   Fs3
 .byte   W01
 .byte   N02 ,Bn4
 .byte   N01 ,Gn3
 .byte   W01
 .byte   Gs3
 .byte   W02
 .byte   N07 ,Gn1 ,v115
 .byte   N23 ,An3 ,v096
 .byte   N05 ,Cs4 ,v115
 .byte   N07 ,Gn0 ,v080
 .byte   N05 ,Fs4 ,v115
 .byte   W01
 .byte   N04 ,Cs5
 .byte   W05
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Gn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N11 ,Fs3
 .byte   N03 ,Fs4 ,v115
 .byte   N03 ,Bn4
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N11 ,Dn3
 .byte   N32 ,En3 ,v096 ,gtp3
 .byte   N03 ,Fs4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Fs2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #01 @129   ----------------------------------------
 .byte   N07 ,An1 ,v115
 .byte   N32 ,En3 ,v096 ,gtp3
 .byte   N05 ,Fs4
 .byte   N07 ,An0 ,v080
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,En2
 .byte   N11 ,An2
 .byte   N05 ,En4 ,v115
 .byte   N05 ,An4
 .byte   W01
 .byte   N04 ,Cs5
 .byte   W05
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,An2
 .byte   N11 ,Cs3
 .byte   N03 ,Bn4 ,v115
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   N32 ,Fs3 ,v096 ,gtp3
 .byte   N03 ,Fs4 ,v115
 .byte   W06
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   N11 ,An2
 .byte   N11 ,Cs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,En2
 .byte   N11 ,An2
 .byte   N03 ,En4 ,v115
 .byte   W06
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N11 ,Fs3
 .byte   N01 ,Dn4 ,v127
 .byte   N05 ,Bn3 ,v115
 .byte   N11 ,Bn0 ,v080
 .byte   N05 ,Dn4 ,v115
 .byte   W01
 .byte   N04 ,Fs4
 .byte   W05
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N11 ,An3
 .byte   N03 ,An4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
@  #01 @130   ----------------------------------------
 .byte   N11 ,Bn2
 .byte   N11 ,Dn3
 .byte   N06 ,Bn3
 .byte   N23 ,Cs4 ,v127
 .byte   N03 ,Bn4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Dn3
 .byte   N11 ,Fs3
 .byte   N03 ,Fs4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N11 ,Dn3
 .byte   N23 ,An3 ,v127
 .byte   N05 ,Cs4 ,v096
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N11 ,En3
 .byte   N03 ,En4 ,v115
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N36 ,Fs3
 .byte   N06 ,An3 ,v127
 .byte   N05 ,Fs4 ,v096
 .byte   N11 ,Dn1 ,v080
 .byte   W06
 .byte   N05 ,An3 ,v096
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,An2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,An2
 .byte   N11 ,Cs3
 .byte   N23 ,Gn3 ,v127
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N04 ,Fs3
 .byte   N03 ,Fs4
 .byte   W04
 .byte   N07 ,Fs3
 .byte   W04
 .byte   N03 ,Fs4
 .byte   W04
@  #01 @131   ----------------------------------------
 .byte   N11 ,An2
 .byte   N11 ,Cs3
 .byte   N23 ,Fs3 ,v127
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   N11 ,Fs2
 .byte   N11 ,An2
 .byte   N03 ,An4
 .byte   W04
 .byte   An3
 .byte   W04
 .byte   An4
 .byte   W04
 .byte   N07 ,En1 ,v115
 .byte   N36 ,Dn3 ,v096
 .byte   N05 ,Cs4 ,v115
 .byte   N07 ,En0 ,v080
 .byte   N05 ,Fs4 ,v115
 .byte   W01
 .byte   N04 ,Cs5
 .byte   W05
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N11 ,Gn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Bn2
 .byte   N03 ,Fs4 ,v115
 .byte   N03 ,Bn4
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N07 ,Gn2 ,v115
 .byte   N07 ,Dn3
 .byte   N03 ,Fs4
 .byte   W06
 .byte   N05 ,Bn3 ,v096
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Bn2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Bn1
 .byte   N11 ,Gn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #01 @132   ----------------------------------------
 .byte   N07 ,Fs1 ,v115
 .byte   N32 ,En3 ,v096 ,gtp3
 .byte   N05 ,Fs4
 .byte   N07 ,Fs0 ,v080
 .byte   W06
 .byte   N05 ,En4 ,v096
 .byte   W06
 .byte   N11 ,Cs2
 .byte   N11 ,An2
 .byte   N02 ,Dn5 ,v115
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   N11 ,En2 ,v096
 .byte   N11 ,Cs3
 .byte   N02 ,Cs5 ,v115
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Cs5
 .byte   W04
 .byte   N11 ,An2 ,v096
 .byte   N11 ,En3
 .byte   N32 ,An3 ,v096 ,gtp3
 .byte   N02 ,En5 ,v115
 .byte   W04
 .byte   En4
 .byte   W04
 .byte   En5
 .byte   W04
 .byte   N11 ,En2 ,v096
 .byte   N11 ,Cs3
 .byte   N02 ,Dn5 ,v115
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   N11 ,Cs2 ,v096
 .byte   N11 ,An2
 .byte   N02 ,Cs5 ,v115
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Cs5
 .byte   W04
 .byte   N07 ,Gn1
 .byte   N32 ,Fs3 ,v096 ,gtp3
 .byte   N03 ,Cs5 ,v115
 .byte   N07 ,Gn0 ,v080
 .byte   W06
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Gn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Dn4
 .byte   W06
@  #01 @133   ----------------------------------------
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N03 ,Bn4 ,v115
 .byte   W06
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N11 ,Dn3
 .byte   N96 ,Bn3
 .byte   N05 ,An4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Fs2
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N07 ,Gn1 ,v115
 .byte   N05 ,En5 ,v096
 .byte   N07 ,Gn0 ,v080
 .byte   W06
 .byte   N05 ,An4 ,v096
 .byte   W06
 .byte   N11 ,Dn2
 .byte   N11 ,Gn2
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   N05 ,Dn5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Bn2
 .byte   N05 ,Dn3
 .byte   N11 ,Cs5
 .byte   W02
 .byte   N09 ,En5
 .byte   W02
 .byte   N07 ,Fs5
 .byte   W02
 .byte   N05 ,Bn2
 .byte   W06
@  #01 @134   ----------------------------------------
 .byte   Dn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   N11 ,Bn3
 .byte   W12
 .byte   TEMPO , 82*song06_tbs/2
 .byte   N23 ,Fs4
 .byte   N05 ,Bn1 ,v080
 .byte   W02
 .byte   N21 ,Bn4 ,v096
 .byte   W02
 .byte   N19 ,Dn5
 .byte   W02
 .byte   N05 ,Fs2
 .byte   N17 ,Fs5
 .byte   W06
 .byte   N05 ,Bn2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N05 ,An1 ,v080
 .byte   W06
 .byte   An2 ,v096
 .byte   W06
 .byte   Bn2
 .byte   N11 ,En4
 .byte   N11 ,En5
 .byte   W06
 .byte   N05 ,Cs3
 .byte   W06
 .byte   N11 ,En3
 .byte   N05 ,Dn4
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Cs5
 .byte   W06
@  #01 @135   ----------------------------------------
 .byte   N11 ,Bn3
 .byte   N05 ,Gs1 ,v080
 .byte   W01
 .byte   N10 ,Dn4 ,v096
 .byte   W01
 .byte   N09 ,Fs4
 .byte   W02
 .byte   N07 ,Bn4
 .byte   W02
 .byte   N05 ,Gs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N11 ,Fs3
 .byte   W12
 .byte   N05 ,Bn3
 .byte   N05 ,Bn4
 .byte   N05 ,Cs1 ,v080
 .byte   W06
 .byte   Cs2 ,v096
 .byte   N05 ,Cs4
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Fn2
 .byte   N05 ,Bn3
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,An3
 .byte   N05 ,An4
 .byte   W06
 .byte   Bn2
 .byte   N05 ,Gs3
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Cs3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   Cs2 ,v096
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Fn4
 .byte   W06
 .byte   An2
 .byte   N05 ,Fs4
 .byte   W06
@  #01 @136   ----------------------------------------
 .byte   N11 ,Cs3
 .byte   N05 ,An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   N05 ,En1 ,v080
 .byte   W06
 .byte   Cs2 ,v096
 .byte   N05 ,Cs4
 .byte   W06
 .byte   En2
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,An4
 .byte   W06
 .byte   An2
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Cs3
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Bn4
 .byte   N05 ,Ds1 ,v080
 .byte   W06
 .byte   Ds2 ,v096
 .byte   N05 ,An4
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Gs4
 .byte   W06
 .byte   An2
 .byte   N05 ,An4
 .byte   W06
 .byte   N11 ,Cs3
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   N05 ,Ds1 ,v080
 .byte   W06
 .byte   Ds2 ,v096
 .byte   N05 ,Dn4
 .byte   W06
@  #01 @137   ----------------------------------------
 .byte   Gs2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Cn3
 .byte   N05 ,En4
 .byte   W06
 .byte   N11 ,Ds3
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs2
 .byte   N05 ,Cs4
 .byte   N05 ,Cs1 ,v080
 .byte   N05 ,En4 ,v096
 .byte   W01
 .byte   N04 ,Gs4
 .byte   W05
 .byte   N05 ,Gs0
 .byte   N05 ,Gs1
 .byte   N05 ,Cn4
 .byte   W06
 .byte   Cs1
 .byte   N05 ,Cs2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Gs1
 .byte   N05 ,Ds4
 .byte   W06
 .byte   En2
 .byte   N05 ,En4
 .byte   W06
 .byte   Gs1
 .byte   N05 ,Fs4
 .byte   W06
 .byte   N03 ,Gs4
 .byte   N05 ,Bn0 ,v080
 .byte   W04
 .byte   N03 ,Gs3 ,v096
 .byte   W02
 .byte   N05 ,Bn1
 .byte   W02
 .byte   N03 ,Gs4
 .byte   W04
 .byte   N05 ,Ds2
 .byte   N03 ,An4
 .byte   W04
 .byte   An3
 .byte   W02
 .byte   N05 ,En2
 .byte   W02
 .byte   N03 ,An4
 .byte   W04
 .byte   N05 ,Fs2
 .byte   N03 ,Bn4
 .byte   W04
 .byte   Bn3
 .byte   W02
 .byte   N05 ,Bn1
 .byte   W02
 .byte   N03 ,Bn4
 .byte   W04
@  #01 @138   ----------------------------------------
 .byte   N05 ,As1
 .byte   N05 ,Cs5
 .byte   N05 ,As0 ,v080
 .byte   W06
 .byte   Gs1 ,v096
 .byte   N05 ,Cn5
 .byte   W06
 .byte   Cs2
 .byte   N05 ,Cs5
 .byte   W06
 .byte   En2
 .byte   N05 ,Ds5
 .byte   W06
 .byte   N11 ,Gs2
 .byte   N05 ,En5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Gn4
 .byte   N05 ,Gn5
 .byte   N05 ,Ds1 ,v080
 .byte   W06
 .byte   Ds2 ,v096
 .byte   N05 ,Dn4
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Gn2
 .byte   N05 ,Ds4
 .byte   N05 ,Ds5
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Fn4
 .byte   N05 ,Fn5
 .byte   W06
 .byte   N11 ,As2
 .byte   N05 ,Fs4
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Gn4
 .byte   N05 ,Gn5
 .byte   W06
 .byte   N48 ,En1 ,v115
 .byte   N02 ,Gs5 ,v096
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   En5
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   Ds5
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Bn3
 .byte   W03
@  #01 @139   ----------------------------------------
 .byte   As4
 .byte   W03
 .byte   As3
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   Gs3
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   As4
 .byte   W03
 .byte   As3
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   Gs3
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   En3
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Ds3
 .byte   W03
 .byte   Cs4
 .byte   W03
 .byte   Cs3
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   En3
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Ds3
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Gs3
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   En3
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   Ds3
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   N11
 .byte   W12
@  #01 @140   ----------------------------------------
 .byte   As0
 .byte   N11 ,As1
 .byte   N11 ,Gs4
 .byte   N11 ,Gs5
 .byte   W12
 .byte   As0
 .byte   N11 ,As1
 .byte   N11 ,As4
 .byte   N11 ,As5
 .byte   W12
 .byte   Cs2
 .byte   N22 ,Bn4
 .byte   N22 ,Bn5
 .byte   W12
 .byte   N11 ,Gs2
 .byte   W12
 .byte   Cs3
 .byte   N22 ,As4
 .byte   N22 ,As5
 .byte   W12
 .byte   N32 ,En3 ,v096 ,gtp2
 .byte   W12
 .byte   N11 ,Gs4
 .byte   N11 ,Gs5
 .byte   W12
 .byte   Fs4
 .byte   N11 ,Fs5
 .byte   W12
@  #01 @141   ----------------------------------------
 .byte   Ds2
 .byte   N22 ,Gs4
 .byte   N22 ,Gs5
 .byte   W12
 .byte   N11 ,As2
 .byte   W12
 .byte   Ds3
 .byte   N22 ,Fs4
 .byte   N22 ,Fs5
 .byte   W12
 .byte   N32 ,Fs3 ,v096 ,gtp2
 .byte   W12
 .byte   N11 ,En4
 .byte   N11 ,En5
 .byte   W12
 .byte   Ds4
 .byte   N11 ,Ds5
 .byte   W12
 .byte   En2
 .byte   N22 ,Cs4
 .byte   N22 ,Cs5
 .byte   W12
 .byte   N11 ,Bn2
 .byte   W12
@  #01 @142   ----------------------------------------
 .byte   En3
 .byte   N44 ,Ds4 ,v096 ,gtp1
 .byte   Ds5
 .byte   W12
 .byte   N22 ,Gs3
 .byte   W24
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N32 ,As3 ,v096 ,gtp2
 .byte   W12
@  #01 @143   ----------------------------------------
 .byte   N11 ,Gs4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   N05 ,Gs0
 .byte   N11 ,Ds2 ,v080
 .byte   N05 ,Bn4 ,v096
 .byte   N12 ,Gs1 ,v080
 .byte   W06
 .byte   N05 ,Ds1 ,v096
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Gs1
 .byte   N11 ,Gs2 ,v080
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   As1
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Bn1
 .byte   N11 ,As2 ,v080
 .byte   N05 ,As4 ,v096
 .byte   W06
 .byte   Ds2
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N24 ,Gs2
 .byte   N23 ,Bn2 ,v080
 .byte   N05 ,Ds4 ,v096
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   N10 ,Gs2 ,v080
 .byte   N05 ,Fs4 ,v096
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #01 @144   ----------------------------------------
 .byte   As0
 .byte   N18 ,Fs2 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   N06 ,As1 ,v080
 .byte   W06
 .byte   N05 ,As1 ,v096
 .byte   N05 ,Gs3
 .byte   W06
 .byte   Cs2
 .byte   N05 ,As3
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   As2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Fs3
 .byte   W06
 .byte   N32 ,Cs3 ,v080 ,gtp2
 .byte   N05 ,Fs3 ,v096
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N11 ,En4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N05 ,Bn0
 .byte   N30 ,Fs2 ,v080
 .byte   N05 ,Cs4 ,v096
 .byte   N12 ,Bn1 ,v080
 .byte   W06
 .byte   N05 ,Fs1 ,v096
 .byte   N05 ,En3
 .byte   W06
 .byte   Bn1
 .byte   N05 ,Fs3
 .byte   W06
 .byte   Cs2
 .byte   N05 ,Bn3
 .byte   W06
@  #01 @145   ----------------------------------------
 .byte   Ds2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fs2
 .byte   N05 ,Cs3
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Ds3
 .byte   W06
 .byte   Fs3
 .byte   N05 ,Bn3
 .byte   W06
 .byte   N11 ,Fs2
 .byte   N05 ,Bn3
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N11 ,Ds2
 .byte   N05 ,Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cn1
 .byte   N32 ,Ds3 ,v080 ,gtp3
 .byte   N05 ,Ds4 ,v096
 .byte   N06 ,Cn2 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   W01
 .byte   N04 ,Ds5
 .byte   W05
 .byte   N05 ,Cn2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Ds2
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Ds5
 .byte   W06
 .byte   As2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Cn3
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Cn3
 .byte   N17 ,En3 ,v080
 .byte   N05 ,En5 ,v096
 .byte   W06
 .byte   Gs2
 .byte   N05 ,En4
 .byte   W06
@  #01 @146   ----------------------------------------
 .byte   Fs2
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Ds2
 .byte   N17 ,Fs3 ,v080
 .byte   N05 ,Fs5 ,v096
 .byte   W06
 .byte   N11 ,Cn2
 .byte   N05 ,Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   N32 ,Gs3 ,v080 ,gtp3
 .byte   N05 ,Fs5 ,v096
 .byte   N05 ,Cs1 ,v080
 .byte   W06
 .byte   Gs0 ,v096
 .byte   N05 ,Fs4
 .byte   W06
 .byte   Cs1
 .byte   N05 ,Bn4
 .byte   W06
 .byte   Ds2
 .byte   N05 ,En5
 .byte   W06
 .byte   N11 ,En2
 .byte   N05 ,En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs1
 .byte   N17 ,As3 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   W06
 .byte   Gs0
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Cs1
 .byte   N05 ,En4
 .byte   W06
 .byte   Ds2
 .byte   N17 ,Bn3 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   W06
 .byte   N11 ,En2
 .byte   N05 ,Cs4
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @147   ----------------------------------------
 .byte   N32 ,As3 ,v080 ,gtp3
 .byte   N05 ,Ds4 ,v096
 .byte   N05 ,Ds1 ,v080
 .byte   N05 ,Gn4 ,v096
 .byte   W01
 .byte   N04 ,As4
 .byte   W05
 .byte   N05 ,Ds2
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Fn2
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Gn2
 .byte   N05 ,Cs5
 .byte   W06
 .byte   N11 ,As2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Ds1
 .byte   N17 ,Bn3 ,v080
 .byte   N05 ,Ds5 ,v096
 .byte   W06
 .byte   Ds2
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Fn2
 .byte   N05 ,As4
 .byte   W06
 .byte   Gn2
 .byte   N17 ,Cs4 ,v080
 .byte   N05 ,En5 ,v096
 .byte   W06
 .byte   N11 ,As2
 .byte   N05 ,Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   N32 ,As3 ,v080 ,gtp3
 .byte   N05 ,En5 ,v096
 .byte   N05 ,Bn0 ,v080
 .byte   W06
 .byte   Bn1 ,v096
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Ds2
 .byte   N05 ,As4
 .byte   W06
 .byte   Gn2
 .byte   N05 ,Ds5
 .byte   W06
@  #01 @148   ----------------------------------------
 .byte   N11 ,As2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Bn0
 .byte   N32 ,Gs3 ,v080 ,gtp3
 .byte   N05 ,Gs4 ,v096
 .byte   W06
 .byte   Bn1
 .byte   N05 ,Bn3
 .byte   W06
 .byte   Ds2
 .byte   N05 ,As4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Ds4
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Bn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N32 ,Cs3 ,v080 ,gtp3
 .byte   N05 ,En4 ,v096
 .byte   N05 ,En1 ,v080
 .byte   N05 ,Gs4 ,v096
 .byte   W01
 .byte   N04 ,Ds5
 .byte   W05
 .byte   N05 ,Bn0
 .byte   N05 ,En4
 .byte   W06
 .byte   En1
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Ds5
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   En1
 .byte   N32 ,Ds3 ,v080 ,gtp3
 .byte   N11 ,Cs5 ,v096
 .byte   W06
 .byte   N05 ,Bn0
 .byte   W06
@  #01 @149   ----------------------------------------
 .byte   En1
 .byte   N11 ,Bn4
 .byte   W06
 .byte   N05 ,Gs2
 .byte   W06
 .byte   Bn2
 .byte   N11 ,As4
 .byte   W06
 .byte   N05 ,Gs2
 .byte   W06
 .byte   N23 ,Bn2
 .byte   N23 ,Bn3
 .byte   N12 ,Dn1
 .byte   W02
 .byte   N21 ,Dn4
 .byte   W02
 .byte   N19 ,Fs4
 .byte   W02
 .byte   N17 ,Bn4
 .byte   W06
 .byte   N11 ,Dn1 ,v127
 .byte   N11 ,Dn2
 .byte   W12
 .byte   Cs2
 .byte   N11 ,An2 ,v096
 .byte   N11 ,An3
 .byte   N11 ,An4
 .byte   N11 ,Cs1
 .byte   W12
 .byte   Bn1 ,v127
 .byte   N11 ,Gs2 ,v096
 .byte   N11 ,Gs3
 .byte   N11 ,Gs4
 .byte   N11 ,Bn0
 .byte   W12
 .byte   An1 ,v127
 .byte   N11 ,An2 ,v096
 .byte   N11 ,An3
 .byte   N11 ,An4
 .byte   N11 ,An0
 .byte   W12
 .byte   Fs1 ,v127
 .byte   N11 ,Bn2 ,v096
 .byte   N11 ,Bn3
 .byte   N11 ,Bn4
 .byte   N11 ,Fs0
 .byte   W12
@  #01 @150   ----------------------------------------
 .byte   N32 ,Gs1 ,v127 ,gtp3
 .byte   Gs0 ,v096
 .byte   W12
 .byte   N11 ,Cs3
 .byte   N11 ,Fs3
 .byte   N11 ,Cs4
 .byte   N11 ,Cs5
 .byte   W12
 .byte   Bn2
 .byte   N11 ,Fs3
 .byte   N11 ,Bn3
 .byte   N11 ,Bn4
 .byte   W12
 .byte   N32 ,Gn1 ,v127 ,gtp3
 .byte   N11 ,Cs3 ,v096
 .byte   N11 ,Fs3
 .byte   N11 ,Cs4
 .byte   N11 ,Cs5
 .byte   N32 ,Gn0 ,v096 ,gtp3
 .byte   W12
 .byte   N11 ,Dn3
 .byte   N11 ,Fs3
 .byte   N11 ,Dn4
 .byte   N11 ,Dn5
 .byte   W12
 .byte   En3
 .byte   N11 ,Fs3
 .byte   N11 ,En4
 .byte   N11 ,En5
 .byte   W12
 .byte   N05 ,En2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   N05 ,En1 ,v096
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Bn4 ,v127
 .byte   N11 ,Dn5
 .byte   N11 ,Fs5
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
@  #01 @151   ----------------------------------------
 .byte   N11 ,Gn2
 .byte   N11 ,En5 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,An4 ,v080
 .byte   N03 ,Bn4 ,v127
 .byte   N11 ,Dn5
 .byte   N11 ,An5
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Fs5 ,v127
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N11 ,Dn5 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,Fs4 ,v080
 .byte   N11 ,En4 ,v127
 .byte   N11 ,An4
 .byte   N11 ,Cs5
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Bn4 ,v127
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N11 ,En5 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,An4 ,v080
 .byte   N11 ,En4 ,v127
 .byte   N11 ,Cs5
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
@  #01 @152   ----------------------------------------
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Cs4 ,v127
 .byte   N11 ,An4
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   En1
 .byte   N05 ,En2
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Bn3 ,v127
 .byte   N11 ,En4
 .byte   N11 ,Fs4
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N11 ,En4 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N11 ,Dn4 ,v127
 .byte   N11 ,Fs4
 .byte   N02 ,An4
 .byte   W03
 .byte   Bn4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Fs4 ,v127
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N11 ,Dn4 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,Fs4 ,v080
 .byte   N11 ,Fs3 ,v127
 .byte   N11 ,An3
 .byte   N11 ,Cs4
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
@  #01 @153   ----------------------------------------
 .byte   N05 ,En2 ,v112
 .byte   N11 ,Bn3 ,v127
 .byte   W06
 .byte   N05 ,Fs2 ,v112
 .byte   W06
 .byte   N11 ,Gn2
 .byte   N11 ,En4 ,v127
 .byte   W12
 .byte   N05 ,En1 ,v112
 .byte   N05 ,En2
 .byte   N02 ,An4 ,v080
 .byte   N11 ,En3 ,v127
 .byte   N11 ,An3
 .byte   N11 ,Cs4
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   TIE ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Bn4 ,v127
 .byte   N11 ,Dn5
 .byte   N11 ,Fs5
 .byte   W06
 .byte   N05 ,Cs3 ,v112
 .byte   W06
 .byte   N11 ,Dn3
 .byte   N07 ,Fs3 ,v096
 .byte   N11 ,En5 ,v127
 .byte   W08
 .byte   N03 ,En3 ,v096
 .byte   W04
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   N56 ,An3 ,v096 ,gtp3
 .byte   N03 ,Bn4 ,v127
 .byte   N11 ,Dn5
 .byte   N11 ,An5
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Fs5 ,v127
 .byte   W06
 .byte   N05 ,Cs3 ,v112
 .byte   W06
@  #01 @154   ----------------------------------------
 .byte   N11 ,Dn3
 .byte   N11 ,Dn5 ,v127
 .byte   W12
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   N11 ,En4 ,v127
 .byte   N11 ,An4
 .byte   N11 ,Cs5
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Bn4 ,v127
 .byte   W06
 .byte   N05 ,Cs3 ,v112
 .byte   W06
 .byte   N11 ,Dn3 ,v096
 .byte   N11 ,En5 ,v127
 .byte   W12
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,An4 ,v080
 .byte   N11 ,Cs3 ,v096
 .byte   N11 ,En4 ,v127
 .byte   N11 ,Cs5
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Bn3 ,v127
 .byte   N11 ,En4
 .byte   N11 ,Fs4
 .byte   W06
 .byte   N05 ,Dn3 ,v112
 .byte   W06
 .byte   N08 ,En3
 .byte   N07 ,Fs3 ,v096
 .byte   N11 ,En4 ,v127
 .byte   W08
 .byte   N03 ,En3 ,v096
 .byte   W04
@  #01 @155   ----------------------------------------
 .byte   N05 ,Bn1 ,v112
 .byte   N36 ,An3 ,v096
 .byte   N11 ,Dn4 ,v127
 .byte   N11 ,Fs4
 .byte   N02 ,An4
 .byte   W03
 .byte   Bn4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,An4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Fs4 ,v127
 .byte   W06
 .byte   N05 ,Dn3 ,v112
 .byte   W06
 .byte   N11 ,En3
 .byte   N11 ,Dn4 ,v127
 .byte   W12
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   N11 ,Fs3 ,v127
 .byte   N11 ,An3
 .byte   N11 ,Cs4
 .byte   W03
 .byte   N02 ,Gs4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,Fs4 ,v080
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,Bn3 ,v127
 .byte   W06
 .byte   N05 ,Dn3 ,v112
 .byte   W06
 .byte   N11 ,En3
 .byte   N11 ,En4 ,v127
 .byte   W12
 .byte   N05 ,Bn1 ,v112
 .byte   N02 ,As4 ,v080
 .byte   N11 ,Cs4 ,v127
 .byte   W03
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   N05 ,Fs2 ,v112
 .byte   N02 ,As4 ,v080
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Bn2 ,v112
 .byte   N11 ,An3 ,v127
 .byte   W06
 .byte   N05 ,Dn3 ,v112
 .byte   N02 ,Bn4 ,v080
 .byte   W03
 .byte   Fs5
 .byte   W02
 .byte   EOT
 .byte   Bn0
 .byte   W01
@  #01 @156   ----------------------------------------
 .byte   N03 ,Bn0 ,v127
 .byte   N03 ,Bn1
 .byte   N05 ,Bn5 ,v080
 .byte   W06
 .byte   Fs1 ,v112
 .byte   W06
 .byte   N44 ,Bn1 ,v112 ,gtp1
 .byte   N02 ,Cs3
 .byte   W03
 .byte   Dn3
 .byte   W03
 .byte   En3
 .byte   W03
 .byte   Fs3
 .byte   W03
 .byte   N05 ,Fs3 ,v115
 .byte   N02 ,Gn3 ,v112
 .byte   N07 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,An3 ,v112
 .byte   W03
 .byte   Bn3
 .byte   W02
 .byte   N05 ,Fs3 ,v115
 .byte   N07 ,Bn0 ,v096
 .byte   W01
 .byte   N02 ,Cs4 ,v112
 .byte   W03
 .byte   Dn4
 .byte   W03
 .byte   En4
 .byte   W01
 .byte   N05 ,Fs3 ,v115
 .byte   N07 ,Bn0 ,v096
 .byte   W02
 .byte   N02 ,Fs4 ,v112
 .byte   W03
 .byte   Gn4
 .byte   W03
 .byte   N07 ,Fs3 ,v115
 .byte   N02 ,An4 ,v112
 .byte   N11 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,Bn4 ,v112
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   N01 ,Dn5
 .byte   W01
 .byte   N03 ,Cs5
 .byte   W02
 .byte   N80 ,Gn3 ,v096 ,gtp3
 .byte   N12 ,Bn0
 .byte   W01
 .byte   N01 ,Dn5 ,v112
 .byte   W02
 .byte   Cs5
 .byte   W01
 .byte   Dn5
 .byte   W02
 .byte   Cs5
 .byte   W01
 .byte   Dn5
 .byte   W02
 .byte   Cs5
 .byte   W01
 .byte   Dn5
 .byte   W02
 .byte   N05 ,Bn0
 .byte   N02 ,Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   N05 ,Gn1
 .byte   N02 ,Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   N44 ,Bn1 ,v112 ,gtp1
 .byte   N02 ,Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
@  #01 @157   ----------------------------------------
 .byte   Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   N04 ,Cs5
 .byte   W04
 .byte   N05 ,Bn4
 .byte   W05
 .byte   N04 ,Fs4
 .byte   W05
 .byte   Bn4
 .byte   W04
 .byte   N05 ,Cs5
 .byte   W05
 .byte   N04 ,Dn5
 .byte   W05
 .byte   En5
 .byte   W02
 .byte   W02
 .byte   N05 ,Fs5
 .byte   W05
 .byte   N04 ,Gn5
 .byte   W05
 .byte   N05 ,Bn0
 .byte   N02 ,Bn5
 .byte   W03
 .byte   Gn5
 .byte   W03
 .byte   N05 ,Fs1
 .byte   N02 ,Fs5
 .byte   W03
 .byte   En5
 .byte   W03
 .byte   N44 ,Bn1 ,v112 ,gtp1
 .byte   N02 ,Dn5
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   An4
 .byte   W03
 .byte   N05 ,Fs3 ,v115
 .byte   N02 ,Gn4 ,v112
 .byte   N07 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,Fs4 ,v112
 .byte   W03
 .byte   En4
 .byte   W02
 .byte   N05 ,Fs3 ,v115
 .byte   N07 ,Bn0 ,v096
 .byte   W01
 .byte   N02 ,Dn4 ,v112
 .byte   W03
 .byte   Cs4
 .byte   W03
 .byte   Bn3
 .byte   W01
 .byte   N05 ,Fs3 ,v115
 .byte   N07 ,Bn0 ,v096
 .byte   W02
 .byte   N02 ,An3 ,v112
 .byte   W03
 .byte   Gn3
 .byte   W03
@  #01 @158   ----------------------------------------
 .byte   Fs3
 .byte   N11 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,Gn3 ,v112
 .byte   W03
 .byte   An3
 .byte   W03
 .byte   Gn3
 .byte   W03
 .byte   N24 ,An3 ,v096 ,gtp3
 .byte   N02 ,Fs3 ,v112
 .byte   N90 ,Bn0 ,v096
 .byte   W03
 .byte   N02 ,En3 ,v112
 .byte   W03
 .byte   Dn3
 .byte   W03
 .byte   Cs3
 .byte   W03
 .byte   N05 ,Cn1
 .byte   N05 ,Cn3
 .byte   W06
 .byte   Bn1
 .byte   N02 ,En3
 .byte   W03
 .byte   Fs3
 .byte   W03
 .byte   N44 ,En2 ,v112 ,gtp1
 .byte   N02 ,Gn3
 .byte   W03
 .byte   An3
 .byte   W03
 .byte   Bn3
 .byte   W03
 .byte   Cn4
 .byte   W03
 .byte   Dn4
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   Fs4
 .byte   W03
 .byte   Gn4
 .byte   W03
 .byte   An4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   Dn5
 .byte   W03
 .byte   En5
 .byte   W03
 .byte   Fs5
 .byte   W03
 .byte   N05 ,Gn5
 .byte   W24
@  #01 @159   ----------------------------------------
 .byte   N02 ,Bn0
 .byte   W03
 .byte   Bn0
 .byte   W03
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

.align 2, 0
song06_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_01015912:
 .byte   VOICE , 1
 .byte   VOL , 40*song06_mvl/mxv
 .byte   PAN , c_v-27
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
Label_0101591E:
 .byte   N32 ,Bn3 ,v080 ,gtp3
 .byte   W36
 .byte   Bn3
 .byte   W36
 .byte   N17
 .byte   W18
 .byte   N32 ,Cs4 ,v080 ,gtp3
 .byte   W06
 .byte   PEND 
@  #02 @007   ----------------------------------------
 .byte   W30
 .byte   N17 ,Dn4
 .byte   W18
 .byte   Dn4
 .byte   W18
 .byte   Cs4
 .byte   W18
 .byte   Bn3
 .byte   W12
@  #02 @008   ----------------------------------------
 .byte   W06
 .byte   Fs3
 .byte   W18
 .byte   En3
 .byte   W18
 .byte   N52 ,Fs3 ,v080 ,gtp1
 .byte   W54
@  #02 @009   ----------------------------------------
 .byte   PATT
  .word Label_0101591E
@  #02 @010   ----------------------------------------
 .byte   W30
 .byte   N17 ,Dn4 ,v080
 .byte   W18
 .byte   Dn4
 .byte   W18
 .byte   N32 ,Cs4 ,v080 ,gtp3
 .byte   W30
@  #02 @011   ----------------------------------------
 .byte   W06
 .byte   N17 ,An3
 .byte   W18
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W36
 .byte   Fs4 ,v088
 .byte   W36
@  #02 @012   ----------------------------------------
 .byte   N11 ,Fs4 ,v096
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N23 ,An4
 .byte   W24
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   N23 ,Fs4
 .byte   W12
@  #02 @013   ----------------------------------------
 .byte   W12
 .byte   N11 ,En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N44 ,Bn3 ,v096 ,gtp3
 .byte   W36
@  #02 @014   ----------------------------------------
 .byte   W96
@  #02 @015   ----------------------------------------
 .byte   W96
@  #02 @016   ----------------------------------------
 .byte   W96
@  #02 @017   ----------------------------------------
 .byte   W96
@  #02 @018   ----------------------------------------
 .byte   W96
@  #02 @019   ----------------------------------------
 .byte   W96
@  #02 @020   ----------------------------------------
 .byte   W96
@  #02 @021   ----------------------------------------
 .byte   W96
@  #02 @022   ----------------------------------------
 .byte   W24
 .byte   N68 ,Bn2 ,v096 ,gtp3
 .byte   W72
@  #02 @023   ----------------------------------------
 .byte   N32 ,Cs3 ,v096 ,gtp3
 .byte   W36
 .byte   As2
 .byte   W36
 .byte   TIE ,Bn2
 .byte   W24
@  #02 @024   ----------------------------------------
 .byte   W96
@  #02 @025   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N68 ,Bn2 ,v096 ,gtp3
 .byte   W72
@  #02 @026   ----------------------------------------
 .byte   N32 ,Cs3 ,v096 ,gtp3
 .byte   W36
 .byte   As2
 .byte   W36
 .byte   TIE ,Fs2
 .byte   W24
@  #02 @027   ----------------------------------------
 .byte   W96
@  #02 @028   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W36
 .byte   W01
 .byte   N32 ,Bn2 ,v096 ,gtp3
 .byte   W36
@  #02 @029   ----------------------------------------
 .byte   Cs3
 .byte   W36
 .byte   As2
 .byte   W36
 .byte   N68 ,Bn2 ,v096 ,gtp3
 .byte   W24
@  #02 @030   ----------------------------------------
 .byte   W48
 .byte   TIE ,Fs3
 .byte   W48
@  #02 @031   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N32 ,En3 ,v096 ,gtp3
 .byte   W36
@  #02 @032   ----------------------------------------
 .byte   Ds3
 .byte   W36
 .byte   N68 ,Cs3 ,v096 ,gtp3
 .byte   W60
@  #02 @033   ----------------------------------------
 .byte   W12
 .byte   Ds3
 .byte   W72
 .byte   N32 ,As2 ,v096 ,gtp3
 .byte   W12
@  #02 @034   ----------------------------------------
 .byte   W24
 .byte   TIE ,Gs2
 .byte   W72
@  #02 @035   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11 ,Fs2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   TIE ,Bn2
 .byte   W24
@  #02 @036   ----------------------------------------
 .byte   W80
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11 ,As2
 .byte   W12
@  #02 @037   ----------------------------------------
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   N68 ,Ds3 ,v096 ,gtp3
 .byte   W72
@  #02 @038   ----------------------------------------
 .byte   Gs2
 .byte   W72
 .byte   TIE ,Gs3
 .byte   W24
@  #02 @039   ----------------------------------------
 .byte   W96
@  #02 @040   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N11
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   En3
 .byte   W12
@  #02 @041   ----------------------------------------
 .byte   Gs2
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Ds2
 .byte   W36
@  #02 @042   ----------------------------------------
 .byte   W96
@  #02 @043   ----------------------------------------
 .byte   W96
@  #02 @044   ----------------------------------------
 .byte   W96
@  #02 @045   ----------------------------------------
 .byte   W96
@  #02 @046   ----------------------------------------
 .byte   W96
@  #02 @047   ----------------------------------------
 .byte   W96
@  #02 @048   ----------------------------------------
 .byte   W48
 .byte   N23 ,Cs5 ,v112
 .byte   W24
 .byte   N11 ,Bn4
 .byte   W12
 .byte   N44 ,Fs4 ,v112 ,gtp3
 .byte   W12
@  #02 @049   ----------------------------------------
Label_01015A32:
 .byte   W36
 .byte   N11 ,Cs5 ,v112
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   N23 ,Fs4
 .byte   W24
 .byte   N11 ,En4
 .byte   W12
 .byte   PEND 
@  #02 @050   ----------------------------------------
Label_01015A40:
 .byte   N11 ,Fs4 ,v112
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   N23 ,Fs4
 .byte   W24
 .byte   N11 ,En4
 .byte   W12
 .byte   N44 ,Fs4 ,v112 ,gtp3
 .byte   W24
 .byte   PEND 
@  #02 @051   ----------------------------------------
Label_01015A54:
 .byte   W24
 .byte   N11 ,Gn4 ,v112
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N23 ,Cs5
 .byte   W24
 .byte   N11 ,Bn4
 .byte   W12
 .byte   N44 ,Fs4 ,v112 ,gtp3
 .byte   W12
 .byte   PEND 
@  #02 @052   ----------------------------------------
Label_01015A67:
 .byte   W36
 .byte   N11 ,Dn5 ,v112
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #02 @053   ----------------------------------------
Label_01015A75:
 .byte   N23 ,Cs5 ,v112
 .byte   W24
 .byte   Bn4
 .byte   W24
 .byte   N11 ,Cs5
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   N32 ,En5 ,v112 ,gtp3
 .byte   W24
 .byte   PEND 
@  #02 @054   ----------------------------------------
Label_01015A86:
 .byte   W12
 .byte   N32 ,Fs5 ,v112 ,gtp3
 .byte   W84
 .byte   PEND 
@  #02 @055   ----------------------------------------
 .byte   W96
@  #02 @056   ----------------------------------------
 .byte   W96
@  #02 @057   ----------------------------------------
 .byte   W96
@  #02 @058   ----------------------------------------
 .byte   W96
@  #02 @059   ----------------------------------------
 .byte   W96
@  #02 @060   ----------------------------------------
 .byte   W24
 .byte   N11 ,Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Bn3
 .byte   W24
 .byte   As3
 .byte   W24
@  #02 @061   ----------------------------------------
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N23 ,Gs3
 .byte   W24
 .byte   Fs3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
 .byte   Ds3
 .byte   W12
@  #02 @062   ----------------------------------------
 .byte   N23 ,Cs3
 .byte   W24
 .byte   TIE ,Ds3
 .byte   W72
@  #02 @063   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W48
 .byte   W01
@  #02 @064   ----------------------------------------
 .byte   W96
@  #02 @065   ----------------------------------------
 .byte   W96
@  #02 @066   ----------------------------------------
 .byte   W96
@  #02 @067   ----------------------------------------
 .byte   W96
@  #02 @068   ----------------------------------------
 .byte   W96
@  #02 @069   ----------------------------------------
 .byte   W96
@  #02 @070   ----------------------------------------
 .byte   W96
@  #02 @071   ----------------------------------------
 .byte   W96
@  #02 @072   ----------------------------------------
 .byte   W96
@  #02 @073   ----------------------------------------
 .byte   W96
@  #02 @074   ----------------------------------------
 .byte   W96
@  #02 @075   ----------------------------------------
 .byte   W96
@  #02 @076   ----------------------------------------
 .byte   W96
@  #02 @077   ----------------------------------------
 .byte   W96
@  #02 @078   ----------------------------------------
 .byte   W96
@  #02 @079   ----------------------------------------
 .byte   W36
 .byte   GOTO
  .word Label_01015912
@  #02 @080   ----------------------------------------
 .byte   W60
 .byte   W96
@  #02 @081   ----------------------------------------
 .byte   W96
@  #02 @082   ----------------------------------------
 .byte   W96
@  #02 @083   ----------------------------------------
 .byte   W96
@  #02 @084   ----------------------------------------
 .byte   W96
@  #02 @085   ----------------------------------------
Label_01015AD2:
 .byte   W36
 .byte   N32 ,Bn3 ,v080 ,gtp3
 .byte   W36
 .byte   Bn3
 .byte   W24
 .byte   PEND 
@  #02 @086   ----------------------------------------
Label_01015ADB:
 .byte   W12
 .byte   N17 ,Bn3 ,v080
 .byte   W18
 .byte   N32 ,Cs4 ,v080 ,gtp3
 .byte   W36
 .byte   N17 ,Dn4
 .byte   W18
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #02 @087   ----------------------------------------
 .byte   W06
 .byte   Cs4
 .byte   W18
 .byte   Bn3
 .byte   W18
 .byte   Fs3
 .byte   W18
 .byte   En3
 .byte   W18
 .byte   N52 ,Fs3 ,v080 ,gtp1
 .byte   W18
@  #02 @088   ----------------------------------------
 .byte   PATT
  .word Label_01015AD2
@  #02 @089   ----------------------------------------
 .byte   PATT
  .word Label_01015ADB
@  #02 @090   ----------------------------------------
 .byte   W06
 .byte   N32 ,Cs4 ,v080 ,gtp3
 .byte   W36
 .byte   N17 ,An3
 .byte   W18
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W36
@  #02 @091   ----------------------------------------
 .byte   Fs4 ,v088
 .byte   W36
 .byte   N11 ,Fs4 ,v096
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N23 ,An4
 .byte   W24
 .byte   N11 ,Gn4
 .byte   W12
@  #02 @092   ----------------------------------------
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   N23 ,Fs4
 .byte   W24
 .byte   N11 ,En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
@  #02 @093   ----------------------------------------
 .byte   N44 ,Bn3 ,v096 ,gtp3
 .byte   W96
@  #02 @094   ----------------------------------------
 .byte   W96
@  #02 @095   ----------------------------------------
 .byte   W96
@  #02 @096   ----------------------------------------
 .byte   W96
@  #02 @097   ----------------------------------------
 .byte   W96
@  #02 @098   ----------------------------------------
 .byte   W96
@  #02 @099   ----------------------------------------
 .byte   W96
@  #02 @100   ----------------------------------------
 .byte   W96
@  #02 @101   ----------------------------------------
 .byte   W60
 .byte   N68 ,Bn2 ,v096 ,gtp3
 .byte   W36
@  #02 @102   ----------------------------------------
Label_01015B44:
 .byte   W36
 .byte   N32 ,Cs3 ,v096 ,gtp3
 .byte   W36
 .byte   As2
 .byte   W24
 .byte   PEND 
@  #02 @103   ----------------------------------------
 .byte   W12
 .byte   TIE ,Bn2
 .byte   W84
@  #02 @104   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N68 ,Bn2 ,v096 ,gtp3
 .byte   W36
@  #02 @105   ----------------------------------------
 .byte   PATT
  .word Label_01015B44
@  #02 @106   ----------------------------------------
 .byte   W12
 .byte   TIE ,Fs2 ,v096
 .byte   W84
@  #02 @107   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W36
 .byte   W01
@  #02 @108   ----------------------------------------
 .byte   N32 ,Bn2 ,v096 ,gtp3
 .byte   W36
 .byte   Cs3
 .byte   W36
 .byte   As2
 .byte   W24
@  #02 @109   ----------------------------------------
 .byte   W12
 .byte   N68 ,Bn2 ,v096 ,gtp3
 .byte   W72
 .byte   TIE ,Fs3
 .byte   W12
@  #02 @110   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @111   ----------------------------------------
 .byte   N32 ,En3 ,v096 ,gtp3
 .byte   W36
 .byte   Ds3
 .byte   W36
 .byte   N68 ,Cs3 ,v096 ,gtp3
 .byte   W24
@  #02 @112   ----------------------------------------
 .byte   W48
 .byte   Ds3
 .byte   W48
@  #02 @113   ----------------------------------------
 .byte   W24
 .byte   N32 ,As2 ,v096 ,gtp3
 .byte   W36
 .byte   TIE ,Gs2
 .byte   W36
@  #02 @114   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11 ,Fs2
 .byte   W12
 .byte   Gs2
 .byte   W12
@  #02 @115   ----------------------------------------
 .byte   As2
 .byte   W12
 .byte   TIE ,Bn2
 .byte   W84
@  #02 @116   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N11 ,As2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   N68 ,Ds3 ,v096 ,gtp3
 .byte   W36
@  #02 @117   ----------------------------------------
 .byte   W36
 .byte   Gs2
 .byte   W60
@  #02 @118   ----------------------------------------
 .byte   W12
 .byte   TIE ,Gs3
 .byte   W84
@  #02 @119   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   As2
 .byte   W12
@  #02 @120   ----------------------------------------
 .byte   Bn2
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gs2
 .byte   W12
@  #02 @121   ----------------------------------------
 .byte   Ds2
 .byte   W96
@  #02 @122   ----------------------------------------
 .byte   W96
@  #02 @123   ----------------------------------------
 .byte   W96
@  #02 @124   ----------------------------------------
 .byte   W96
@  #02 @125   ----------------------------------------
 .byte   W96
@  #02 @126   ----------------------------------------
 .byte   W96
@  #02 @127   ----------------------------------------
 .byte   W84
 .byte   N23 ,Cs5 ,v112
 .byte   W12
@  #02 @128   ----------------------------------------
Label_01015BE1:
 .byte   W12
 .byte   N11 ,Bn4 ,v112
 .byte   W12
 .byte   N44 ,Fs4 ,v112 ,gtp3
 .byte   W48
 .byte   N11 ,Cs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   PEND 
@  #02 @129   ----------------------------------------
Label_01015BF1:
 .byte   N23 ,Fs4 ,v112
 .byte   W24
 .byte   N11 ,En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   N23 ,Fs4
 .byte   W24
 .byte   PEND 
@  #02 @130   ----------------------------------------
Label_01015C02:
 .byte   N11 ,En4 ,v112
 .byte   W12
 .byte   N44 ,Fs4 ,v112 ,gtp3
 .byte   W48
 .byte   N11 ,Gn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N23 ,Cs5
 .byte   W12
 .byte   PEND 
@  #02 @131   ----------------------------------------
Label_01015C14:
 .byte   W12
 .byte   N11 ,Bn4 ,v112
 .byte   W12
 .byte   N44 ,Fs4 ,v112 ,gtp3
 .byte   W48
 .byte   N11 ,Dn5
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #02 @132   ----------------------------------------
Label_01015C24:
 .byte   N11 ,En5 ,v112
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   Bn4
 .byte   W24
 .byte   N11 ,Cs5
 .byte   W12
 .byte   PEND 
@  #02 @133   ----------------------------------------
Label_01015C34:
 .byte   N11 ,Dn5 ,v112
 .byte   W12
 .byte   N32 ,En5 ,v112 ,gtp3
 .byte   W36
 .byte   Fs5
 .byte   W48
 .byte   PEND 
@  #02 @134   ----------------------------------------
 .byte   W96
@  #02 @135   ----------------------------------------
 .byte   W96
@  #02 @136   ----------------------------------------
 .byte   W96
@  #02 @137   ----------------------------------------
 .byte   W96
@  #02 @138   ----------------------------------------
 .byte   W96
@  #02 @139   ----------------------------------------
 .byte   W60
 .byte   N11 ,Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Bn3
 .byte   W12
@  #02 @140   ----------------------------------------
 .byte   W12
 .byte   As3
 .byte   W24
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N23 ,Gs3
 .byte   W24
 .byte   Fs3
 .byte   W12
@  #02 @141   ----------------------------------------
 .byte   W12
 .byte   N11 ,En3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N23 ,Cs3
 .byte   W24
 .byte   TIE ,Ds3
 .byte   W36
@  #02 @142   ----------------------------------------
 .byte   W80
 .byte   W03
 .byte   EOT
 .byte   W13
@  #02 @143   ----------------------------------------
 .byte   W96
@  #02 @144   ----------------------------------------
 .byte   W96
@  #02 @145   ----------------------------------------
 .byte   W96
@  #02 @146   ----------------------------------------
 .byte   W96
@  #02 @147   ----------------------------------------
 .byte   W96
@  #02 @148   ----------------------------------------
 .byte   W96
@  #02 @149   ----------------------------------------
 .byte   W96
@  #02 @150   ----------------------------------------
 .byte   W96
@  #02 @151   ----------------------------------------
 .byte   W96
@  #02 @152   ----------------------------------------
 .byte   W96
@  #02 @153   ----------------------------------------
 .byte   W96
@  #02 @154   ----------------------------------------
 .byte   W96
@  #02 @155   ----------------------------------------
 .byte   W96
@  #02 @156   ----------------------------------------
 .byte   W96
@  #02 @157   ----------------------------------------
 .byte   W96
@  #02 @158   ----------------------------------------
 .byte   W72
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

.align 2, 0
song06_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_01018DFA:
 .byte   VOICE , 34
 .byte   VOL , 40*song06_mvl/mxv
 .byte   PAN , c_v-27
 .byte   N05 ,Bn1 ,v064
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #03 @001   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
@  #03 @002   ----------------------------------------
Label_01018E42:
 .byte   N05 ,An1 ,v064
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   PEND 
@  #03 @003   ----------------------------------------
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
@  #03 @004   ----------------------------------------
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
@  #03 @005   ----------------------------------------
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
@  #03 @006   ----------------------------------------
 .byte   W96
@  #03 @007   ----------------------------------------
 .byte   W96
@  #03 @008   ----------------------------------------
 .byte   W96
@  #03 @009   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
@  #03 @010   ----------------------------------------
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
@  #03 @011   ----------------------------------------
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
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
 .byte   W24
 .byte   N11 ,Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
@  #03 @020   ----------------------------------------
Label_01018F3D:
 .byte   N11 ,Gs1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   PEND 
@  #03 @021   ----------------------------------------
 .byte   PATT
  .word Label_01018F3D
@  #03 @022   ----------------------------------------
 .byte   N11 ,Gs1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1 ,v049
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
@  #03 @023   ----------------------------------------
Label_01018F68:
 .byte   N11 ,Gs1 ,v049
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   PEND 
@  #03 @024   ----------------------------------------
 .byte   PATT
  .word Label_01018F68
@  #03 @025   ----------------------------------------
 .byte   N11 ,Gs1 ,v049
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
@  #03 @026   ----------------------------------------
Label_01018F92:
 .byte   N11 ,En1 ,v049
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   PEND 
@  #03 @027   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @028   ----------------------------------------
 .byte   N11 ,En1 ,v049
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
@  #03 @029   ----------------------------------------
Label_01018FBC:
 .byte   N11 ,Fs1 ,v049
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   PEND 
@  #03 @030   ----------------------------------------
 .byte   PATT
  .word Label_01018FBC
@  #03 @031   ----------------------------------------
 .byte   N11 ,Fs1 ,v049
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
@  #03 @032   ----------------------------------------
Label_01018FE6:
 .byte   N11 ,Ds1 ,v049
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   PEND 
@  #03 @033   ----------------------------------------
 .byte   PATT
  .word Label_01018FE6
@  #03 @034   ----------------------------------------
 .byte   N11 ,Ds1 ,v049
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
@  #03 @035   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @036   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @037   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @038   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @039   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @040   ----------------------------------------
 .byte   N11 ,En1 ,v049
 .byte   W12
 .byte   En1
 .byte   W84
@  #03 @041   ----------------------------------------
 .byte   W72
 .byte   N05 ,En1 ,v064
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
@  #03 @042   ----------------------------------------
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
@  #03 @043   ----------------------------------------
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
@  #03 @044   ----------------------------------------
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #03 @045   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
@  #03 @046   ----------------------------------------
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
@  #03 @047   ----------------------------------------
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
@  #03 @048   ----------------------------------------
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Gn1 ,v080
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
@  #03 @049   ----------------------------------------
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
@  #03 @050   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
@  #03 @051   ----------------------------------------
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
@  #03 @052   ----------------------------------------
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
@  #03 @053   ----------------------------------------
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
@  #03 @054   ----------------------------------------
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W54
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
 .byte   W48
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
@  #03 @064   ----------------------------------------
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
@  #03 @065   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
@  #03 @066   ----------------------------------------
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
@  #03 @067   ----------------------------------------
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
@  #03 @068   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
@  #03 @069   ----------------------------------------
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W54
@  #03 @070   ----------------------------------------
 .byte   W96
@  #03 @071   ----------------------------------------
Label_01019295:
 .byte   N05 ,En2 ,v080
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   PEND 
@  #03 @072   ----------------------------------------
 .byte   PATT
  .word Label_01019295
@  #03 @073   ----------------------------------------
 .byte   N05 ,En2 ,v080
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #03 @074   ----------------------------------------
Label_010192DF:
 .byte   N05 ,Bn1 ,v080
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   PEND 
@  #03 @075   ----------------------------------------
 .byte   PATT
  .word Label_010192DF
@  #03 @076   ----------------------------------------
 .byte   N05 ,Bn1 ,v080
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W78
@  #03 @077   ----------------------------------------
 .byte   W96
@  #03 @078   ----------------------------------------
 .byte   W96
@  #03 @079   ----------------------------------------
 .byte   W36
 .byte   Bn1 ,v064
 .byte   GOTO
  .word Label_01018DFA
@  #03 @080   ----------------------------------------
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #03 @081   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
@  #03 @082   ----------------------------------------
 .byte   PATT
  .word Label_01018E42
@  #03 @083   ----------------------------------------
 .byte   N05 ,An1 ,v064
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
@  #03 @084   ----------------------------------------
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
@  #03 @085   ----------------------------------------
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
@  #03 @086   ----------------------------------------
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W66
@  #03 @087   ----------------------------------------
 .byte   W96
@  #03 @088   ----------------------------------------
 .byte   W96
@  #03 @089   ----------------------------------------
 .byte   W36
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #03 @090   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
@  #03 @091   ----------------------------------------
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
@  #03 @092   ----------------------------------------
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W66
@  #03 @093   ----------------------------------------
 .byte   W96
@  #03 @094   ----------------------------------------
 .byte   W96
@  #03 @095   ----------------------------------------
 .byte   W96
@  #03 @096   ----------------------------------------
 .byte   W96
@  #03 @097   ----------------------------------------
 .byte   W96
@  #03 @098   ----------------------------------------
 .byte   W96
@  #03 @099   ----------------------------------------
 .byte   W60
 .byte   N11 ,Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
@  #03 @100   ----------------------------------------
 .byte   PATT
  .word Label_01018F3D
@  #03 @101   ----------------------------------------
 .byte   PATT
  .word Label_01018F3D
@  #03 @102   ----------------------------------------
 .byte   N11 ,Gs1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1 ,v049
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
@  #03 @103   ----------------------------------------
 .byte   PATT
  .word Label_01018F68
@  #03 @104   ----------------------------------------
 .byte   PATT
  .word Label_01018F68
@  #03 @105   ----------------------------------------
 .byte   N11 ,Gs1 ,v049
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
@  #03 @106   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @107   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @108   ----------------------------------------
 .byte   N11 ,En1 ,v049
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
@  #03 @109   ----------------------------------------
 .byte   PATT
  .word Label_01018FBC
@  #03 @110   ----------------------------------------
 .byte   PATT
  .word Label_01018FBC
@  #03 @111   ----------------------------------------
 .byte   N11 ,Fs1 ,v049
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
@  #03 @112   ----------------------------------------
 .byte   PATT
  .word Label_01018FE6
@  #03 @113   ----------------------------------------
 .byte   PATT
  .word Label_01018FE6
@  #03 @114   ----------------------------------------
 .byte   N11 ,Ds1 ,v049
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
@  #03 @115   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @116   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @117   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @118   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @119   ----------------------------------------
 .byte   PATT
  .word Label_01018F92
@  #03 @120   ----------------------------------------
 .byte   N11 ,En1 ,v049
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W48
@  #03 @121   ----------------------------------------
 .byte   W96
@  #03 @122   ----------------------------------------
 .byte   W12
 .byte   N05 ,En1 ,v064
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
@  #03 @123   ----------------------------------------
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
@  #03 @124   ----------------------------------------
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
@  #03 @125   ----------------------------------------
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
@  #03 @126   ----------------------------------------
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
@  #03 @127   ----------------------------------------
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
@  #03 @128   ----------------------------------------
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Gn1 ,v080
 .byte   W06
 .byte   Gn1
 .byte   W06
@  #03 @129   ----------------------------------------
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
@  #03 @130   ----------------------------------------
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #03 @131   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
@  #03 @132   ----------------------------------------
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   En1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
@  #03 @133   ----------------------------------------
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Fs1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
@  #03 @134   ----------------------------------------
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W18
@  #03 @135   ----------------------------------------
 .byte   W96
@  #03 @136   ----------------------------------------
 .byte   W96
@  #03 @137   ----------------------------------------
 .byte   W96
@  #03 @138   ----------------------------------------
 .byte   W96
@  #03 @139   ----------------------------------------
 .byte   W96
@  #03 @140   ----------------------------------------
 .byte   W96
@  #03 @141   ----------------------------------------
 .byte   W96
@  #03 @142   ----------------------------------------
 .byte   W96
@  #03 @143   ----------------------------------------
 .byte   W84
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
@  #03 @144   ----------------------------------------
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
@  #03 @145   ----------------------------------------
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #03 @146   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
@  #03 @147   ----------------------------------------
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
@  #03 @148   ----------------------------------------
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #03 @149   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W18
@  #03 @150   ----------------------------------------
 .byte   W96
@  #03 @151   ----------------------------------------
 .byte   W36
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
@  #03 @152   ----------------------------------------
 .byte   PATT
  .word Label_01019295
@  #03 @153   ----------------------------------------
 .byte   PATT
  .word Label_01019295
@  #03 @154   ----------------------------------------
 .byte   PATT
  .word Label_010192DF
@  #03 @155   ----------------------------------------
 .byte   PATT
  .word Label_010192DF
@  #03 @156   ----------------------------------------
 .byte   N05 ,Bn1 ,v080
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W42
@  #03 @157   ----------------------------------------
 .byte   W96
@  #03 @158   ----------------------------------------
 .byte   W96
@  #03 @159   ----------------------------------------
 .byte   W72
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

.align 2, 0
song06_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_01019792:
 .byte   VOICE , 41
 .byte   VOL , 25*song06_mvl/mxv
 .byte   N68 ,Dn4 ,v064 ,gtp3
 .byte   Fs4
 .byte   W72
 .byte   Dn4
 .byte   N68 ,Gn4 ,v064 ,gtp3
 .byte   W24
@  #04 @001   ----------------------------------------
 .byte   W48
 .byte   N32 ,En4 ,v064 ,gtp3
 .byte   Gn4
 .byte   W36
 .byte   Cs4
 .byte   N32 ,An4 ,v064 ,gtp3
 .byte   W12
@  #04 @002   ----------------------------------------
 .byte   W24
 .byte   Cs4
 .byte   N68 ,Fs4 ,v064 ,gtp3
 .byte   W36
 .byte   N32 ,Bn3 ,v064 ,gtp3
 .byte   W36
@  #04 @003   ----------------------------------------
 .byte   Fs4
 .byte   N32 ,Bn4 ,v064 ,gtp3
 .byte   W36
 .byte   Fs4
 .byte   N32 ,Bn4 ,v064 ,gtp3
 .byte   W36
 .byte   Cs4
 .byte   N32 ,An4 ,v064 ,gtp3
 .byte   W24
@  #04 @004   ----------------------------------------
 .byte   W12
 .byte   Cs4
 .byte   N32 ,An4 ,v064 ,gtp3
 .byte   W36
 .byte   Dn4
 .byte   N32 ,An4 ,v064 ,gtp3
 .byte   W36
 .byte   Bn3
 .byte   N32 ,Gn4 ,v064 ,gtp3
 .byte   W12
@  #04 @005   ----------------------------------------
 .byte   W24
 .byte   As3
 .byte   N32 ,Fs4 ,v064 ,gtp3
 .byte   W36
 .byte   As3
 .byte   N32 ,En4 ,v064 ,gtp3
 .byte   W36
@  #04 @006   ----------------------------------------
 .byte   W96
@  #04 @007   ----------------------------------------
 .byte   W96
@  #04 @008   ----------------------------------------
 .byte   W96
@  #04 @009   ----------------------------------------
 .byte   W96
@  #04 @010   ----------------------------------------
 .byte   W96
@  #04 @011   ----------------------------------------
 .byte   W96
@  #04 @012   ----------------------------------------
 .byte   W96
@  #04 @013   ----------------------------------------
 .byte   W96
@  #04 @014   ----------------------------------------
 .byte   W96
@  #04 @015   ----------------------------------------
 .byte   W96
@  #04 @016   ----------------------------------------
 .byte   W96
@  #04 @017   ----------------------------------------
 .byte   W24
 .byte   N23 ,En3 ,v080
 .byte   N23 ,Bn3
 .byte   N23 ,En4
 .byte   W24
 .byte   Ds3
 .byte   N23 ,Bn3
 .byte   N23 ,Ds4
 .byte   W24
 .byte   Bn2
 .byte   N23 ,Gs3
 .byte   N23 ,Bn3
 .byte   W24
@  #04 @018   ----------------------------------------
 .byte   Gs2
 .byte   N23 ,En3
 .byte   N23 ,Gs3
 .byte   W24
 .byte   Bn2
 .byte   N23 ,Gs3
 .byte   N23 ,Bn3
 .byte   W24
 .byte   N68 ,En3 ,v080 ,gtp3
 .byte   Gs3
 .byte   N68 ,Bn3 ,v080 ,gtp3
 .byte   Ds4
 .byte   W48
@  #04 @019   ----------------------------------------
 .byte   W24
 .byte   TIE ,Ds3
 .byte   TIE ,Gs3
 .byte   TIE ,Ds4
 .byte   W72
@  #04 @020   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Ds3 ,v068
 .byte   Ds4
 .byte   W01
 .byte   TIE ,En3
 .byte   TIE ,Gs3
 .byte   TIE ,En4
 .byte   W24
@  #04 @021   ----------------------------------------
 .byte   W96
@  #04 @022   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   En3 ,v068
 .byte   En4
 .byte   W01
 .byte   TIE ,Ds4
 .byte   W72
@  #04 @023   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   TIE
 .byte   W24
@  #04 @024   ----------------------------------------
 .byte   W96
@  #04 @025   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N32 ,Ds4 ,v080 ,gtp3
 .byte   W36
 .byte   Bn3
 .byte   W36
@  #04 @026   ----------------------------------------
 .byte   Cs4
 .byte   W36
 .byte   As3
 .byte   W36
 .byte   TIE ,Fs3
 .byte   W24
@  #04 @027   ----------------------------------------
 .byte   W96
@  #04 @028   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W36
 .byte   W01
 .byte   N32 ,Bn3 ,v080 ,gtp3
 .byte   W36
@  #04 @029   ----------------------------------------
 .byte   Cs4
 .byte   W36
 .byte   As3
 .byte   W36
 .byte   N68 ,Bn3 ,v080 ,gtp3
 .byte   W24
@  #04 @030   ----------------------------------------
 .byte   W48
 .byte   Fs4
 .byte   W48
@  #04 @031   ----------------------------------------
 .byte   W60
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W36
@  #04 @032   ----------------------------------------
 .byte   Ds4
 .byte   W36
 .byte   Cs4
 .byte   W60
@  #04 @033   ----------------------------------------
 .byte   W12
 .byte   Ds4
 .byte   W84
@  #04 @034   ----------------------------------------
 .byte   W96
@  #04 @035   ----------------------------------------
 .byte   W96
@  #04 @036   ----------------------------------------
 .byte   W96
@  #04 @037   ----------------------------------------
 .byte   W96
@  #04 @038   ----------------------------------------
 .byte   W96
@  #04 @039   ----------------------------------------
 .byte   W96
@  #04 @040   ----------------------------------------
 .byte   W96
@  #04 @041   ----------------------------------------
 .byte   W96
@  #04 @042   ----------------------------------------
Label_01019887:
 .byte   W48
 .byte   N68 ,Bn3 ,v080 ,gtp3
 .byte   En4
 .byte   W48
 .byte   PEND 
@  #04 @043   ----------------------------------------
Label_0101988F:
 .byte   W24
 .byte   N68 ,Cs4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W72
 .byte   PEND 
@  #04 @044   ----------------------------------------
 .byte   Ds4
 .byte   N68 ,Gs4 ,v080 ,gtp3
 .byte   W72
 .byte   Cs4
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   W24
@  #04 @045   ----------------------------------------
 .byte   PATT
  .word Label_01019887
@  #04 @046   ----------------------------------------
 .byte   PATT
  .word Label_0101988F
@  #04 @047   ----------------------------------------
 .byte   N68 ,Ds4 ,v080 ,gtp3
 .byte   Gs4
 .byte   W72
 .byte   Fs4
 .byte   N68 ,As4 ,v080 ,gtp3
 .byte   W24
@  #04 @048   ----------------------------------------
 .byte   W48
 .byte   N32 ,En3 ,v080 ,gtp3
 .byte   Cs4
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W36
 .byte   Fs3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W12
@  #04 @049   ----------------------------------------
 .byte   W24
 .byte   En3
 .byte   N32 ,Cs4 ,v080 ,gtp3
 .byte   En4
 .byte   W36
 .byte   Fs3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W36
@  #04 @050   ----------------------------------------
 .byte   Fs3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W36
 .byte   Gn3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Gn4
 .byte   W36
 .byte   N68 ,Fs3 ,v080 ,gtp3
 .byte   Dn4
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   W24
@  #04 @051   ----------------------------------------
 .byte   W48
 .byte   N32 ,Fs3 ,v080 ,gtp3
 .byte   Cs4
 .byte   N32 ,Fs4 ,v080 ,gtp3
 .byte   W36
 .byte   Gn3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Gn4
 .byte   W12
@  #04 @052   ----------------------------------------
 .byte   W24
 .byte   Fs3
 .byte   N32 ,Cs4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W36
 .byte   Gn3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Gn4
 .byte   W36
@  #04 @053   ----------------------------------------
 .byte   N68 ,Gn3 ,v080 ,gtp3
 .byte   Dn4
 .byte   N68 ,Gn4 ,v080 ,gtp3
 .byte   W72
 .byte   En3
 .byte   N68 ,Gn3 ,v080 ,gtp3
 .byte   Dn4
 .byte   N68 ,Gn4 ,v080 ,gtp3
 .byte   W24
@  #04 @054   ----------------------------------------
 .byte   W96
@  #04 @055   ----------------------------------------
 .byte   W96
@  #04 @056   ----------------------------------------
 .byte   W96
@  #04 @057   ----------------------------------------
 .byte   W24
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Cs4
 .byte   W48
@  #04 @058   ----------------------------------------
 .byte   W96
@  #04 @059   ----------------------------------------
 .byte   W96
@  #04 @060   ----------------------------------------
 .byte   W96
@  #04 @061   ----------------------------------------
 .byte   W96
@  #04 @062   ----------------------------------------
 .byte   W96
@  #04 @063   ----------------------------------------
 .byte   W48
 .byte   N68 ,Ds3 ,v096 ,gtp3
 .byte   Bn3
 .byte   N68 ,Ds4 ,v096 ,gtp3
 .byte   W48
@  #04 @064   ----------------------------------------
 .byte   W24
 .byte   Cs3
 .byte   N68 ,As3 ,v096 ,gtp3
 .byte   Cs4
 .byte   W72
@  #04 @065   ----------------------------------------
 .byte   N23 ,Cs3
 .byte   N23 ,As3
 .byte   N23 ,Cs4
 .byte   W24
 .byte   N44 ,Ds3 ,v096 ,gtp3
 .byte   Bn3
 .byte   N44 ,Ds4 ,v096 ,gtp3
 .byte   W48
 .byte   N32 ,Ds3 ,v096 ,gtp3
 .byte   Ds4
 .byte   W24
@  #04 @066   ----------------------------------------
 .byte   W12
 .byte   N17 ,En3
 .byte   N17 ,En4
 .byte   W18
 .byte   Fs3
 .byte   N17 ,Fs4
 .byte   W18
 .byte   Fs3
 .byte   N17 ,Fs4
 .byte   W18
 .byte   Ds3
 .byte   N17 ,En4
 .byte   W18
 .byte   N32 ,Gs2 ,v096 ,gtp3
 .byte   Gs3
 .byte   W12
@  #04 @067   ----------------------------------------
 .byte   W24
 .byte   As2
 .byte   N32 ,Gn3 ,v096 ,gtp3
 .byte   As3
 .byte   N32 ,Cs4 ,v096 ,gtp3
 .byte   W36
 .byte   N17 ,Ds3
 .byte   N17 ,Bn3
 .byte   N17 ,Ds4
 .byte   W18
 .byte   En3
 .byte   N17 ,Cs4
 .byte   N17 ,En4
 .byte   W18
@  #04 @068   ----------------------------------------
 .byte   En3
 .byte   N17 ,En4
 .byte   W18
 .byte   Ds3
 .byte   N17 ,Ds4
 .byte   W18
 .byte   N32 ,Gs2 ,v096 ,gtp3
 .byte   N11 ,Gs3
 .byte   W12
 .byte   As3 ,v080
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N68 ,Gs3 ,v096 ,gtp3
 .byte   Bn3
 .byte   N32 ,Ds4 ,v096 ,gtp3
 .byte   W24
@  #04 @069   ----------------------------------------
 .byte   W12
 .byte   Cs4 ,v080
 .byte   W36
 .byte   TIE ,Fs3 ,v096
 .byte   TIE ,Bn3
 .byte   TIE ,Dn4
 .byte   W48
@  #04 @070   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v071
 .byte   Dn4
 .byte   W01
@  #04 @071   ----------------------------------------
Label_010199C4:
 .byte   W12
 .byte   N11 ,Fs3 ,v112
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Bn2
 .byte   N11 ,Bn3
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   PEND 
@  #04 @072   ----------------------------------------
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
@  #04 @073   ----------------------------------------
 .byte   Bn2
 .byte   N11 ,Bn3
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W36
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W12
@  #04 @074   ----------------------------------------
 .byte   W12
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Bn2
 .byte   N11 ,Bn3
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W36
@  #04 @075   ----------------------------------------
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Bn2
 .byte   N11 ,Bn3
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W12
@  #04 @076   ----------------------------------------
 .byte   W12
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N68 ,Cn4 ,v080 ,gtp3
 .byte   W24
 .byte   N07 ,Bn2 ,v096
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N11 ,Bn2
 .byte   N11 ,Fs3
 .byte   N11 ,Bn3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   N80 ,Cn3 ,v096 ,gtp3
 .byte   Gn3
 .byte   N80 ,Bn3 ,v096 ,gtp3
 .byte   Gn4
 .byte   W12
@  #04 @077   ----------------------------------------
 .byte   W96
@  #04 @078   ----------------------------------------
 .byte   N07 ,Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N11 ,Bn2
 .byte   N11 ,Fs3
 .byte   N11 ,Bn3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   N92 ,Dn3 ,v096 ,gtp3
 .byte   An3
 .byte   N92 ,Bn3 ,v096 ,gtp3
 .byte   An4
 .byte   W60
@  #04 @079   ----------------------------------------
 .byte   W36
 .byte   N68 ,Dn4 ,v064 ,gtp3
 .byte   Fs4
 .byte   GOTO
  .word Label_01019792
@  #04 @080   ----------------------------------------
 .byte   W60
 .byte   W12
 .byte   Dn4
 .byte   N68 ,Gn4 ,v064 ,gtp3
 .byte   W72
@  #04 @081   ----------------------------------------
 .byte   N32 ,En4 ,v064 ,gtp3
 .byte   Gn4
 .byte   W12
 .byte   W24
 .byte   Cs4
 .byte   N32 ,An4 ,v064 ,gtp3
 .byte   W36
 .byte   Cs4
 .byte   N68 ,Fs4 ,v064 ,gtp3
 .byte   W36
@  #04 @082   ----------------------------------------
 .byte   N32 ,Bn3 ,v064 ,gtp3
 .byte   W36
 .byte   Fs4
 .byte   N32 ,Bn4 ,v064 ,gtp3
 .byte   W36
 .byte   Fs4
 .byte   N32 ,Bn4 ,v064 ,gtp3
 .byte   W24
@  #04 @083   ----------------------------------------
 .byte   W12
 .byte   Cs4
 .byte   N32 ,An4 ,v064 ,gtp3
 .byte   W36
 .byte   Cs4
 .byte   N32 ,An4 ,v064 ,gtp3
 .byte   W36
 .byte   Dn4
 .byte   N32 ,An4 ,v064 ,gtp3
 .byte   W12
@  #04 @084   ----------------------------------------
 .byte   W24
 .byte   Bn3
 .byte   N32 ,Gn4 ,v064 ,gtp3
 .byte   W36
 .byte   As3
 .byte   N32 ,Fs4 ,v064 ,gtp3
 .byte   W36
@  #04 @085   ----------------------------------------
 .byte   As3
 .byte   N32 ,En4 ,v064 ,gtp3
 .byte   W96
@  #04 @086   ----------------------------------------
 .byte   W96
@  #04 @087   ----------------------------------------
 .byte   W96
@  #04 @088   ----------------------------------------
 .byte   W96
@  #04 @089   ----------------------------------------
 .byte   W96
@  #04 @090   ----------------------------------------
 .byte   W96
@  #04 @091   ----------------------------------------
 .byte   W96
@  #04 @092   ----------------------------------------
 .byte   W96
@  #04 @093   ----------------------------------------
 .byte   W96
@  #04 @094   ----------------------------------------
 .byte   W96
@  #04 @095   ----------------------------------------
 .byte   W96
@  #04 @096   ----------------------------------------
 .byte   W60
 .byte   N23 ,En3 ,v080
 .byte   N23 ,Bn3
 .byte   N23 ,En4
 .byte   W24
 .byte   Ds3
 .byte   N23 ,Bn3
 .byte   N23 ,Ds4
 .byte   W12
@  #04 @097   ----------------------------------------
 .byte   W12
 .byte   Bn2
 .byte   N23 ,Gs3
 .byte   N23 ,Bn3
 .byte   W24
 .byte   Gs2
 .byte   N23 ,En3
 .byte   N23 ,Gs3
 .byte   W24
 .byte   Bn2
 .byte   N23 ,Gs3
 .byte   N23 ,Bn3
 .byte   W24
 .byte   N68 ,En3 ,v080 ,gtp3
 .byte   Gs3
 .byte   N68 ,Bn3 ,v080 ,gtp3
 .byte   Ds4
 .byte   W12
@  #04 @098   ----------------------------------------
 .byte   W60
 .byte   TIE ,Ds3
 .byte   TIE ,Gs3
 .byte   TIE ,Ds4
 .byte   W36
@  #04 @099   ----------------------------------------
 .byte   W96
@  #04 @100   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Ds3 ,v068
 .byte   Ds4
 .byte   W01
 .byte   TIE ,En3
 .byte   TIE ,Gs3
 .byte   TIE ,En4
 .byte   W84
@  #04 @101   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   En3 ,v068
 .byte   En4
 .byte   W01
 .byte   TIE ,Ds4
 .byte   W36
@  #04 @102   ----------------------------------------
 .byte   W96
@  #04 @103   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   TIE
 .byte   W84
@  #04 @104   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N32 ,Ds4 ,v080 ,gtp3
 .byte   W36
@  #04 @105   ----------------------------------------
Label_01019B56:
 .byte   N32 ,Bn3 ,v080 ,gtp3
 .byte   W36
 .byte   Cs4
 .byte   W36
 .byte   As3
 .byte   W24
 .byte   PEND 
@  #04 @106   ----------------------------------------
 .byte   W12
 .byte   TIE ,Fs3
 .byte   W84
@  #04 @107   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W36
 .byte   W01
@  #04 @108   ----------------------------------------
 .byte   PATT
  .word Label_01019B56
@  #04 @109   ----------------------------------------
 .byte   W12
 .byte   N68 ,Bn3 ,v080 ,gtp3
 .byte   W72
 .byte   Fs4
 .byte   W12
@  #04 @110   ----------------------------------------
 .byte   W96
@  #04 @111   ----------------------------------------
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W36
 .byte   Ds4
 .byte   W36
 .byte   Cs4
 .byte   W24
@  #04 @112   ----------------------------------------
 .byte   W48
 .byte   Ds4
 .byte   W48
@  #04 @113   ----------------------------------------
 .byte   W96
@  #04 @114   ----------------------------------------
 .byte   W96
@  #04 @115   ----------------------------------------
 .byte   W96
@  #04 @116   ----------------------------------------
 .byte   W96
@  #04 @117   ----------------------------------------
 .byte   W96
@  #04 @118   ----------------------------------------
 .byte   W96
@  #04 @119   ----------------------------------------
 .byte   W96
@  #04 @120   ----------------------------------------
 .byte   W96
@  #04 @121   ----------------------------------------
 .byte   W84
 .byte   N68 ,Bn3 ,v080 ,gtp3
 .byte   En4
 .byte   W12
@  #04 @122   ----------------------------------------
Label_01019B92:
 .byte   W60
 .byte   N68 ,Cs4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W36
 .byte   PEND 
@  #04 @123   ----------------------------------------
Label_01019B9A:
 .byte   W36
 .byte   N68 ,Ds4 ,v080 ,gtp3
 .byte   Gs4
 .byte   W60
 .byte   PEND 
@  #04 @124   ----------------------------------------
 .byte   W12
 .byte   Cs4
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   W72
 .byte   Bn3
 .byte   N68 ,En4 ,v080 ,gtp3
 .byte   W12
@  #04 @125   ----------------------------------------
 .byte   PATT
  .word Label_01019B92
@  #04 @126   ----------------------------------------
 .byte   PATT
  .word Label_01019B9A
@  #04 @127   ----------------------------------------
 .byte   W12
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   As4
 .byte   W72
 .byte   N32 ,En3 ,v080 ,gtp3
 .byte   Cs4
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W12
@  #04 @128   ----------------------------------------
 .byte   W24
 .byte   Fs3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W36
 .byte   En3
 .byte   N32 ,Cs4 ,v080 ,gtp3
 .byte   En4
 .byte   W36
@  #04 @129   ----------------------------------------
 .byte   Fs3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W36
 .byte   Fs3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W36
 .byte   Gn3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Gn4
 .byte   W24
@  #04 @130   ----------------------------------------
 .byte   W12
 .byte   N68 ,Fs3 ,v080 ,gtp3
 .byte   Dn4
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   W72
 .byte   N32 ,Fs3 ,v080 ,gtp3
 .byte   Cs4
 .byte   N32 ,Fs4 ,v080 ,gtp3
 .byte   W12
@  #04 @131   ----------------------------------------
 .byte   W24
 .byte   Gn3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Gn4
 .byte   W36
 .byte   Fs3
 .byte   N32 ,Cs4 ,v080 ,gtp3
 .byte   Fs4
 .byte   W36
@  #04 @132   ----------------------------------------
 .byte   Gn3
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   Gn4
 .byte   W36
 .byte   N68 ,Gn3 ,v080 ,gtp3
 .byte   Dn4
 .byte   N68 ,Gn4 ,v080 ,gtp3
 .byte   W60
@  #04 @133   ----------------------------------------
 .byte   W12
 .byte   En3
 .byte   N68 ,Gn3 ,v080 ,gtp3
 .byte   Dn4
 .byte   N68 ,Gn4 ,v080 ,gtp3
 .byte   W84
@  #04 @134   ----------------------------------------
 .byte   W96
@  #04 @135   ----------------------------------------
 .byte   W96
@  #04 @136   ----------------------------------------
 .byte   W60
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Cs4
 .byte   W12
@  #04 @137   ----------------------------------------
 .byte   W96
@  #04 @138   ----------------------------------------
 .byte   W96
@  #04 @139   ----------------------------------------
 .byte   W96
@  #04 @140   ----------------------------------------
 .byte   W96
@  #04 @141   ----------------------------------------
 .byte   W96
@  #04 @142   ----------------------------------------
 .byte   W84
 .byte   N68 ,Ds3 ,v096 ,gtp3
 .byte   Bn3
 .byte   N68 ,Ds4 ,v096 ,gtp3
 .byte   W12
@  #04 @143   ----------------------------------------
 .byte   W60
 .byte   Cs3
 .byte   N68 ,As3 ,v096 ,gtp3
 .byte   Cs4
 .byte   W36
@  #04 @144   ----------------------------------------
 .byte   W36
 .byte   N23 ,Cs3
 .byte   N23 ,As3
 .byte   N23 ,Cs4
 .byte   W24
 .byte   N44 ,Ds3 ,v096 ,gtp3
 .byte   Bn3
 .byte   N44 ,Ds4 ,v096 ,gtp3
 .byte   W36
@  #04 @145   ----------------------------------------
 .byte   W12
 .byte   N32 ,Ds3 ,v096 ,gtp3
 .byte   Ds4
 .byte   W36
 .byte   N17 ,En3
 .byte   N17 ,En4
 .byte   W18
 .byte   Fs3
 .byte   N17 ,Fs4
 .byte   W18
 .byte   Fs3
 .byte   N17 ,Fs4
 .byte   W12
@  #04 @146   ----------------------------------------
 .byte   W06
 .byte   Ds3
 .byte   N17 ,En4
 .byte   W18
 .byte   N32 ,Gs2 ,v096 ,gtp3
 .byte   Gs3
 .byte   W36
 .byte   As2
 .byte   N32 ,Gn3 ,v096 ,gtp3
 .byte   As3
 .byte   N32 ,Cs4 ,v096 ,gtp3
 .byte   W36
@  #04 @147   ----------------------------------------
 .byte   N17 ,Ds3
 .byte   N17 ,Bn3
 .byte   N17 ,Ds4
 .byte   W18
 .byte   En3
 .byte   N17 ,Cs4
 .byte   N17 ,En4
 .byte   W18
 .byte   En3
 .byte   N17 ,En4
 .byte   W18
 .byte   Ds3
 .byte   N17 ,Ds4
 .byte   W18
 .byte   N32 ,Gs2 ,v096 ,gtp3
 .byte   N11 ,Gs3
 .byte   W12
 .byte   As3 ,v080
 .byte   W12
@  #04 @148   ----------------------------------------
 .byte   Bn3
 .byte   W12
 .byte   N68 ,Gs3 ,v096 ,gtp3
 .byte   Bn3
 .byte   N32 ,Ds4 ,v096 ,gtp3
 .byte   W36
 .byte   Cs4 ,v080
 .byte   W36
 .byte   TIE ,Fs3 ,v096
 .byte   TIE ,Bn3
 .byte   TIE ,Dn4
 .byte   W12
@  #04 @149   ----------------------------------------
 .byte   W96
@  #04 @150   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v071
 .byte   Dn4
 .byte   W13
 .byte   N11 ,Fs3 ,v112
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
@  #04 @151   ----------------------------------------
 .byte   Bn2
 .byte   N11 ,Bn3
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
@  #04 @152   ----------------------------------------
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Bn2
 .byte   N11 ,Bn3
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
@  #04 @153   ----------------------------------------
 .byte   PATT
  .word Label_010199C4
@  #04 @154   ----------------------------------------
 .byte   N11 ,En3 ,v112
 .byte   N11 ,En4
 .byte   W36
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Bn2
 .byte   N11 ,Bn3
 .byte   W12
@  #04 @155   ----------------------------------------
 .byte   W12
 .byte   Fs3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N68 ,Cn4 ,v080 ,gtp3
 .byte   W24
 .byte   N07 ,Bn2 ,v096
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W04
@  #04 @156   ----------------------------------------
 .byte   W04
 .byte   Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N11 ,Bn2
 .byte   N11 ,Fs3
 .byte   N11 ,Bn3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   N80 ,Cn3 ,v096 ,gtp3
 .byte   Gn3
 .byte   N80 ,Bn3 ,v096 ,gtp3
 .byte   Gn4
 .byte   W72
@  #04 @157   ----------------------------------------
 .byte   W36
 .byte   N07 ,Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Bn2
 .byte   N07 ,Fs3
 .byte   N07 ,Bn3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N11 ,Bn2
 .byte   N11 ,Fs3
 .byte   N11 ,Bn3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   N92 ,Dn3 ,v096 ,gtp3
 .byte   An3
 .byte   N92 ,Bn3 ,v096 ,gtp3
 .byte   An4
 .byte   W24
@  #04 @158   ----------------------------------------
 .byte   W72
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

.align 2, 0
song06_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_01014F4A:
 .byte   VOICE , 47
 .byte   VOL , 41*song06_mvl/mxv
 .byte   TIE ,Bn0 ,v064
 .byte   W96
@  #05 @001   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   TIE ,An0
 .byte   W48
@  #05 @002   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #05 @003   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #05 @004   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N68 ,Fs0 ,v064 ,gtp3
 .byte   W48
@  #05 @005   ----------------------------------------
Label_01014F69:
 .byte   W24
 .byte   N68 ,Cn1 ,v064 ,gtp3
 .byte   W72
 .byte   PEND 
@  #05 @006   ----------------------------------------
 .byte   W96
@  #05 @007   ----------------------------------------
 .byte   W96
@  #05 @008   ----------------------------------------
 .byte   W96
@  #05 @009   ----------------------------------------
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
 .byte   W24
 .byte   TIE ,Gs0
 .byte   W72
@  #05 @020   ----------------------------------------
 .byte   W96
@  #05 @021   ----------------------------------------
 .byte   W96
@  #05 @022   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N05
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
@  #05 @023   ----------------------------------------
Label_01014F92:
 .byte   N05 ,Gs0 ,v064
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   PEND 
@  #05 @024   ----------------------------------------
 .byte   PATT
  .word Label_01014F92
@  #05 @025   ----------------------------------------
 .byte   N05 ,Gs0 ,v064
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
@  #05 @026   ----------------------------------------
Label_01014FBC:
 .byte   N05 ,En0 ,v064
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   PEND 
@  #05 @027   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @028   ----------------------------------------
 .byte   N05 ,En0 ,v064
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
@  #05 @029   ----------------------------------------
Label_01014FE6:
 .byte   N05 ,Fs0 ,v064
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   PEND 
@  #05 @030   ----------------------------------------
 .byte   PATT
  .word Label_01014FE6
@  #05 @031   ----------------------------------------
 .byte   N05 ,Fs0 ,v064
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
@  #05 @032   ----------------------------------------
Label_01015010:
 .byte   N05 ,Ds0 ,v064
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   PEND 
@  #05 @033   ----------------------------------------
 .byte   PATT
  .word Label_01015010
@  #05 @034   ----------------------------------------
 .byte   N05 ,Ds0 ,v064
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
@  #05 @035   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @036   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @037   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @038   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @039   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @040   ----------------------------------------
 .byte   N05 ,En0 ,v064
 .byte   W12
 .byte   En0
 .byte   W84
@  #05 @041   ----------------------------------------
 .byte   W96
@  #05 @042   ----------------------------------------
Label_0101505A:
 .byte   W48
 .byte   N68 ,En0 ,v080 ,gtp3
 .byte   W48
 .byte   PEND 
@  #05 @043   ----------------------------------------
Label_01015061:
 .byte   W24
 .byte   N68 ,Fs0 ,v080 ,gtp3
 .byte   W72
 .byte   PEND 
@  #05 @044   ----------------------------------------
 .byte   Gs0
 .byte   W72
 .byte   Bn0
 .byte   W24
@  #05 @045   ----------------------------------------
 .byte   W48
 .byte   Cs0
 .byte   W48
@  #05 @046   ----------------------------------------
 .byte   W24
 .byte   Ds0
 .byte   W72
@  #05 @047   ----------------------------------------
 .byte   En0
 .byte   W72
 .byte   Fs0
 .byte   W24
@  #05 @048   ----------------------------------------
 .byte   W48
 .byte   Gn0
 .byte   W48
@  #05 @049   ----------------------------------------
 .byte   W24
 .byte   An0
 .byte   W72
@  #05 @050   ----------------------------------------
 .byte   Bn0
 .byte   W72
 .byte   Dn1
 .byte   W24
@  #05 @051   ----------------------------------------
 .byte   PATT
  .word Label_0101505A
@  #05 @052   ----------------------------------------
 .byte   PATT
  .word Label_01015061
@  #05 @053   ----------------------------------------
 .byte   N68 ,Gn0 ,v080 ,gtp3
 .byte   W72
 .byte   Gn0
 .byte   W24
@  #05 @054   ----------------------------------------
 .byte   W96
@  #05 @055   ----------------------------------------
 .byte   W96
@  #05 @056   ----------------------------------------
 .byte   W96
@  #05 @057   ----------------------------------------
 .byte   W96
@  #05 @058   ----------------------------------------
 .byte   W96
@  #05 @059   ----------------------------------------
 .byte   W96
@  #05 @060   ----------------------------------------
 .byte   W96
@  #05 @061   ----------------------------------------
 .byte   W96
@  #05 @062   ----------------------------------------
 .byte   W96
@  #05 @063   ----------------------------------------
 .byte   W48
 .byte   Gs0
 .byte   W48
@  #05 @064   ----------------------------------------
 .byte   W24
 .byte   As0
 .byte   W72
@  #05 @065   ----------------------------------------
 .byte   Bn0
 .byte   W72
 .byte   Cn1
 .byte   W24
@  #05 @066   ----------------------------------------
 .byte   W48
 .byte   Cs1
 .byte   W48
@  #05 @067   ----------------------------------------
 .byte   W24
 .byte   Ds1
 .byte   W72
@  #05 @068   ----------------------------------------
 .byte   Bn0
 .byte   W72
 .byte   En1
 .byte   W24
@  #05 @069   ----------------------------------------
 .byte   W96
@  #05 @070   ----------------------------------------
 .byte   W96
@  #05 @071   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #05 @072   ----------------------------------------
 .byte   W96
@  #05 @073   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   TIE ,Bn0
 .byte   W36
@  #05 @074   ----------------------------------------
 .byte   W96
@  #05 @075   ----------------------------------------
 .byte   W96
@  #05 @076   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W24
 .byte   W01
 .byte   N05 ,Bn0 ,v115
 .byte   W08
 .byte   Bn0
 .byte   W08
 .byte   Bn0
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N80 ,Bn0 ,v096 ,gtp3
 .byte   W12
@  #05 @077   ----------------------------------------
 .byte   W96
@  #05 @078   ----------------------------------------
 .byte   N05 ,Bn0 ,v115
 .byte   W08
 .byte   Bn0
 .byte   W08
 .byte   Bn0
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N92 ,Bn0 ,v096 ,gtp3
 .byte   W60
@  #05 @079   ----------------------------------------
 .byte   W36
 .byte   TIE ,Bn0 ,v064
 .byte   GOTO
  .word Label_01014F4A
@  #05 @080   ----------------------------------------
 .byte   W60
 .byte   W80
@  #05 @081   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   TIE ,An0
 .byte   W12
 .byte   W96
@  #05 @082   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   TIE ,Gn0
 .byte   W60
@  #05 @083   ----------------------------------------
 .byte   W80
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N68 ,Fs0 ,v064 ,gtp3
 .byte   W12
@  #05 @084   ----------------------------------------
Label_01015101:
 .byte   W60
 .byte   N68 ,Cn1 ,v064 ,gtp3
 .byte   W36
 .byte   PEND 
@  #05 @085   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #05 @093   ----------------------------------------
 .byte   W96
@  #05 @094   ----------------------------------------
 .byte   W96
@  #05 @095   ----------------------------------------
 .byte   W96
@  #05 @096   ----------------------------------------
 .byte   W96
@  #05 @097   ----------------------------------------
 .byte   W96
@  #05 @098   ----------------------------------------
 .byte   W60
 .byte   TIE ,Gs0
 .byte   W36
@  #05 @099   ----------------------------------------
 .byte   W96
@  #05 @100   ----------------------------------------
 .byte   W96
@  #05 @101   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N05
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
@  #05 @102   ----------------------------------------
 .byte   PATT
  .word Label_01014F92
@  #05 @103   ----------------------------------------
 .byte   PATT
  .word Label_01014F92
@  #05 @104   ----------------------------------------
 .byte   N05 ,Gs0 ,v064
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
@  #05 @105   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @106   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @107   ----------------------------------------
 .byte   N05 ,En0 ,v064
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
@  #05 @108   ----------------------------------------
 .byte   PATT
  .word Label_01014FE6
@  #05 @109   ----------------------------------------
 .byte   PATT
  .word Label_01014FE6
@  #05 @110   ----------------------------------------
 .byte   N05 ,Fs0 ,v064
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Fs0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
@  #05 @111   ----------------------------------------
 .byte   PATT
  .word Label_01015010
@  #05 @112   ----------------------------------------
 .byte   PATT
  .word Label_01015010
@  #05 @113   ----------------------------------------
 .byte   N05 ,Ds0 ,v064
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
@  #05 @114   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @115   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @116   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @117   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @118   ----------------------------------------
 .byte   PATT
  .word Label_01014FBC
@  #05 @119   ----------------------------------------
 .byte   N05 ,En0 ,v064
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En0
 .byte   W48
@  #05 @120   ----------------------------------------
 .byte   W96
@  #05 @121   ----------------------------------------
 .byte   W84
 .byte   N68 ,En0 ,v080 ,gtp3
 .byte   W12
@  #05 @122   ----------------------------------------
Label_010151C1:
 .byte   W60
 .byte   N68 ,Fs0 ,v080 ,gtp3
 .byte   W36
 .byte   PEND 
@  #05 @123   ----------------------------------------
 .byte   W36
 .byte   Gs0
 .byte   W60
@  #05 @124   ----------------------------------------
 .byte   W12
 .byte   Bn0
 .byte   W72
 .byte   Cs0
 .byte   W12
@  #05 @125   ----------------------------------------
 .byte   W60
 .byte   Ds0
 .byte   W36
@  #05 @126   ----------------------------------------
 .byte   W36
 .byte   En0
 .byte   W60
@  #05 @127   ----------------------------------------
 .byte   W12
 .byte   Fs0
 .byte   W72
 .byte   Gn0
 .byte   W12
@  #05 @128   ----------------------------------------
 .byte   W60
 .byte   An0
 .byte   W36
@  #05 @129   ----------------------------------------
Label_010151DE:
 .byte   W36
 .byte   N68 ,Bn0 ,v080 ,gtp3
 .byte   W60
 .byte   PEND 
@  #05 @130   ----------------------------------------
 .byte   W12
 .byte   Dn1
 .byte   W72
 .byte   En0
 .byte   W12
@  #05 @131   ----------------------------------------
 .byte   PATT
  .word Label_010151C1
@  #05 @132   ----------------------------------------
 .byte   W36
 .byte   N68 ,Gn0 ,v080 ,gtp3
 .byte   W60
@  #05 @133   ----------------------------------------
 .byte   W12
 .byte   Gn0
 .byte   W84
@  #05 @134   ----------------------------------------
 .byte   W96
@  #05 @135   ----------------------------------------
 .byte   W96
@  #05 @136   ----------------------------------------
 .byte   W96
@  #05 @137   ----------------------------------------
 .byte   W96
@  #05 @138   ----------------------------------------
 .byte   W96
@  #05 @139   ----------------------------------------
 .byte   W96
@  #05 @140   ----------------------------------------
 .byte   W96
@  #05 @141   ----------------------------------------
 .byte   W96
@  #05 @142   ----------------------------------------
 .byte   W84
 .byte   Gs0
 .byte   W12
@  #05 @143   ----------------------------------------
 .byte   W60
 .byte   As0
 .byte   W36
@  #05 @144   ----------------------------------------
 .byte   PATT
  .word Label_010151DE
@  #05 @145   ----------------------------------------
 .byte   W12
 .byte   N68 ,Cn1 ,v080 ,gtp3
 .byte   W72
 .byte   Cs1
 .byte   W12
@  #05 @146   ----------------------------------------
 .byte   W60
 .byte   Ds1
 .byte   W36
@  #05 @147   ----------------------------------------
 .byte   PATT
  .word Label_010151DE
@  #05 @148   ----------------------------------------
 .byte   W12
 .byte   N68 ,En1 ,v080 ,gtp3
 .byte   W84
@  #05 @149   ----------------------------------------
 .byte   W96
@  #05 @150   ----------------------------------------
 .byte   W36
 .byte   TIE
 .byte   W60
@  #05 @151   ----------------------------------------
 .byte   W96
@  #05 @152   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #05 @153   ----------------------------------------
 .byte   TIE ,Bn0
 .byte   W96
@  #05 @154   ----------------------------------------
 .byte   W96
@  #05 @155   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W24
 .byte   W01
 .byte   N05 ,Bn0 ,v115
 .byte   W08
 .byte   Bn0
 .byte   W04
@  #05 @156   ----------------------------------------
 .byte   W04
 .byte   Bn0
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N80 ,Bn0 ,v096 ,gtp3
 .byte   W72
@  #05 @157   ----------------------------------------
 .byte   W36
 .byte   N05 ,Bn0 ,v115
 .byte   W08
 .byte   Bn0
 .byte   W08
 .byte   Bn0
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N92 ,Bn0 ,v096 ,gtp3
 .byte   W24
@  #05 @158   ----------------------------------------
 .byte   W72
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

.align 2, 0
song06_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_010153CA:
 .byte   VOICE , 1
 .byte   VOL , 25*song06_mvl/mxv
 .byte   N68 ,Bn2 ,v080 ,gtp3
 .byte   W96
@  #06 @001   ----------------------------------------
 .byte   W96
@  #06 @002   ----------------------------------------
 .byte   W96
@  #06 @003   ----------------------------------------
 .byte   Bn2
 .byte   W96
@  #06 @004   ----------------------------------------
 .byte   W48
 .byte   Bn2
 .byte   W48
@  #06 @005   ----------------------------------------
 .byte   W24
 .byte   N02 ,Cn3 ,v064
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3 ,v073
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3 ,v083
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3 ,v092
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3 ,v102
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3 ,v112
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
@  #06 @006   ----------------------------------------
Label_01015412:
 .byte   N11 ,Bn2 ,v049
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N32 ,Bn1 ,v049 ,gtp3
 .byte   W60
 .byte   PEND 
@  #06 @007   ----------------------------------------
 .byte   W84
 .byte   Bn1
 .byte   W12
@  #06 @008   ----------------------------------------
 .byte   W96
@  #06 @009   ----------------------------------------
 .byte   PATT
  .word Label_01015412
@  #06 @010   ----------------------------------------
 .byte   W84
 .byte   N11 ,Bn2 ,v049
 .byte   W12
@  #06 @011   ----------------------------------------
 .byte   Fs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N32 ,Bn1 ,v049 ,gtp3
 .byte   W72
@  #06 @012   ----------------------------------------
 .byte   W96
@  #06 @013   ----------------------------------------
 .byte   W48
 .byte   N02 ,Bn2
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W01
@  #06 @014   ----------------------------------------
 .byte   W02
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Bn2
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W76
 .byte   W01
@  #06 @015   ----------------------------------------
 .byte   W96
@  #06 @016   ----------------------------------------
 .byte   W96
@  #06 @017   ----------------------------------------
 .byte   W96
@  #06 @018   ----------------------------------------
 .byte   W72
 .byte   N02 ,Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2 ,v064
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
@  #06 @019   ----------------------------------------
 .byte   Gs2 ,v080
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2 ,v096
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W72
 .byte   W03
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
 .byte   W96
@  #06 @030   ----------------------------------------
 .byte   W96
@  #06 @031   ----------------------------------------
 .byte   W96
@  #06 @032   ----------------------------------------
 .byte   W96
@  #06 @033   ----------------------------------------
 .byte   W96
@  #06 @034   ----------------------------------------
 .byte   W24
 .byte   N68 ,En2 ,v064 ,gtp3
 .byte   W72
@  #06 @035   ----------------------------------------
 .byte   En2
 .byte   W72
 .byte   En2
 .byte   W24
@  #06 @036   ----------------------------------------
 .byte   W48
 .byte   En2
 .byte   W48
@  #06 @037   ----------------------------------------
 .byte   W24
 .byte   N32 ,En2 ,v064 ,gtp3
 .byte   W36
 .byte   En2
 .byte   W36
@  #06 @038   ----------------------------------------
Label_010154B8:
 .byte   N32 ,En2 ,v064 ,gtp3
 .byte   W36
 .byte   En2
 .byte   W36
 .byte   En2
 .byte   W24
 .byte   PEND 
@  #06 @039   ----------------------------------------
 .byte   W12
 .byte   En2
 .byte   W36
 .byte   N02
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W01
@  #06 @040   ----------------------------------------
 .byte   W02
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W76
 .byte   W01
@  #06 @041   ----------------------------------------
 .byte   W72
 .byte   N02
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2 ,v070
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
@  #06 @042   ----------------------------------------
 .byte   En2 ,v076
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2 ,v083
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2 ,v089
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2 ,v096
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W48
 .byte   W03
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
 .byte   W96
@  #06 @054   ----------------------------------------
 .byte   W96
@  #06 @055   ----------------------------------------
 .byte   W96
@  #06 @056   ----------------------------------------
 .byte   W96
@  #06 @057   ----------------------------------------
 .byte   W96
@  #06 @058   ----------------------------------------
 .byte   W96
@  #06 @059   ----------------------------------------
 .byte   W96
@  #06 @060   ----------------------------------------
 .byte   W96
@  #06 @061   ----------------------------------------
 .byte   W96
@  #06 @062   ----------------------------------------
 .byte   W96
@  #06 @063   ----------------------------------------
 .byte   W24
 .byte   N11 ,Gs2
 .byte   W12
 .byte   N02
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   N44 ,Gs2 ,v096 ,gtp3
 .byte   W48
@  #06 @064   ----------------------------------------
 .byte   W24
 .byte   As2
 .byte   W72
@  #06 @065   ----------------------------------------
 .byte   Bn2
 .byte   W72
 .byte   N32 ,Cn3 ,v096 ,gtp3
 .byte   W24
@  #06 @066   ----------------------------------------
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N02 ,Cn2
 .byte   W03
 .byte   Cn2
 .byte   W03
 .byte   Cn2
 .byte   W03
 .byte   Cn2
 .byte   W03
 .byte   N44 ,Cs2 ,v096 ,gtp3
 .byte   W48
@  #06 @067   ----------------------------------------
 .byte   W24
 .byte   Ds2
 .byte   W72
@  #06 @068   ----------------------------------------
 .byte   Bn1
 .byte   W72
 .byte   En2
 .byte   W24
@  #06 @069   ----------------------------------------
 .byte   W36
 .byte   N02
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   N44 ,En2 ,v096 ,gtp3
 .byte   W48
@  #06 @070   ----------------------------------------
 .byte   W12
 .byte   N02 ,Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   N23 ,Gs2
 .byte   W72
@  #06 @071   ----------------------------------------
 .byte   W96
@  #06 @072   ----------------------------------------
 .byte   W96
@  #06 @073   ----------------------------------------
 .byte   W54
 .byte   N01 ,Bn2
 .byte   W01
 .byte   Bn2
 .byte   W02
 .byte   Bn2
 .byte   W01
 .byte   Bn2
 .byte   W02
 .byte   N44 ,Bn2 ,v096 ,gtp3
 .byte   W36
@  #06 @074   ----------------------------------------
 .byte   W96
@  #06 @075   ----------------------------------------
 .byte   W96
@  #06 @076   ----------------------------------------
 .byte   W12
 .byte   N02 ,Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   N11
 .byte   W12
 .byte   Bn2
 .byte   W12
@  #06 @077   ----------------------------------------
 .byte   W60
 .byte   N02 ,Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   N23 ,Bn2
 .byte   W24
@  #06 @078   ----------------------------------------
 .byte   N07
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   N11
 .byte   W12
 .byte   Bn2
 .byte   W60
@  #06 @079   ----------------------------------------
 .byte   W36
 .byte   N68 ,Bn2 ,v080 ,gtp3
 .byte   GOTO
  .word Label_010153CA
@  #06 @080   ----------------------------------------
 .byte   W60
 .byte   W96
@  #06 @081   ----------------------------------------
 .byte   W96
@  #06 @082   ----------------------------------------
 .byte   W36
 .byte   Bn2
 .byte   W60
@  #06 @083   ----------------------------------------
 .byte   W84
 .byte   Bn2
 .byte   W12
@  #06 @084   ----------------------------------------
 .byte   W60
 .byte   N02 ,Cn3 ,v064
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3 ,v073
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3 ,v083
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
@  #06 @085   ----------------------------------------
 .byte   Cn3 ,v092
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3 ,v102
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3 ,v112
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   N11 ,Bn2 ,v049
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N32 ,Bn1 ,v049 ,gtp3
 .byte   W24
@  #06 @086   ----------------------------------------
 .byte   W96
@  #06 @087   ----------------------------------------
 .byte   W24
 .byte   Bn1
 .byte   W72
@  #06 @088   ----------------------------------------
 .byte   W36
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N32 ,Bn1 ,v049 ,gtp3
 .byte   W24
@  #06 @089   ----------------------------------------
 .byte   W96
@  #06 @090   ----------------------------------------
 .byte   W24
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N32 ,Bn1 ,v049 ,gtp3
 .byte   W36
@  #06 @091   ----------------------------------------
 .byte   W96
@  #06 @092   ----------------------------------------
 .byte   W84
 .byte   N02 ,Bn2
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W01
@  #06 @093   ----------------------------------------
 .byte   W02
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Bn2
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   Bn2
 .byte   W03
 .byte   Bn2
 .byte   W40
 .byte   W01
@  #06 @094   ----------------------------------------
 .byte   W96
@  #06 @095   ----------------------------------------
 .byte   W96
@  #06 @096   ----------------------------------------
 .byte   W96
@  #06 @097   ----------------------------------------
 .byte   W96
@  #06 @098   ----------------------------------------
 .byte   W12
 .byte   N02 ,Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2 ,v064
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2 ,v080
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2 ,v096
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W36
 .byte   W03
@  #06 @099   ----------------------------------------
 .byte   W96
@  #06 @100   ----------------------------------------
 .byte   W96
@  #06 @101   ----------------------------------------
 .byte   W96
@  #06 @102   ----------------------------------------
 .byte   W96
@  #06 @103   ----------------------------------------
 .byte   W96
@  #06 @104   ----------------------------------------
 .byte   W96
@  #06 @105   ----------------------------------------
 .byte   W96
@  #06 @106   ----------------------------------------
 .byte   W96
@  #06 @107   ----------------------------------------
 .byte   W96
@  #06 @108   ----------------------------------------
 .byte   W96
@  #06 @109   ----------------------------------------
 .byte   W96
@  #06 @110   ----------------------------------------
 .byte   W96
@  #06 @111   ----------------------------------------
 .byte   W96
@  #06 @112   ----------------------------------------
 .byte   W96
@  #06 @113   ----------------------------------------
 .byte   W60
 .byte   N68 ,En2 ,v064 ,gtp3
 .byte   W36
@  #06 @114   ----------------------------------------
 .byte   W36
 .byte   En2
 .byte   W60
@  #06 @115   ----------------------------------------
 .byte   W12
 .byte   En2
 .byte   W72
 .byte   En2
 .byte   W12
@  #06 @116   ----------------------------------------
 .byte   W60
 .byte   N32 ,En2 ,v064 ,gtp3
 .byte   W36
@  #06 @117   ----------------------------------------
 .byte   PATT
  .word Label_010154B8
@  #06 @118   ----------------------------------------
 .byte   W12
 .byte   N32 ,En2 ,v064 ,gtp3
 .byte   W36
 .byte   En2
 .byte   W36
 .byte   N02
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W01
@  #06 @119   ----------------------------------------
 .byte   W02
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W40
 .byte   W01
@  #06 @120   ----------------------------------------
 .byte   W96
@  #06 @121   ----------------------------------------
 .byte   W12
 .byte   N02
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2 ,v070
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2 ,v076
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2 ,v083
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2 ,v089
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2 ,v096
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W15
@  #06 @122   ----------------------------------------
 .byte   W96
@  #06 @123   ----------------------------------------
 .byte   W96
@  #06 @124   ----------------------------------------
 .byte   W96
@  #06 @125   ----------------------------------------
 .byte   W96
@  #06 @126   ----------------------------------------
 .byte   W96
@  #06 @127   ----------------------------------------
 .byte   W96
@  #06 @128   ----------------------------------------
 .byte   W96
@  #06 @129   ----------------------------------------
 .byte   W96
@  #06 @130   ----------------------------------------
 .byte   W96
@  #06 @131   ----------------------------------------
 .byte   W96
@  #06 @132   ----------------------------------------
 .byte   W96
@  #06 @133   ----------------------------------------
 .byte   W96
@  #06 @134   ----------------------------------------
 .byte   W96
@  #06 @135   ----------------------------------------
 .byte   W96
@  #06 @136   ----------------------------------------
 .byte   W96
@  #06 @137   ----------------------------------------
 .byte   W96
@  #06 @138   ----------------------------------------
 .byte   W96
@  #06 @139   ----------------------------------------
 .byte   W96
@  #06 @140   ----------------------------------------
 .byte   W96
@  #06 @141   ----------------------------------------
 .byte   W96
@  #06 @142   ----------------------------------------
 .byte   W60
 .byte   N11 ,Gs2
 .byte   W12
 .byte   N02
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   Gs2
 .byte   W03
 .byte   N44 ,Gs2 ,v096 ,gtp3
 .byte   W12
@  #06 @143   ----------------------------------------
 .byte   W60
 .byte   As2
 .byte   W36
@  #06 @144   ----------------------------------------
 .byte   W36
 .byte   Bn2
 .byte   W60
@  #06 @145   ----------------------------------------
 .byte   W12
 .byte   N32 ,Cn3 ,v096 ,gtp3
 .byte   W36
 .byte   N23
 .byte   W24
 .byte   N02 ,Cn2
 .byte   W03
 .byte   Cn2
 .byte   W03
 .byte   Cn2
 .byte   W03
 .byte   Cn2
 .byte   W03
 .byte   N44 ,Cs2 ,v096 ,gtp3
 .byte   W12
@  #06 @146   ----------------------------------------
 .byte   W60
 .byte   Ds2
 .byte   W36
@  #06 @147   ----------------------------------------
 .byte   W36
 .byte   Bn1
 .byte   W60
@  #06 @148   ----------------------------------------
 .byte   W12
 .byte   En2
 .byte   W60
 .byte   N02
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   En2
 .byte   W03
 .byte   N44 ,En2 ,v096 ,gtp3
 .byte   W12
@  #06 @149   ----------------------------------------
 .byte   W48
 .byte   N02 ,Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   N23 ,Gs2
 .byte   W36
@  #06 @150   ----------------------------------------
 .byte   W96
@  #06 @151   ----------------------------------------
 .byte   W96
@  #06 @152   ----------------------------------------
 .byte   W90
 .byte   N01 ,Bn2
 .byte   W01
 .byte   Bn2
 .byte   W02
 .byte   Bn2
 .byte   W01
 .byte   Bn2
 .byte   W02
@  #06 @153   ----------------------------------------
 .byte   N44 ,Bn2 ,v096 ,gtp3
 .byte   W96
@  #06 @154   ----------------------------------------
 .byte   W96
@  #06 @155   ----------------------------------------
 .byte   W48
 .byte   N02 ,Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   Bn2
 .byte   W04
@  #06 @156   ----------------------------------------
 .byte   W04
 .byte   Bn2
 .byte   W08
 .byte   N11
 .byte   W12
 .byte   Bn2
 .byte   W72
@  #06 @157   ----------------------------------------
 .byte   N02 ,Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   Fs2
 .byte   W03
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   N11
 .byte   W12
 .byte   Bn2
 .byte   W24
@  #06 @158   ----------------------------------------
 .byte   W72
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

.align 2, 0
song06_007:
@  #07 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_0101B256:
 .byte   VOICE , 44
 .byte   VOL , 40*song06_mvl/mxv
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   W72
 .byte   Gn4
 .byte   W24
@  #07 @001   ----------------------------------------
 .byte   W48
 .byte   N32 ,Gn4 ,v080 ,gtp3
 .byte   W36
 .byte   An4
 .byte   W12
@  #07 @002   ----------------------------------------
 .byte   W24
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   W72
@  #07 @003   ----------------------------------------
 .byte   N32 ,Fs4 ,v080 ,gtp3
 .byte   W36
 .byte   Gn4
 .byte   W36
 .byte   Bn4
 .byte   W24
@  #07 @004   ----------------------------------------
 .byte   W12
 .byte   An4
 .byte   W36
 .byte   An4
 .byte   W36
 .byte   Gn4
 .byte   W12
@  #07 @005   ----------------------------------------
 .byte   W24
 .byte   Fs4
 .byte   W36
 .byte   En4
 .byte   W36
@  #07 @006   ----------------------------------------
 .byte   W96
@  #07 @007   ----------------------------------------
 .byte   W48
 .byte   N68 ,Fs4 ,v064 ,gtp3
 .byte   An4
 .byte   W48
@  #07 @008   ----------------------------------------
 .byte   W24
 .byte   Gn4
 .byte   N68 ,Bn4 ,v064 ,gtp3
 .byte   W72
@  #07 @009   ----------------------------------------
 .byte   Dn4
 .byte   N68 ,Fs4 ,v064 ,gtp3
 .byte   W72
 .byte   Dn4
 .byte   N68 ,Gn4 ,v064 ,gtp3
 .byte   W24
@  #07 @010   ----------------------------------------
 .byte   W48
 .byte   En4
 .byte   N68 ,An4 ,v064 ,gtp3
 .byte   W48
@  #07 @011   ----------------------------------------
 .byte   W24
 .byte   N32 ,An4 ,v080 ,gtp3
 .byte   Cs5
 .byte   W36
 .byte   Bn4
 .byte   N32 ,Dn5 ,v080 ,gtp3
 .byte   W36
@  #07 @012   ----------------------------------------
 .byte   W24
 .byte   N11 ,Gn4 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   N32 ,En4 ,v064 ,gtp3
 .byte   W24
@  #07 @013   ----------------------------------------
 .byte   W12
 .byte   Cs4
 .byte   W36
 .byte   N11 ,En4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   En4
 .byte   W12
@  #07 @014   ----------------------------------------
 .byte   Fs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   N03 ,Fs4 ,v058
 .byte   W06
 .byte   N01 ,Fs4 ,v049
 .byte   W06
 .byte   N03 ,Fs4 ,v058
 .byte   W06
 .byte   N01 ,Fs4 ,v049
 .byte   W06
 .byte   N03 ,En4 ,v058
 .byte   W06
 .byte   N01 ,En4 ,v049
 .byte   W06
 .byte   N03 ,Gn4 ,v058
 .byte   W06
 .byte   N01 ,Gn4 ,v049
 .byte   W06
 .byte   N03 ,Fs4 ,v058
 .byte   W06
 .byte   N01 ,Fs4 ,v049
 .byte   W06
 .byte   N03 ,En4 ,v058
 .byte   W06
 .byte   N01 ,En4 ,v049
 .byte   W06
@  #07 @015   ----------------------------------------
 .byte   N02 ,Fn5 ,v080
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cn5
 .byte   W06
@  #07 @016   ----------------------------------------
 .byte   Fn5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Gs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
@  #07 @017   ----------------------------------------
 .byte   Gs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   N23 ,En5
 .byte   W24
 .byte   Ds5
 .byte   W24
 .byte   Bn4
 .byte   W24
@  #07 @018   ----------------------------------------
 .byte   Gs4
 .byte   W24
 .byte   Gs4
 .byte   W24
 .byte   N56 ,Bn4 ,v080 ,gtp3
 .byte   W48
@  #07 @019   ----------------------------------------
 .byte   W12
 .byte   N02 ,Gs4
 .byte   W03
 .byte   As4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   N03 ,Ds5
 .byte   N24 ,Gs4
 .byte   W12
 .byte   N03 ,Ds5
 .byte   W12
 .byte   N36 ,Gs4
 .byte   W12
 .byte   N03 ,Bn4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   N36 ,Gs4
 .byte   W12
@  #07 @020   ----------------------------------------
 .byte   N03 ,Cs5
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   N36 ,Gs4
 .byte   W12
 .byte   N03 ,As4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   N48 ,Gs4
 .byte   W12
 .byte   N03 ,Bn4
 .byte   W12
 .byte   Bn4
 .byte   W12
@  #07 @021   ----------------------------------------
 .byte   En4
 .byte   W12
 .byte   N12 ,Gs4
 .byte   W12
 .byte   N84
 .byte   W12
 .byte   N03 ,Ds4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Bn4
 .byte   W12
@  #07 @022   ----------------------------------------
 .byte   Bn4
 .byte   W12
 .byte   N11 ,Gs4
 .byte   W84
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
 .byte   W72
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
@  #07 @036   ----------------------------------------
 .byte   As3 ,v081
 .byte   W12
 .byte   Bn3 ,v082
 .byte   W12
 .byte   Cs4 ,v083
 .byte   W12
 .byte   Ds4 ,v084
 .byte   W12
 .byte   Bn3 ,v085
 .byte   W12
 .byte   Cs4 ,v086
 .byte   W12
 .byte   Ds4 ,v087
 .byte   W12
 .byte   En4 ,v088
 .byte   W12
@  #07 @037   ----------------------------------------
 .byte   Fs4
 .byte   W12
 .byte   Gn4 ,v089
 .byte   W84
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
 .byte   N68 ,As5 ,v064 ,gtp3
 .byte   W72
 .byte   Bn5
 .byte   W24
@  #07 @045   ----------------------------------------
 .byte   W48
 .byte   Bn5
 .byte   W48
@  #07 @046   ----------------------------------------
 .byte   W24
 .byte   N23 ,Cs6
 .byte   W24
 .byte   Bn5
 .byte   W24
 .byte   As5
 .byte   W24
@  #07 @047   ----------------------------------------
 .byte   N68 ,Bn5 ,v064 ,gtp3
 .byte   W72
 .byte   N32 ,As5 ,v064 ,gtp3
 .byte   W24
@  #07 @048   ----------------------------------------
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Bn5
 .byte   W12
 .byte   Cs6
 .byte   W12
 .byte   N23 ,Cs5 ,v112
 .byte   W24
 .byte   N11 ,Bn4
 .byte   W12
 .byte   N44 ,Fs4 ,v112 ,gtp3
 .byte   W12
@  #07 @049   ----------------------------------------
 .byte   PATT
  .word Label_01015A32
@  #07 @050   ----------------------------------------
 .byte   PATT
  .word Label_01015A40
@  #07 @051   ----------------------------------------
 .byte   PATT
  .word Label_01015A54
@  #07 @052   ----------------------------------------
 .byte   PATT
  .word Label_01015A67
@  #07 @053   ----------------------------------------
 .byte   PATT
  .word Label_01015A75
@  #07 @054   ----------------------------------------
 .byte   PATT
  .word Label_01015A86
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
 .byte   W48
 .byte   N02 ,Ds4 ,v064
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
@  #07 @061   ----------------------------------------
Label_0101B43F:
 .byte   N02 ,Gs3 ,v064
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
@  #07 @062   ----------------------------------------
Label_0101B462:
 .byte   N02 ,Ds4 ,v064
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   PEND 
@  #07 @063   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Bn3
 .byte   W24
 .byte   As3
 .byte   W24
@  #07 @064   ----------------------------------------
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N23 ,Gs3
 .byte   W24
 .byte   Fs3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
 .byte   Ds3
 .byte   W12
@  #07 @065   ----------------------------------------
 .byte   N23 ,Cs3
 .byte   W24
 .byte   N44 ,Ds3 ,v080 ,gtp3
 .byte   W48
 .byte   N32 ,Ds4 ,v080 ,gtp3
 .byte   W24
@  #07 @066   ----------------------------------------
 .byte   W12
 .byte   N17 ,En4
 .byte   W18
 .byte   Fs4
 .byte   W18
 .byte   Fs4
 .byte   W18
 .byte   En4
 .byte   W18
 .byte   N32 ,Gs3 ,v080 ,gtp3
 .byte   W12
@  #07 @067   ----------------------------------------
 .byte   W24
 .byte   As3
 .byte   W36
 .byte   N17 ,Ds4
 .byte   W18
 .byte   En4
 .byte   W18
@  #07 @068   ----------------------------------------
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   Gn4
 .byte   W36
 .byte   N11 ,Gs4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   N32 ,Ds5 ,v080 ,gtp3
 .byte   W24
@  #07 @069   ----------------------------------------
 .byte   W12
 .byte   Cs5
 .byte   W36
 .byte   N23 ,Bn4
 .byte   W24
 .byte   N11 ,An4
 .byte   W12
 .byte   Gs4
 .byte   W12
@  #07 @070   ----------------------------------------
 .byte   An4
 .byte   W12
 .byte   Bn4
 .byte   W24
 .byte   Cs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   En5
 .byte   W12
@  #07 @071   ----------------------------------------
 .byte   TIE ,Fs5
 .byte   W96
@  #07 @072   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   N23 ,An5
 .byte   W24
 .byte   N68 ,En5 ,v080 ,gtp3
 .byte   W60
@  #07 @073   ----------------------------------------
 .byte   W12
 .byte   N44 ,Fs5 ,v080 ,gtp3
 .byte   W48
 .byte   TIE ,Bn5
 .byte   W36
@  #07 @074   ----------------------------------------
 .byte   W96
@  #07 @075   ----------------------------------------
 .byte   W96
@  #07 @076   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W72
 .byte   W01
@  #07 @077   ----------------------------------------
 .byte   W96
@  #07 @078   ----------------------------------------
 .byte   W96
@  #07 @079   ----------------------------------------
 .byte   W36
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   GOTO
  .word Label_0101B256
@  #07 @080   ----------------------------------------
 .byte   W60
 .byte   W12
 .byte   Gn4
 .byte   W72
@  #07 @081   ----------------------------------------
 .byte   N32 ,Gn4 ,v080 ,gtp3
 .byte   W12
 .byte   W24
 .byte   An4
 .byte   W36
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   W36
@  #07 @082   ----------------------------------------
 .byte   W36
 .byte   N32 ,Fs4 ,v080 ,gtp3
 .byte   W36
 .byte   Gn4
 .byte   W24
@  #07 @083   ----------------------------------------
 .byte   W12
 .byte   Bn4
 .byte   W36
 .byte   An4
 .byte   W36
 .byte   An4
 .byte   W12
@  #07 @084   ----------------------------------------
 .byte   W24
 .byte   Gn4
 .byte   W36
 .byte   Fs4
 .byte   W36
@  #07 @085   ----------------------------------------
 .byte   En4
 .byte   W96
@  #07 @086   ----------------------------------------
 .byte   W84
 .byte   N68 ,Fs4 ,v064 ,gtp3
 .byte   An4
 .byte   W12
@  #07 @087   ----------------------------------------
 .byte   W60
 .byte   Gn4
 .byte   N68 ,Bn4 ,v064 ,gtp3
 .byte   W36
@  #07 @088   ----------------------------------------
 .byte   W36
 .byte   Dn4
 .byte   N68 ,Fs4 ,v064 ,gtp3
 .byte   W60
@  #07 @089   ----------------------------------------
 .byte   W12
 .byte   Dn4
 .byte   N68 ,Gn4 ,v064 ,gtp3
 .byte   W72
 .byte   En4
 .byte   N68 ,An4 ,v064 ,gtp3
 .byte   W12
@  #07 @090   ----------------------------------------
 .byte   W60
 .byte   N32 ,An4 ,v080 ,gtp3
 .byte   Cs5
 .byte   W36
@  #07 @091   ----------------------------------------
 .byte   Bn4
 .byte   N32 ,Dn5 ,v080 ,gtp3
 .byte   W60
 .byte   N11 ,Gn4 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
@  #07 @092   ----------------------------------------
 .byte   Dn4
 .byte   W12
 .byte   N32 ,En4 ,v064 ,gtp3
 .byte   W36
 .byte   Cs4
 .byte   W36
 .byte   N11 ,En4
 .byte   W12
@  #07 @093   ----------------------------------------
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   N03 ,Fs4 ,v058
 .byte   W06
 .byte   N01 ,Fs4 ,v049
 .byte   W06
 .byte   N03 ,Fs4 ,v058
 .byte   W06
 .byte   N01 ,Fs4 ,v049
 .byte   W06
 .byte   N03 ,En4 ,v058
 .byte   W06
 .byte   N01 ,En4 ,v049
 .byte   W06
@  #07 @094   ----------------------------------------
 .byte   N03 ,Gn4 ,v058
 .byte   W06
 .byte   N01 ,Gn4 ,v049
 .byte   W06
 .byte   N03 ,Fs4 ,v058
 .byte   W06
 .byte   N01 ,Fs4 ,v049
 .byte   W06
 .byte   N03 ,En4 ,v058
 .byte   W06
 .byte   N01 ,En4 ,v049
 .byte   W06
 .byte   N02 ,Fn5 ,v080
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Dn5
 .byte   W06
@  #07 @095   ----------------------------------------
 .byte   An4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Gs5
 .byte   W06
 .byte   Ds5
 .byte   W06
@  #07 @096   ----------------------------------------
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Gs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Gs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   N23 ,En5
 .byte   W24
 .byte   Ds5
 .byte   W12
@  #07 @097   ----------------------------------------
 .byte   W12
 .byte   Bn4
 .byte   W24
 .byte   Gs4
 .byte   W24
 .byte   Gs4
 .byte   W24
 .byte   N56 ,Bn4 ,v080 ,gtp3
 .byte   W12
@  #07 @098   ----------------------------------------
 .byte   W48
 .byte   N02 ,Gs4
 .byte   W03
 .byte   As4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   N03 ,Ds5
 .byte   N24 ,Gs4
 .byte   W12
 .byte   N03 ,Ds5
 .byte   W12
 .byte   N36 ,Gs4
 .byte   W12
@  #07 @099   ----------------------------------------
 .byte   N03 ,Bn4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   N36 ,Gs4
 .byte   W12
 .byte   N03 ,Cs5
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   N36 ,Gs4
 .byte   W12
 .byte   N03 ,As4
 .byte   W12
 .byte   As4
 .byte   W12
@  #07 @100   ----------------------------------------
 .byte   N48 ,Gs4
 .byte   W12
 .byte   N03 ,Bn4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   N12 ,Gs4
 .byte   W12
 .byte   N84
 .byte   W12
 .byte   N03 ,Ds4
 .byte   W12
 .byte   As4
 .byte   W12
@  #07 @101   ----------------------------------------
 .byte   As4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   N11 ,Gs4
 .byte   W48
@  #07 @102   ----------------------------------------
 .byte   W96
@  #07 @103   ----------------------------------------
 .byte   W96
@  #07 @104   ----------------------------------------
 .byte   W96
@  #07 @105   ----------------------------------------
 .byte   W96
@  #07 @106   ----------------------------------------
 .byte   W96
@  #07 @107   ----------------------------------------
 .byte   W96
@  #07 @108   ----------------------------------------
 .byte   W96
@  #07 @109   ----------------------------------------
 .byte   W96
@  #07 @110   ----------------------------------------
 .byte   W96
@  #07 @111   ----------------------------------------
 .byte   W96
@  #07 @112   ----------------------------------------
 .byte   W96
@  #07 @113   ----------------------------------------
 .byte   W96
@  #07 @114   ----------------------------------------
 .byte   W96
@  #07 @115   ----------------------------------------
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3 ,v081
 .byte   W12
 .byte   Bn3 ,v082
 .byte   W12
 .byte   Cs4 ,v083
 .byte   W12
 .byte   Ds4 ,v084
 .byte   W12
 .byte   Bn3 ,v085
 .byte   W12
@  #07 @116   ----------------------------------------
 .byte   Cs4 ,v086
 .byte   W12
 .byte   Ds4 ,v087
 .byte   W12
 .byte   En4 ,v088
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gn4 ,v089
 .byte   W48
@  #07 @117   ----------------------------------------
 .byte   W96
@  #07 @118   ----------------------------------------
 .byte   W96
@  #07 @119   ----------------------------------------
 .byte   W96
@  #07 @120   ----------------------------------------
 .byte   W96
@  #07 @121   ----------------------------------------
 .byte   W96
@  #07 @122   ----------------------------------------
 .byte   W96
@  #07 @123   ----------------------------------------
 .byte   W36
 .byte   N68 ,As5 ,v064 ,gtp3
 .byte   W60
@  #07 @124   ----------------------------------------
 .byte   W12
 .byte   Bn5
 .byte   W72
 .byte   Bn5
 .byte   W12
@  #07 @125   ----------------------------------------
 .byte   W60
 .byte   N23 ,Cs6
 .byte   W24
 .byte   Bn5
 .byte   W12
@  #07 @126   ----------------------------------------
 .byte   W12
 .byte   As5
 .byte   W24
 .byte   N68 ,Bn5 ,v064 ,gtp3
 .byte   W60
@  #07 @127   ----------------------------------------
 .byte   W12
 .byte   N32 ,As5 ,v064 ,gtp3
 .byte   W36
 .byte   N11
 .byte   W12
 .byte   Bn5
 .byte   W12
 .byte   Cs6
 .byte   W12
 .byte   N23 ,Cs5 ,v112
 .byte   W12
@  #07 @128   ----------------------------------------
 .byte   PATT
  .word Label_01015BE1
@  #07 @129   ----------------------------------------
 .byte   PATT
  .word Label_01015BF1
@  #07 @130   ----------------------------------------
 .byte   PATT
  .word Label_01015C02
@  #07 @131   ----------------------------------------
 .byte   PATT
  .word Label_01015C14
@  #07 @132   ----------------------------------------
 .byte   PATT
  .word Label_01015C24
@  #07 @133   ----------------------------------------
 .byte   PATT
  .word Label_01015C34
@  #07 @134   ----------------------------------------
 .byte   W96
@  #07 @135   ----------------------------------------
 .byte   W96
@  #07 @136   ----------------------------------------
 .byte   W96
@  #07 @137   ----------------------------------------
 .byte   W96
@  #07 @138   ----------------------------------------
 .byte   W96
@  #07 @139   ----------------------------------------
 .byte   W84
 .byte   N02 ,Ds4 ,v064
 .byte   W06
 .byte   Ds4
 .byte   W06
@  #07 @140   ----------------------------------------
 .byte   PATT
  .word Label_0101B43F
@  #07 @141   ----------------------------------------
 .byte   PATT
  .word Label_0101B462
@  #07 @142   ----------------------------------------
 .byte   N02 ,Ds4 ,v064
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Bn3
 .byte   W12
@  #07 @143   ----------------------------------------
 .byte   W12
 .byte   As3
 .byte   W24
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N23 ,Gs3
 .byte   W24
 .byte   Fs3
 .byte   W12
@  #07 @144   ----------------------------------------
 .byte   W12
 .byte   N11 ,En3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N23 ,Cs3
 .byte   W24
 .byte   N44 ,Ds3 ,v080 ,gtp3
 .byte   W36
@  #07 @145   ----------------------------------------
 .byte   W12
 .byte   N32 ,Ds4 ,v080 ,gtp3
 .byte   W36
 .byte   N17 ,En4
 .byte   W18
 .byte   Fs4
 .byte   W18
 .byte   Fs4
 .byte   W12
@  #07 @146   ----------------------------------------
 .byte   W06
 .byte   En4
 .byte   W18
 .byte   N32 ,Gs3 ,v080 ,gtp3
 .byte   W36
 .byte   As3
 .byte   W36
@  #07 @147   ----------------------------------------
 .byte   N17 ,Ds4
 .byte   W18
 .byte   En4
 .byte   W18
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   Gn4
 .byte   W36
 .byte   N11 ,Gs4
 .byte   W12
 .byte   As4
 .byte   W12
@  #07 @148   ----------------------------------------
 .byte   Bn4
 .byte   W12
 .byte   N32 ,Ds5 ,v080 ,gtp3
 .byte   W36
 .byte   Cs5
 .byte   W36
 .byte   N23 ,Bn4
 .byte   W12
@  #07 @149   ----------------------------------------
 .byte   W12
 .byte   N11 ,An4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Bn4
 .byte   W24
 .byte   Cs5
 .byte   W12
 .byte   Bn4
 .byte   W12
@  #07 @150   ----------------------------------------
 .byte   Cs5
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   TIE ,Fs5
 .byte   W60
@  #07 @151   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N23 ,An5
 .byte   W24
 .byte   N68 ,En5 ,v080 ,gtp3
 .byte   W24
@  #07 @152   ----------------------------------------
 .byte   W48
 .byte   N44 ,Fs5 ,v080 ,gtp3
 .byte   W48
@  #07 @153   ----------------------------------------
 .byte   TIE ,Bn5
 .byte   W96
@  #07 @154   ----------------------------------------
 .byte   W96
@  #07 @155   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W36
 .byte   W01
@  #07 @156   ----------------------------------------
 .byte   W96
@  #07 @157   ----------------------------------------
 .byte   W96
@  #07 @158   ----------------------------------------
 .byte   W72
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

.align 2, 0
song06_008:
@  #08 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_01019D92:
 .byte   VOICE , 48
 .byte   VOL , 35*song06_mvl/mxv
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
 .byte   W96
@  #08 @010   ----------------------------------------
 .byte   W96
@  #08 @011   ----------------------------------------
 .byte   W96
@  #08 @012   ----------------------------------------
 .byte   W96
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
 .byte   W60
 .byte   N32 ,Ds5 ,v080 ,gtp3
 .byte   W36
@  #08 @023   ----------------------------------------
 .byte   Gs4
 .byte   W36
 .byte   N68 ,Cs5 ,v080 ,gtp3
 .byte   W60
@  #08 @024   ----------------------------------------
 .byte   W12
 .byte   TIE ,Fs4
 .byte   W84
@  #08 @025   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N32 ,Gs4 ,v080 ,gtp3
 .byte   W36
@  #08 @026   ----------------------------------------
 .byte   Cs4
 .byte   W36
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   W60
@  #08 @027   ----------------------------------------
 .byte   W12
 .byte   TIE ,Bn3
 .byte   W84
@  #08 @028   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N68 ,Gs4 ,v080 ,gtp3
 .byte   W72
@  #08 @029   ----------------------------------------
 .byte   As4
 .byte   W72
 .byte   Bn4
 .byte   W24
@  #08 @030   ----------------------------------------
 .byte   W48
 .byte   TIE ,Cs5
 .byte   W48
@  #08 @031   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N32 ,Bn4 ,v080 ,gtp3
 .byte   W36
@  #08 @032   ----------------------------------------
 .byte   Cs5
 .byte   W36
 .byte   TIE ,Fs5
 .byte   W60
@  #08 @033   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   TIE ,Gs5
 .byte   W48
@  #08 @034   ----------------------------------------
 .byte   W96
@  #08 @035   ----------------------------------------
 .byte   W96
@  #08 @036   ----------------------------------------
 .byte   W96
@  #08 @037   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N11 ,Gs4 ,v090
 .byte   W12
 .byte   Fs3 ,v091
 .byte   W12
 .byte   Gs3 ,v092
 .byte   W12
 .byte   As3 ,v093
 .byte   W12
 .byte   Bn3 ,v094
 .byte   W12
 .byte   Cs4 ,v095
 .byte   W12
@  #08 @038   ----------------------------------------
 .byte   Ds4 ,v096
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4 ,v097
 .byte   W12
 .byte   Gs4 ,v098
 .byte   W12
 .byte   As4 ,v099
 .byte   W12
 .byte   Bn4 ,v100
 .byte   W12
 .byte   Cs4 ,v101
 .byte   W12
 .byte   Ds4 ,v102
 .byte   W12
@  #08 @039   ----------------------------------------
 .byte   En4 ,v103
 .byte   W12
 .byte   Fs4 ,v104
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   As4 ,v105
 .byte   W12
 .byte   Bn4 ,v106
 .byte   W12
 .byte   Cs5 ,v107
 .byte   W12
 .byte   Ds5 ,v108
 .byte   W12
 .byte   En5 ,v109
 .byte   W12
@  #08 @040   ----------------------------------------
 .byte   Fs5 ,v110
 .byte   W12
 .byte   Gs5 ,v111
 .byte   W12
 .byte   Gs5 ,v112
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   En5
 .byte   W12
@  #08 @041   ----------------------------------------
 .byte   Gs4
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N68 ,Gs5 ,v064 ,gtp3
 .byte   W24
@  #08 @042   ----------------------------------------
 .byte   W48
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
@  #08 @043   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   As3
 .byte   W06
@  #08 @044   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #08 @045   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #08 @046   ----------------------------------------
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   As3
 .byte   W06
@  #08 @047   ----------------------------------------
 .byte   Gs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #08 @048   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N02
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   An4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #08 @049   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #08 @050   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #08 @051   ----------------------------------------
 .byte   Fs4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   N03 ,Fs4
 .byte   W04
 .byte   Fs3
 .byte   W04
 .byte   Fs4
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   An4
 .byte   W04
 .byte   An3
 .byte   W04
 .byte   An4
 .byte   W04
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #08 @052   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N03 ,Dn5
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   Cs5
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Cs5
 .byte   W04
 .byte   En5
 .byte   W04
 .byte   En4
 .byte   W04
 .byte   En5
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   Cs5
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Cs5
 .byte   W04
@  #08 @053   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
@  #08 @054   ----------------------------------------
 .byte   Dn5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   N11 ,Cs5
 .byte   W36
 .byte   N44 ,Fs5 ,v096 ,gtp3
 .byte   W48
@  #08 @055   ----------------------------------------
 .byte   N11 ,En5
 .byte   W12
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   N32 ,Bn4 ,v096 ,gtp3
 .byte   W36
 .byte   N05
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #08 @056   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   An4
 .byte   W06
@  #08 @057   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
@  #08 @058   ----------------------------------------
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Gn5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Gn5
 .byte   W06
@  #08 @059   ----------------------------------------
 .byte   TIE ,Ds5 ,v080
 .byte   TIE ,Gs5
 .byte   W96
@  #08 @060   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Ds5 ,v092
 .byte   W72
 .byte   W01
@  #08 @061   ----------------------------------------
 .byte   W96
@  #08 @062   ----------------------------------------
 .byte   W96
@  #08 @063   ----------------------------------------
 .byte   W96
@  #08 @064   ----------------------------------------
 .byte   W96
@  #08 @065   ----------------------------------------
 .byte   W72
 .byte   N05 ,Ds5 ,v064
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
@  #08 @066   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs4
 .byte   W06
@  #08 @067   ----------------------------------------
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
@  #08 @068   ----------------------------------------
 .byte   En5
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
@  #08 @069   ----------------------------------------
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   N11 ,Cs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   As4
 .byte   W60
@  #08 @070   ----------------------------------------
 .byte   W96
@  #08 @071   ----------------------------------------
 .byte   W96
@  #08 @072   ----------------------------------------
 .byte   W96
@  #08 @073   ----------------------------------------
 .byte   W96
@  #08 @074   ----------------------------------------
 .byte   W96
@  #08 @075   ----------------------------------------
 .byte   W96
@  #08 @076   ----------------------------------------
 .byte   W48
 .byte   N02 ,Dn4 ,v112
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   Fs4
 .byte   W03
 .byte   Gn4
 .byte   W03
 .byte   An4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Cn5
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   N56 ,Dn5 ,v112 ,gtp3
 .byte   W24
@  #08 @077   ----------------------------------------
 .byte   W36
 .byte   N11 ,Cn5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N40 ,Bn4 ,v112 ,gtp1
 .byte   W24
@  #08 @078   ----------------------------------------
 .byte   W18
 .byte   N02 ,Dn5
 .byte   W03
 .byte   En5
 .byte   W03
 .byte   TIE ,Fs5
 .byte   W72
@  #08 @079   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   GOTO
  .word Label_01019D92
@  #08 @080   ----------------------------------------
 .byte   W60
 .byte   W96
@  #08 @081   ----------------------------------------
 .byte   W96
@  #08 @082   ----------------------------------------
 .byte   W96
@  #08 @083   ----------------------------------------
 .byte   W96
@  #08 @084   ----------------------------------------
 .byte   W96
@  #08 @085   ----------------------------------------
 .byte   W96
@  #08 @086   ----------------------------------------
 .byte   W96
@  #08 @087   ----------------------------------------
 .byte   W96
@  #08 @088   ----------------------------------------
 .byte   W96
@  #08 @089   ----------------------------------------
 .byte   W96
@  #08 @090   ----------------------------------------
 .byte   W96
@  #08 @091   ----------------------------------------
 .byte   W96
@  #08 @092   ----------------------------------------
 .byte   W96
@  #08 @093   ----------------------------------------
 .byte   W96
@  #08 @094   ----------------------------------------
 .byte   W96
@  #08 @095   ----------------------------------------
 .byte   W96
@  #08 @096   ----------------------------------------
 .byte   W96
@  #08 @097   ----------------------------------------
 .byte   W96
@  #08 @098   ----------------------------------------
 .byte   W96
@  #08 @099   ----------------------------------------
 .byte   W96
@  #08 @100   ----------------------------------------
 .byte   W96
@  #08 @101   ----------------------------------------
 .byte   W96
@  #08 @102   ----------------------------------------
 .byte   N32 ,Ds5 ,v080 ,gtp3
 .byte   W36
 .byte   Gs4
 .byte   W36
 .byte   N68 ,Cs5 ,v080 ,gtp3
 .byte   W24
@  #08 @103   ----------------------------------------
 .byte   W48
 .byte   TIE ,Fs4
 .byte   W48
@  #08 @104   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @105   ----------------------------------------
 .byte   N32 ,Gs4 ,v080 ,gtp3
 .byte   W36
 .byte   Cs4
 .byte   W36
 .byte   N68 ,Fs4 ,v080 ,gtp3
 .byte   W24
@  #08 @106   ----------------------------------------
 .byte   W48
 .byte   TIE ,Bn3
 .byte   W48
@  #08 @107   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N68 ,Gs4 ,v080 ,gtp3
 .byte   W36
@  #08 @108   ----------------------------------------
 .byte   W36
 .byte   As4
 .byte   W60
@  #08 @109   ----------------------------------------
 .byte   W12
 .byte   Bn4
 .byte   W72
 .byte   TIE ,Cs5
 .byte   W12
@  #08 @110   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @111   ----------------------------------------
 .byte   N32 ,Bn4 ,v080 ,gtp3
 .byte   W36
 .byte   Cs5
 .byte   W36
 .byte   TIE ,Fs5
 .byte   W24
@  #08 @112   ----------------------------------------
 .byte   W80
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   TIE ,Gs5
 .byte   W12
@  #08 @113   ----------------------------------------
 .byte   W96
@  #08 @114   ----------------------------------------
 .byte   W96
@  #08 @115   ----------------------------------------
 .byte   W96
@  #08 @116   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11 ,Gs4 ,v090
 .byte   W12
 .byte   Fs3 ,v091
 .byte   W12
 .byte   Gs3 ,v092
 .byte   W12
@  #08 @117   ----------------------------------------
 .byte   As3 ,v093
 .byte   W12
 .byte   Bn3 ,v094
 .byte   W12
 .byte   Cs4 ,v095
 .byte   W12
 .byte   Ds4 ,v096
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4 ,v097
 .byte   W12
 .byte   Gs4 ,v098
 .byte   W12
 .byte   As4 ,v099
 .byte   W12
@  #08 @118   ----------------------------------------
 .byte   Bn4 ,v100
 .byte   W12
 .byte   Cs4 ,v101
 .byte   W12
 .byte   Ds4 ,v102
 .byte   W12
 .byte   En4 ,v103
 .byte   W12
 .byte   Fs4 ,v104
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   As4 ,v105
 .byte   W12
 .byte   Bn4 ,v106
 .byte   W12
@  #08 @119   ----------------------------------------
 .byte   Cs5 ,v107
 .byte   W12
 .byte   Ds5 ,v108
 .byte   W12
 .byte   En5 ,v109
 .byte   W12
 .byte   Fs5 ,v110
 .byte   W12
 .byte   Gs5 ,v111
 .byte   W12
 .byte   Gs5 ,v112
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   As4
 .byte   W12
@  #08 @120   ----------------------------------------
 .byte   Bn4
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Gs4
 .byte   W12
@  #08 @121   ----------------------------------------
 .byte   Ds4
 .byte   W12
 .byte   N68 ,Gs5 ,v064 ,gtp3
 .byte   W72
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #08 @122   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As3
 .byte   W06
@  #08 @123   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
@  #08 @124   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   En4
 .byte   W06
@  #08 @125   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   As3
 .byte   W06
@  #08 @126   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #08 @127   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N02
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   An4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
@  #08 @128   ----------------------------------------
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   En4
 .byte   W06
@  #08 @129   ----------------------------------------
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
@  #08 @130   ----------------------------------------
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   N03 ,Fs4
 .byte   W04
 .byte   Fs3
 .byte   W04
 .byte   Fs4
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   An4
 .byte   W04
 .byte   An3
 .byte   W04
 .byte   An4
 .byte   W04
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
@  #08 @131   ----------------------------------------
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N03 ,Dn5
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   Cs5
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Cs5
 .byte   W04
@  #08 @132   ----------------------------------------
 .byte   En5
 .byte   W04
 .byte   En4
 .byte   W04
 .byte   En5
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   Dn5
 .byte   W04
 .byte   Cs5
 .byte   W04
 .byte   Cs4
 .byte   W04
 .byte   Cs5
 .byte   W04
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Dn4
 .byte   W06
@  #08 @133   ----------------------------------------
 .byte   Dn5
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   N11 ,Cs5
 .byte   W36
 .byte   N44 ,Fs5 ,v096 ,gtp3
 .byte   W12
@  #08 @134   ----------------------------------------
 .byte   W36
 .byte   N11 ,En5
 .byte   W12
 .byte   N05 ,Dn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   N32 ,Bn4 ,v096 ,gtp3
 .byte   W36
@  #08 @135   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   An4
 .byte   W06
@  #08 @136   ----------------------------------------
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cn4
 .byte   W06
@  #08 @137   ----------------------------------------
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Fs5
 .byte   W06
@  #08 @138   ----------------------------------------
 .byte   Gn5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Gn5
 .byte   W06
 .byte   TIE ,Ds5 ,v080
 .byte   TIE ,Gs5
 .byte   W60
@  #08 @139   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   Ds5 ,v092
 .byte   W36
 .byte   W01
@  #08 @140   ----------------------------------------
 .byte   W96
@  #08 @141   ----------------------------------------
 .byte   W96
@  #08 @142   ----------------------------------------
 .byte   W96
@  #08 @143   ----------------------------------------
 .byte   W96
@  #08 @144   ----------------------------------------
 .byte   W96
@  #08 @145   ----------------------------------------
 .byte   W12
 .byte   N05 ,Ds5 ,v064
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #08 @146   ----------------------------------------
 .byte   Bn4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
@  #08 @147   ----------------------------------------
 .byte   Ds5
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Ds4
 .byte   W06
@  #08 @148   ----------------------------------------
 .byte   Bn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   N11 ,Cs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   As4
 .byte   W24
@  #08 @149   ----------------------------------------
 .byte   W96
@  #08 @150   ----------------------------------------
 .byte   W96
@  #08 @151   ----------------------------------------
 .byte   W96
@  #08 @152   ----------------------------------------
 .byte   W96
@  #08 @153   ----------------------------------------
 .byte   W96
@  #08 @154   ----------------------------------------
 .byte   W96
@  #08 @155   ----------------------------------------
 .byte   W84
 .byte   N02 ,Dn4 ,v112
 .byte   W03
 .byte   En4
 .byte   W03
 .byte   Fs4
 .byte   W03
 .byte   Gn4
 .byte   W03
@  #08 @156   ----------------------------------------
 .byte   An4
 .byte   W03
 .byte   Bn4
 .byte   W03
 .byte   Cn5
 .byte   W03
 .byte   Cs5
 .byte   W03
 .byte   N56 ,Dn5 ,v112 ,gtp3
 .byte   W60
 .byte   N11 ,Cn5
 .byte   W12
 .byte   Bn4
 .byte   W12
@  #08 @157   ----------------------------------------
 .byte   An4
 .byte   W12
 .byte   N40 ,Bn4 ,v112 ,gtp1
 .byte   W42
 .byte   N02 ,Dn5
 .byte   W03
 .byte   En5
 .byte   W03
 .byte   TIE ,Fs5
 .byte   W36
@  #08 @158   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   FINE

@**************** Track 9 (Midi-Chn.8) ****************@

.align 2, 0
song06_009:
@  #09 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_0101B7FE:
 .byte   VOICE , 121
 .byte   VOL , 15*song06_mvl/mxv
 .byte   PAN , c_v+32
 .byte   N68 ,Cn1 ,v096 ,gtp3
 .byte   W96
@  #09 @001   ----------------------------------------
 .byte   W96
@  #09 @002   ----------------------------------------
 .byte   W96
@  #09 @003   ----------------------------------------
 .byte   An2 ,v064
 .byte   N68 ,Cn1 ,v096 ,gtp3
 .byte   W96
@  #09 @004   ----------------------------------------
 .byte   W48
 .byte   Cn1
 .byte   W48
@  #09 @005   ----------------------------------------
 .byte   W60
 .byte   N32 ,An2 ,v064 ,gtp3
 .byte   W36
@  #09 @006   ----------------------------------------
 .byte   N68 ,Cn1 ,v096 ,gtp3
 .byte   W96
@  #09 @007   ----------------------------------------
 .byte   W96
@  #09 @008   ----------------------------------------
 .byte   W96
@  #09 @009   ----------------------------------------
 .byte   W96
@  #09 @010   ----------------------------------------
 .byte   W96
@  #09 @011   ----------------------------------------
 .byte   W96
@  #09 @012   ----------------------------------------
 .byte   W96
@  #09 @013   ----------------------------------------
 .byte   W96
@  #09 @014   ----------------------------------------
 .byte   W96
@  #09 @015   ----------------------------------------
 .byte   W96
@  #09 @016   ----------------------------------------
 .byte   W96
@  #09 @017   ----------------------------------------
 .byte   W96
@  #09 @018   ----------------------------------------
 .byte   W96
@  #09 @019   ----------------------------------------
 .byte   W24
 .byte   N23 ,An2 ,v064
 .byte   N23 ,Cn1 ,v096
 .byte   W24
 .byte   An2 ,v064
 .byte   N23 ,Cn1 ,v096
 .byte   W48
@  #09 @020   ----------------------------------------
 .byte   W72
 .byte   An2 ,v064
 .byte   N23 ,Cn1 ,v096
 .byte   W24
@  #09 @021   ----------------------------------------
 .byte   An2 ,v064
 .byte   N23 ,Cn1 ,v096
 .byte   W96
@  #09 @022   ----------------------------------------
 .byte   W96
@  #09 @023   ----------------------------------------
 .byte   W96
@  #09 @024   ----------------------------------------
 .byte   W96
@  #09 @025   ----------------------------------------
 .byte   W96
@  #09 @026   ----------------------------------------
 .byte   W96
@  #09 @027   ----------------------------------------
 .byte   W96
@  #09 @028   ----------------------------------------
 .byte   W96
@  #09 @029   ----------------------------------------
 .byte   W96
@  #09 @030   ----------------------------------------
 .byte   W96
@  #09 @031   ----------------------------------------
 .byte   W96
@  #09 @032   ----------------------------------------
 .byte   W96
@  #09 @033   ----------------------------------------
 .byte   W96
@  #09 @034   ----------------------------------------
 .byte   PATT
  .word Label_01014F69
@  #09 @035   ----------------------------------------
 .byte   N68 ,Cn1 ,v064 ,gtp3
 .byte   W72
 .byte   Cn1
 .byte   W24
@  #09 @036   ----------------------------------------
 .byte   W48
 .byte   Cn1
 .byte   W48
@  #09 @037   ----------------------------------------
 .byte   W24
 .byte   N32 ,Dn1 ,v064 ,gtp3
 .byte   Cn1
 .byte   W36
 .byte   Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W36
@  #09 @038   ----------------------------------------
 .byte   Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W36
 .byte   N23 ,Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W24
 .byte   N11 ,Dn1
 .byte   W12
 .byte   Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W12
 .byte   N11 ,Dn1
 .byte   W12
@  #09 @039   ----------------------------------------
Label_0101B888:
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W12
 .byte   N11 ,Dn1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W12
 .byte   N11 ,Dn1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W12
 .byte   PEND 
@  #09 @040   ----------------------------------------
 .byte   N11 ,Dn1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   TIE ,An2
 .byte   W72
@  #09 @041   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N68 ,Cn1 ,v064 ,gtp3
 .byte   W24
@  #09 @042   ----------------------------------------
 .byte   W48
 .byte   N16 ,Cn1 ,v127
 .byte   W36
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W06
@  #09 @043   ----------------------------------------
 .byte   W12
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   N07
 .byte   W12
 .byte   Cn1
 .byte   W24
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W30
@  #09 @044   ----------------------------------------
 .byte   N16 ,Cn1 ,v127
 .byte   W36
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W18
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   N12
 .byte   W18
 .byte   Cn1
 .byte   W06
@  #09 @045   ----------------------------------------
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v112
 .byte   W18
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   N16
 .byte   W36
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W06
@  #09 @046   ----------------------------------------
 .byte   W12
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   N07
 .byte   W12
 .byte   Cn1
 .byte   W24
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W18
 .byte   N07 ,Cn1 ,v127
 .byte   W12
@  #09 @047   ----------------------------------------
 .byte   Cn1
 .byte   W12
 .byte   Cn1
 .byte   W24
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W18
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N01
 .byte   W03
 .byte   Cn1
 .byte   W03
 .byte   N12
 .byte   W18
 .byte   Cn1
 .byte   W06
@  #09 @048   ----------------------------------------
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v112
 .byte   W30
 .byte   N68 ,An2 ,v064 ,gtp3
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
@  #09 @049   ----------------------------------------
Label_0101B95B:
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   PEND 
@  #09 @050   ----------------------------------------
Label_0101B9BA:
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   PEND 
@  #09 @051   ----------------------------------------
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
@  #09 @052   ----------------------------------------
 .byte   PATT
  .word Label_0101B95B
@  #09 @053   ----------------------------------------
 .byte   PATT
  .word Label_0101B9BA
@  #09 @054   ----------------------------------------
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N02 ,An2 ,v064
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W03
 .byte   N02 ,An2 ,v064
 .byte   W03
 .byte   An2
 .byte   N05 ,Dn1
 .byte   N05 ,Cn1 ,v112
 .byte   W03
 .byte   N02 ,An2 ,v064
 .byte   W48
 .byte   W03
@  #09 @055   ----------------------------------------
 .byte   W96
@  #09 @056   ----------------------------------------
 .byte   W96
@  #09 @057   ----------------------------------------
 .byte   W96
@  #09 @058   ----------------------------------------
 .byte   W96
@  #09 @059   ----------------------------------------
 .byte   W96
@  #09 @060   ----------------------------------------
 .byte   W96
@  #09 @061   ----------------------------------------
 .byte   W96
@  #09 @062   ----------------------------------------
 .byte   W96
@  #09 @063   ----------------------------------------
 .byte   W36
 .byte   An2
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N44 ,Cn1 ,v080 ,gtp3
 .byte   W48
@  #09 @064   ----------------------------------------
 .byte   W96
@  #09 @065   ----------------------------------------
 .byte   W72
 .byte   N32 ,Cn1 ,v080 ,gtp3
 .byte   W24
@  #09 @066   ----------------------------------------
 .byte   W12
 .byte   Cn1
 .byte   W36
 .byte   N44 ,Cn1 ,v080 ,gtp3
 .byte   W48
@  #09 @067   ----------------------------------------
 .byte   W24
 .byte   Cn1
 .byte   W72
@  #09 @068   ----------------------------------------
 .byte   Cn1
 .byte   W72
 .byte   Cn1
 .byte   W24
@  #09 @069   ----------------------------------------
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   N44 ,Cn1 ,v080 ,gtp3
 .byte   W48
@  #09 @070   ----------------------------------------
 .byte   W96
@  #09 @071   ----------------------------------------
 .byte   An2 ,v064
 .byte   N11 ,Dn1
 .byte   N44 ,Cn1 ,v096 ,gtp3
 .byte   W12
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
@  #09 @072   ----------------------------------------
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N32 ,An2 ,v064 ,gtp3
 .byte   N11 ,Dn1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
@  #09 @073   ----------------------------------------
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   N80 ,An2 ,v064 ,gtp3
 .byte   N11 ,Dn1
 .byte   N44 ,Cn1 ,v096 ,gtp3
 .byte   W12
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
@  #09 @074   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   N44 ,An2 ,v064 ,gtp3
 .byte   N11 ,Dn1
 .byte   W12
@  #09 @075   ----------------------------------------
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
@  #09 @076   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N23 ,Cn1 ,v127
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   N11
 .byte   W12
 .byte   Cn1
 .byte   W12
@  #09 @077   ----------------------------------------
 .byte   W72
 .byte   N23
 .byte   W24
@  #09 @078   ----------------------------------------
 .byte   N07
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   N11
 .byte   W12
 .byte   Cn1
 .byte   W60
@  #09 @079   ----------------------------------------
 .byte   W36
 .byte   N68 ,Cn1 ,v096 ,gtp3
 .byte   GOTO
  .word Label_0101B7FE
@  #09 @080   ----------------------------------------
 .byte   W60
 .byte   W96
@  #09 @081   ----------------------------------------
 .byte   W96
@  #09 @082   ----------------------------------------
 .byte   W36
 .byte   An2 ,v064
 .byte   N68 ,Cn1 ,v096 ,gtp3
 .byte   W60
@  #09 @083   ----------------------------------------
 .byte   W84
 .byte   Cn1
 .byte   W12
@  #09 @084   ----------------------------------------
 .byte   W96
@  #09 @085   ----------------------------------------
 .byte   N32 ,An2 ,v064 ,gtp3
 .byte   W36
 .byte   N68 ,Cn1 ,v096 ,gtp3
 .byte   W60
@  #09 @086   ----------------------------------------
 .byte   W96
@  #09 @087   ----------------------------------------
 .byte   W96
@  #09 @088   ----------------------------------------
 .byte   W96
@  #09 @089   ----------------------------------------
 .byte   W96
@  #09 @090   ----------------------------------------
 .byte   W96
@  #09 @091   ----------------------------------------
 .byte   W96
@  #09 @092   ----------------------------------------
 .byte   W96
@  #09 @093   ----------------------------------------
 .byte   W96
@  #09 @094   ----------------------------------------
 .byte   W96
@  #09 @095   ----------------------------------------
 .byte   W96
@  #09 @096   ----------------------------------------
 .byte   W96
@  #09 @097   ----------------------------------------
 .byte   W96
@  #09 @098   ----------------------------------------
 .byte   W60
 .byte   N23 ,An2 ,v064
 .byte   N23 ,Cn1 ,v096
 .byte   W24
 .byte   An2 ,v064
 .byte   N23 ,Cn1 ,v096
 .byte   W12
@  #09 @099   ----------------------------------------
 .byte   W96
@  #09 @100   ----------------------------------------
 .byte   W12
 .byte   An2 ,v064
 .byte   N23 ,Cn1 ,v096
 .byte   W24
 .byte   An2 ,v064
 .byte   N23 ,Cn1 ,v096
 .byte   W60
@  #09 @101   ----------------------------------------
 .byte   W96
@  #09 @102   ----------------------------------------
 .byte   W96
@  #09 @103   ----------------------------------------
 .byte   W96
@  #09 @104   ----------------------------------------
 .byte   W96
@  #09 @105   ----------------------------------------
 .byte   W96
@  #09 @106   ----------------------------------------
 .byte   W96
@  #09 @107   ----------------------------------------
 .byte   W96
@  #09 @108   ----------------------------------------
 .byte   W96
@  #09 @109   ----------------------------------------
 .byte   W96
@  #09 @110   ----------------------------------------
 .byte   W96
@  #09 @111   ----------------------------------------
 .byte   W96
@  #09 @112   ----------------------------------------
 .byte   W96
@  #09 @113   ----------------------------------------
 .byte   PATT
  .word Label_01015101
@  #09 @114   ----------------------------------------
 .byte   W36
 .byte   N68 ,Cn1 ,v064 ,gtp3
 .byte   W60
@  #09 @115   ----------------------------------------
 .byte   W12
 .byte   Cn1
 .byte   W72
 .byte   Cn1
 .byte   W12
@  #09 @116   ----------------------------------------
 .byte   W60
 .byte   N32 ,Dn1 ,v064 ,gtp3
 .byte   Cn1
 .byte   W36
@  #09 @117   ----------------------------------------
 .byte   Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W36
 .byte   Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W36
 .byte   N23 ,Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W24
@  #09 @118   ----------------------------------------
 .byte   PATT
  .word Label_0101B888
@  #09 @119   ----------------------------------------
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   Dn1
 .byte   N32 ,Cn1 ,v064 ,gtp3
 .byte   W12
 .byte   N11 ,Dn1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   TIE ,An2
 .byte   W36
@  #09 @120   ----------------------------------------
 .byte   W96
@  #09 @121   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   N68 ,Cn1 ,v064 ,gtp3
 .byte   W72
 .byte   N16 ,Cn1 ,v127
 .byte   W12
@  #09 @122   ----------------------------------------
Label_0101BC50:
 .byte   W24
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W18
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   N07
 .byte   W12
 .byte   Cn1
 .byte   W24
 .byte   PEND 
@  #09 @123   ----------------------------------------
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W30
 .byte   N16 ,Cn1 ,v127
 .byte   W36
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W18
@  #09 @124   ----------------------------------------
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   N12
 .byte   W18
 .byte   Cn1
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v112
 .byte   W18
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   N16
 .byte   W12
@  #09 @125   ----------------------------------------
 .byte   PATT
  .word Label_0101BC50
@  #09 @126   ----------------------------------------
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W18
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   Cn1
 .byte   W24
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Cn1
 .byte   W18
@  #09 @127   ----------------------------------------
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N01
 .byte   W03
 .byte   Cn1
 .byte   W03
 .byte   N12
 .byte   W18
 .byte   Cn1
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v112
 .byte   W30
 .byte   N68 ,An2 ,v064 ,gtp3
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
@  #09 @128   ----------------------------------------
Label_0101BCBE:
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   PEND 
@  #09 @129   ----------------------------------------
Label_0101BD17:
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   PEND 
@  #09 @130   ----------------------------------------
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
@  #09 @131   ----------------------------------------
 .byte   PATT
  .word Label_0101BCBE
@  #09 @132   ----------------------------------------
 .byte   PATT
  .word Label_0101BD17
@  #09 @133   ----------------------------------------
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N07 ,Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   Dn1 ,v076
 .byte   N07 ,Cn1 ,v127
 .byte   W12
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   Dn1 ,v064
 .byte   N05 ,Cn1 ,v112
 .byte   W06
 .byte   N02 ,An2 ,v064
 .byte   N03 ,Dn1 ,v076
 .byte   N03 ,Cn1 ,v127
 .byte   W03
 .byte   N02 ,An2 ,v064
 .byte   W03
 .byte   An2
 .byte   N05 ,Dn1
 .byte   N05 ,Cn1 ,v112
 .byte   W03
 .byte   N02 ,An2 ,v064
 .byte   W15
@  #09 @134   ----------------------------------------
 .byte   W96
@  #09 @135   ----------------------------------------
 .byte   W96
@  #09 @136   ----------------------------------------
 .byte   W96
@  #09 @137   ----------------------------------------
 .byte   W96
@  #09 @138   ----------------------------------------
 .byte   W96
@  #09 @139   ----------------------------------------
 .byte   W96
@  #09 @140   ----------------------------------------
 .byte   W96
@  #09 @141   ----------------------------------------
 .byte   W96
@  #09 @142   ----------------------------------------
 .byte   W72
 .byte   An2
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N44 ,Cn1 ,v080 ,gtp3
 .byte   W12
@  #09 @143   ----------------------------------------
 .byte   W96
@  #09 @144   ----------------------------------------
 .byte   W96
@  #09 @145   ----------------------------------------
 .byte   W12
 .byte   N32 ,Cn1 ,v080 ,gtp3
 .byte   W36
 .byte   Cn1
 .byte   W36
 .byte   N44 ,Cn1 ,v080 ,gtp3
 .byte   W12
@  #09 @146   ----------------------------------------
 .byte   W60
 .byte   Cn1
 .byte   W36
@  #09 @147   ----------------------------------------
 .byte   W36
 .byte   Cn1
 .byte   W60
@  #09 @148   ----------------------------------------
 .byte   W12
 .byte   Cn1
 .byte   W48
 .byte   N11
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   N44 ,Cn1 ,v080 ,gtp3
 .byte   W12
@  #09 @149   ----------------------------------------
 .byte   W96
@  #09 @150   ----------------------------------------
 .byte   W36
 .byte   An2 ,v064
 .byte   N11 ,Dn1
 .byte   N44 ,Cn1 ,v096 ,gtp3
 .byte   W12
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
@  #09 @151   ----------------------------------------
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N32 ,An2 ,v064 ,gtp3
 .byte   N11 ,Dn1
 .byte   W12
 .byte   Dn1
 .byte   W12
@  #09 @152   ----------------------------------------
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
@  #09 @153   ----------------------------------------
 .byte   N80 ,An2 ,v064 ,gtp3
 .byte   N11 ,Dn1
 .byte   N44 ,Cn1 ,v096 ,gtp3
 .byte   W12
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
@  #09 @154   ----------------------------------------
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   N44 ,An2 ,v064 ,gtp3
 .byte   N11 ,Dn1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
@  #09 @155   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   Dn1
 .byte   W04
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N23 ,Cn1 ,v127
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   Cn1
 .byte   W04
@  #09 @156   ----------------------------------------
 .byte   W04
 .byte   Cn1
 .byte   W08
 .byte   N11
 .byte   W12
 .byte   Cn1
 .byte   W72
@  #09 @157   ----------------------------------------
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   N11
 .byte   W12
 .byte   Cn1
 .byte   W24
@  #09 @158   ----------------------------------------
 .byte   W72
 .byte   FINE

@**************** Track 10 (Midi-Chn.9) ****************@

.align 2, 0
song06_010:
@  #10 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_0101AC06:
 .byte   VOICE , 20
 .byte   VOL , 25*song06_mvl/mxv
 .byte   PAN , c_v+32
 .byte   N68 ,Bn3 ,v080 ,gtp3
 .byte   W72
 .byte   Bn3
 .byte   W24
@  #10 @001   ----------------------------------------
 .byte   W48
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   W36
 .byte   En4
 .byte   W12
@  #10 @002   ----------------------------------------
 .byte   W24
 .byte   Cs4
 .byte   W36
 .byte   Bn3
 .byte   W36
@  #10 @003   ----------------------------------------
 .byte   Dn4
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W36
 .byte   Dn4
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W36
 .byte   N68 ,Cs4 ,v080 ,gtp3
 .byte   W24
@  #10 @004   ----------------------------------------
 .byte   W48
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   W36
 .byte   Bn3
 .byte   W12
@  #10 @005   ----------------------------------------
 .byte   W24
 .byte   N68 ,As3 ,v080 ,gtp3
 .byte   W72
@  #10 @006   ----------------------------------------
Label_0101AC3F:
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   PEND 
@  #10 @007   ----------------------------------------
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
@  #10 @008   ----------------------------------------
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
@  #10 @009   ----------------------------------------
 .byte   PATT
  .word Label_0101AC3F
@  #10 @010   ----------------------------------------
Label_0101ACD5:
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   PEND 
@  #10 @011   ----------------------------------------
 .byte   PATT
  .word Label_0101ACD5
@  #10 @012   ----------------------------------------
 .byte   W24
 .byte   N11 ,Dn4 ,v064
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N32 ,An3 ,v064 ,gtp3
 .byte   W24
@  #10 @013   ----------------------------------------
 .byte   W12
 .byte   Fs3
 .byte   W36
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
@  #10 @014   ----------------------------------------
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W84
@  #10 @015   ----------------------------------------
 .byte   N02 ,Fn4 ,v080
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
@  #10 @016   ----------------------------------------
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
@  #10 @017   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N23 ,Bn3
 .byte   W24
 .byte   N44 ,En3 ,v080 ,gtp3
 .byte   W48
@  #10 @018   ----------------------------------------
 .byte   N23 ,Gs3
 .byte   W24
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   N68 ,En2 ,v080 ,gtp3
 .byte   W48
@  #10 @019   ----------------------------------------
 .byte   W24
 .byte   N03 ,Ds4 ,v096
 .byte   N03 ,Ds3
 .byte   W12
 .byte   Ds4
 .byte   N03 ,Ds3
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
@  #10 @020   ----------------------------------------
 .byte   Cs4
 .byte   N03 ,Cs3
 .byte   W12
 .byte   Cs4
 .byte   N03 ,Cs3
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   As3
 .byte   N03 ,As2
 .byte   W12
 .byte   As3
 .byte   N03 ,As2
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
@  #10 @021   ----------------------------------------
 .byte   En3
 .byte   N03 ,En2
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   Ds3
 .byte   N03 ,Ds2
 .byte   W12
 .byte   As3
 .byte   N03 ,As2
 .byte   W12
 .byte   As3
 .byte   N03 ,As2
 .byte   W12
 .byte   Ds3
 .byte   N03 ,Ds2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
@  #10 @022   ----------------------------------------
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W84
@  #10 @023   ----------------------------------------
 .byte   W96
@  #10 @024   ----------------------------------------
 .byte   W96
@  #10 @025   ----------------------------------------
 .byte   W96
@  #10 @026   ----------------------------------------
 .byte   W96
@  #10 @027   ----------------------------------------
 .byte   W96
@  #10 @028   ----------------------------------------
 .byte   W96
@  #10 @029   ----------------------------------------
 .byte   W96
@  #10 @030   ----------------------------------------
 .byte   W96
@  #10 @031   ----------------------------------------
 .byte   W96
@  #10 @032   ----------------------------------------
 .byte   W96
@  #10 @033   ----------------------------------------
 .byte   W96
@  #10 @034   ----------------------------------------
 .byte   W96
@  #10 @035   ----------------------------------------
 .byte   W96
@  #10 @036   ----------------------------------------
 .byte   W96
@  #10 @037   ----------------------------------------
 .byte   W96
@  #10 @038   ----------------------------------------
 .byte   W96
@  #10 @039   ----------------------------------------
 .byte   W96
@  #10 @040   ----------------------------------------
 .byte   W96
@  #10 @041   ----------------------------------------
 .byte   W96
@  #10 @042   ----------------------------------------
 .byte   W96
@  #10 @043   ----------------------------------------
 .byte   W96
@  #10 @044   ----------------------------------------
 .byte   W96
@  #10 @045   ----------------------------------------
 .byte   W96
@  #10 @046   ----------------------------------------
 .byte   W96
@  #10 @047   ----------------------------------------
 .byte   W96
@  #10 @048   ----------------------------------------
 .byte   W48
 .byte   N23 ,Cs4
 .byte   W24
 .byte   N11 ,Bn3
 .byte   W12
 .byte   N44 ,Fs3 ,v096 ,gtp3
 .byte   W12
@  #10 @049   ----------------------------------------
 .byte   W36
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
@  #10 @050   ----------------------------------------
 .byte   Fs3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
 .byte   N44 ,Fs3 ,v096 ,gtp3
 .byte   W24
@  #10 @051   ----------------------------------------
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   N23 ,Cs4
 .byte   W24
 .byte   N11 ,Bn3
 .byte   W12
 .byte   N44 ,Fs3 ,v096 ,gtp3
 .byte   W12
@  #10 @052   ----------------------------------------
 .byte   W36
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cs4
 .byte   W12
@  #10 @053   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   Bn3
 .byte   W24
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   N32 ,En4 ,v096 ,gtp3
 .byte   W24
@  #10 @054   ----------------------------------------
 .byte   W12
 .byte   Fs4
 .byte   W36
 .byte   Bn2 ,v080
 .byte   W36
 .byte   Cs3
 .byte   W12
@  #10 @055   ----------------------------------------
 .byte   W24
 .byte   Dn3
 .byte   W36
 .byte   Fn3
 .byte   W36
@  #10 @056   ----------------------------------------
 .byte   An3
 .byte   W36
 .byte   An3
 .byte   W36
 .byte   An3
 .byte   W24
@  #10 @057   ----------------------------------------
 .byte   W12
 .byte   Gs3
 .byte   W36
 .byte   Cs3
 .byte   W36
 .byte   N11
 .byte   W12
@  #10 @058   ----------------------------------------
 .byte   Ds3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N11 ,Cs3
 .byte   W12
@  #10 @059   ----------------------------------------
 .byte   N68 ,Ds3 ,v080 ,gtp3
 .byte   W72
 .byte   N32 ,Gn3 ,v080 ,gtp3
 .byte   W24
@  #10 @060   ----------------------------------------
 .byte   W12
 .byte   Gs3
 .byte   W84
@  #10 @061   ----------------------------------------
 .byte   W96
@  #10 @062   ----------------------------------------
 .byte   W96
@  #10 @063   ----------------------------------------
 .byte   W48
 .byte   N11 ,Ds2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   N23 ,Bn2
 .byte   W12
@  #10 @064   ----------------------------------------
 .byte   W12
 .byte   N11 ,Gs2
 .byte   W12
 .byte   N32 ,Fs2 ,v080 ,gtp3
 .byte   W36
 .byte   Cs3
 .byte   W36
@  #10 @065   ----------------------------------------
 .byte   Fs2
 .byte   W36
 .byte   Ds3
 .byte   W36
 .byte   Ds3
 .byte   W24
@  #10 @066   ----------------------------------------
 .byte   W12
 .byte   N17 ,En3
 .byte   W18
 .byte   Fs3
 .byte   W18
 .byte   N32 ,Gs3 ,v080 ,gtp3
 .byte   W36
 .byte   N17 ,As3
 .byte   W12
@  #10 @067   ----------------------------------------
 .byte   W06
 .byte   Bn3
 .byte   W18
 .byte   N32 ,As3 ,v080 ,gtp3
 .byte   W36
 .byte   N17 ,Bn3
 .byte   W18
 .byte   Cs4
 .byte   W18
@  #10 @068   ----------------------------------------
 .byte   N32 ,As3 ,v080 ,gtp3
 .byte   W36
 .byte   Gs3
 .byte   W36
 .byte   Cs3
 .byte   W24
@  #10 @069   ----------------------------------------
 .byte   W12
 .byte   Ds3
 .byte   W36
 .byte   N68 ,Dn3 ,v080 ,gtp3
 .byte   W48
@  #10 @070   ----------------------------------------
 .byte   W96
@  #10 @071   ----------------------------------------
 .byte   W96
@  #10 @072   ----------------------------------------
 .byte   W96
@  #10 @073   ----------------------------------------
 .byte   W96
@  #10 @074   ----------------------------------------
 .byte   W96
@  #10 @075   ----------------------------------------
 .byte   W96
@  #10 @076   ----------------------------------------
 .byte   W48
 .byte   N05 ,Dn3 ,v115
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N80 ,Dn3 ,v096 ,gtp3
 .byte   W12
@  #10 @077   ----------------------------------------
 .byte   W96
@  #10 @078   ----------------------------------------
 .byte   N05 ,Dn3 ,v115
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N92 ,En3 ,v096 ,gtp3
 .byte   W60
@  #10 @079   ----------------------------------------
 .byte   W36
 .byte   N68 ,Bn3 ,v080 ,gtp3
 .byte   GOTO
  .word Label_0101AC06
@  #10 @080   ----------------------------------------
 .byte   W60
 .byte   W12
 .byte   Bn3
 .byte   W72
@  #10 @081   ----------------------------------------
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   W12
 .byte   W24
 .byte   En4
 .byte   W36
 .byte   Cs4
 .byte   W36
@  #10 @082   ----------------------------------------
 .byte   Bn3
 .byte   W36
 .byte   Dn4
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W36
 .byte   Dn4
 .byte   N32 ,En4 ,v080 ,gtp3
 .byte   W24
@  #10 @083   ----------------------------------------
 .byte   W12
 .byte   N68 ,Cs4 ,v080 ,gtp3
 .byte   W72
 .byte   N32 ,Dn4 ,v080 ,gtp3
 .byte   W12
@  #10 @084   ----------------------------------------
 .byte   W24
 .byte   Bn3
 .byte   W36
 .byte   N68 ,As3 ,v080 ,gtp3
 .byte   W36
@  #10 @085   ----------------------------------------
 .byte   W36
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
@  #10 @086   ----------------------------------------
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
@  #10 @087   ----------------------------------------
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
@  #10 @088   ----------------------------------------
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Fs4 ,v076
 .byte   W06
 .byte   N01 ,Fs4 ,v064
 .byte   W06
@  #10 @089   ----------------------------------------
 .byte   Fs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
@  #10 @090   ----------------------------------------
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
@  #10 @091   ----------------------------------------
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N03 ,Gn4 ,v076
 .byte   W06
 .byte   N01 ,Gn4 ,v064
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W30
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W12
@  #10 @092   ----------------------------------------
 .byte   Fs3
 .byte   W12
 .byte   N32 ,An3 ,v064 ,gtp3
 .byte   W36
 .byte   Fs3
 .byte   W36
 .byte   N11 ,Cs4
 .byte   W12
@  #10 @093   ----------------------------------------
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W48
@  #10 @094   ----------------------------------------
 .byte   W36
 .byte   N02 ,Fn4 ,v080
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Dn4
 .byte   W06
@  #10 @095   ----------------------------------------
 .byte   An3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds4
 .byte   W06
@  #10 @096   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N23 ,Bn3
 .byte   W24
 .byte   N44 ,En3 ,v080 ,gtp3
 .byte   W12
@  #10 @097   ----------------------------------------
 .byte   W36
 .byte   N23 ,Gs3
 .byte   W24
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   N68 ,En2 ,v080 ,gtp3
 .byte   W12
@  #10 @098   ----------------------------------------
 .byte   W60
 .byte   N03 ,Ds4 ,v096
 .byte   N03 ,Ds3
 .byte   W12
 .byte   Ds4
 .byte   N03 ,Ds3
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
@  #10 @099   ----------------------------------------
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   Cs4
 .byte   N03 ,Cs3
 .byte   W12
 .byte   Cs4
 .byte   N03 ,Cs3
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   As3
 .byte   N03 ,As2
 .byte   W12
 .byte   As3
 .byte   N03 ,As2
 .byte   W12
@  #10 @100   ----------------------------------------
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   En3
 .byte   N03 ,En2
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W12
 .byte   Ds3
 .byte   N03 ,Ds2
 .byte   W12
 .byte   As3
 .byte   N03 ,As2
 .byte   W12
@  #10 @101   ----------------------------------------
 .byte   As3
 .byte   N03 ,As2
 .byte   W12
 .byte   Ds3
 .byte   N03 ,Ds2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   Bn3
 .byte   N03 ,Bn2
 .byte   W12
 .byte   Gs3
 .byte   N03 ,Gs2
 .byte   W48
@  #10 @102   ----------------------------------------
 .byte   W96
@  #10 @103   ----------------------------------------
 .byte   W96
@  #10 @104   ----------------------------------------
 .byte   W96
@  #10 @105   ----------------------------------------
 .byte   W96
@  #10 @106   ----------------------------------------
 .byte   W96
@  #10 @107   ----------------------------------------
 .byte   W96
@  #10 @108   ----------------------------------------
 .byte   W96
@  #10 @109   ----------------------------------------
 .byte   W96
@  #10 @110   ----------------------------------------
 .byte   W96
@  #10 @111   ----------------------------------------
 .byte   W96
@  #10 @112   ----------------------------------------
 .byte   W96
@  #10 @113   ----------------------------------------
 .byte   W96
@  #10 @114   ----------------------------------------
 .byte   W96
@  #10 @115   ----------------------------------------
 .byte   W96
@  #10 @116   ----------------------------------------
 .byte   W96
@  #10 @117   ----------------------------------------
 .byte   W96
@  #10 @118   ----------------------------------------
 .byte   W96
@  #10 @119   ----------------------------------------
 .byte   W96
@  #10 @120   ----------------------------------------
 .byte   W96
@  #10 @121   ----------------------------------------
 .byte   W96
@  #10 @122   ----------------------------------------
 .byte   W96
@  #10 @123   ----------------------------------------
 .byte   W96
@  #10 @124   ----------------------------------------
 .byte   W96
@  #10 @125   ----------------------------------------
 .byte   W96
@  #10 @126   ----------------------------------------
 .byte   W96
@  #10 @127   ----------------------------------------
 .byte   W84
 .byte   N23 ,Cs4
 .byte   W12
@  #10 @128   ----------------------------------------
 .byte   W12
 .byte   N11 ,Bn3
 .byte   W12
 .byte   N44 ,Fs3 ,v096 ,gtp3
 .byte   W48
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
@  #10 @129   ----------------------------------------
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W24
@  #10 @130   ----------------------------------------
 .byte   N11 ,En3
 .byte   W12
 .byte   N44 ,Fs3 ,v096 ,gtp3
 .byte   W48
 .byte   N11 ,Gn3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   N23 ,Cs4
 .byte   W12
@  #10 @131   ----------------------------------------
 .byte   W12
 .byte   N11 ,Bn3
 .byte   W12
 .byte   N44 ,Fs3 ,v096 ,gtp3
 .byte   W48
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Cs4
 .byte   W12
@  #10 @132   ----------------------------------------
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   Bn3
 .byte   W24
 .byte   N11 ,Cs4
 .byte   W12
@  #10 @133   ----------------------------------------
 .byte   Dn4
 .byte   W12
 .byte   N32 ,En4 ,v096 ,gtp3
 .byte   W36
 .byte   Fs4
 .byte   W36
 .byte   Bn2 ,v080
 .byte   W12
@  #10 @134   ----------------------------------------
 .byte   W24
 .byte   Cs3
 .byte   W36
 .byte   Dn3
 .byte   W36
@  #10 @135   ----------------------------------------
 .byte   Fn3
 .byte   W36
 .byte   An3
 .byte   W36
 .byte   An3
 .byte   W24
@  #10 @136   ----------------------------------------
 .byte   W12
 .byte   An3
 .byte   W36
 .byte   Gs3
 .byte   W36
 .byte   Cs3
 .byte   W12
@  #10 @137   ----------------------------------------
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N11 ,En3
 .byte   W12
@  #10 @138   ----------------------------------------
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N11 ,Cs3
 .byte   W12
 .byte   N68 ,Ds3 ,v080 ,gtp3
 .byte   W60
@  #10 @139   ----------------------------------------
 .byte   W12
 .byte   N32 ,Gn3 ,v080 ,gtp3
 .byte   W36
 .byte   Gs3
 .byte   W48
@  #10 @140   ----------------------------------------
 .byte   W96
@  #10 @141   ----------------------------------------
 .byte   W96
@  #10 @142   ----------------------------------------
 .byte   W84
 .byte   N11 ,Ds2
 .byte   W12
@  #10 @143   ----------------------------------------
 .byte   Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N11 ,Gs2
 .byte   W12
 .byte   N32 ,Fs2 ,v080 ,gtp3
 .byte   W36
@  #10 @144   ----------------------------------------
 .byte   Cs3
 .byte   W36
 .byte   Fs2
 .byte   W36
 .byte   Ds3
 .byte   W24
@  #10 @145   ----------------------------------------
 .byte   W12
 .byte   Ds3
 .byte   W36
 .byte   N17 ,En3
 .byte   W18
 .byte   Fs3
 .byte   W18
 .byte   N32 ,Gs3 ,v080 ,gtp3
 .byte   W12
@  #10 @146   ----------------------------------------
 .byte   W24
 .byte   N17 ,As3
 .byte   W18
 .byte   Bn3
 .byte   W18
 .byte   N32 ,As3 ,v080 ,gtp3
 .byte   W36
@  #10 @147   ----------------------------------------
 .byte   N17 ,Bn3
 .byte   W18
 .byte   Cs4
 .byte   W18
 .byte   N32 ,As3 ,v080 ,gtp3
 .byte   W36
 .byte   Gs3
 .byte   W24
@  #10 @148   ----------------------------------------
 .byte   W12
 .byte   Cs3
 .byte   W36
 .byte   Ds3
 .byte   W36
 .byte   N68 ,Dn3 ,v080 ,gtp3
 .byte   W12
@  #10 @149   ----------------------------------------
 .byte   W96
@  #10 @150   ----------------------------------------
 .byte   W96
@  #10 @151   ----------------------------------------
 .byte   W96
@  #10 @152   ----------------------------------------
 .byte   W96
@  #10 @153   ----------------------------------------
 .byte   W96
@  #10 @154   ----------------------------------------
 .byte   W96
@  #10 @155   ----------------------------------------
 .byte   W84
 .byte   N05 ,Dn3 ,v115
 .byte   W08
 .byte   Dn3
 .byte   W04
@  #10 @156   ----------------------------------------
 .byte   W04
 .byte   Dn3
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N80 ,Dn3 ,v096 ,gtp3
 .byte   W72
@  #10 @157   ----------------------------------------
 .byte   W36
 .byte   N05 ,Dn3 ,v115
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N92 ,En3 ,v096 ,gtp3
 .byte   W24
@  #10 @158   ----------------------------------------
 .byte   W72
 .byte   FINE

@**************** Track 11 (Midi-Chn.10) ****************@

.align 2, 0
song06_011:
@  #11 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
Label_0101A4D6:
 .byte   VOICE , 20
 .byte   VOL , 25*song06_mvl/mxv
 .byte   W96
@  #11 @001   ----------------------------------------
 .byte   W96
@  #11 @002   ----------------------------------------
 .byte   W96
@  #11 @003   ----------------------------------------
 .byte   N32 ,Fs3 ,v080 ,gtp3
 .byte   W36
 .byte   N68 ,Gn3 ,v080 ,gtp3
 .byte   W60
@  #11 @004   ----------------------------------------
 .byte   W12
 .byte   N32 ,Gn3 ,v080 ,gtp3
 .byte   W36
 .byte   An3
 .byte   W36
 .byte   Gn3
 .byte   W12
@  #11 @005   ----------------------------------------
 .byte   W24
 .byte   Fs3
 .byte   W36
 .byte   En3
 .byte   W36
@  #11 @006   ----------------------------------------
 .byte   N68 ,Bn1 ,v049 ,gtp3
 .byte   W72
 .byte   Bn1
 .byte   W24
@  #11 @007   ----------------------------------------
 .byte   W48
 .byte   Bn1
 .byte   W48
@  #11 @008   ----------------------------------------
 .byte   W24
 .byte   Bn1
 .byte   W72
@  #11 @009   ----------------------------------------
 .byte   N56 ,Bn1 ,v049 ,gtp3
 .byte   W60
 .byte   N05
 .byte   W06
 .byte   An1 ,v056
 .byte   W06
 .byte   N68 ,Gn1 ,v064 ,gtp3
 .byte   W24
@  #11 @010   ----------------------------------------
 .byte   W48
 .byte   An1
 .byte   W48
@  #11 @011   ----------------------------------------
 .byte   W24
 .byte   Fs1
 .byte   W72
@  #11 @012   ----------------------------------------
 .byte   W96
@  #11 @013   ----------------------------------------
 .byte   W96
@  #11 @014   ----------------------------------------
 .byte   W96
@  #11 @015   ----------------------------------------
 .byte   Dn3
 .byte   W72
 .byte   Cn3
 .byte   W24
@  #11 @016   ----------------------------------------
 .byte   W48
 .byte   Ds3
 .byte   W48
@  #11 @017   ----------------------------------------
 .byte   W24
 .byte   TIE ,En1
 .byte   W72
@  #11 @018   ----------------------------------------
 .byte   W96
@  #11 @019   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   TIE ,Gs1
 .byte   W72
@  #11 @020   ----------------------------------------
 .byte   W96
@  #11 @021   ----------------------------------------
 .byte   W96
@  #11 @022   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N05 ,Gs1 ,v080
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
@  #11 @023   ----------------------------------------
Label_0101A540:
 .byte   N05 ,Gs1 ,v080
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   PEND 
@  #11 @024   ----------------------------------------
 .byte   PATT
  .word Label_0101A540
@  #11 @025   ----------------------------------------
 .byte   N05 ,Gs1 ,v080
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
@  #11 @026   ----------------------------------------
Label_0101A56A:
 .byte   N05 ,En1 ,v080
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   PEND 
@  #11 @027   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @028   ----------------------------------------
 .byte   N05 ,En1 ,v080
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
@  #11 @029   ----------------------------------------
Label_0101A594:
 .byte   N05 ,Fs1 ,v080
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   PEND 
@  #11 @030   ----------------------------------------
 .byte   PATT
  .word Label_0101A594
@  #11 @031   ----------------------------------------
 .byte   N05 ,Fs1 ,v080
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
@  #11 @032   ----------------------------------------
Label_0101A5BE:
 .byte   N05 ,Ds1 ,v080
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   PEND 
@  #11 @033   ----------------------------------------
 .byte   PATT
  .word Label_0101A5BE
@  #11 @034   ----------------------------------------
 .byte   N05 ,Ds1 ,v080
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
@  #11 @035   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @036   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @037   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @038   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @039   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @040   ----------------------------------------
 .byte   N05 ,En1 ,v080
 .byte   W12
 .byte   En1
 .byte   W84
@  #11 @041   ----------------------------------------
 .byte   W72
 .byte   N68 ,En1 ,v080 ,gtp3
 .byte   W24
@  #11 @042   ----------------------------------------
Label_0101A60D:
 .byte   W48
 .byte   N23 ,As3 ,v096
 .byte   W24
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N32 ,Ds3 ,v096 ,gtp3
 .byte   W12
 .byte   PEND 
@  #11 @043   ----------------------------------------
Label_0101A61B:
 .byte   W36
 .byte   N11 ,As3 ,v096
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #11 @044   ----------------------------------------
Label_0101A629:
 .byte   N11 ,Ds3 ,v096
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N11 ,Cs3
 .byte   W12
 .byte   N68 ,Ds3 ,v096 ,gtp3
 .byte   W24
 .byte   PEND 
@  #11 @045   ----------------------------------------
 .byte   PATT
  .word Label_0101A60D
@  #11 @046   ----------------------------------------
 .byte   PATT
  .word Label_0101A61B
@  #11 @047   ----------------------------------------
 .byte   PATT
  .word Label_0101A629
@  #11 @048   ----------------------------------------
 .byte   W48
 .byte   N68 ,Gn0 ,v096 ,gtp3
 .byte   W48
@  #11 @049   ----------------------------------------
 .byte   W24
 .byte   An0
 .byte   W72
@  #11 @050   ----------------------------------------
 .byte   Bn0
 .byte   W72
 .byte   Dn1
 .byte   W24
@  #11 @051   ----------------------------------------
 .byte   W48
 .byte   En0
 .byte   W48
@  #11 @052   ----------------------------------------
 .byte   W24
 .byte   Fs0
 .byte   W72
@  #11 @053   ----------------------------------------
 .byte   Gn0
 .byte   W72
 .byte   Gn0
 .byte   W24
@  #11 @054   ----------------------------------------
 .byte   W48
 .byte   N32 ,Bn1 ,v080 ,gtp3
 .byte   W36
 .byte   Cs2
 .byte   W12
@  #11 @055   ----------------------------------------
 .byte   W24
 .byte   Dn2
 .byte   W36
 .byte   Fn2
 .byte   W36
@  #11 @056   ----------------------------------------
 .byte   Fs2
 .byte   W36
 .byte   Cs3
 .byte   W36
 .byte   Fs2
 .byte   W24
@  #11 @057   ----------------------------------------
 .byte   W12
 .byte   Gs2
 .byte   W36
 .byte   Gs2
 .byte   W36
 .byte   Fs2
 .byte   W12
@  #11 @058   ----------------------------------------
 .byte   W24
 .byte   Fs2
 .byte   W36
 .byte   Gn2
 .byte   W36
@  #11 @059   ----------------------------------------
 .byte   TIE ,Bn2
 .byte   W96
@  #11 @060   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11 ,Cs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   N32 ,En2 ,v080 ,gtp3
 .byte   W12
@  #11 @061   ----------------------------------------
 .byte   W24
 .byte   N11 ,Ds1
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   N32 ,Fs2 ,v080 ,gtp3
 .byte   W36
@  #11 @062   ----------------------------------------
 .byte   N11 ,En1
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   N32 ,Gs2 ,v080 ,gtp3
 .byte   W36
 .byte   N11 ,Fs1
 .byte   W12
 .byte   Cs2
 .byte   W12
@  #11 @063   ----------------------------------------
 .byte   Fs2
 .byte   W12
 .byte   N32 ,As2 ,v080 ,gtp3
 .byte   W36
 .byte   N02 ,Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
@  #11 @064   ----------------------------------------
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
@  #11 @065   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
@  #11 @066   ----------------------------------------
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
@  #11 @067   ----------------------------------------
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
@  #11 @068   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
@  #11 @069   ----------------------------------------
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   N23 ,Dn2
 .byte   W24
 .byte   N11 ,Cs2
 .byte   W12
 .byte   Bn1
 .byte   W12
@  #11 @070   ----------------------------------------
 .byte   An1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   N32 ,Gs1 ,v080 ,gtp3
 .byte   W36
 .byte   Gn1
 .byte   W36
@  #11 @071   ----------------------------------------
 .byte   TIE ,En2
 .byte   W96
@  #11 @072   ----------------------------------------
 .byte   W96
@  #11 @073   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   TIE ,Bn1
 .byte   W36
@  #11 @074   ----------------------------------------
 .byte   W96
@  #11 @075   ----------------------------------------
 .byte   W96
@  #11 @076   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W24
 .byte   W01
 .byte   N05 ,Bn2 ,v115
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N80 ,Cn3 ,v096 ,gtp3
 .byte   W12
@  #11 @077   ----------------------------------------
 .byte   W96
@  #11 @078   ----------------------------------------
 .byte   N05 ,Bn2 ,v115
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N92 ,Dn3 ,v096 ,gtp3
 .byte   W60
@  #11 @079   ----------------------------------------
 .byte   W36
 .byte   GOTO
  .word Label_0101A4D6
@  #11 @080   ----------------------------------------
 .byte   W60
 .byte   W96
@  #11 @081   ----------------------------------------
 .byte   W96
@  #11 @082   ----------------------------------------
 .byte   W36
 .byte   N32 ,Fs3 ,v080 ,gtp3
 .byte   W36
 .byte   N68 ,Gn3 ,v080 ,gtp3
 .byte   W24
@  #11 @083   ----------------------------------------
 .byte   W48
 .byte   N32 ,Gn3 ,v080 ,gtp3
 .byte   W36
 .byte   An3
 .byte   W12
@  #11 @084   ----------------------------------------
 .byte   W24
 .byte   Gn3
 .byte   W36
 .byte   Fs3
 .byte   W36
@  #11 @085   ----------------------------------------
 .byte   En3
 .byte   W36
 .byte   N68 ,Bn1 ,v049 ,gtp3
 .byte   W60
@  #11 @086   ----------------------------------------
 .byte   W12
 .byte   Bn1
 .byte   W72
 .byte   Bn1
 .byte   W12
@  #11 @087   ----------------------------------------
 .byte   W60
 .byte   Bn1
 .byte   W36
@  #11 @088   ----------------------------------------
 .byte   W36
 .byte   N56 ,Bn1 ,v049 ,gtp3
 .byte   W60
@  #11 @089   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   An1 ,v056
 .byte   W06
 .byte   N68 ,Gn1 ,v064 ,gtp3
 .byte   W72
 .byte   An1
 .byte   W12
@  #11 @090   ----------------------------------------
 .byte   W60
 .byte   Fs1
 .byte   W36
@  #11 @091   ----------------------------------------
 .byte   W96
@  #11 @092   ----------------------------------------
 .byte   W96
@  #11 @093   ----------------------------------------
 .byte   W96
@  #11 @094   ----------------------------------------
 .byte   W36
 .byte   Dn3
 .byte   W60
@  #11 @095   ----------------------------------------
 .byte   W12
 .byte   Cn3
 .byte   W72
 .byte   Ds3
 .byte   W12
@  #11 @096   ----------------------------------------
 .byte   W60
 .byte   TIE ,En1
 .byte   W36
@  #11 @097   ----------------------------------------
 .byte   W96
@  #11 @098   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   TIE ,Gs1
 .byte   W36
@  #11 @099   ----------------------------------------
 .byte   W96
@  #11 @100   ----------------------------------------
 .byte   W96
@  #11 @101   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N05 ,Gs1 ,v080
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
@  #11 @102   ----------------------------------------
 .byte   PATT
  .word Label_0101A540
@  #11 @103   ----------------------------------------
 .byte   PATT
  .word Label_0101A540
@  #11 @104   ----------------------------------------
 .byte   N05 ,Gs1 ,v080
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
@  #11 @105   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @106   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @107   ----------------------------------------
 .byte   N05 ,En1 ,v080
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
@  #11 @108   ----------------------------------------
 .byte   PATT
  .word Label_0101A594
@  #11 @109   ----------------------------------------
 .byte   PATT
  .word Label_0101A594
@  #11 @110   ----------------------------------------
 .byte   N05 ,Fs1 ,v080
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
@  #11 @111   ----------------------------------------
 .byte   PATT
  .word Label_0101A5BE
@  #11 @112   ----------------------------------------
 .byte   PATT
  .word Label_0101A5BE
@  #11 @113   ----------------------------------------
 .byte   N05 ,Ds1 ,v080
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
@  #11 @114   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @115   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @116   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @117   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @118   ----------------------------------------
 .byte   PATT
  .word Label_0101A56A
@  #11 @119   ----------------------------------------
 .byte   N05 ,En1 ,v080
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En1
 .byte   W48
@  #11 @120   ----------------------------------------
 .byte   W96
@  #11 @121   ----------------------------------------
 .byte   W12
 .byte   N68 ,En1 ,v080 ,gtp3
 .byte   W72
 .byte   N23 ,As3 ,v096
 .byte   W12
@  #11 @122   ----------------------------------------
Label_0101A8C8:
 .byte   W12
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   N32 ,Ds3 ,v096 ,gtp3
 .byte   W48
 .byte   N11 ,As3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
@  #11 @123   ----------------------------------------
Label_0101A8D8:
 .byte   N23 ,Ds3 ,v096
 .byte   W24
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W24
 .byte   PEND 
@  #11 @124   ----------------------------------------
 .byte   N11 ,Cs3
 .byte   W12
 .byte   N68 ,Ds3 ,v096 ,gtp3
 .byte   W72
 .byte   N23 ,As3
 .byte   W12
@  #11 @125   ----------------------------------------
 .byte   PATT
  .word Label_0101A8C8
@  #11 @126   ----------------------------------------
 .byte   PATT
  .word Label_0101A8D8
@  #11 @127   ----------------------------------------
 .byte   N11 ,Cs3 ,v096
 .byte   W12
 .byte   N68 ,Ds3 ,v096 ,gtp3
 .byte   W72
 .byte   Gn0
 .byte   W12
@  #11 @128   ----------------------------------------
 .byte   W60
 .byte   An0
 .byte   W36
@  #11 @129   ----------------------------------------
 .byte   W36
 .byte   Bn0
 .byte   W60
@  #11 @130   ----------------------------------------
 .byte   W12
 .byte   Dn1
 .byte   W72
 .byte   En0
 .byte   W12
@  #11 @131   ----------------------------------------
 .byte   W60
 .byte   Fs0
 .byte   W36
@  #11 @132   ----------------------------------------
 .byte   W36
 .byte   Gn0
 .byte   W60
@  #11 @133   ----------------------------------------
 .byte   W12
 .byte   Gn0
 .byte   W72
 .byte   N32 ,Bn1 ,v080 ,gtp3
 .byte   W12
@  #11 @134   ----------------------------------------
 .byte   W24
 .byte   Cs2
 .byte   W36
 .byte   Dn2
 .byte   W36
@  #11 @135   ----------------------------------------
 .byte   Fn2
 .byte   W36
 .byte   Fs2
 .byte   W36
 .byte   Cs3
 .byte   W24
@  #11 @136   ----------------------------------------
 .byte   W12
 .byte   Fs2
 .byte   W36
 .byte   Gs2
 .byte   W36
 .byte   Gs2
 .byte   W12
@  #11 @137   ----------------------------------------
 .byte   W24
 .byte   Fs2
 .byte   W36
 .byte   Fs2
 .byte   W36
@  #11 @138   ----------------------------------------
 .byte   Gn2
 .byte   W36
 .byte   TIE ,Bn2
 .byte   W60
@  #11 @139   ----------------------------------------
 .byte   W80
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11 ,Cs1
 .byte   W12
@  #11 @140   ----------------------------------------
 .byte   Gs1
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   N32 ,En2 ,v080 ,gtp3
 .byte   W36
 .byte   N11 ,Ds1
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Ds2
 .byte   W12
@  #11 @141   ----------------------------------------
 .byte   N32 ,Fs2 ,v080 ,gtp3
 .byte   W36
 .byte   N11 ,En1
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   N32 ,Gs2 ,v080 ,gtp3
 .byte   W24
@  #11 @142   ----------------------------------------
 .byte   W12
 .byte   N11 ,Fs1
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   N32 ,As2 ,v080 ,gtp3
 .byte   W36
 .byte   N02 ,Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
@  #11 @143   ----------------------------------------
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
@  #11 @144   ----------------------------------------
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #11 @145   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
@  #11 @146   ----------------------------------------
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
@  #11 @147   ----------------------------------------
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #11 @148   ----------------------------------------
 .byte   Bn1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   N23 ,Dn2
 .byte   W12
@  #11 @149   ----------------------------------------
 .byte   W12
 .byte   N11 ,Cs2
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   An1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   N32 ,Gs1 ,v080 ,gtp3
 .byte   W36
@  #11 @150   ----------------------------------------
 .byte   Gn1
 .byte   W36
 .byte   TIE ,En2
 .byte   W60
@  #11 @151   ----------------------------------------
 .byte   W96
@  #11 @152   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @153   ----------------------------------------
 .byte   TIE ,Bn1
 .byte   W96
@  #11 @154   ----------------------------------------
 .byte   W96
@  #11 @155   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W24
 .byte   W01
 .byte   N05 ,Bn2 ,v115
 .byte   W08
 .byte   Bn2
 .byte   W04
@  #11 @156   ----------------------------------------
 .byte   W04
 .byte   Bn2
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N80 ,Cn3 ,v096 ,gtp3
 .byte   W72
@  #11 @157   ----------------------------------------
 .byte   W36
 .byte   N05 ,Bn2 ,v115
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   N07
 .byte   W12
 .byte   N92 ,Dn3 ,v096 ,gtp3
 .byte   W24
@  #11 @158   ----------------------------------------
 .byte   W72
 .byte   FINE

@******************************************************@
	.align	2

Song_AFuneralOfFlowers:
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
