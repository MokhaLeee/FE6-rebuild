	.include "MPlayDef.s"

	.equ	song07_grp, AllInstrument
	.equ	song07_pri, 0
	.equ	song07_rev, 0
	.equ	song07_mvl, 127
	.equ	song07_key, 0
	.equ	song07_tbs, 1
	.equ	song07_exg, 0
	.equ	song07_cmp, 1

	.section .content_data
	.global	Song_ShatteringStar_MrGreen3339_SurfingKyogre
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

.align 2, 0
song07_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   TEMPO , 80*song07_tbs/2
 .byte   VOICE , 40
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-15
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-21
 .byte   N16 ,Cs3 ,v096
 .byte   W96
@  #01 @001   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #01 @002   ----------------------------------------
 .byte   N16
 .byte   W96
@  #01 @003   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #01 @004   ----------------------------------------
 .byte   N16
 .byte   W96
@  #01 @005   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #01 @006   ----------------------------------------
 .byte   TEMPO , 150*song07_tbs/2
 .byte   TIE ,Cs3 ,v080
 .byte   W96
@  #01 @007   ----------------------------------------
 .byte   W96
@  #01 @008   ----------------------------------------
 .byte   W96
@  #01 @009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #01 @010   ----------------------------------------
 .byte   W96
@  #01 @011   ----------------------------------------
 .byte   W96
@  #01 @012   ----------------------------------------
Label_0101156D:
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
 .byte   TIE ,Cs3 ,v064
 .byte   W96
@  #01 @023   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #01 @024   ----------------------------------------
Label_0101157F:
 .byte   W16
 .byte   N23 ,Fs3 ,v064
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N15 ,An3
 .byte   W16
 .byte   N16 ,Gs3
 .byte   W16
 .byte   Fs3
 .byte   W16
 .byte   PEND 
@  #01 @025   ----------------------------------------
Label_0101158F:
 .byte   N30 ,En3 ,v064
 .byte   W32
 .byte   N32 ,Dn3
 .byte   W32
 .byte   N15 ,An2
 .byte   W16
 .byte   N16 ,Bn2
 .byte   W16
 .byte   PEND 
@  #01 @026   ----------------------------------------
 .byte   TIE ,Cs3
 .byte   W96
@  #01 @027   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N23
 .byte   W24
@  #01 @028   ----------------------------------------
 .byte   N44 ,Dn3
 .byte   W48
 .byte   N48 ,Bn2
 .byte   W48
@  #01 @029   ----------------------------------------
 .byte   En2
 .byte   W48
 .byte   En3
 .byte   W48
@  #01 @030   ----------------------------------------
 .byte   N15 ,Dn3
 .byte   W16
 .byte   N16 ,Cs3
 .byte   W16
 .byte   Bn2
 .byte   W16
 .byte   N92 ,An2
 .byte   W48
@  #01 @031   ----------------------------------------
 .byte   W48
 .byte   N15 ,Fs2
 .byte   W16
 .byte   N16 ,An2
 .byte   W16
 .byte   Cs3
 .byte   W16
@  #01 @032   ----------------------------------------
 .byte   N68 ,Fs3
 .byte   W72
 .byte   N23
 .byte   W24
@  #01 @033   ----------------------------------------
 .byte   N44 ,Gs3
 .byte   W48
 .byte   N48 ,Ds3
 .byte   W48
@  #01 @034   ----------------------------------------
 .byte   N92 ,Fs3
 .byte   W96
@  #01 @035   ----------------------------------------
 .byte   N96 ,Fn3
 .byte   W96
@  #01 @036   ----------------------------------------
 .byte   W96
@  #01 @037   ----------------------------------------
 .byte   W96
@  #01 @038   ----------------------------------------
 .byte   W96
@  #01 @039   ----------------------------------------
 .byte   TIE ,Cs3
 .byte   W96
@  #01 @040   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #01 @041   ----------------------------------------
 .byte   PATT
  .word Label_0101157F
@  #01 @042   ----------------------------------------
 .byte   PATT
  .word Label_0101158F
@  #01 @043   ----------------------------------------
 .byte   TIE ,Cs3 ,v064
 .byte   W96
@  #01 @044   ----------------------------------------
 .byte   W60
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N15 ,An2
 .byte   W16
 .byte   N16 ,Cs3
 .byte   W16
@  #01 @045   ----------------------------------------
 .byte   N60 ,Dn3
 .byte   W64
 .byte   N15 ,En3
 .byte   W16
 .byte   N16 ,Fs3
 .byte   W16
@  #01 @046   ----------------------------------------
 .byte   N68 ,Gs3
 .byte   W72
 .byte   N23 ,Bn2
 .byte   W24
@  #01 @047   ----------------------------------------
 .byte   N60 ,Cs3
 .byte   W64
 .byte   N15 ,Dn3
 .byte   W16
 .byte   N16 ,En3
 .byte   W16
@  #01 @048   ----------------------------------------
 .byte   N44 ,Fs3
 .byte   W48
 .byte   N48 ,En3
 .byte   W48
@  #01 @049   ----------------------------------------
 .byte   TIE ,Fs3 ,v096
 .byte   W96
@  #01 @050   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #01 @051   ----------------------------------------
 .byte   N92
 .byte   W96
@  #01 @052   ----------------------------------------
 .byte   N96 ,An3
 .byte   W96
@  #01 @053   ----------------------------------------
 .byte   Gn3
 .byte   W96
@  #01 @054   ----------------------------------------
 .byte   Fs3
 .byte   W96
@  #01 @055   ----------------------------------------
 .byte   En3
 .byte   W96
@  #01 @056   ----------------------------------------
 .byte   Dn3
 .byte   W96
@  #01 @057   ----------------------------------------
Label_0101162A:
 .byte   N07 ,Cs3 ,v096
 .byte   W16
 .byte   N01
 .byte   N01 ,Dn3
 .byte   W01
 .byte   Ds3
 .byte   N01 ,En3
 .byte   W01
 .byte   Fn3
 .byte   W01
 .byte   Fs3
 .byte   N01 ,Gn3
 .byte   W01
 .byte   Gs3
 .byte   W01
 .byte   An3
 .byte   N01 ,As3
 .byte   W01
 .byte   Bn3
 .byte   W01
 .byte   Cn4
 .byte   W01
 .byte   N07 ,Cs4 ,v116
 .byte   W48
 .byte   N16 ,Cs3 ,v096
 .byte   W16
 .byte   N01
 .byte   N01 ,Dn3
 .byte   W01
 .byte   Ds3
 .byte   N01 ,En3
 .byte   W01
 .byte   Fn3
 .byte   W01
 .byte   Fs3
 .byte   N01 ,Gn3
 .byte   W01
 .byte   Gs3
 .byte   W01
 .byte   An3
 .byte   N01 ,As3
 .byte   W01
 .byte   Bn3
 .byte   W01
 .byte   Cn4
 .byte   W01
 .byte   PEND 
@  #01 @058   ----------------------------------------
Label_01011667:
 .byte   N07 ,Cs4 ,v116
 .byte   W48
 .byte   N23 ,Dn3 ,v096
 .byte   W24
 .byte   N24 ,En3
 .byte   W24
 .byte   PEND 
@  #01 @059   ----------------------------------------
 .byte   PATT
  .word Label_0101162A
@  #01 @060   ----------------------------------------
Label_01011678:
 .byte   N07 ,Cs4 ,v116
 .byte   W48
 .byte   N23 ,En3 ,v096
 .byte   W24
 .byte   N24 ,Dn3
 .byte   W24
 .byte   PEND 
@  #01 @061   ----------------------------------------
 .byte   PATT
  .word Label_0101162A
@  #01 @062   ----------------------------------------
 .byte   PATT
  .word Label_01011667
@  #01 @063   ----------------------------------------
 .byte   PATT
  .word Label_0101162A
@  #01 @064   ----------------------------------------
 .byte   PATT
  .word Label_01011678
@  #01 @065   ----------------------------------------
 .byte   N32 ,Cs3 ,v096
 .byte   W96
@  #01 @066   ----------------------------------------
 .byte   W96
@  #01 @067   ----------------------------------------
 .byte   W24
 .byte   N68 ,Fs2
 .byte   W72
@  #01 @068   ----------------------------------------
 .byte   N44 ,Bn2
 .byte   W48
 .byte   N48 ,An2
 .byte   W48
@  #01 @069   ----------------------------------------
 .byte   N92 ,Fs2
 .byte   W96
@  #01 @070   ----------------------------------------
 .byte   N44 ,Gs2
 .byte   W48
 .byte   N48 ,Bn2
 .byte   W48
@  #01 @071   ----------------------------------------
 .byte   N23 ,An2
 .byte   W24
 .byte   N24 ,Fs2
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Dn3
 .byte   W24
@  #01 @072   ----------------------------------------
 .byte   Cs3
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   Bn2
 .byte   W24
@  #01 @073   ----------------------------------------
 .byte   TIE ,As2 ,v064
 .byte   W96
@  #01 @074   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #01 @075   ----------------------------------------
 .byte   W96
@  #01 @076   ----------------------------------------
 .byte   W96
@  #01 @077   ----------------------------------------
 .byte   W96
@  #01 @078   ----------------------------------------
 .byte   W96
@  #01 @079   ----------------------------------------
 .byte   W96
@  #01 @080   ----------------------------------------
 .byte   W96
@  #01 @081   ----------------------------------------
 .byte   W96
@  #01 @082   ----------------------------------------
 .byte   W96
@  #01 @083   ----------------------------------------
 .byte   W96
@  #01 @084   ----------------------------------------
 .byte   W96
@  #01 @085   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #01 @093   ----------------------------------------
 .byte   W96
@  #01 @094   ----------------------------------------
 .byte   W96
@  #01 @095   ----------------------------------------
 .byte   W96
@  #01 @096   ----------------------------------------
 .byte   W96
@  #01 @097   ----------------------------------------
 .byte   W96
@  #01 @098   ----------------------------------------
 .byte   W96
@  #01 @099   ----------------------------------------
 .byte   W96
@  #01 @100   ----------------------------------------
 .byte   W96
@  #01 @101   ----------------------------------------
 .byte   N44 ,Fn2
 .byte   W48
 .byte   N48 ,Gn2
 .byte   W48
@  #01 @102   ----------------------------------------
 .byte   An2
 .byte   W48
 .byte   Dn2
 .byte   W48
@  #01 @103   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N48 ,En2
 .byte   W48
@  #01 @104   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N44
 .byte   W48
@  #01 @105   ----------------------------------------
 .byte   N92 ,Fn2 ,v080
 .byte   W96
@  #01 @106   ----------------------------------------
 .byte   N23 ,Dn2 ,v096
 .byte   W24
 .byte   N24 ,Fn2
 .byte   W24
 .byte   As2
 .byte   W24
 .byte   Cn3
 .byte   W24
@  #01 @107   ----------------------------------------
 .byte   N44 ,Dn3
 .byte   W48
 .byte   N48 ,Cn3
 .byte   W48
@  #01 @108   ----------------------------------------
 .byte   Gn2
 .byte   W48
 .byte   Cn3
 .byte   W48
@  #01 @109   ----------------------------------------
 .byte   An2
 .byte   W48
 .byte   Gn2
 .byte   W48
@  #01 @110   ----------------------------------------
 .byte   N23 ,An2
 .byte   W24
 .byte   N24 ,Cn3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Gn3
 .byte   W24
@  #01 @111   ----------------------------------------
 .byte   N92 ,Fn3
 .byte   W96
@  #01 @112   ----------------------------------------
 .byte   N23 ,Dn3
 .byte   W48
 .byte   N44 ,Gn3
 .byte   W48
@  #01 @113   ----------------------------------------
 .byte   N68 ,An3
 .byte   W72
 .byte   N23 ,Gn3
 .byte   W24
@  #01 @114   ----------------------------------------
 .byte   N44 ,Dn3
 .byte   W48
 .byte   N48 ,Gn3
 .byte   W48
@  #01 @115   ----------------------------------------
 .byte   En3
 .byte   W48
 .byte   Fn3
 .byte   W48
@  #01 @116   ----------------------------------------
 .byte   Gn3
 .byte   W48
 .byte   N15 ,Cn3
 .byte   W16
 .byte   N16 ,En3
 .byte   W16
 .byte   Gn3
 .byte   W16
@  #01 @117   ----------------------------------------
Label_01011741:
 .byte   N60 ,Cn4 ,v096
 .byte   W64
 .byte   N15 ,As3
 .byte   W16
 .byte   N16 ,An3
 .byte   W16
 .byte   PEND 
@  #01 @118   ----------------------------------------
 .byte   N44 ,Fn3
 .byte   W72
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N12 ,Fn3
 .byte   W12
@  #01 @119   ----------------------------------------
 .byte   PATT
  .word Label_01011741
@  #01 @120   ----------------------------------------
 .byte   N44 ,Gn3 ,v096
 .byte   W48
 .byte   N23 ,Fn3
 .byte   W24
 .byte   N24 ,En3
 .byte   W24
@  #01 @121   ----------------------------------------
 .byte   TIE ,Dn3
 .byte   W96
@  #01 @122   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #01 @123   ----------------------------------------
 .byte   W96
@  #01 @124   ----------------------------------------
 .byte   W96
@  #01 @125   ----------------------------------------
 .byte   W96
@  #01 @126   ----------------------------------------
 .byte   W96
@  #01 @127   ----------------------------------------
 .byte   W96
@  #01 @128   ----------------------------------------
 .byte   W96
@  #01 @129   ----------------------------------------
 .byte   N30 ,Ds3 ,v080
 .byte   W32
 .byte   N32 ,Fn3
 .byte   W32
 .byte   Fs3
 .byte   W32
@  #01 @130   ----------------------------------------
 .byte   Gs3
 .byte   W32
 .byte   As3
 .byte   W32
 .byte   Bn3
 .byte   W32
@  #01 @131   ----------------------------------------
 .byte   Cs4
 .byte   W32
 .byte   As3
 .byte   W32
 .byte   Fn4
 .byte   W32
@  #01 @132   ----------------------------------------
 .byte   Ds4
 .byte   W32
 .byte   Cs4
 .byte   W32
 .byte   As3
 .byte   W32
@  #01 @133   ----------------------------------------
 .byte   TIE ,Gs3
 .byte   W96
@  #01 @134   ----------------------------------------
 .byte   W96
@  #01 @135   ----------------------------------------
 .byte   W96
@  #01 @136   ----------------------------------------
 .byte   W60
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N15
 .byte   W16
 .byte   N16 ,An3
 .byte   W16
@  #01 @137   ----------------------------------------
Label_0101179A:
 .byte   W24
 .byte   N16 ,Bn3 ,v096
 .byte   W36
 .byte   N12 ,Fs3
 .byte   W36
 .byte   PEND 
@  #01 @138   ----------------------------------------
 .byte   W12
 .byte   N18 ,Bn2
 .byte   W42
 .byte   Cs3
 .byte   W18
 .byte   En3
 .byte   W18
 .byte   Fs3 ,v080
 .byte   W06
@  #01 @139   ----------------------------------------
Label_010117AE:
 .byte   W24
 .byte   N16 ,Gs3 ,v096
 .byte   W36
 .byte   N12 ,Cs4
 .byte   W36
 .byte   PEND 
@  #01 @140   ----------------------------------------
 .byte   W12
 .byte   N10 ,Cs3
 .byte   W12
 .byte   N12 ,En3
 .byte   W18
 .byte   Fs3
 .byte   W18
 .byte   Gs3
 .byte   W16
 .byte   N17 ,Bn3
 .byte   W20
@  #01 @141   ----------------------------------------
 .byte   PATT
  .word Label_0101179A
@  #01 @142   ----------------------------------------
 .byte   W16
 .byte   N10 ,Bn2 ,v096
 .byte   W36
 .byte   W02
 .byte   N12 ,Cs3
 .byte   W18
 .byte   En3
 .byte   W12
 .byte   Fs3 ,v080
 .byte   W12
@  #01 @143   ----------------------------------------
 .byte   PATT
  .word Label_010117AE
@  #01 @144   ----------------------------------------
 .byte   W12
 .byte   N10 ,Cs3 ,v096
 .byte   W12
 .byte   N12 ,En3
 .byte   W18
 .byte   Fs3
 .byte   W18
 .byte   Gs3
 .byte   W12
 .byte   Bn3 ,v080
 .byte   W24
@  #01 @145   ----------------------------------------
 .byte   W96
@  #01 @146   ----------------------------------------
 .byte   W96
@  #01 @147   ----------------------------------------
 .byte   W96
@  #01 @148   ----------------------------------------
 .byte   W96
@  #01 @149   ----------------------------------------
 .byte   N92 ,Bn2
 .byte   W96
@  #01 @150   ----------------------------------------
 .byte   N96 ,Cs3
 .byte   W96
@  #01 @151   ----------------------------------------
 .byte   Dn3
 .byte   W96
@  #01 @152   ----------------------------------------
 .byte   En3
 .byte   W96
@  #01 @153   ----------------------------------------
 .byte   Bn2
 .byte   W96
@  #01 @154   ----------------------------------------
 .byte   Cs3
 .byte   W96
@  #01 @155   ----------------------------------------
 .byte   Dn3
 .byte   W96
@  #01 @156   ----------------------------------------
 .byte   En3
 .byte   W96
@  #01 @157   ----------------------------------------
 .byte   W96
@  #01 @158   ----------------------------------------
 .byte   W96
@  #01 @159   ----------------------------------------
 .byte   W96
@  #01 @160   ----------------------------------------
 .byte   W96
@  #01 @161   ----------------------------------------
 .byte   W96
@  #01 @162   ----------------------------------------
 .byte   GOTO
  .word Label_0101156D
@  #01 @163   ----------------------------------------
 .byte   W96
@  #01 @164   ----------------------------------------
 .byte   W96
@  #01 @165   ----------------------------------------
 .byte   W96
@  #01 @166   ----------------------------------------
 .byte   W96
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

.align 2, 0
song07_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 20
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+22
 .byte   VOL , 34*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-15
 .byte   N16 ,An2 ,v096
 .byte   W96
@  #02 @001   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #02 @002   ----------------------------------------
 .byte   N18 ,Bn2
 .byte   W96
@  #02 @003   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #02 @004   ----------------------------------------
 .byte   N18 ,An2
 .byte   W96
@  #02 @005   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #02 @006   ----------------------------------------
 .byte   TIE ,Bn2 ,v080
 .byte   W96
@  #02 @007   ----------------------------------------
 .byte   W96
@  #02 @008   ----------------------------------------
 .byte   W96
@  #02 @009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @010   ----------------------------------------
 .byte   W96
@  #02 @011   ----------------------------------------
 .byte   W80
 .byte   N15 ,Cs1
 .byte   W16
@  #02 @012   ----------------------------------------
Label_01011CF2:
 .byte   N17 ,Fs1 ,v080
 .byte   W18
 .byte   N05 ,Cs1
 .byte   W06
 .byte   N07 ,Fs1
 .byte   W08
 .byte   N08 ,Gs1
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   N15 ,Cs2
 .byte   W16
 .byte   N16 ,An1
 .byte   W16
 .byte   Fs1
 .byte   W16
 .byte   PEND 
@  #02 @013   ----------------------------------------
Label_01011D0A:
 .byte   N07 ,Dn1 ,v080
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N08 ,Fs1
 .byte   W08
 .byte   N22 ,En2
 .byte   W24
 .byte   N07 ,Fn1
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N30 ,Fn2
 .byte   W32
 .byte   PEND 
@  #02 @014   ----------------------------------------
 .byte   PATT
  .word Label_01011CF2
@  #02 @015   ----------------------------------------
 .byte   PATT
  .word Label_01011D0A
@  #02 @016   ----------------------------------------
 .byte   PATT
  .word Label_01011CF2
@  #02 @017   ----------------------------------------
 .byte   PATT
  .word Label_01011D0A
@  #02 @018   ----------------------------------------
 .byte   PATT
  .word Label_01011CF2
@  #02 @019   ----------------------------------------
 .byte   PATT
  .word Label_01011D0A
@  #02 @020   ----------------------------------------
 .byte   W96
@  #02 @021   ----------------------------------------
 .byte   W96
@  #02 @022   ----------------------------------------
Label_01011D3F:
 .byte   N44 ,An2 ,v080
 .byte   N15 ,Fs3
 .byte   W16
 .byte   N07 ,An3
 .byte   W08
 .byte   N08 ,Gs3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   N04 ,Gs3
 .byte   W08
 .byte   N44 ,Cs3
 .byte   N15 ,Fs3
 .byte   W16
 .byte   N07 ,Gs3
 .byte   W08
 .byte   N08 ,An3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   N04 ,Cs4
 .byte   W08
 .byte   PEND 
@  #02 @023   ----------------------------------------
Label_01011D61:
 .byte   N44 ,Bn2 ,v080
 .byte   N07 ,Cs4
 .byte   W08
 .byte   N08 ,Bn3
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   N04 ,Bn3
 .byte   W08
 .byte   N44 ,Gs2
 .byte   N07 ,Gs3
 .byte   W08
 .byte   N08 ,An3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   N04 ,Bn3
 .byte   W08
 .byte   PEND 
@  #02 @024   ----------------------------------------
Label_01011D85:
 .byte   N92 ,Cs3 ,v080
 .byte   N15 ,Fs3
 .byte   W16
 .byte   N07 ,An3
 .byte   W08
 .byte   N08 ,En3
 .byte   W08
 .byte   N15 ,Fs3
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N08 ,Gs3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   N04 ,Dn4
 .byte   W08
 .byte   PEND 
@  #02 @025   ----------------------------------------
Label_01011DA3:
 .byte   N92 ,Bn2 ,v080
 .byte   N15 ,En4
 .byte   W16
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N08 ,En4
 .byte   W08
 .byte   N15 ,Dn4
 .byte   W16
 .byte   N07 ,Bn3
 .byte   W08
 .byte   N08 ,An3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N04 ,Gs3
 .byte   W08
 .byte   PEND 
@  #02 @026   ----------------------------------------
Label_01011DC2:
 .byte   N07 ,Gs2 ,v080
 .byte   N08 ,Bn2
 .byte   N07 ,Gs3
 .byte   W08
 .byte   Bn2
 .byte   N07 ,Bn3
 .byte   W08
 .byte   Cs3
 .byte   N07 ,Cs4
 .byte   W08
 .byte   Dn3
 .byte   N07 ,Dn4
 .byte   W08
 .byte   En3
 .byte   N07 ,En4
 .byte   W08
 .byte   Fs3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Cs3
 .byte   N07 ,Cs4
 .byte   W08
 .byte   Dn3
 .byte   N07 ,Dn4
 .byte   W08
 .byte   En3
 .byte   N07 ,En4
 .byte   W08
 .byte   Fn3
 .byte   N07 ,Fn4
 .byte   W08
 .byte   Fs3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Gs3
 .byte   N07 ,Gs4
 .byte   W08
 .byte   PEND 
@  #02 @027   ----------------------------------------
Label_01011DF7:
 .byte   N44 ,An2 ,v080
 .byte   N07 ,Gs3
 .byte   N07 ,Gs4
 .byte   W08
 .byte   An3
 .byte   N07 ,An4
 .byte   W08
 .byte   Bn3
 .byte   N07 ,Bn4
 .byte   W08
 .byte   An3
 .byte   N07 ,An4
 .byte   W08
 .byte   Gs3
 .byte   N07 ,Gs4
 .byte   W08
 .byte   N04 ,Fn3
 .byte   N07 ,Fn4
 .byte   W08
 .byte   N44 ,Gs2
 .byte   N07 ,Fs3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Gs3
 .byte   N07 ,Gs4
 .byte   W08
 .byte   Fs3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   Fn3
 .byte   N07 ,Fn4
 .byte   W08
 .byte   Dn3
 .byte   N07 ,Dn4
 .byte   W08
 .byte   N04 ,Bn2
 .byte   N07 ,Bn3
 .byte   W08
 .byte   PEND 
@  #02 @028   ----------------------------------------
 .byte   N88 ,Dn3
 .byte   N07 ,Dn4
 .byte   W08
 .byte   N08 ,En4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Dn3
 .byte   W08
@  #02 @029   ----------------------------------------
 .byte   N44
 .byte   N07 ,Gs3
 .byte   W08
 .byte   N08 ,An3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   N04 ,Gs3
 .byte   W08
 .byte   N08 ,Bn2
 .byte   N07 ,En3
 .byte   W08
 .byte   N08 ,Bn2
 .byte   W08
 .byte   Gs2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Gs3
 .byte   W08
@  #02 @030   ----------------------------------------
 .byte   N92 ,Cs3
 .byte   N07 ,En4
 .byte   W08
 .byte   N08 ,Dn4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   N04 ,Cs4
 .byte   W08
@  #02 @031   ----------------------------------------
 .byte   N40 ,Fs3
 .byte   N07 ,Cs4
 .byte   W08
 .byte   N08 ,Dn4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   N15
 .byte   W16
 .byte   N08 ,An3
 .byte   W08
 .byte   N23 ,Fs2
 .byte   W08
 .byte   N15 ,Cs4
 .byte   W16
@  #02 @032   ----------------------------------------
 .byte   N30 ,An2
 .byte   W32
 .byte   N16 ,Bn2
 .byte   W16
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N08 ,Cs5
 .byte   W08
 .byte   N30 ,Cs3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N08 ,Cs5
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   N06 ,Cs5
 .byte   W08
@  #02 @033   ----------------------------------------
 .byte   N92 ,Ds3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N08 ,Ds4
 .byte   W08
 .byte   Cn4
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   Cn4
 .byte   W08
 .byte   Ds4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Cn4
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   Cn4
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   N04 ,Gs3
 .byte   W08
@  #02 @034   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   N07 ,Ds3
 .byte   W08
 .byte   N08 ,Fs3
 .byte   W08
 .byte   As3
 .byte   W08
 .byte   Cn4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Ds4
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   N04 ,Gs4
 .byte   W08
@  #02 @035   ----------------------------------------
 .byte   N92 ,Cs3
 .byte   N07 ,Cs4
 .byte   W08
 .byte   N08 ,Dn4
 .byte   W08
 .byte   Ds4
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   As4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   N04 ,Cn5
 .byte   W08
@  #02 @036   ----------------------------------------
 .byte   W08
 .byte   N07 ,Fn4
 .byte   N07 ,Gs4
 .byte   N07 ,Cs5
 .byte   W08
 .byte   Fn4
 .byte   N07 ,Gs4
 .byte   N07 ,Cs5
 .byte   W16
 .byte   Fn4
 .byte   N07 ,Gs4
 .byte   N07 ,Cs5
 .byte   W08
 .byte   Fn4
 .byte   N07 ,Gs4
 .byte   N07 ,Cs5
 .byte   W16
 .byte   Cs4
 .byte   N07 ,Fn4
 .byte   N07 ,Gs4
 .byte   W08
 .byte   Cs4
 .byte   N07 ,Fn4
 .byte   N07 ,Gs4
 .byte   W16
 .byte   Gs3
 .byte   N07 ,Cs4
 .byte   N07 ,Fn4
 .byte   W08
 .byte   Gs3
 .byte   N07 ,Cs4
 .byte   N07 ,Fn4
 .byte   W08
@  #02 @037   ----------------------------------------
 .byte   W96
@  #02 @038   ----------------------------------------
 .byte   W96
@  #02 @039   ----------------------------------------
 .byte   PATT
  .word Label_01011D3F
@  #02 @040   ----------------------------------------
 .byte   PATT
  .word Label_01011D61
@  #02 @041   ----------------------------------------
 .byte   PATT
  .word Label_01011D85
@  #02 @042   ----------------------------------------
 .byte   PATT
  .word Label_01011DA3
@  #02 @043   ----------------------------------------
 .byte   PATT
  .word Label_01011DC2
@  #02 @044   ----------------------------------------
 .byte   PATT
  .word Label_01011DF7
@  #02 @045   ----------------------------------------
 .byte   N92 ,An2 ,v080
 .byte   N07 ,Dn4
 .byte   W08
 .byte   N08 ,En4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   N04 ,Dn3
 .byte   W08
@  #02 @046   ----------------------------------------
 .byte   N56 ,Bn2
 .byte   N07 ,Gs3
 .byte   W08
 .byte   N08 ,An3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Gs2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Gs3
 .byte   W08
@  #02 @047   ----------------------------------------
 .byte   N44 ,Cs3
 .byte   N07 ,En4
 .byte   W08
 .byte   N08 ,Dn4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   N04 ,Gs4
 .byte   W08
 .byte   N44 ,Fs2
 .byte   N07 ,An4
 .byte   W08
 .byte   N08 ,Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   N04 ,Cs4
 .byte   W08
@  #02 @048   ----------------------------------------
 .byte   N23 ,As2
 .byte   N07 ,Cs4
 .byte   W08
 .byte   N08 ,Dn4
 .byte   W08
 .byte   N07 ,Cs4
 .byte   W08
 .byte   N23 ,Cs3
 .byte   N07 ,An3
 .byte   W08
 .byte   N08 ,Gs3
 .byte   W08
 .byte   N07 ,Fs3
 .byte   W08
 .byte   N23 ,En3
 .byte   N07 ,Bn3
 .byte   W08
 .byte   N08 ,Cn4
 .byte   W08
 .byte   N07 ,Cs4
 .byte   W08
 .byte   N23 ,Gn3
 .byte   N07 ,Dn4
 .byte   W08
 .byte   N08 ,En4
 .byte   W08
 .byte   N07 ,Fn4
 .byte   W08
@  #02 @049   ----------------------------------------
 .byte   TIE ,Bn0
 .byte   TIE ,Bn2
 .byte   N07 ,Bn3
 .byte   W08
 .byte   N08 ,Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Dn5
 .byte   W08
 .byte   Fs5
 .byte   W08
 .byte   Dn5
 .byte   W08
 .byte   Bn4
 .byte   W08
@  #02 @050   ----------------------------------------
Label_0101200D:
 .byte   N07 ,Dn5 ,v080
 .byte   W08
 .byte   N08 ,Bn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   N06 ,Bn3
 .byte   W06
 .byte   PEND 
 .byte   EOT
 .byte   Bn0 ,v059
 .byte   N02 ,Bn0
 .byte   W02
 .byte   N07 ,Fs3
 .byte   W07
 .byte   N01 ,Bn2
 .byte   W01
@  #02 @051   ----------------------------------------
 .byte   TIE ,An0
 .byte   TIE ,Bn2
 .byte   N07 ,Bn3
 .byte   W08
 .byte   N08 ,Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Dn5
 .byte   W08
 .byte   Fs5
 .byte   W08
 .byte   Dn5
 .byte   W08
 .byte   Bn4
 .byte   W08
@  #02 @052   ----------------------------------------
 .byte   PATT
  .word Label_0101200D
@  #02 @053   ----------------------------------------
 .byte   EOT
 .byte   An0 ,v059
 .byte   N02 ,An0 ,v080
 .byte   W02
 .byte   N07 ,Fs3
 .byte   W07
 .byte   N01 ,Bn2
 .byte   W01
 .byte   TIE ,Gn0
 .byte   TIE ,Bn2
 .byte   N07 ,Gn3
 .byte   W08
 .byte   N08 ,Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Dn5
 .byte   W08
 .byte   Bn4
 .byte   W08
@  #02 @054   ----------------------------------------
 .byte   Gn4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   N06 ,Gn3
 .byte   W06
 .byte   EOT
 .byte   Gn0 ,v059
 .byte   N02 ,Gn0
 .byte   W02
@  #02 @055   ----------------------------------------
 .byte   N07 ,Dn3
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N08 ,Gn3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Dn4
 .byte   W08
@  #02 @056   ----------------------------------------
 .byte   Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   N07 ,Bn2
 .byte   W08
 .byte   N08 ,Dn3
 .byte   W08
 .byte   Bn2
 .byte   W08
@  #02 @057   ----------------------------------------
 .byte   Gn2
 .byte   W08
Label_010120D5:
 .byte   N22 ,Cs1 ,v080
 .byte   W24
 .byte   N22
 .byte   W24
 .byte   N24 ,Cs0
 .byte   W24
 .byte   Cs1
 .byte   W24
 .byte   PEND 
@  #02 @058   ----------------------------------------
Label_010120E1:
 .byte   N22 ,Cs1 ,v080
 .byte   W24
 .byte   N24 ,Cs0
 .byte   W24
 .byte   Cs1
 .byte   W24
 .byte   N22
 .byte   W24
 .byte   PEND 
@  #02 @059   ----------------------------------------
 .byte   PATT
  .word Label_010120D5
@  #02 @060   ----------------------------------------
 .byte   PATT
  .word Label_010120E1
@  #02 @061   ----------------------------------------
Label_010120F7:
 .byte   N22 ,Cs1 ,v080
 .byte   N07 ,Cs3 ,v096
 .byte   W16
 .byte   N01
 .byte   N01 ,Dn3
 .byte   W01
 .byte   Ds3
 .byte   N01 ,En3
 .byte   W01
 .byte   Fn3
 .byte   W01
 .byte   Fs3
 .byte   N01 ,Gn3
 .byte   W01
 .byte   Gs3
 .byte   W01
 .byte   An3
 .byte   N01 ,As3
 .byte   W01
 .byte   Bn3
 .byte   W01
 .byte   Cn4
 .byte   W01
 .byte   N22 ,Cs1 ,v080
 .byte   N07 ,Cs4 ,v116
 .byte   W24
 .byte   N22 ,Cs0 ,v080
 .byte   W24
 .byte   N07 ,Cs1
 .byte   N07 ,Cs3 ,v096
 .byte   W16
 .byte   N01
 .byte   N01 ,Dn3
 .byte   W01
 .byte   Ds3
 .byte   N01 ,En3
 .byte   W01
 .byte   Fn3
 .byte   W01
 .byte   Fs3
 .byte   N01 ,Gn3
 .byte   W01
 .byte   Gs3
 .byte   W01
 .byte   An3
 .byte   N01 ,As3
 .byte   W01
 .byte   Bn3
 .byte   W01
 .byte   Cn4
 .byte   W01
 .byte   PEND 
@  #02 @062   ----------------------------------------
 .byte   N22 ,Cs1 ,v080
 .byte   N07 ,Cs4 ,v116
 .byte   W24
 .byte   N22 ,Cs0 ,v080
 .byte   W24
 .byte   N23 ,Cs1
 .byte   N23 ,An2 ,v096
 .byte   W24
 .byte   N22 ,Cs1 ,v080
 .byte   N23 ,Bn2 ,v096
 .byte   W24
@  #02 @063   ----------------------------------------
 .byte   PATT
  .word Label_010120F7
@  #02 @064   ----------------------------------------
 .byte   N22 ,Cs1 ,v080
 .byte   N07 ,Cs4 ,v116
 .byte   W24
 .byte   N22 ,Cs0 ,v080
 .byte   W24
 .byte   N23 ,Cs1
 .byte   N23 ,Bn2 ,v096
 .byte   W24
 .byte   N22 ,Cs1 ,v080
 .byte   N23 ,An2 ,v096
 .byte   W24
@  #02 @065   ----------------------------------------
 .byte   N32 ,As2
 .byte   W16
 .byte   N07 ,Cs4 ,v080
 .byte   N07 ,As4
 .byte   N07 ,Fs5
 .byte   W08
 .byte   N22 ,Cs4
 .byte   N22 ,As4
 .byte   N22 ,Fs5
 .byte   W40
 .byte   N07 ,As3
 .byte   N07 ,Fs4
 .byte   N07 ,Cs5
 .byte   W08
 .byte   N22 ,As3
 .byte   N22 ,Fs4
 .byte   N22 ,Cs5
 .byte   W24
@  #02 @066   ----------------------------------------
 .byte   W16
 .byte   N07 ,Fs3
 .byte   N07 ,Cs4
 .byte   N07 ,As4
 .byte   W08
 .byte   N22 ,Fs3
 .byte   N22 ,Cs4
 .byte   N22 ,As4
 .byte   W40
 .byte   N07 ,Cs3
 .byte   N07 ,As3
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N22 ,Cs3
 .byte   N22 ,As3
 .byte   N22 ,Fs4
 .byte   W24
@  #02 @067   ----------------------------------------
 .byte   W24
 .byte   N68 ,Dn3 ,v096
 .byte   W72
@  #02 @068   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N48 ,Fs3
 .byte   W48
@  #02 @069   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   W96
@  #02 @070   ----------------------------------------
 .byte   N96 ,Cs3
 .byte   W96
@  #02 @071   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @072   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @073   ----------------------------------------
Label_010121C6:
 .byte   N44 ,Cs5 ,v080
 .byte   W48
 .byte   N48 ,Fs4
 .byte   W48
 .byte   PEND 
@  #02 @074   ----------------------------------------
 .byte   W48
 .byte   N15 ,Ds4
 .byte   W16
 .byte   N16 ,Fs4
 .byte   W16
 .byte   As4
 .byte   W16
@  #02 @075   ----------------------------------------
 .byte   PATT
  .word Label_010121C6
@  #02 @076   ----------------------------------------
 .byte   W96
@  #02 @077   ----------------------------------------
 .byte   N44 ,Cs4 ,v064
 .byte   N44 ,Cs5 ,v080
 .byte   N44 ,Cs6
 .byte   W48
 .byte   N92 ,Fs3 ,v064
 .byte   N44 ,Fs4 ,v080
 .byte   N44 ,Fs5
 .byte   W48
@  #02 @078   ----------------------------------------
 .byte   W48
 .byte   N15 ,Ds3 ,v064
 .byte   N15 ,Ds4 ,v080
 .byte   N15 ,Ds5
 .byte   W16
 .byte   Fs3 ,v064
 .byte   N15 ,Fs4 ,v080
 .byte   N15 ,Fs5
 .byte   W16
 .byte   As3 ,v064
 .byte   N15 ,As4 ,v080
 .byte   N15 ,As5
 .byte   W16
@  #02 @079   ----------------------------------------
 .byte   N44 ,Cs4 ,v064
 .byte   N44 ,Cs5 ,v080
 .byte   N44 ,Cs6
 .byte   W48
 .byte   TIE ,Fs3 ,v064
 .byte   N44 ,Fs4 ,v080
 .byte   N44 ,Fs5
 .byte   W48
@  #02 @080   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Fs3
 .byte   N24
 .byte   W24
 .byte   W01
@  #02 @081   ----------------------------------------
Label_01012222:
 .byte   N44 ,Bn4 ,v080
 .byte   W48
 .byte   N48 ,En4
 .byte   W48
 .byte   PEND 
@  #02 @082   ----------------------------------------
 .byte   W48
 .byte   N15 ,Cs4
 .byte   W16
 .byte   N16 ,En4
 .byte   W16
 .byte   Gs4
 .byte   W16
@  #02 @083   ----------------------------------------
 .byte   PATT
  .word Label_01012222
@  #02 @084   ----------------------------------------
 .byte   W96
@  #02 @085   ----------------------------------------
 .byte   N44 ,Bn3 ,v064
 .byte   N44 ,Bn4 ,v080
 .byte   N44 ,Bn5
 .byte   W48
 .byte   N92 ,En3 ,v064
 .byte   N44 ,En4 ,v080
 .byte   N44 ,En5
 .byte   W48
@  #02 @086   ----------------------------------------
 .byte   W48
 .byte   N15 ,Cs3 ,v064
 .byte   N15 ,Cs4 ,v080
 .byte   N15 ,Cs5
 .byte   W16
 .byte   En3 ,v064
 .byte   N15 ,En4 ,v080
 .byte   N15 ,En5
 .byte   W16
 .byte   Gs3 ,v064
 .byte   N15 ,Gs4 ,v080
 .byte   N15 ,Gs5
 .byte   W16
@  #02 @087   ----------------------------------------
 .byte   N44 ,Bn3 ,v064
 .byte   N44 ,Bn4 ,v080
 .byte   N44 ,Bn5
 .byte   W48
 .byte   TIE ,En3 ,v064
 .byte   N44 ,En4 ,v080
 .byte   N44 ,En5
 .byte   W48
@  #02 @088   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   En3
 .byte   N24
 .byte   W24
 .byte   W01
@  #02 @089   ----------------------------------------
 .byte   N07 ,Bn0
 .byte   W08
 .byte   N08 ,Dn2
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   Cs1
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Cs3
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   An3
 .byte   W08
@  #02 @090   ----------------------------------------
 .byte   Dn1
 .byte   W08
 .byte   Dn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Dn3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   Ds2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Ds3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   Bn3
 .byte   W08
@  #02 @091   ----------------------------------------
 .byte   En1
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Fn1
 .byte   W08
 .byte   Fn2
 .byte   W08
 .byte   Cs3
 .byte   W08
 .byte   Fn3
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Bn3
 .byte   W08
@  #02 @092   ----------------------------------------
 .byte   Fs1
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Fs1
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   As3
 .byte   W08
@  #02 @093   ----------------------------------------
 .byte   N44 ,Bn0
 .byte   N02 ,Bn1 ,v096
 .byte   W08
 .byte   N08 ,Dn3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   N04 ,Fs4
 .byte   W08
 .byte   N44 ,Cs1 ,v080
 .byte   N02 ,Cs2 ,v096
 .byte   W08
 .byte   N08 ,En3
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   N04 ,An4
 .byte   W08
@  #02 @094   ----------------------------------------
 .byte   N44 ,Dn1 ,v080
 .byte   N02 ,Dn2 ,v096
 .byte   W08
 .byte   N08 ,Dn3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   N04 ,Bn4
 .byte   W08
 .byte   N44 ,Ds1 ,v080
 .byte   N02 ,Ds2 ,v096
 .byte   W08
 .byte   N08 ,Ds3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Ds4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   N04 ,Bn4
 .byte   W08
@  #02 @095   ----------------------------------------
 .byte   N44 ,En1 ,v080
 .byte   N02 ,En2 ,v096
 .byte   W08
 .byte   N08 ,En3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   N04 ,Bn4
 .byte   W08
 .byte   N44 ,Fn1 ,v080
 .byte   N02 ,Fn2 ,v096
 .byte   W08
 .byte   N08 ,Fn3
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   N04 ,Bn4
 .byte   W08
@  #02 @096   ----------------------------------------
 .byte   N44 ,Fs1 ,v080
 .byte   N02 ,Fs2 ,v096
 .byte   W08
 .byte   N08 ,En3
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   N04 ,Bn4
 .byte   W08
 .byte   N44 ,Fs1 ,v080
 .byte   N02 ,Fs2 ,v096
 .byte   W08
 .byte   N08 ,Fs3
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   N04 ,As4
 .byte   W08
@  #02 @097   ----------------------------------------
 .byte   N44 ,Dn1 ,v080
 .byte   N02 ,Dn2 ,v096
 .byte   W08
 .byte   N08 ,Fn3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   N04 ,An4
 .byte   W08
 .byte   N44 ,En1 ,v080
 .byte   N02 ,En2 ,v096
 .byte   W08
 .byte   N08 ,Gn3
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   N04 ,Cn5
 .byte   W08
@  #02 @098   ----------------------------------------
 .byte   N44 ,Fn1 ,v080
 .byte   N02 ,Fn2 ,v096
 .byte   W08
 .byte   N08 ,Fn3
 .byte   W08
 .byte   Cn4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
 .byte   N44 ,Fs1 ,v080
 .byte   N02 ,Fs2 ,v096
 .byte   W08
 .byte   N08 ,Fs3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
@  #02 @099   ----------------------------------------
 .byte   N44 ,Gn1 ,v080
 .byte   N02 ,Gn2 ,v096
 .byte   W08
 .byte   N08 ,Gn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   As4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
 .byte   N44 ,Gs1 ,v080
 .byte   N02 ,Gs2 ,v096
 .byte   W08
 .byte   N08 ,Gs3
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   As4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
@  #02 @100   ----------------------------------------
 .byte   N44 ,An1 ,v080
 .byte   N02 ,An2 ,v096
 .byte   W08
 .byte   N08 ,Gn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
 .byte   N44 ,An0 ,v080
 .byte   N02 ,An2 ,v096
 .byte   W08
 .byte   N08 ,An3
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Cn5
 .byte   W08
 .byte   N04 ,Cs5
 .byte   W08
@  #02 @101   ----------------------------------------
 .byte   N44 ,Dn1 ,v080
 .byte   N07 ,Dn2
 .byte   N44 ,Fn2 ,v096
 .byte   W08
 .byte   N07 ,Fn3 ,v080
 .byte   W08
 .byte   N08 ,An3
 .byte   W08
 .byte   N23 ,Fn3
 .byte   N07 ,Dn4
 .byte   W08
 .byte   N08 ,Fn4
 .byte   W08
 .byte   N04 ,An4
 .byte   W08
 .byte   N44 ,En1
 .byte   N07 ,En2
 .byte   N44 ,Gn2 ,v096
 .byte   N23 ,En3 ,v080
 .byte   W08
 .byte   N07 ,Gn3
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   N23 ,Dn3
 .byte   N07 ,Gn4
 .byte   W08
 .byte   N08 ,An4
 .byte   W08
 .byte   N04 ,Cn5
 .byte   W08
@  #02 @102   ----------------------------------------
 .byte   N44 ,Fn1
 .byte   N07 ,Fn2
 .byte   N44 ,An2 ,v096
 .byte   N44 ,Cn3 ,v080
 .byte   W08
 .byte   N07 ,Fn3
 .byte   W08
 .byte   N08 ,Cn4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
 .byte   N44 ,Fs1
 .byte   N44 ,Dn2 ,v096
 .byte   N07 ,Fs2 ,v080
 .byte   N23 ,As2
 .byte   W08
 .byte   N07 ,Fs3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   N23 ,An2
 .byte   N07 ,Fs4
 .byte   W08
 .byte   N08 ,An4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
@  #02 @103   ----------------------------------------
 .byte   N44 ,Gn1
 .byte   N44 ,Dn2 ,v096
 .byte   N07 ,Gn2 ,v080
 .byte   W08
 .byte   N08 ,Gn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   N23 ,As2
 .byte   N07 ,Gn4
 .byte   W08
 .byte   N08 ,As4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
 .byte   N44 ,Gs1
 .byte   N44 ,En2 ,v096
 .byte   N07 ,Gs2 ,v080
 .byte   N23 ,Dn3
 .byte   W08
 .byte   N07 ,Gs3
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   N23 ,Fn3
 .byte   N07 ,Gs4
 .byte   W08
 .byte   N08 ,As4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
@  #02 @104   ----------------------------------------
 .byte   N44 ,An1
 .byte   N44 ,En2 ,v096
 .byte   N07 ,An2 ,v080
 .byte   N23 ,En3
 .byte   W08
 .byte   N07 ,Gn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   N08 ,An4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   N04 ,Dn5
 .byte   W08
 .byte   N44 ,An0
 .byte   N44 ,En2 ,v096
 .byte   N07 ,An2 ,v080
 .byte   W08
 .byte   N08 ,An3
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Cn5
 .byte   W08
 .byte   N04 ,Cs5
 .byte   W08
@  #02 @105   ----------------------------------------
 .byte   N08 ,An2 ,v096
 .byte   TIE ,An3 ,v080
 .byte   W08
 .byte   N07 ,An2 ,v096
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11 ,As2
 .byte   W24
 .byte   N07 ,Cn3
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11 ,As2
 .byte   W24
@  #02 @106   ----------------------------------------
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
@  #02 @107   ----------------------------------------
 .byte   N07 ,Cn3
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
@  #02 @108   ----------------------------------------
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W23
 .byte   EOT
 .byte   An3
 .byte   N01
 .byte   W01
@  #02 @109   ----------------------------------------
 .byte   N07 ,An2
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   N07 ,Dn3
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
@  #02 @110   ----------------------------------------
 .byte   N07 ,Cn3
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   N07 ,Gn2
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
@  #02 @111   ----------------------------------------
Label_0101254C:
 .byte   N07 ,Fn2 ,v096
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11 ,Gn2
 .byte   W24
 .byte   N07 ,An2
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11 ,Gn2
 .byte   W24
 .byte   PEND 
@  #02 @112   ----------------------------------------
 .byte   PATT
  .word Label_0101254C
@  #02 @113   ----------------------------------------
Label_01012567:
 .byte   N07 ,An2 ,v096
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   N07 ,As2
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #02 @114   ----------------------------------------
 .byte   PATT
  .word Label_01012567
@  #02 @115   ----------------------------------------
Label_01012580:
 .byte   N07 ,Cn3 ,v096
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   N07 ,An2
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #02 @116   ----------------------------------------
 .byte   PATT
  .word Label_01012580
@  #02 @117   ----------------------------------------
Label_01012599:
 .byte   N07 ,As2 ,v096
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   N07 ,Cn3
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #02 @118   ----------------------------------------
 .byte   N07 ,As2
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
 .byte   N07 ,An2
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W24
@  #02 @119   ----------------------------------------
 .byte   PATT
  .word Label_01012599
@  #02 @120   ----------------------------------------
 .byte   N07 ,As2 ,v096
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11 ,An2
 .byte   W24
 .byte   N07 ,Dn3
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11 ,Cn3
 .byte   W24
@  #02 @121   ----------------------------------------
Label_010125D9:
 .byte   N07 ,Dn1 ,v080
 .byte   W08
 .byte   N08 ,Cn1
 .byte   W08
 .byte   Cn2
 .byte   W08
 .byte   Dn1
 .byte   W08
 .byte   Dn2
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   Dn1
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   Bn1
 .byte   W08
 .byte   Cn2
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   PEND 
@  #02 @122   ----------------------------------------
Label_010125F5:
 .byte   N07 ,Dn1 ,v080
 .byte   W08
 .byte   N08 ,Cn1
 .byte   W08
 .byte   Gn1
 .byte   W08
 .byte   Dn1
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   Dn1
 .byte   W08
 .byte   Fn1
 .byte   W08
 .byte   Dn1
 .byte   W08
 .byte   Fn1
 .byte   W08
 .byte   Dn1
 .byte   W08
 .byte   Gn1
 .byte   W08
 .byte   PEND 
@  #02 @123   ----------------------------------------
 .byte   PATT
  .word Label_010125D9
@  #02 @124   ----------------------------------------
 .byte   PATT
  .word Label_010125F5
@  #02 @125   ----------------------------------------
 .byte   PATT
  .word Label_010125D9
@  #02 @126   ----------------------------------------
 .byte   PATT
  .word Label_010125F5
@  #02 @127   ----------------------------------------
 .byte   PATT
  .word Label_010125D9
@  #02 @128   ----------------------------------------
 .byte   N07 ,Dn1 ,v080
 .byte   W08
 .byte   N08 ,Cn1
 .byte   W08
 .byte   Gn1
 .byte   W08
 .byte   Dn1
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   Cn1
 .byte   W08
 .byte   Dn1
 .byte   W08
 .byte   Fn1
 .byte   W08
 .byte   Dn1
 .byte   W08
 .byte   Fn1
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   Gn1
 .byte   W08
@  #02 @129   ----------------------------------------
Label_01012645:
 .byte   N07 ,Ds1 ,v080
 .byte   W08
 .byte   N08 ,Cs1
 .byte   W08
 .byte   Cs2
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   Ds2
 .byte   W08
 .byte   Cs1
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   Cs1
 .byte   W08
 .byte   Cn2
 .byte   W08
 .byte   Cs2
 .byte   W08
 .byte   As1
 .byte   W08
 .byte   Cs1
 .byte   W08
 .byte   PEND 
@  #02 @130   ----------------------------------------
Label_01012661:
 .byte   N07 ,Ds1 ,v080
 .byte   W08
 .byte   N08 ,Cs1
 .byte   W08
 .byte   Gs1
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   As1
 .byte   W08
 .byte   Cs1
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   Fs1
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   Fs1
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   Gs1
 .byte   W08
 .byte   PEND 
@  #02 @131   ----------------------------------------
 .byte   PATT
  .word Label_01012645
@  #02 @132   ----------------------------------------
 .byte   PATT
  .word Label_01012661
@  #02 @133   ----------------------------------------
 .byte   N07 ,Ds1 ,v080
 .byte   TIE ,Fs2
 .byte   W08
 .byte   N07 ,Cs1
 .byte   W08
 .byte   N08 ,Cs2
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   Ds2
 .byte   W08
 .byte   Cs1
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   Cs1
 .byte   W08
 .byte   Cn2
 .byte   W08
 .byte   Cs2
 .byte   W08
 .byte   As1
 .byte   W08
 .byte   Cs1
 .byte   W08
@  #02 @134   ----------------------------------------
 .byte   PATT
  .word Label_01012661
@  #02 @135   ----------------------------------------
 .byte   PATT
  .word Label_01012645
@  #02 @136   ----------------------------------------
 .byte   N07 ,Ds1 ,v080
 .byte   W08
 .byte   N08 ,Cs1
 .byte   W08
 .byte   Gs1
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   As1
 .byte   W08
 .byte   Cs1
 .byte   W08
 .byte   Ds1
 .byte   W08
 .byte   N07 ,Fs1
 .byte   W07
 .byte   EOT
 .byte   Fs2
 .byte   N01
 .byte   W01
 .byte   N07 ,Ds1
 .byte   N15 ,En3
 .byte   W08
 .byte   N07 ,Fs1
 .byte   W08
 .byte   N08 ,Ds1
 .byte   N15 ,Fn3
 .byte   W08
 .byte   N07 ,Gs1
 .byte   W08
@  #02 @137   ----------------------------------------
Label_010126D7:
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N08 ,En1
 .byte   W08
 .byte   Fs1
 .byte   W08
 .byte   N03 ,En1
 .byte   N16 ,Bn3 ,v096
 .byte   W08
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N08 ,En1
 .byte   W08
 .byte   Fs1
 .byte   W08
 .byte   N04 ,En1
 .byte   W04
 .byte   N16 ,Fs3 ,v096
 .byte   W04
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N04 ,En1
 .byte   W08
 .byte   N08 ,Fs1
 .byte   W08
 .byte   En1
 .byte   W08
 .byte   PEND 
@  #02 @138   ----------------------------------------
Label_01012703:
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N08 ,En1
 .byte   W08
 .byte   N03 ,Fs1
 .byte   N10 ,Bn2 ,v096
 .byte   W08
 .byte   N07 ,En1 ,v080
 .byte   W08
 .byte   N08 ,Fs1
 .byte   W08
 .byte   En1
 .byte   W08
 .byte   Fs1
 .byte   W08
 .byte   N03 ,En1
 .byte   N10 ,Cs3 ,v096
 .byte   W08
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N03 ,En1
 .byte   N10 ,En3 ,v096
 .byte   W08
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   En1
 .byte   N07 ,Fs3
 .byte   W08
 .byte   PEND 
@  #02 @139   ----------------------------------------
Label_01012734:
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N08 ,En1
 .byte   W08
 .byte   Fs1
 .byte   W08
 .byte   N03 ,En1
 .byte   N16 ,Gs3 ,v096
 .byte   W08
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N08 ,En1
 .byte   W08
 .byte   Fs1
 .byte   W08
 .byte   N04 ,En1
 .byte   W04
 .byte   N16 ,Cs4 ,v096
 .byte   W04
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N04 ,En1
 .byte   W08
 .byte   N08 ,Fs1
 .byte   W08
 .byte   En1
 .byte   W08
 .byte   PEND 
@  #02 @140   ----------------------------------------
Label_01012760:
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N04 ,En1
 .byte   W04
 .byte   N10 ,Cs3 ,v096
 .byte   W04
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N04 ,En1
 .byte   W04
 .byte   N10 ,En3 ,v096
 .byte   W04
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N04 ,En1
 .byte   W04
 .byte   N10 ,Fs3 ,v096
 .byte   W04
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N04 ,En1
 .byte   W04
 .byte   N10 ,Gs3 ,v096
 .byte   W04
 .byte   N07 ,Fs1 ,v080
 .byte   W08
 .byte   N04 ,En1
 .byte   N12 ,Bn3
 .byte   W08
 .byte   N08 ,Fs1
 .byte   W08
 .byte   En1
 .byte   W08
 .byte   PEND 
@  #02 @141   ----------------------------------------
 .byte   PATT
  .word Label_010126D7
@  #02 @142   ----------------------------------------
 .byte   PATT
  .word Label_01012703
@  #02 @143   ----------------------------------------
 .byte   PATT
  .word Label_01012734
@  #02 @144   ----------------------------------------
 .byte   PATT
  .word Label_01012760
@  #02 @145   ----------------------------------------
Label_010127AF:
 .byte   N07 ,Fs2 ,v080
 .byte   W08
 .byte   N08 ,En2
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Ds3
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Cs3
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   PEND 
@  #02 @146   ----------------------------------------
 .byte   Fs2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Cs3
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Dn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Bn2
 .byte   W08
@  #02 @147   ----------------------------------------
 .byte   PATT
  .word Label_010127AF
@  #02 @148   ----------------------------------------
 .byte   N07 ,Fs2 ,v080
 .byte   W08
 .byte   N08 ,En2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Dn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Bn2
 .byte   W08
@  #02 @149   ----------------------------------------
 .byte   N92 ,Fs2
 .byte   W96
@  #02 @150   ----------------------------------------
 .byte   N96 ,Gs2
 .byte   W96
@  #02 @151   ----------------------------------------
 .byte   An2
 .byte   W96
@  #02 @152   ----------------------------------------
 .byte   N16 ,Gs2
 .byte   W16
 .byte   N15 ,Bn4
 .byte   W16
 .byte   N16 ,An4
 .byte   W16
 .byte   Gs4
 .byte   W16
 .byte   En4
 .byte   W16
 .byte   Bn3
 .byte   W16
@  #02 @153   ----------------------------------------
 .byte   N92 ,Fs2
 .byte   W48
 .byte   N15 ,Fs4
 .byte   W16
 .byte   N28 ,Cs5
 .byte   W32
@  #02 @154   ----------------------------------------
 .byte   N92 ,Gs2
 .byte   W48
 .byte   N15 ,Fs4
 .byte   W16
 .byte   N28 ,Cs5
 .byte   W32
@  #02 @155   ----------------------------------------
 .byte   N92 ,An2
 .byte   W96
@  #02 @156   ----------------------------------------
 .byte   N16 ,Bn2
 .byte   W16
 .byte   N15 ,Bn4
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N16 ,Gs4
 .byte   W16
 .byte   Bn4
 .byte   W16
 .byte   Gs4
 .byte   W16
@  #02 @157   ----------------------------------------
 .byte   W96
@  #02 @158   ----------------------------------------
 .byte   W24
 .byte   N22 ,Fn4
 .byte   N22 ,As4
 .byte   W24
 .byte   En4
 .byte   N22 ,An4
 .byte   W24
 .byte   Cn4
 .byte   N22 ,Fn4
 .byte   W24
@  #02 @159   ----------------------------------------
 .byte   Cs4
 .byte   N22 ,Fs4
 .byte   W24
 .byte   An3
 .byte   N22 ,Cs4
 .byte   W24
 .byte   As3
 .byte   N22 ,Dn4
 .byte   W24
 .byte   Gn3
 .byte   N22 ,Bn3
 .byte   W24
@  #02 @160   ----------------------------------------
 .byte   W24
 .byte   Bn5
 .byte   N22 ,Dn6
 .byte   W24
 .byte   As5
 .byte   N22 ,Cs6
 .byte   W24
 .byte   En5
 .byte   N22 ,Gn5
 .byte   W24
@  #02 @161   ----------------------------------------
 .byte   Fn5
 .byte   N22 ,Gs5
 .byte   W24
 .byte   Cs5
 .byte   N22 ,En5
 .byte   W24
 .byte   Dn5
 .byte   N22 ,Fn5
 .byte   W24
 .byte   Bn4
 .byte   N22 ,Dn5
 .byte   W24
@  #02 @162   ----------------------------------------
 .byte   GOTO
  .word Label_01011CF2
@  #02 @163   ----------------------------------------
 .byte   PATT
  .word Label_01011CF2
@  #02 @164   ----------------------------------------
 .byte   PATT
  .word Label_01011D0A
@  #02 @165   ----------------------------------------
 .byte   PATT
  .word Label_01011CF2
@  #02 @166   ----------------------------------------
 .byte   PATT
  .word Label_01011D0A
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

.align 2, 0
song07_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 46
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-21
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-15
 .byte   N16 ,Cs2 ,v096
 .byte   W96
@  #03 @001   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #03 @002   ----------------------------------------
 .byte   N16
 .byte   W96
@  #03 @003   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #03 @004   ----------------------------------------
 .byte   N16
 .byte   W96
@  #03 @005   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #03 @006   ----------------------------------------
 .byte   TIE ,Cs2 ,v080
 .byte   W96
@  #03 @007   ----------------------------------------
 .byte   W96
@  #03 @008   ----------------------------------------
 .byte   W96
@  #03 @009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @010   ----------------------------------------
 .byte   W96
@  #03 @011   ----------------------------------------
 .byte   W96
@  #03 @012   ----------------------------------------
Label_01010EB5:
 .byte   W96
@  #03 @013   ----------------------------------------
 .byte   W96
@  #03 @014   ----------------------------------------
 .byte   W96
@  #03 @015   ----------------------------------------
 .byte   W96
@  #03 @016   ----------------------------------------
Label_01010EB9:
 .byte   N23 ,Fs3 ,v080
 .byte   N23 ,Cs4
 .byte   W48
 .byte   N11 ,Fs3
 .byte   N11 ,Cs4
 .byte   W24
 .byte   N23 ,Fs3
 .byte   N23 ,Cs4
 .byte   W24
 .byte   PEND 
@  #03 @017   ----------------------------------------
Label_01010ECA:
 .byte   W24
 .byte   N23 ,Dn3 ,v080
 .byte   N23 ,Dn4
 .byte   W40
 .byte   N15 ,En3
 .byte   N15 ,En4
 .byte   W16
 .byte   Dn3
 .byte   N15 ,Dn4
 .byte   W16
 .byte   PEND 
@  #03 @018   ----------------------------------------
 .byte   PATT
  .word Label_01010EB9
@  #03 @019   ----------------------------------------
 .byte   PATT
  .word Label_01010ECA
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
 .byte   W72
 .byte   N23 ,Fs2 ,v064
 .byte   W24
@  #03 @032   ----------------------------------------
 .byte   N30 ,An2
 .byte   W32
 .byte   N32 ,Bn2
 .byte   W32
 .byte   Cs3
 .byte   W32
@  #03 @033   ----------------------------------------
 .byte   N92 ,Ds3
 .byte   W96
@  #03 @034   ----------------------------------------
 .byte   N96 ,Dn3
 .byte   W96
@  #03 @035   ----------------------------------------
 .byte   Cs3
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
 .byte   W96
@  #03 @046   ----------------------------------------
 .byte   W96
@  #03 @047   ----------------------------------------
 .byte   W96
@  #03 @048   ----------------------------------------
 .byte   W96
@  #03 @049   ----------------------------------------
 .byte   TIE ,Fs2 ,v080
 .byte   TIE ,Fs3
 .byte   W96
@  #03 @050   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs2 ,v066
 .byte   N01 ,Fs2 ,v068
 .byte   W01
@  #03 @051   ----------------------------------------
 .byte   N92
 .byte   N92 ,Fs3
 .byte   W96
@  #03 @052   ----------------------------------------
 .byte   An2
 .byte   N92 ,An3
 .byte   W96
@  #03 @053   ----------------------------------------
 .byte   Gn2
 .byte   N92 ,Gn3
 .byte   W96
@  #03 @054   ----------------------------------------
 .byte   Fs2
 .byte   N92 ,Fs3
 .byte   W96
@  #03 @055   ----------------------------------------
 .byte   En2
 .byte   N92 ,En3
 .byte   W96
@  #03 @056   ----------------------------------------
 .byte   Dn2
 .byte   N92 ,Dn3
 .byte   W96
@  #03 @057   ----------------------------------------
Label_01010F39:
 .byte   N07 ,Fn2 ,v080
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W48
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #03 @058   ----------------------------------------
 .byte   N11
 .byte   W48
 .byte   N23 ,Fs2
 .byte   W24
 .byte   N24 ,Gs2
 .byte   W24
@  #03 @059   ----------------------------------------
 .byte   PATT
  .word Label_01010F39
@  #03 @060   ----------------------------------------
 .byte   N11 ,Fn2 ,v080
 .byte   W48
 .byte   N23 ,Gs2
 .byte   W24
 .byte   N24 ,Fs2
 .byte   W24
@  #03 @061   ----------------------------------------
Label_01010F5D:
 .byte   N07 ,Fn2 ,v080
 .byte   N07 ,Cs4
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   Fn2
 .byte   N07 ,Cs4
 .byte   W08
 .byte   N11 ,Fn2
 .byte   N11 ,Cs4
 .byte   W48
 .byte   N07 ,Fn2
 .byte   N07 ,Cs4
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   Fn2
 .byte   N07 ,Cs4
 .byte   W08
 .byte   PEND 
@  #03 @062   ----------------------------------------
 .byte   N11 ,Fn2
 .byte   N11 ,Cs4
 .byte   W48
 .byte   N23 ,Fs2
 .byte   N23 ,Dn4
 .byte   W24
 .byte   Gs2
 .byte   N23 ,En4
 .byte   W24
@  #03 @063   ----------------------------------------
 .byte   PATT
  .word Label_01010F5D
@  #03 @064   ----------------------------------------
 .byte   N11 ,Fn2 ,v080
 .byte   N11 ,Cs4
 .byte   W48
 .byte   N23 ,Gs2
 .byte   N23 ,En4
 .byte   W24
 .byte   Fs2
 .byte   N23 ,Dn4
 .byte   W24
@  #03 @065   ----------------------------------------
 .byte   N32 ,Cs3
 .byte   N32 ,Cs4
 .byte   W96
@  #03 @066   ----------------------------------------
 .byte   W96
@  #03 @067   ----------------------------------------
 .byte   W24
 .byte   N68 ,Bn2
 .byte   W72
@  #03 @068   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N48 ,Dn3
 .byte   W48
@  #03 @069   ----------------------------------------
 .byte   N92 ,Bn2
 .byte   W96
@  #03 @070   ----------------------------------------
 .byte   N44 ,Fn3
 .byte   W48
 .byte   N48 ,Gs3
 .byte   W48
@  #03 @071   ----------------------------------------
 .byte   N23 ,An3
 .byte   W24
 .byte   N24 ,Fs3
 .byte   W24
 .byte   En4
 .byte   W24
 .byte   Dn4
 .byte   W24
@  #03 @072   ----------------------------------------
 .byte   Cs4
 .byte   W24
 .byte   Bn3
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   Gs3
 .byte   W24
@  #03 @073   ----------------------------------------
 .byte   TIE ,Fs3
 .byte   W96
@  #03 @074   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @075   ----------------------------------------
 .byte   W96
@  #03 @076   ----------------------------------------
 .byte   W96
@  #03 @077   ----------------------------------------
 .byte   N44 ,Cs3
 .byte   N44 ,Cs4 ,v096
 .byte   W48
 .byte   N92 ,Fs2 ,v080
 .byte   N92 ,Fs3 ,v096
 .byte   W48
@  #03 @078   ----------------------------------------
 .byte   W48
 .byte   N15 ,Ds2 ,v080
 .byte   N15 ,Ds3 ,v096
 .byte   W16
 .byte   Fs2 ,v080
 .byte   N15 ,Fs3 ,v096
 .byte   W16
 .byte   As2 ,v080
 .byte   N15 ,As3 ,v096
 .byte   W16
@  #03 @079   ----------------------------------------
 .byte   N44 ,Cs3 ,v080
 .byte   N44 ,Cs4 ,v096
 .byte   W48
 .byte   TIE ,Fs2 ,v080
 .byte   TIE ,Fs3 ,v096
 .byte   W48
@  #03 @080   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Fs2 ,v066
 .byte   N24 ,Fs2 ,v068
 .byte   W24
 .byte   W01
@  #03 @081   ----------------------------------------
 .byte   W96
@  #03 @082   ----------------------------------------
 .byte   W96
@  #03 @083   ----------------------------------------
 .byte   W96
@  #03 @084   ----------------------------------------
 .byte   W96
@  #03 @085   ----------------------------------------
 .byte   N44 ,Bn2 ,v080
 .byte   N44 ,Bn3 ,v096
 .byte   W48
 .byte   N92 ,En2 ,v080
 .byte   N92 ,En3 ,v096
 .byte   W48
@  #03 @086   ----------------------------------------
 .byte   W48
 .byte   N15 ,Cs2 ,v080
 .byte   N15 ,Cs3 ,v096
 .byte   W16
 .byte   En2 ,v080
 .byte   N15 ,En3 ,v096
 .byte   W16
 .byte   Gs2 ,v080
 .byte   N15 ,Gs3 ,v096
 .byte   W16
@  #03 @087   ----------------------------------------
 .byte   N44 ,Bn2 ,v080
 .byte   N44 ,Bn3 ,v096
 .byte   W48
 .byte   TIE ,En2 ,v080
 .byte   TIE ,En3 ,v096
 .byte   W48
@  #03 @088   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   En2 ,v064
 .byte   N24 ,En2 ,v064
 .byte   W24
 .byte   W01
@  #03 @089   ----------------------------------------
 .byte   W96
@  #03 @090   ----------------------------------------
 .byte   W96
@  #03 @091   ----------------------------------------
 .byte   W96
@  #03 @092   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #03 @100   ----------------------------------------
 .byte   W96
@  #03 @101   ----------------------------------------
 .byte   N44 ,An2
 .byte   W48
 .byte   N48 ,Cn3
 .byte   W48
@  #03 @102   ----------------------------------------
 .byte   Dn3
 .byte   W48
 .byte   Cn3
 .byte   W48
@  #03 @103   ----------------------------------------
 .byte   Dn3
 .byte   W48
 .byte   En3
 .byte   W48
@  #03 @104   ----------------------------------------
 .byte   Dn3
 .byte   W48
 .byte   Cs3
 .byte   W48
@  #03 @105   ----------------------------------------
 .byte   N05 ,An2
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,As2
 .byte   W24
 .byte   N05 ,Cn3
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,As2
 .byte   W24
@  #03 @106   ----------------------------------------
 .byte   N05
 .byte   N23 ,Dn3 ,v112
 .byte   W08
 .byte   N05 ,As2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   N23 ,Fn3 ,v112
 .byte   W24
 .byte   N05 ,As2 ,v096
 .byte   N23 ,As3 ,v112
 .byte   W08
 .byte   N05 ,As2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   N23 ,Cn4 ,v112
 .byte   W24
@  #03 @107   ----------------------------------------
 .byte   N05 ,Cn3 ,v096
 .byte   N44 ,Dn4 ,v112
 .byte   W08
 .byte   N05 ,Cn3 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05
 .byte   N44 ,Cn4 ,v112
 .byte   W08
 .byte   N05 ,Cn3 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
@  #03 @108   ----------------------------------------
 .byte   N05
 .byte   N44 ,Gn3 ,v112
 .byte   W08
 .byte   N05 ,Cn3 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05
 .byte   N44 ,Cn4 ,v112
 .byte   W08
 .byte   N05 ,Cn3 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
@  #03 @109   ----------------------------------------
 .byte   N05 ,An2
 .byte   N44 ,An3 ,v112
 .byte   W08
 .byte   N05 ,An2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05 ,Dn3 ,v112
 .byte   W08
 .byte   N03 ,Dn3 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
@  #03 @110   ----------------------------------------
 .byte   N05 ,Cn3
 .byte   N23 ,An3 ,v112
 .byte   W08
 .byte   N05 ,Cn3 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   N23 ,Cn4 ,v112
 .byte   W24
 .byte   N05 ,Gn2 ,v096
 .byte   N23 ,En4 ,v112
 .byte   W08
 .byte   N05 ,Gn2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   N23 ,Gn4 ,v112
 .byte   W24
@  #03 @111   ----------------------------------------
 .byte   N05 ,Fn2 ,v096
 .byte   N92 ,Fn4 ,v112
 .byte   W08
 .byte   N05 ,Fn2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Gn2
 .byte   W24
 .byte   N05 ,An2
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Gn2
 .byte   W24
@  #03 @112   ----------------------------------------
 .byte   N05 ,Fn2
 .byte   N23 ,Dn4 ,v112
 .byte   W08
 .byte   N05 ,Fn2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Gn2
 .byte   W24
 .byte   N05 ,An2
 .byte   N44 ,Gn4 ,v112
 .byte   W08
 .byte   N05 ,An2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Gn2
 .byte   W24
@  #03 @113   ----------------------------------------
 .byte   N05 ,An2
 .byte   N68 ,An4 ,v112
 .byte   W08
 .byte   N05 ,An2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05 ,As2
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   N23 ,Gn4 ,v112
 .byte   W24
@  #03 @114   ----------------------------------------
 .byte   N05 ,An2 ,v096
 .byte   N44 ,Dn4 ,v112
 .byte   W08
 .byte   N05 ,An2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05 ,As2
 .byte   N44 ,Gn4 ,v112
 .byte   W08
 .byte   N05 ,As2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
@  #03 @115   ----------------------------------------
 .byte   N05 ,Cn3
 .byte   N44 ,En4 ,v112
 .byte   W08
 .byte   N05 ,Cn3 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05 ,An2
 .byte   N44 ,Fn4 ,v112
 .byte   W08
 .byte   N05 ,An2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
@  #03 @116   ----------------------------------------
 .byte   N05 ,Cn3
 .byte   N44 ,Gn4 ,v112
 .byte   W08
 .byte   N05 ,Cn3 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05 ,An2
 .byte   N15 ,Cn4 ,v112
 .byte   W08
 .byte   N05 ,An2 ,v096
 .byte   W08
 .byte   N05
 .byte   N15 ,En4 ,v112
 .byte   W08
 .byte   N07 ,An2 ,v096
 .byte   W08
 .byte   N15 ,Gn4 ,v112
 .byte   W16
@  #03 @117   ----------------------------------------
Label_010111BD:
 .byte   N05 ,As2 ,v096
 .byte   N60 ,Cn5 ,v112
 .byte   W08
 .byte   N05 ,As2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05 ,Cn3
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   N15 ,As4 ,v112
 .byte   W08
 .byte   N07 ,Cn3 ,v096
 .byte   W08
 .byte   N15 ,An4 ,v112
 .byte   W16
 .byte   PEND 
@  #03 @118   ----------------------------------------
 .byte   N05 ,As2 ,v096
 .byte   N44 ,Fn4 ,v112
 .byte   W08
 .byte   N05 ,As2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05 ,An2
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   N11 ,Dn4 ,v112
 .byte   W12
 .byte   N12 ,Fn4
 .byte   W12
@  #03 @119   ----------------------------------------
 .byte   PATT
  .word Label_010111BD
@  #03 @120   ----------------------------------------
 .byte   N05 ,As2 ,v096
 .byte   N44 ,Gn4 ,v112
 .byte   W08
 .byte   N05 ,As2 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,An2
 .byte   W24
 .byte   N05 ,Dn3
 .byte   N23 ,Fn4 ,v112
 .byte   W08
 .byte   N05 ,Dn3 ,v096
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Cn3
 .byte   N23 ,En4 ,v112
 .byte   W24
@  #03 @121   ----------------------------------------
 .byte   TIE ,Dn4
 .byte   W96
@  #03 @122   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @123   ----------------------------------------
 .byte   W96
@  #03 @124   ----------------------------------------
 .byte   W96
@  #03 @125   ----------------------------------------
 .byte   W96
@  #03 @126   ----------------------------------------
 .byte   W96
@  #03 @127   ----------------------------------------
 .byte   W96
@  #03 @128   ----------------------------------------
 .byte   W96
@  #03 @129   ----------------------------------------
 .byte   W96
@  #03 @130   ----------------------------------------
 .byte   W96
@  #03 @131   ----------------------------------------
 .byte   W96
@  #03 @132   ----------------------------------------
 .byte   W96
@  #03 @133   ----------------------------------------
 .byte   W48
 .byte   TIE ,Fn2 ,v080
 .byte   W48
@  #03 @134   ----------------------------------------
 .byte   N48 ,Cs3
 .byte   W48
 .byte   Fn3
 .byte   W48
@  #03 @135   ----------------------------------------
 .byte   N96 ,Gs3
 .byte   W96
@  #03 @136   ----------------------------------------
 .byte   W60
 .byte   W03
 .byte   EOT
 .byte   Fn2
 .byte   N01 ,Fn2 ,v064
 .byte   N01 ,Fn3 ,v068
 .byte   W01
 .byte   N15 ,En2
 .byte   N15 ,As3
 .byte   W16
 .byte   Fn2
 .byte   N15 ,Bn3
 .byte   W16
@  #03 @137   ----------------------------------------
 .byte   W24
 .byte   N16 ,Ds3 ,v096
 .byte   W36
 .byte   N03 ,Bn2
 .byte   W36
@  #03 @138   ----------------------------------------
 .byte   W16
 .byte   N10 ,En2
 .byte   W36
 .byte   W02
 .byte   N12 ,Fs2
 .byte   W18
 .byte   Gs2
 .byte   W16
 .byte   N07 ,Bn2 ,v080
 .byte   W08
@  #03 @139   ----------------------------------------
 .byte   W24
 .byte   N16 ,Bn2 ,v096
 .byte   W36
 .byte   N12 ,En3
 .byte   W36
@  #03 @140   ----------------------------------------
 .byte   W12
 .byte   N10 ,En2
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W18
 .byte   Bn2
 .byte   W18
 .byte   Cs3
 .byte   W16
 .byte   N07 ,Ds3 ,v080
 .byte   W20
@  #03 @141   ----------------------------------------
 .byte   W24
 .byte   N16 ,Ds3 ,v096
 .byte   N16 ,Bn4
 .byte   W36
 .byte   N12 ,Bn2
 .byte   N16 ,Fs4
 .byte   W36
@  #03 @142   ----------------------------------------
 .byte   W16
 .byte   N10 ,En2
 .byte   N10 ,Bn3
 .byte   W36
 .byte   W02
 .byte   N12 ,Fs2
 .byte   W02
 .byte   N10 ,Cs4
 .byte   W16
 .byte   N12 ,Gs2
 .byte   N10 ,En4
 .byte   W12
 .byte   N12 ,Bn2 ,v080
 .byte   W04
 .byte   N07 ,Fs4
 .byte   W08
@  #03 @143   ----------------------------------------
 .byte   W24
 .byte   N16 ,Bn2 ,v096
 .byte   N16 ,Gs4
 .byte   W36
 .byte   N12 ,En3
 .byte   N16 ,Cs5
 .byte   W36
@  #03 @144   ----------------------------------------
 .byte   W12
 .byte   N10 ,En2
 .byte   N10 ,Cs4
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W04
 .byte   N10 ,En4
 .byte   W14
 .byte   N12 ,Bn2
 .byte   W02
 .byte   N10 ,Fs4
 .byte   W16
 .byte   N12 ,Cs3
 .byte   N10 ,Gs4
 .byte   W12
 .byte   N18 ,Ds3 ,v080
 .byte   W04
 .byte   N07 ,Bn4
 .byte   W20
@  #03 @145   ----------------------------------------
 .byte   W96
@  #03 @146   ----------------------------------------
 .byte   W96
@  #03 @147   ----------------------------------------
 .byte   W96
@  #03 @148   ----------------------------------------
 .byte   W96
@  #03 @149   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   W96
@  #03 @150   ----------------------------------------
 .byte   N96 ,En3
 .byte   W96
@  #03 @151   ----------------------------------------
 .byte   Fs3
 .byte   W96
@  #03 @152   ----------------------------------------
 .byte   En3
 .byte   W96
@  #03 @153   ----------------------------------------
 .byte   Dn3
 .byte   W96
@  #03 @154   ----------------------------------------
 .byte   En3
 .byte   W96
@  #03 @155   ----------------------------------------
 .byte   Fs3
 .byte   W96
@  #03 @156   ----------------------------------------
 .byte   Gs3
 .byte   W96
@  #03 @157   ----------------------------------------
 .byte   W96
@  #03 @158   ----------------------------------------
 .byte   W96
@  #03 @159   ----------------------------------------
 .byte   W96
@  #03 @160   ----------------------------------------
 .byte   W96
@  #03 @161   ----------------------------------------
 .byte   W96
@  #03 @162   ----------------------------------------
 .byte   GOTO
  .word Label_01010EB5
@  #03 @163   ----------------------------------------
 .byte   W96
@  #03 @164   ----------------------------------------
 .byte   W96
@  #03 @165   ----------------------------------------
 .byte   W96
@  #03 @166   ----------------------------------------
 .byte   W96
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

.align 2, 0
song07_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 40
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+25
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-15
 .byte   N16 ,An1 ,v096
 .byte   W96
@  #04 @001   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #04 @002   ----------------------------------------
 .byte   N18 ,Bn1
 .byte   W96
@  #04 @003   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #04 @004   ----------------------------------------
 .byte   N18 ,An1
 .byte   W96
@  #04 @005   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #04 @006   ----------------------------------------
 .byte   TIE ,Bn1 ,v080
 .byte   W96
@  #04 @007   ----------------------------------------
 .byte   W96
@  #04 @008   ----------------------------------------
 .byte   W96
@  #04 @009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #04 @010   ----------------------------------------
 .byte   W96
@  #04 @011   ----------------------------------------
 .byte   W96
@  #04 @012   ----------------------------------------
Label_54B037:
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
 .byte   W96
@  #04 @018   ----------------------------------------
 .byte   W96
@  #04 @019   ----------------------------------------
 .byte   W96
@  #04 @020   ----------------------------------------
 .byte   W96
@  #04 @021   ----------------------------------------
 .byte   W96
@  #04 @022   ----------------------------------------
 .byte   W96
@  #04 @023   ----------------------------------------
 .byte   W96
@  #04 @024   ----------------------------------------
 .byte   W96
@  #04 @025   ----------------------------------------
 .byte   W96
@  #04 @026   ----------------------------------------
 .byte   W96
@  #04 @027   ----------------------------------------
 .byte   W96
@  #04 @028   ----------------------------------------
 .byte   W96
@  #04 @029   ----------------------------------------
 .byte   W96
@  #04 @030   ----------------------------------------
 .byte   W96
@  #04 @031   ----------------------------------------
 .byte   W96
@  #04 @032   ----------------------------------------
 .byte   W96
@  #04 @033   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #04 @043   ----------------------------------------
 .byte   W96
@  #04 @044   ----------------------------------------
 .byte   W96
@  #04 @045   ----------------------------------------
 .byte   W96
@  #04 @046   ----------------------------------------
 .byte   W96
@  #04 @047   ----------------------------------------
 .byte   W96
@  #04 @048   ----------------------------------------
 .byte   W96
@  #04 @049   ----------------------------------------
 .byte   TIE ,Bn2 ,v080
 .byte   W96
@  #04 @050   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #04 @051   ----------------------------------------
 .byte   TIE ,An2
 .byte   W96
@  #04 @052   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #04 @053   ----------------------------------------
 .byte   TIE ,Gn2
 .byte   W96
@  #04 @054   ----------------------------------------
 .byte   W96
@  #04 @055   ----------------------------------------
 .byte   W96
@  #04 @056   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #04 @057   ----------------------------------------
Label_54B074:
 .byte   N07 ,Cs2 ,v080
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W48
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #04 @058   ----------------------------------------
Label_54B081:
 .byte   N11 ,Cs2 ,v080
 .byte   W48
 .byte   N23 ,Dn2
 .byte   W24
 .byte   N24 ,En2
 .byte   W24
 .byte   PEND 
@  #04 @059   ----------------------------------------
 .byte   PATT
  .word Label_54B074
@  #04 @060   ----------------------------------------
Label_54B091:
 .byte   N11 ,Cs2 ,v080
 .byte   W48
 .byte   N23 ,En2
 .byte   W24
 .byte   N24 ,Dn2
 .byte   W24
 .byte   PEND 
@  #04 @061   ----------------------------------------
 .byte   PATT
  .word Label_54B074
@  #04 @062   ----------------------------------------
 .byte   PATT
  .word Label_54B081
@  #04 @063   ----------------------------------------
 .byte   PATT
  .word Label_54B074
@  #04 @064   ----------------------------------------
 .byte   PATT
  .word Label_54B091
@  #04 @065   ----------------------------------------
 .byte   N32 ,Fs2 ,v080
 .byte   W96
@  #04 @066   ----------------------------------------
 .byte   W96
@  #04 @067   ----------------------------------------
 .byte   W96
@  #04 @068   ----------------------------------------
 .byte   W96
@  #04 @069   ----------------------------------------
 .byte   W96
@  #04 @070   ----------------------------------------
 .byte   W96
@  #04 @071   ----------------------------------------
 .byte   W96
@  #04 @072   ----------------------------------------
 .byte   W96
@  #04 @073   ----------------------------------------
 .byte   W96
@  #04 @074   ----------------------------------------
 .byte   W96
@  #04 @075   ----------------------------------------
 .byte   W96
@  #04 @076   ----------------------------------------
 .byte   W96
@  #04 @077   ----------------------------------------
 .byte   W96
@  #04 @078   ----------------------------------------
 .byte   W96
@  #04 @079   ----------------------------------------
 .byte   W96
@  #04 @080   ----------------------------------------
 .byte   W96
@  #04 @081   ----------------------------------------
 .byte   W96
@  #04 @082   ----------------------------------------
 .byte   W96
@  #04 @083   ----------------------------------------
 .byte   W96
@  #04 @084   ----------------------------------------
 .byte   W96
@  #04 @085   ----------------------------------------
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
 .byte   W96
@  #04 @097   ----------------------------------------
 .byte   W96
@  #04 @098   ----------------------------------------
 .byte   W96
@  #04 @099   ----------------------------------------
 .byte   W96
@  #04 @100   ----------------------------------------
 .byte   W96
@  #04 @101   ----------------------------------------
 .byte   W96
@  #04 @102   ----------------------------------------
 .byte   W96
@  #04 @103   ----------------------------------------
 .byte   W96
@  #04 @104   ----------------------------------------
 .byte   W96
@  #04 @105   ----------------------------------------
Label_54B0DB:
 .byte   N05 ,Fn2 ,v116
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05 ,Gn2
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Fn2
 .byte   W24
 .byte   PEND 
@  #04 @106   ----------------------------------------
 .byte   PATT
  .word Label_54B0DB
@  #04 @107   ----------------------------------------
 .byte   N05 ,As2 ,v116
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05 ,Gn2
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
@  #04 @108   ----------------------------------------
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
@  #04 @109   ----------------------------------------
Label_54B118:
 .byte   N05 ,En2 ,v116
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Fn2
 .byte   W24
 .byte   N05 ,Gn2
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Fn2
 .byte   W24
 .byte   PEND 
@  #04 @110   ----------------------------------------
 .byte   PATT
  .word Label_54B118
@  #04 @111   ----------------------------------------
Label_54B133:
 .byte   N05 ,Fn2 ,v060
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Gn2
 .byte   W24
 .byte   N05 ,An2
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Gn2
 .byte   W24
 .byte   PEND 
@  #04 @112   ----------------------------------------
 .byte   PATT
  .word Label_54B133
@  #04 @113   ----------------------------------------
 .byte   PATT
  .word Label_54B118
@  #04 @114   ----------------------------------------
 .byte   PATT
  .word Label_54B118
@  #04 @115   ----------------------------------------
 .byte   PATT
  .word Label_54B118
@  #04 @116   ----------------------------------------
 .byte   PATT
  .word Label_54B118
@  #04 @117   ----------------------------------------
 .byte   PATT
  .word Label_54B118
@  #04 @118   ----------------------------------------
 .byte   PATT
  .word Label_54B118
@  #04 @119   ----------------------------------------
 .byte   PATT
  .word Label_54B118
@  #04 @120   ----------------------------------------
 .byte   N05 ,Dn2 ,v116
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07 ,Cn2
 .byte   W24
 .byte   N05 ,En2
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N05
 .byte   W08
 .byte   N07
 .byte   W24
@  #04 @121   ----------------------------------------
 .byte   W96
@  #04 @122   ----------------------------------------
 .byte   W96
@  #04 @123   ----------------------------------------
 .byte   W96
@  #04 @124   ----------------------------------------
 .byte   W96
@  #04 @125   ----------------------------------------
 .byte   W96
@  #04 @126   ----------------------------------------
 .byte   W96
@  #04 @127   ----------------------------------------
 .byte   W96
@  #04 @128   ----------------------------------------
 .byte   W96
@  #04 @129   ----------------------------------------
 .byte   W96
@  #04 @130   ----------------------------------------
 .byte   W96
@  #04 @131   ----------------------------------------
 .byte   W96
@  #04 @132   ----------------------------------------
 .byte   W96
@  #04 @133   ----------------------------------------
 .byte   TIE ,Cs2 ,v080
 .byte   W96
@  #04 @134   ----------------------------------------
 .byte   W96
@  #04 @135   ----------------------------------------
 .byte   W96
@  #04 @136   ----------------------------------------
 .byte   W60
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N15 ,Ds2
 .byte   W16
 .byte   N16 ,En2
 .byte   W16
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
 .byte   W96
@  #04 @143   ----------------------------------------
 .byte   W96
@  #04 @144   ----------------------------------------
 .byte   W96
@  #04 @145   ----------------------------------------
 .byte   W96
@  #04 @146   ----------------------------------------
 .byte   W96
@  #04 @147   ----------------------------------------
 .byte   W96
@  #04 @148   ----------------------------------------
 .byte   W96
@  #04 @149   ----------------------------------------
 .byte   W96
@  #04 @150   ----------------------------------------
 .byte   W96
@  #04 @151   ----------------------------------------
 .byte   W96
@  #04 @152   ----------------------------------------
 .byte   W96
@  #04 @153   ----------------------------------------
 .byte   W96
@  #04 @154   ----------------------------------------
 .byte   W96
@  #04 @155   ----------------------------------------
 .byte   W96
@  #04 @156   ----------------------------------------
 .byte   W96
@  #04 @157   ----------------------------------------
 .byte   W96
@  #04 @158   ----------------------------------------
 .byte   W96
@  #04 @159   ----------------------------------------
 .byte   W96
@  #04 @160   ----------------------------------------
 .byte   W96
@  #04 @161   ----------------------------------------
 .byte   W96
@  #04 @162   ----------------------------------------
 .byte   GOTO
  .word Label_54B037
@  #04 @163   ----------------------------------------
 .byte   W96
@  #04 @164   ----------------------------------------
 .byte   W96
@  #04 @165   ----------------------------------------
 .byte   W96
@  #04 @166   ----------------------------------------
 .byte   W96
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

.align 2, 0
song07_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 61
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+31
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N16 ,Fs0 ,v096
 .byte   W24
 .byte   N11 ,Fs2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N15
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N80
 .byte   W12
@  #05 @001   ----------------------------------------
 .byte   W72
 .byte   N16 ,Fs0
 .byte   W24
@  #05 @002   ----------------------------------------
 .byte   N18 ,Gn0
 .byte   W24
 .byte   N17 ,Fs2
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11
 .byte   W12
@  #05 @003   ----------------------------------------
 .byte   N68
 .byte   W72
 .byte   N16 ,Gn0
 .byte   W24
@  #05 @004   ----------------------------------------
 .byte   N18 ,An0
 .byte   W24
 .byte   N11 ,Fs2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N84 ,Fs2
 .byte   W12
@  #05 @005   ----------------------------------------
 .byte   W72
 .byte   N16 ,An0
 .byte   N17 ,Fs2
 .byte   W18
 .byte   N05
 .byte   W06
@  #05 @006   ----------------------------------------
 .byte   TIE ,Bn0 ,v080
 .byte   TIE ,Cs3 ,v096
 .byte   W96
@  #05 @007   ----------------------------------------
 .byte   W96
@  #05 @008   ----------------------------------------
 .byte   W96
@  #05 @009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn0 ,v061
 .byte   N01 ,Bn0 ,v064
 .byte   W01
@  #05 @010   ----------------------------------------
 .byte   W96
@  #05 @011   ----------------------------------------
 .byte   W96
@  #05 @012   ----------------------------------------
Label_0100F6AA:
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
 .byte   W16
 .byte   N23 ,Fs3 ,v112
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N15 ,An3
 .byte   W16
 .byte   N16 ,Gs3
 .byte   W16
 .byte   Fs3
 .byte   W16
@  #05 @021   ----------------------------------------
Label_0100F6C1:
 .byte   N30 ,En3 ,v112
 .byte   W32
 .byte   N32 ,Dn3
 .byte   W32
 .byte   N15 ,An2
 .byte   W16
 .byte   N16 ,Bn2
 .byte   W16
 .byte   PEND 
@  #05 @022   ----------------------------------------
Label_0100F6CF:
 .byte   N92 ,En1 ,v080
 .byte   TIE ,Cs3 ,v112
 .byte   W96
 .byte   PEND 
@  #05 @023   ----------------------------------------
Label_0100F6D7:
 .byte   N92 ,Dn1 ,v080
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Cs3
 .byte   N01
 .byte   W01
@  #05 @024   ----------------------------------------
Label_0100F6E1:
 .byte   N92 ,Cs1 ,v080
 .byte   W16
 .byte   N23 ,Fs3 ,v112
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N15 ,An3
 .byte   W16
 .byte   N16 ,Gs3
 .byte   W16
 .byte   N12 ,Fs3
 .byte   W16
 .byte   PEND 
@  #05 @025   ----------------------------------------
Label_0100F6F5:
 .byte   N92 ,Bn0 ,v080
 .byte   N30 ,En3 ,v112
 .byte   W32
 .byte   N32 ,Dn3
 .byte   W32
 .byte   N15 ,An2
 .byte   W16
 .byte   N12 ,Bn2
 .byte   W16
 .byte   PEND 
@  #05 @026   ----------------------------------------
Label_0100F706:
 .byte   N92 ,Gs0 ,v080
 .byte   TIE ,Cs3 ,v112
 .byte   W96
 .byte   PEND 
@  #05 @027   ----------------------------------------
 .byte   N92 ,Cs1 ,v080
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Cs3
 .byte   N01
 .byte   W01
 .byte   N23 ,Cs3 ,v112
 .byte   W24
@  #05 @028   ----------------------------------------
 .byte   N92 ,Bn0 ,v080
 .byte   N44 ,Dn3 ,v112
 .byte   W48
 .byte   Bn2
 .byte   W48
@  #05 @029   ----------------------------------------
 .byte   N92 ,Gs0 ,v080
 .byte   N44 ,En2 ,v112
 .byte   W48
 .byte   En3
 .byte   W48
@  #05 @030   ----------------------------------------
 .byte   N92 ,Fs0 ,v080
 .byte   N15 ,Dn3 ,v112
 .byte   W16
 .byte   N16 ,Cs3
 .byte   W16
 .byte   Bn2
 .byte   W16
 .byte   N92 ,An2
 .byte   W48
@  #05 @031   ----------------------------------------
 .byte   N44 ,En0 ,v080
 .byte   W48
 .byte   N15 ,Fs2 ,v112
 .byte   W16
 .byte   N16 ,An2
 .byte   W16
 .byte   Cs3
 .byte   W16
@  #05 @032   ----------------------------------------
 .byte   N92 ,Ds1 ,v080
 .byte   N68 ,Fs3 ,v112
 .byte   W72
 .byte   N23
 .byte   W24
@  #05 @033   ----------------------------------------
 .byte   N92 ,Gs0 ,v080
 .byte   N44 ,Gs3 ,v112
 .byte   W48
 .byte   Ds3
 .byte   W48
@  #05 @034   ----------------------------------------
 .byte   N92 ,Dn1 ,v080
 .byte   N92 ,Fs3 ,v112
 .byte   W96
@  #05 @035   ----------------------------------------
 .byte   Cs1 ,v080
 .byte   N92 ,Fn3 ,v112
 .byte   W96
@  #05 @036   ----------------------------------------
 .byte   N23 ,Cs2 ,v080
 .byte   W48
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W16
@  #05 @037   ----------------------------------------
 .byte   N11 ,Fs1
 .byte   W16
 .byte   N23 ,Fs3 ,v112
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N15 ,An3
 .byte   W16
 .byte   N16 ,Gs3
 .byte   W16
 .byte   Fs3
 .byte   W16
@  #05 @038   ----------------------------------------
 .byte   PATT
  .word Label_0100F6C1
@  #05 @039   ----------------------------------------
 .byte   PATT
  .word Label_0100F6CF
@  #05 @040   ----------------------------------------
 .byte   PATT
  .word Label_0100F6D7
@  #05 @041   ----------------------------------------
 .byte   EOT
 .byte   Cs3
 .byte   N01 ,Cs3 ,v080
 .byte   W01
@  #05 @042   ----------------------------------------
 .byte   PATT
  .word Label_0100F6E1
@  #05 @043   ----------------------------------------
 .byte   PATT
  .word Label_0100F6F5
@  #05 @044   ----------------------------------------
 .byte   PATT
  .word Label_0100F706
@  #05 @045   ----------------------------------------
 .byte   N44 ,Cs1 ,v080
 .byte   W48
 .byte   N15 ,Fn1
 .byte   W15
 .byte   EOT
 .byte   Cs3
 .byte   N01
 .byte   W01
 .byte   N15 ,An2 ,v112
 .byte   W16
 .byte   N16 ,Cs3
 .byte   W16
@  #05 @046   ----------------------------------------
 .byte   N92 ,Fs1 ,v080
 .byte   N60 ,Dn3 ,v112
 .byte   W64
 .byte   N15 ,En3
 .byte   W16
 .byte   N12 ,Fs3
 .byte   W16
@  #05 @047   ----------------------------------------
 .byte   N44 ,En1 ,v080
 .byte   N68 ,Gs3 ,v112
 .byte   W48
 .byte   N44 ,Gs1 ,v080
 .byte   W24
 .byte   N23 ,Bn2 ,v112
 .byte   W24
@  #05 @048   ----------------------------------------
 .byte   N44 ,Cs1 ,v080
 .byte   N60 ,Cs3 ,v112
 .byte   W48
 .byte   N44 ,Bn0 ,v080
 .byte   W16
 .byte   N15 ,Dn3 ,v112
 .byte   W16
 .byte   N12 ,En3
 .byte   W16
@  #05 @049   ----------------------------------------
 .byte   N44 ,As0 ,v080
 .byte   N44 ,Fs3 ,v112
 .byte   W48
 .byte   Fs0 ,v080
 .byte   N44 ,En3 ,v112
 .byte   W48
@  #05 @050   ----------------------------------------
 .byte   TIE ,Bn0 ,v080
 .byte   N15 ,En3 ,v112
 .byte   W16
 .byte   N16 ,Dn3
 .byte   W16
 .byte   Cs3
 .byte   W16
 .byte   TIE ,Dn3
 .byte   W48
@  #05 @051   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn0 ,v062
 .byte   N01 ,Bn0 ,v064
 .byte   W01
@  #05 @052   ----------------------------------------
 .byte   TIE ,An0 ,v080
 .byte   N15 ,En3 ,v112
 .byte   W16
 .byte   N16 ,Dn3
 .byte   W16
 .byte   Cs3
 .byte   W16
 .byte   TIE ,Dn3
 .byte   W48
@  #05 @053   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   An0 ,v062
 .byte   N01 ,An0 ,v064
 .byte   W01
@  #05 @054   ----------------------------------------
 .byte   TIE ,Gn0 ,v080
 .byte   N15 ,En3 ,v112
 .byte   W16
 .byte   N16 ,Dn3
 .byte   W16
 .byte   Cs3
 .byte   W16
 .byte   TIE ,Dn3
 .byte   W48
@  #05 @055   ----------------------------------------
 .byte   W96
@  #05 @056   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Gn0 ,v062
 .byte   W01
 .byte   N23 ,Bn2
 .byte   W24
@  #05 @057   ----------------------------------------
 .byte   N44 ,En3
 .byte   W48
 .byte   Fs3
 .byte   W44
 .byte   W03
 .byte   N01 ,Gn0
 .byte   W01
@  #05 @058   ----------------------------------------
 .byte   N07 ,Cs1 ,v080
 .byte   TIE ,Gs3 ,v112
 .byte   W16
 .byte   N07 ,Cs1 ,v080
 .byte   W08
 .byte   N11
 .byte   W48
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
@  #05 @059   ----------------------------------------
Label_0100F857:
 .byte   N11 ,Cs1 ,v080
 .byte   W48
 .byte   N23 ,Dn1
 .byte   W24
 .byte   N24 ,En1
 .byte   W24
 .byte   PEND 
@  #05 @060   ----------------------------------------
Label_0100F862:
 .byte   N07 ,Cs1 ,v080
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W48
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #05 @061   ----------------------------------------
 .byte   N11
 .byte   W48
 .byte   N23 ,En1
 .byte   W24
 .byte   Dn1
 .byte   W23
 .byte   EOT
 .byte   Gs3
 .byte   N01
 .byte   W01
@  #05 @062   ----------------------------------------
 .byte   PATT
  .word Label_0100F862
@  #05 @063   ----------------------------------------
 .byte   PATT
  .word Label_0100F857
@  #05 @064   ----------------------------------------
 .byte   PATT
  .word Label_0100F862
@  #05 @065   ----------------------------------------
 .byte   N11 ,Cs1 ,v080
 .byte   W48
 .byte   N23 ,En1
 .byte   W24
 .byte   N24 ,Dn1
 .byte   W24
@  #05 @066   ----------------------------------------
 .byte   N32 ,Fs0
 .byte   W48
 .byte   N23 ,As2 ,v112
 .byte   W24
 .byte   N24 ,Bn2
 .byte   W24
@  #05 @067   ----------------------------------------
 .byte   Cs3
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Fs3
 .byte   W24
@  #05 @068   ----------------------------------------
 .byte   TIE ,Dn3
 .byte   W24
 .byte   N68 ,Bn0 ,v096
 .byte   W72
@  #05 @069   ----------------------------------------
 .byte   N92 ,An0
 .byte   W96
@  #05 @070   ----------------------------------------
 .byte   N23 ,Gn0
 .byte   W23
 .byte   EOT
 .byte   Dn3
 .byte   N24
 .byte   W24
 .byte   W01
 .byte   N23 ,Bn2 ,v112
 .byte   W24
 .byte   N24 ,An2
 .byte   W24
@  #05 @071   ----------------------------------------
 .byte   N92 ,Cs1 ,v096
 .byte   N23 ,Gs2 ,v112
 .byte   W24
 .byte   N24 ,Bn2
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   N20 ,Dn3
 .byte   W24
@  #05 @072   ----------------------------------------
 .byte   N92 ,Fs0 ,v096
 .byte   TIE ,Cs3 ,v112
 .byte   W96
@  #05 @073   ----------------------------------------
 .byte   N92 ,En1 ,v096
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cs3
 .byte   N01
 .byte   W01
@  #05 @074   ----------------------------------------
 .byte   W96
@  #05 @075   ----------------------------------------
 .byte   W96
@  #05 @076   ----------------------------------------
 .byte   W96
@  #05 @077   ----------------------------------------
 .byte   W96
@  #05 @078   ----------------------------------------
 .byte   TIE ,Ds0
 .byte   W96
@  #05 @079   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #05 @080   ----------------------------------------
 .byte   TIE ,Dn0
 .byte   W96
@  #05 @081   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #05 @082   ----------------------------------------
 .byte   W96
@  #05 @083   ----------------------------------------
 .byte   W96
@  #05 @084   ----------------------------------------
 .byte   W96
@  #05 @085   ----------------------------------------
 .byte   W96
@  #05 @086   ----------------------------------------
 .byte   TIE ,Cs0
 .byte   W96
@  #05 @087   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #05 @088   ----------------------------------------
 .byte   TIE ,Cn0
 .byte   W96
@  #05 @089   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #05 @090   ----------------------------------------
 .byte   W24
 .byte   N44 ,Fs2 ,v112
 .byte   W48
 .byte   N23 ,En2
 .byte   W24
@  #05 @091   ----------------------------------------
 .byte   N24 ,Fs2
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N24 ,Bn2
 .byte   W24
 .byte   An2
 .byte   W24
@  #05 @092   ----------------------------------------
 .byte   Gn2
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   Cs3
 .byte   W24
 .byte   Bn2
 .byte   W24
@  #05 @093   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N48 ,As2
 .byte   W48
@  #05 @094   ----------------------------------------
 .byte   W24
 .byte   N23 ,Dn3
 .byte   W24
 .byte   N24 ,Cs3
 .byte   W24
 .byte   Bn2
 .byte   W24
@  #05 @095   ----------------------------------------
 .byte   An2
 .byte   W24
 .byte   Fs2
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   An2
 .byte   W24
@  #05 @096   ----------------------------------------
 .byte   Gn2
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Dn3
 .byte   W24
@  #05 @097   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   N11 ,En3
 .byte   W12
 .byte   N44 ,Cs3
 .byte   W48
@  #05 @098   ----------------------------------------
 .byte   N24 ,Dn1 ,v096
 .byte   W24
 .byte   Fn3 ,v112
 .byte   W24
 .byte   En1 ,v096
 .byte   W24
 .byte   N23 ,En3 ,v112
 .byte   W24
@  #05 @099   ----------------------------------------
 .byte   N44 ,Fn1 ,v096
 .byte   N44 ,En3 ,v112
 .byte   W48
 .byte   N23 ,Fs1 ,v096
 .byte   N23 ,Dn3 ,v112
 .byte   W24
 .byte   N24 ,Cn3
 .byte   W24
@  #05 @100   ----------------------------------------
 .byte   N44 ,Gn1 ,v096
 .byte   N23 ,As2 ,v112
 .byte   W24
 .byte   N20 ,Gn2
 .byte   W24
 .byte   N44 ,Gs1 ,v096
 .byte   N23 ,En3 ,v112
 .byte   W24
 .byte   N20 ,Dn3
 .byte   W24
@  #05 @101   ----------------------------------------
 .byte   N44 ,An1 ,v096
 .byte   N23 ,Dn3 ,v112
 .byte   W24
 .byte   N20 ,En3
 .byte   W24
 .byte   N44 ,An1 ,v096
 .byte   N23 ,Cs3 ,v112
 .byte   W48
@  #05 @102   ----------------------------------------
 .byte   N44 ,Dn1 ,v096
 .byte   N44 ,Dn2 ,v080
 .byte   W24
 .byte   N23 ,An3 ,v112
 .byte   W24
 .byte   N44 ,En1 ,v096
 .byte   N44 ,En2 ,v080
 .byte   N23 ,Gn3 ,v112
 .byte   W24
 .byte   N20 ,Fn3
 .byte   W24
@  #05 @103   ----------------------------------------
 .byte   N44 ,Fn1 ,v096
 .byte   N44 ,Fn2 ,v080
 .byte   N44 ,En3 ,v112
 .byte   W48
 .byte   N23 ,Fs1 ,v096
 .byte   N44 ,Fs2 ,v080
 .byte   N23 ,Dn3 ,v112
 .byte   W24
 .byte   N20 ,Cn3
 .byte   W24
@  #05 @104   ----------------------------------------
 .byte   N44 ,Gn1 ,v096
 .byte   N44 ,Gn2 ,v080
 .byte   N23 ,As2 ,v112
 .byte   W24
 .byte   N20 ,Dn3
 .byte   W24
 .byte   N44 ,Gs1 ,v096
 .byte   N44 ,Gs2 ,v080
 .byte   N23 ,Fn3 ,v112
 .byte   W24
 .byte   N20 ,Gn3
 .byte   W24
@  #05 @105   ----------------------------------------
 .byte   N44 ,An1 ,v096
 .byte   N44 ,An2 ,v080
 .byte   N23 ,En3 ,v112
 .byte   W48
 .byte   N44 ,An1 ,v096
 .byte   N44 ,An2 ,v080
 .byte   W48
@  #05 @106   ----------------------------------------
 .byte   TIE ,As0 ,v096
 .byte   TIE ,As1 ,v080
 .byte   TIE ,An3 ,v112
 .byte   W96
@  #05 @107   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   As0 ,v046
 .byte   An3
 .byte   N01 ,As0 ,v048
 .byte   W01
@  #05 @108   ----------------------------------------
Label_0100F9F3:
 .byte   TIE ,Cn1 ,v096
 .byte   TIE ,Cn2 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @109   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cn1 ,v048
 .byte   N01 ,Cn1 ,v048
 .byte   N01 ,An3
 .byte   W01
@  #05 @110   ----------------------------------------
 .byte   N92 ,Dn1 ,v096
 .byte   N92 ,Dn2 ,v080
 .byte   W96
@  #05 @111   ----------------------------------------
 .byte   Cn1 ,v096
 .byte   N92 ,Cn2 ,v080
 .byte   W96
@  #05 @112   ----------------------------------------
 .byte   TIE ,Bn0 ,v096
 .byte   TIE ,Bn1 ,v080
 .byte   W96
@  #05 @113   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn0 ,v047
 .byte   N01 ,Bn0 ,v048
 .byte   W01
@  #05 @114   ----------------------------------------
 .byte   TIE ,Gn0 ,v096
 .byte   TIE ,Gn1 ,v080
 .byte   W96
@  #05 @115   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gn0 ,v043
 .byte   N01 ,Gn0 ,v044
 .byte   W01
@  #05 @116   ----------------------------------------
 .byte   TIE ,An0 ,v096
 .byte   TIE ,An1 ,v080
 .byte   W96
@  #05 @117   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   An0 ,v045
 .byte   N01 ,An0 ,v048
 .byte   W01
@  #05 @118   ----------------------------------------
 .byte   TIE ,As0 ,v096
 .byte   TIE ,As1 ,v080
 .byte   W96
@  #05 @119   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   As0 ,v046
 .byte   N01 ,As0 ,v048
 .byte   W01
@  #05 @120   ----------------------------------------
 .byte   PATT
  .word Label_0100F9F3
@  #05 @121   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cn1 ,v048
 .byte   N01 ,Cn1 ,v048
 .byte   W01
@  #05 @122   ----------------------------------------
 .byte   W96
@  #05 @123   ----------------------------------------
 .byte   W96
@  #05 @124   ----------------------------------------
 .byte   W96
@  #05 @125   ----------------------------------------
 .byte   W96
@  #05 @126   ----------------------------------------
 .byte   W96
@  #05 @127   ----------------------------------------
 .byte   W96
@  #05 @128   ----------------------------------------
 .byte   W96
@  #05 @129   ----------------------------------------
 .byte   W96
@  #05 @130   ----------------------------------------
 .byte   TIE ,Ds0 ,v096
 .byte   TIE ,Ds2 ,v080
 .byte   W96
@  #05 @131   ----------------------------------------
 .byte   W96
@  #05 @132   ----------------------------------------
 .byte   W96
@  #05 @133   ----------------------------------------
 .byte   W96
@  #05 @134   ----------------------------------------
 .byte   W96
@  #05 @135   ----------------------------------------
 .byte   W96
@  #05 @136   ----------------------------------------
 .byte   W96
@  #05 @137   ----------------------------------------
 .byte   W60
 .byte   W03
 .byte   EOT
 .byte   Ds0 ,v051
 .byte   N01 ,Ds0 ,v052
 .byte   W01
 .byte   N15 ,En0 ,v096
 .byte   N15 ,En2 ,v080
 .byte   W16
 .byte   Fn0 ,v096
 .byte   N15 ,Fn2 ,v080
 .byte   W16
@  #05 @138   ----------------------------------------
 .byte   TIE ,Fs0 ,v096
 .byte   TIE ,Fs2 ,v080
 .byte   W96
@  #05 @139   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v054
 .byte   N01 ,Fs0 ,v056
 .byte   W01
 .byte   N15 ,Cs0 ,v096
 .byte   N15 ,Cs2 ,v080
 .byte   W16
 .byte   N30 ,En0 ,v096
 .byte   N30 ,En2 ,v080
 .byte   W08
@  #05 @140   ----------------------------------------
Label_0100FAAA:
 .byte   W24
 .byte   TIE ,Fs0 ,v096
 .byte   TIE ,Fs2 ,v080
 .byte   W72
 .byte   PEND 
@  #05 @141   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v054
 .byte   N01 ,Fs0 ,v056
 .byte   W01
 .byte   N07 ,BnM1 ,v096
 .byte   N07 ,Bn1 ,v080
 .byte   W08
 .byte   Cs0 ,v096
 .byte   N07 ,Cs2 ,v080
 .byte   W08
 .byte   TIE ,En0 ,v096
 .byte   TIE ,En2 ,v080
 .byte   W20
@  #05 @142   ----------------------------------------
 .byte   PATT
  .word Label_0100FAAA
@  #05 @143   ----------------------------------------
 .byte   EOT
 .byte   En0 ,v052
 .byte   W68
 .byte   W03
 .byte   Fs0 ,v054
 .byte   N01 ,Fs0 ,v056
 .byte   W01
 .byte   N15 ,Cs0 ,v096
 .byte   N15 ,Cs2 ,v080
 .byte   W16
 .byte   TIE ,En0 ,v096
 .byte   TIE ,En2 ,v080
 .byte   W08
@  #05 @144   ----------------------------------------
 .byte   PATT
  .word Label_0100FAAA
@  #05 @145   ----------------------------------------
 .byte   EOT
 .byte   En0 ,v052
 .byte   W56
 .byte   W03
 .byte   Fs0 ,v054
 .byte   N01 ,Fs0 ,v056
 .byte   W01
 .byte   N15 ,Cs0 ,v096
 .byte   N15 ,Cs2 ,v080
 .byte   W16
 .byte   N19 ,En0 ,v096
 .byte   N19 ,En2 ,v080
 .byte   W20
@  #05 @146   ----------------------------------------
 .byte   W96
@  #05 @147   ----------------------------------------
 .byte   W96
@  #05 @148   ----------------------------------------
 .byte   W96
@  #05 @149   ----------------------------------------
 .byte   W96
@  #05 @150   ----------------------------------------
 .byte   N92 ,Bn0 ,v096
 .byte   N92 ,Bn1 ,v080
 .byte   N60 ,An2 ,v127
 .byte   W64
 .byte   N15 ,Gs2
 .byte   W16
 .byte   N12 ,An2
 .byte   W16
@  #05 @151   ----------------------------------------
 .byte   N92 ,Cs1 ,v096
 .byte   N92 ,Cs2 ,v080
 .byte   N60 ,Bn2 ,v127
 .byte   W64
 .byte   N15 ,An2
 .byte   W16
 .byte   N12 ,Bn2
 .byte   W16
@  #05 @152   ----------------------------------------
 .byte   N92 ,Dn1 ,v096
 .byte   N92 ,Dn2 ,v080
 .byte   N60 ,Cs3 ,v127
 .byte   W64
 .byte   N15 ,Dn3
 .byte   W16
 .byte   N12 ,Cs3
 .byte   W16
@  #05 @153   ----------------------------------------
 .byte   N92 ,En1 ,v096
 .byte   N92 ,En2 ,v080
 .byte   N92 ,Bn2 ,v127
 .byte   W96
@  #05 @154   ----------------------------------------
 .byte   N30 ,Bn0 ,v096
 .byte   N92 ,Bn1 ,v080
 .byte   N30 ,Cs3 ,v127
 .byte   W32
 .byte   N44 ,Fs2
 .byte   W48
 .byte   N15
 .byte   W16
@  #05 @155   ----------------------------------------
 .byte   N92 ,Cs1 ,v096
 .byte   N92 ,Cs2 ,v080
 .byte   N30 ,Cs3 ,v127
 .byte   W32
 .byte   N44 ,Fs2
 .byte   W48
 .byte   N15
 .byte   W16
@  #05 @156   ----------------------------------------
 .byte   N92 ,Dn1 ,v096
 .byte   N92 ,Dn2 ,v080
 .byte   N44 ,Cs3 ,v127
 .byte   W48
 .byte   Fs3
 .byte   W48
@  #05 @157   ----------------------------------------
 .byte   N92 ,En1 ,v096
 .byte   N92 ,En2 ,v080
 .byte   N23 ,En3 ,v127
 .byte   W24
 .byte   N24 ,Gs2
 .byte   W24
 .byte   N15 ,Bn2
 .byte   W16
 .byte   N16 ,En3
 .byte   W16
 .byte   N12 ,Gs3
 .byte   W16
@  #05 @158   ----------------------------------------
 .byte   TIE ,Fs3
 .byte   W96
@  #05 @159   ----------------------------------------
 .byte   N96 ,Fs1 ,v080
 .byte   W96
@  #05 @160   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3
 .byte   W01
@  #05 @161   ----------------------------------------
 .byte   N92 ,Fs0 ,v096
 .byte   N92 ,Fs1 ,v080
 .byte   W92
 .byte   W03
 .byte   N01 ,Fs3
 .byte   W01
@  #05 @162   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   Fs0 ,v044
 .byte   W01
@  #05 @163   ----------------------------------------
 .byte   GOTO
  .word Label_0100F6AA
@  #05 @164   ----------------------------------------
Label_0100FBAB:
 .byte   N23 ,Fs1 ,v080
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N08 ,Gs1
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   N15 ,Cs2
 .byte   W16
 .byte   N16 ,An1
 .byte   W16
 .byte   Fs1
 .byte   W16
 .byte   PEND 
@  #05 @165   ----------------------------------------
Label_0100FBBF:
 .byte   N07 ,Dn1 ,v080
 .byte   W08
 .byte   N08 ,Fs1
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   N23 ,En2
 .byte   W24
 .byte   N15 ,Fn1
 .byte   W16
 .byte   N30 ,Fn2
 .byte   W32
 .byte   PEND 
@  #05 @166   ----------------------------------------
 .byte   PATT
  .word Label_0100FBAB
@  #05 @167   ----------------------------------------
 .byte   PATT
  .word Label_0100FBBF
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

.align 2, 0
song07_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 46
 .byte   VOL , 41*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+14
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N92 ,Fs1 ,v096
 .byte   W96
@  #06 @001   ----------------------------------------
 .byte   W72
 .byte   N23
 .byte   W24
@  #06 @002   ----------------------------------------
 .byte   N92 ,Gn1
 .byte   W96
@  #06 @003   ----------------------------------------
 .byte   W72
 .byte   N23
 .byte   W24
@  #06 @004   ----------------------------------------
 .byte   N92 ,An1
 .byte   W96
@  #06 @005   ----------------------------------------
 .byte   W72
 .byte   N23
 .byte   W24
@  #06 @006   ----------------------------------------
 .byte   W96
@  #06 @007   ----------------------------------------
 .byte   W96
@  #06 @008   ----------------------------------------
 .byte   W96
@  #06 @009   ----------------------------------------
 .byte   W96
@  #06 @010   ----------------------------------------
 .byte   W96
@  #06 @011   ----------------------------------------
 .byte   W80
 .byte   N15 ,Cs1
 .byte   W16
@  #06 @012   ----------------------------------------
Label_54A510:
 .byte   N44 ,Fs1 ,v096
 .byte   W48
 .byte   N48 ,Fs1 ,v080
 .byte   W48
@  #06 @013   ----------------------------------------
Label_54A518:
 .byte   N44 ,Fs1 ,v080
 .byte   W48
 .byte   N44
 .byte   W48
 .byte   PEND 
@  #06 @014   ----------------------------------------
 .byte   PATT
  .word Label_54A518
@  #06 @015   ----------------------------------------
 .byte   PATT
  .word Label_54A518
@  #06 @016   ----------------------------------------
 .byte   PATT
  .word Label_54A518
@  #06 @017   ----------------------------------------
 .byte   PATT
  .word Label_54A518
@  #06 @018   ----------------------------------------
 .byte   PATT
  .word Label_54A518
@  #06 @019   ----------------------------------------
 .byte   PATT
  .word Label_54A518
@  #06 @020   ----------------------------------------
 .byte   N92 ,Fs1 ,v080
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
 .byte   W96
@  #06 @035   ----------------------------------------
 .byte   W96
@  #06 @036   ----------------------------------------
 .byte   W96
@  #06 @037   ----------------------------------------
 .byte   N92
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
 .byte   N96 ,Bn1
 .byte   W96
@  #06 @050   ----------------------------------------
 .byte   W96
@  #06 @051   ----------------------------------------
 .byte   N92
 .byte   W96
@  #06 @052   ----------------------------------------
 .byte   W96
@  #06 @053   ----------------------------------------
 .byte   N92
 .byte   W96
@  #06 @054   ----------------------------------------
 .byte   W96
@  #06 @055   ----------------------------------------
 .byte   W96
@  #06 @056   ----------------------------------------
 .byte   W96
@  #06 @057   ----------------------------------------
Label_54A56A:
 .byte   N07 ,Cs2 ,v080
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N44
 .byte   W48
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #06 @058   ----------------------------------------
Label_54A577:
 .byte   N44 ,Cs2 ,v080
 .byte   W48
 .byte   N23 ,Dn2
 .byte   W24
 .byte   N24 ,En2
 .byte   W24
 .byte   PEND 
@  #06 @059   ----------------------------------------
 .byte   PATT
  .word Label_54A56A
@  #06 @060   ----------------------------------------
Label_54A587:
 .byte   N44 ,Cs2 ,v080
 .byte   W48
 .byte   N23 ,En2
 .byte   W24
 .byte   N24 ,Dn2
 .byte   W24
 .byte   PEND 
@  #06 @061   ----------------------------------------
Label_54A592:
 .byte   N07 ,Cs2 ,v080
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N44
 .byte   W48
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #06 @062   ----------------------------------------
 .byte   PATT
  .word Label_54A577
@  #06 @063   ----------------------------------------
 .byte   PATT
  .word Label_54A592
@  #06 @064   ----------------------------------------
 .byte   PATT
  .word Label_54A587
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
 .byte   W96
@  #06 @071   ----------------------------------------
 .byte   W96
@  #06 @072   ----------------------------------------
 .byte   W96
@  #06 @073   ----------------------------------------
 .byte   W96
@  #06 @074   ----------------------------------------
 .byte   W96
@  #06 @075   ----------------------------------------
 .byte   W96
@  #06 @076   ----------------------------------------
 .byte   W96
@  #06 @077   ----------------------------------------
 .byte   W96
@  #06 @078   ----------------------------------------
 .byte   W96
@  #06 @079   ----------------------------------------
 .byte   W96
@  #06 @080   ----------------------------------------
 .byte   W96
@  #06 @081   ----------------------------------------
 .byte   W96
@  #06 @082   ----------------------------------------
 .byte   W96
@  #06 @083   ----------------------------------------
 .byte   W96
@  #06 @084   ----------------------------------------
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
 .byte   W96
@  #06 @093   ----------------------------------------
 .byte   W96
@  #06 @094   ----------------------------------------
 .byte   W96
@  #06 @095   ----------------------------------------
 .byte   W96
@  #06 @096   ----------------------------------------
 .byte   W96
@  #06 @097   ----------------------------------------
 .byte   W96
@  #06 @098   ----------------------------------------
 .byte   W96
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
 .byte   N92 ,Dn2 ,v080
 .byte   W96
@  #06 @106   ----------------------------------------
 .byte   N92
 .byte   W96
@  #06 @107   ----------------------------------------
 .byte   N96 ,Cn2
 .byte   W96
@  #06 @108   ----------------------------------------
 .byte   N92
 .byte   W96
@  #06 @109   ----------------------------------------
 .byte   N96 ,As1
 .byte   W96
@  #06 @110   ----------------------------------------
 .byte   N92
 .byte   W96
@  #06 @111   ----------------------------------------
 .byte   N96 ,Bn1
 .byte   W96
@  #06 @112   ----------------------------------------
 .byte   N92
 .byte   W96
@  #06 @113   ----------------------------------------
 .byte   N96 ,Gn1
 .byte   W96
@  #06 @114   ----------------------------------------
 .byte   N92
 .byte   W96
@  #06 @115   ----------------------------------------
 .byte   N96 ,An1
 .byte   W96
@  #06 @116   ----------------------------------------
 .byte   N92
 .byte   W96
@  #06 @117   ----------------------------------------
 .byte   N96 ,As1
 .byte   W96
@  #06 @118   ----------------------------------------
 .byte   N92
 .byte   W96
@  #06 @119   ----------------------------------------
 .byte   N96 ,Cn2
 .byte   W96
@  #06 @120   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
@  #06 @121   ----------------------------------------
 .byte   N92 ,Dn2
 .byte   W96
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
 .byte   W96
@  #06 @143   ----------------------------------------
 .byte   W96
@  #06 @144   ----------------------------------------
 .byte   W96
@  #06 @145   ----------------------------------------
 .byte   W96
@  #06 @146   ----------------------------------------
 .byte   W96
@  #06 @147   ----------------------------------------
 .byte   W96
@  #06 @148   ----------------------------------------
 .byte   W96
@  #06 @149   ----------------------------------------
 .byte   W96
@  #06 @150   ----------------------------------------
 .byte   W96
@  #06 @151   ----------------------------------------
 .byte   W96
@  #06 @152   ----------------------------------------
 .byte   W96
@  #06 @153   ----------------------------------------
 .byte   W96
@  #06 @154   ----------------------------------------
 .byte   W96
@  #06 @155   ----------------------------------------
 .byte   W96
@  #06 @156   ----------------------------------------
 .byte   W96
@  #06 @157   ----------------------------------------
 .byte   W96
@  #06 @158   ----------------------------------------
 .byte   W96
@  #06 @159   ----------------------------------------
 .byte   W96
@  #06 @160   ----------------------------------------
 .byte   W96
@  #06 @161   ----------------------------------------
 .byte   W96
@  #06 @162   ----------------------------------------
 .byte   GOTO
  .word Label_54A510
@  #06 @163   ----------------------------------------
 .byte   W96
@  #06 @164   ----------------------------------------
 .byte   W96
@  #06 @165   ----------------------------------------
 .byte   W96
@  #06 @166   ----------------------------------------
 .byte   W96
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

.align 2, 0
song07_007:
@  #07 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 49
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+14
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-21
 .byte   N16 ,Fs1 ,v096
 .byte   W96
@  #07 @001   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #07 @002   ----------------------------------------
 .byte   N18 ,Gn1
 .byte   W96
@  #07 @003   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #07 @004   ----------------------------------------
 .byte   N18 ,An1
 .byte   W96
@  #07 @005   ----------------------------------------
 .byte   W72
 .byte   N16
 .byte   W24
@  #07 @006   ----------------------------------------
 .byte   TIE ,Bn1 ,v080
 .byte   W96
@  #07 @007   ----------------------------------------
 .byte   W96
@  #07 @008   ----------------------------------------
 .byte   W96
@  #07 @009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #07 @010   ----------------------------------------
 .byte   W96
@  #07 @011   ----------------------------------------
 .byte   W96
@  #07 @012   ----------------------------------------
Label_54A933:
 .byte   N23 ,Fs1 ,v080
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N08 ,Gs1
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   N15 ,Cs2
 .byte   W16
 .byte   N16 ,An1
 .byte   W16
 .byte   Fs1
 .byte   W16
 .byte   PEND 
@  #07 @013   ----------------------------------------
Label_54A947:
 .byte   N07 ,Dn1 ,v080
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N08 ,Fs1
 .byte   W08
 .byte   N23 ,En1
 .byte   W24
 .byte   N07 ,Fn1
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N30
 .byte   W32
 .byte   PEND 
@  #07 @014   ----------------------------------------
 .byte   PATT
  .word Label_54A933
@  #07 @015   ----------------------------------------
 .byte   PATT
  .word Label_54A947
@  #07 @016   ----------------------------------------
 .byte   PATT
  .word Label_54A933
@  #07 @017   ----------------------------------------
 .byte   PATT
  .word Label_54A947
@  #07 @018   ----------------------------------------
 .byte   PATT
  .word Label_54A933
@  #07 @019   ----------------------------------------
 .byte   PATT
  .word Label_54A947
@  #07 @020   ----------------------------------------
 .byte   W96
@  #07 @021   ----------------------------------------
 .byte   W96
@  #07 @022   ----------------------------------------
 .byte   N92 ,En1 ,v080
 .byte   W96
@  #07 @023   ----------------------------------------
 .byte   N96 ,Dn1
 .byte   W96
@  #07 @024   ----------------------------------------
 .byte   Cs1
 .byte   W96
@  #07 @025   ----------------------------------------
 .byte   Bn0
 .byte   W96
@  #07 @026   ----------------------------------------
 .byte   Gs0
 .byte   W96
@  #07 @027   ----------------------------------------
 .byte   Cs1
 .byte   W96
@  #07 @028   ----------------------------------------
 .byte   Bn0
 .byte   W96
@  #07 @029   ----------------------------------------
 .byte   Gs0
 .byte   W96
@  #07 @030   ----------------------------------------
 .byte   Fs0
 .byte   W96
@  #07 @031   ----------------------------------------
 .byte   En0
 .byte   W96
@  #07 @032   ----------------------------------------
 .byte   Ds1
 .byte   W96
@  #07 @033   ----------------------------------------
 .byte   Gs0
 .byte   W96
@  #07 @034   ----------------------------------------
 .byte   Dn1
 .byte   W96
@  #07 @035   ----------------------------------------
 .byte   Cs1
 .byte   W96
@  #07 @036   ----------------------------------------
 .byte   N23
 .byte   W48
 .byte   N05
 .byte   W16
 .byte   N05
 .byte   W16
 .byte   N05
 .byte   W16
@  #07 @037   ----------------------------------------
 .byte   N07 ,Fs0
 .byte   W96
@  #07 @038   ----------------------------------------
 .byte   W96
@  #07 @039   ----------------------------------------
 .byte   N92 ,En1
 .byte   W96
@  #07 @040   ----------------------------------------
 .byte   N96 ,Dn1
 .byte   W96
@  #07 @041   ----------------------------------------
 .byte   Cs1
 .byte   W96
@  #07 @042   ----------------------------------------
 .byte   Bn0
 .byte   W96
@  #07 @043   ----------------------------------------
 .byte   Gs0
 .byte   W96
@  #07 @044   ----------------------------------------
 .byte   N44 ,Cs1
 .byte   W48
 .byte   N48 ,Fn1
 .byte   W48
@  #07 @045   ----------------------------------------
 .byte   N92 ,Fs1
 .byte   W96
@  #07 @046   ----------------------------------------
 .byte   N44 ,En1
 .byte   W48
 .byte   N48 ,Gs1
 .byte   W48
@  #07 @047   ----------------------------------------
 .byte   Cs1
 .byte   W48
 .byte   Bn0
 .byte   W48
@  #07 @048   ----------------------------------------
 .byte   As0
 .byte   W48
 .byte   Fs0
 .byte   W48
@  #07 @049   ----------------------------------------
 .byte   TIE ,Bn0
 .byte   W96
@  #07 @050   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #07 @051   ----------------------------------------
 .byte   TIE ,An0
 .byte   W96
@  #07 @052   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #07 @053   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #07 @054   ----------------------------------------
 .byte   W96
@  #07 @055   ----------------------------------------
 .byte   W96
@  #07 @056   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #07 @057   ----------------------------------------
 .byte   W96
@  #07 @058   ----------------------------------------
 .byte   W96
@  #07 @059   ----------------------------------------
 .byte   W96
@  #07 @060   ----------------------------------------
 .byte   W96
@  #07 @061   ----------------------------------------
Label_54A9E4:
 .byte   N07 ,Cs1 ,v080
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W48
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #07 @062   ----------------------------------------
 .byte   N11
 .byte   W48
 .byte   N23 ,Dn1
 .byte   W24
 .byte   N24 ,En1
 .byte   W24
@  #07 @063   ----------------------------------------
 .byte   PATT
  .word Label_54A9E4
@  #07 @064   ----------------------------------------
 .byte   N11 ,Cs1 ,v080
 .byte   W48
 .byte   N23 ,En1
 .byte   W24
 .byte   N24 ,Dn1
 .byte   W24
@  #07 @065   ----------------------------------------
 .byte   N32 ,Fs0
 .byte   W96
@  #07 @066   ----------------------------------------
 .byte   W96
@  #07 @067   ----------------------------------------
 .byte   W24
 .byte   N68 ,Bn0
 .byte   W72
@  #07 @068   ----------------------------------------
 .byte   N92 ,An0
 .byte   W96
@  #07 @069   ----------------------------------------
 .byte   N96 ,Gn0
 .byte   W96
@  #07 @070   ----------------------------------------
 .byte   Cs0
 .byte   W96
@  #07 @071   ----------------------------------------
 .byte   Fs0
 .byte   W96
@  #07 @072   ----------------------------------------
 .byte   En0
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
 .byte   W96
@  #07 @081   ----------------------------------------
 .byte   W96
@  #07 @082   ----------------------------------------
 .byte   W96
@  #07 @083   ----------------------------------------
 .byte   W96
@  #07 @084   ----------------------------------------
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
 .byte   W96
@  #07 @093   ----------------------------------------
 .byte   W96
@  #07 @094   ----------------------------------------
 .byte   W96
@  #07 @095   ----------------------------------------
 .byte   W96
@  #07 @096   ----------------------------------------
 .byte   W96
@  #07 @097   ----------------------------------------
 .byte   W96
@  #07 @098   ----------------------------------------
 .byte   W96
@  #07 @099   ----------------------------------------
 .byte   W96
@  #07 @100   ----------------------------------------
 .byte   W96
@  #07 @101   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #07 @116   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #07 @124   ----------------------------------------
 .byte   W96
@  #07 @125   ----------------------------------------
 .byte   W96
@  #07 @126   ----------------------------------------
 .byte   W96
@  #07 @127   ----------------------------------------
 .byte   W96
@  #07 @128   ----------------------------------------
 .byte   W96
@  #07 @129   ----------------------------------------
 .byte   W96
@  #07 @130   ----------------------------------------
 .byte   W96
@  #07 @131   ----------------------------------------
 .byte   W96
@  #07 @132   ----------------------------------------
 .byte   W96
@  #07 @133   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #07 @140   ----------------------------------------
 .byte   W96
@  #07 @141   ----------------------------------------
 .byte   W96
@  #07 @142   ----------------------------------------
 .byte   W96
@  #07 @143   ----------------------------------------
 .byte   W96
@  #07 @144   ----------------------------------------
 .byte   W96
@  #07 @145   ----------------------------------------
 .byte   W96
@  #07 @146   ----------------------------------------
 .byte   W96
@  #07 @147   ----------------------------------------
 .byte   W96
@  #07 @148   ----------------------------------------
 .byte   W96
@  #07 @149   ----------------------------------------
 .byte   W96
@  #07 @150   ----------------------------------------
 .byte   W96
@  #07 @151   ----------------------------------------
 .byte   W96
@  #07 @152   ----------------------------------------
 .byte   W96
@  #07 @153   ----------------------------------------
 .byte   W96
@  #07 @154   ----------------------------------------
 .byte   W96
@  #07 @155   ----------------------------------------
 .byte   W96
@  #07 @156   ----------------------------------------
 .byte   W96
@  #07 @157   ----------------------------------------
 .byte   W96
@  #07 @158   ----------------------------------------
 .byte   W96
@  #07 @159   ----------------------------------------
 .byte   W96
@  #07 @160   ----------------------------------------
 .byte   W96
@  #07 @161   ----------------------------------------
 .byte   W96
@  #07 @162   ----------------------------------------
 .byte   GOTO
  .word Label_54A933
@  #07 @163   ----------------------------------------
 .byte   W96
@  #07 @164   ----------------------------------------
 .byte   W96
@  #07 @165   ----------------------------------------
 .byte   W96
@  #07 @166   ----------------------------------------
 .byte   W96
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

.align 2, 0
song07_008:
@  #08 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 49
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-15
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-21
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-21
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
Label_0101186C:
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
 .byte   W96
@  #08 @038   ----------------------------------------
 .byte   W96
@  #08 @039   ----------------------------------------
 .byte   W96
@  #08 @040   ----------------------------------------
 .byte   W96
@  #08 @041   ----------------------------------------
 .byte   W96
@  #08 @042   ----------------------------------------
 .byte   W96
@  #08 @043   ----------------------------------------
 .byte   W96
@  #08 @044   ----------------------------------------
 .byte   W96
@  #08 @045   ----------------------------------------
 .byte   W96
@  #08 @046   ----------------------------------------
 .byte   W96
@  #08 @047   ----------------------------------------
 .byte   W96
@  #08 @048   ----------------------------------------
 .byte   W96
@  #08 @049   ----------------------------------------
 .byte   W96
@  #08 @050   ----------------------------------------
 .byte   W96
@  #08 @051   ----------------------------------------
 .byte   W96
@  #08 @052   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #08 @062   ----------------------------------------
 .byte   W96
@  #08 @063   ----------------------------------------
 .byte   W96
@  #08 @064   ----------------------------------------
 .byte   W96
@  #08 @065   ----------------------------------------
 .byte   W96
@  #08 @066   ----------------------------------------
 .byte   W96
@  #08 @067   ----------------------------------------
 .byte   W96
@  #08 @068   ----------------------------------------
 .byte   W96
@  #08 @069   ----------------------------------------
 .byte   W96
@  #08 @070   ----------------------------------------
 .byte   W96
@  #08 @071   ----------------------------------------
 .byte   W96
@  #08 @072   ----------------------------------------
 .byte   W96
@  #08 @073   ----------------------------------------
Label_010118A9:
 .byte   N07 ,As2 ,v096
 .byte   W08
 .byte   N08 ,Bn2
 .byte   W08
 .byte   As2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   As2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   As2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   As2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   As2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   PEND 
@  #08 @074   ----------------------------------------
 .byte   PATT
  .word Label_010118A9
@  #08 @075   ----------------------------------------
Label_010118CA:
 .byte   N07 ,An2 ,v096
 .byte   W08
 .byte   N08 ,Bn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   PEND 
@  #08 @076   ----------------------------------------
 .byte   PATT
  .word Label_010118CA
@  #08 @077   ----------------------------------------
 .byte   PATT
  .word Label_010118A9
@  #08 @078   ----------------------------------------
 .byte   PATT
  .word Label_010118A9
@  #08 @079   ----------------------------------------
 .byte   PATT
  .word Label_010118CA
@  #08 @080   ----------------------------------------
 .byte   PATT
  .word Label_010118CA
@  #08 @081   ----------------------------------------
Label_010118FF:
 .byte   N07 ,Gs2 ,v096
 .byte   W08
 .byte   N08 ,An2
 .byte   W08
 .byte   Gs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Gs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Gs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Gs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Gs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   PEND 
@  #08 @082   ----------------------------------------
 .byte   PATT
  .word Label_010118FF
@  #08 @083   ----------------------------------------
Label_01011920:
 .byte   N07 ,Gn2 ,v096
 .byte   W08
 .byte   N08 ,An2
 .byte   W08
 .byte   Gn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Gn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Gn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Gn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Gn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   PEND 
@  #08 @084   ----------------------------------------
 .byte   PATT
  .word Label_01011920
@  #08 @085   ----------------------------------------
 .byte   PATT
  .word Label_010118FF
@  #08 @086   ----------------------------------------
 .byte   PATT
  .word Label_010118FF
@  #08 @087   ----------------------------------------
 .byte   PATT
  .word Label_01011920
@  #08 @088   ----------------------------------------
 .byte   PATT
  .word Label_01011920
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
Label_0101195D:
 .byte   N44 ,Dn1 ,v080
 .byte   W48
 .byte   N48 ,En1
 .byte   W48
 .byte   PEND 
@  #08 @098   ----------------------------------------
Label_01011965:
 .byte   N44 ,Fn1 ,v080
 .byte   W48
 .byte   N48 ,Fs1
 .byte   W48
 .byte   PEND 
@  #08 @099   ----------------------------------------
Label_0101196D:
 .byte   N44 ,Gn1 ,v080
 .byte   W48
 .byte   N48 ,Gs1
 .byte   W48
 .byte   PEND 
@  #08 @100   ----------------------------------------
Label_01011975:
 .byte   N44 ,An1 ,v080
 .byte   W48
 .byte   N44
 .byte   W48
 .byte   PEND 
@  #08 @101   ----------------------------------------
 .byte   PATT
  .word Label_0101195D
@  #08 @102   ----------------------------------------
 .byte   PATT
  .word Label_01011965
@  #08 @103   ----------------------------------------
 .byte   PATT
  .word Label_0101196D
@  #08 @104   ----------------------------------------
 .byte   PATT
  .word Label_01011975
@  #08 @105   ----------------------------------------
 .byte   TIE ,As0 ,v080
 .byte   W96
@  #08 @106   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @107   ----------------------------------------
 .byte   TIE ,Cn1
 .byte   W96
@  #08 @108   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @109   ----------------------------------------
 .byte   N92 ,Dn1
 .byte   W96
@  #08 @110   ----------------------------------------
 .byte   N96 ,Cn1
 .byte   W96
@  #08 @111   ----------------------------------------
 .byte   TIE ,Bn0
 .byte   W96
@  #08 @112   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @113   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #08 @114   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @115   ----------------------------------------
 .byte   TIE ,An0
 .byte   W96
@  #08 @116   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @117   ----------------------------------------
 .byte   TIE ,As0
 .byte   W96
@  #08 @118   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @119   ----------------------------------------
 .byte   TIE ,Cn1
 .byte   W96
@  #08 @120   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @121   ----------------------------------------
 .byte   W96
@  #08 @122   ----------------------------------------
 .byte   W96
@  #08 @123   ----------------------------------------
 .byte   W96
@  #08 @124   ----------------------------------------
 .byte   W96
@  #08 @125   ----------------------------------------
 .byte   W96
@  #08 @126   ----------------------------------------
 .byte   W96
@  #08 @127   ----------------------------------------
 .byte   W96
@  #08 @128   ----------------------------------------
 .byte   W96
@  #08 @129   ----------------------------------------
 .byte   TIE ,Ds1
 .byte   W96
@  #08 @130   ----------------------------------------
 .byte   W96
@  #08 @131   ----------------------------------------
 .byte   W96
@  #08 @132   ----------------------------------------
 .byte   W96
@  #08 @133   ----------------------------------------
 .byte   W96
@  #08 @134   ----------------------------------------
 .byte   W96
@  #08 @135   ----------------------------------------
 .byte   W96
@  #08 @136   ----------------------------------------
 .byte   W60
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N15 ,En1
 .byte   W16
 .byte   N16 ,Fn1
 .byte   W16
@  #08 @137   ----------------------------------------
 .byte   TIE ,Fs1
 .byte   W96
@  #08 @138   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N15 ,Cs1
 .byte   W16
 .byte   N30 ,En1
 .byte   W08
@  #08 @139   ----------------------------------------
Label_010119F0:
 .byte   W24
 .byte   TIE ,Fs1 ,v080
 .byte   W72
 .byte   PEND 
@  #08 @140   ----------------------------------------
 .byte   W56
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N07 ,Bn0
 .byte   W08
 .byte   N08 ,Cs1
 .byte   W08
 .byte   TIE ,En1
 .byte   W20
@  #08 @141   ----------------------------------------
 .byte   PATT
  .word Label_010119F0
@  #08 @142   ----------------------------------------
 .byte   EOT
 .byte   En1
 .byte   W68
 .byte   W03
 .byte   Fs1
 .byte   N01 ,Fs1 ,v080
 .byte   W01
 .byte   N15 ,Cs1
 .byte   W16
 .byte   TIE ,En1
 .byte   W08
@  #08 @143   ----------------------------------------
 .byte   PATT
  .word Label_010119F0
@  #08 @144   ----------------------------------------
 .byte   EOT
 .byte   En1
 .byte   W56
 .byte   W03
 .byte   Fs1
 .byte   N01 ,Fs1 ,v080
 .byte   W01
 .byte   N15 ,Cs1
 .byte   W16
 .byte   N19 ,En1
 .byte   W20
@  #08 @145   ----------------------------------------
 .byte   W96
@  #08 @146   ----------------------------------------
 .byte   W96
@  #08 @147   ----------------------------------------
 .byte   W96
@  #08 @148   ----------------------------------------
 .byte   W96
@  #08 @149   ----------------------------------------
 .byte   N92 ,Bn0
 .byte   W96
@  #08 @150   ----------------------------------------
 .byte   N96 ,Cs1
 .byte   W96
@  #08 @151   ----------------------------------------
 .byte   Dn1
 .byte   W96
@  #08 @152   ----------------------------------------
 .byte   En1
 .byte   W96
@  #08 @153   ----------------------------------------
 .byte   Bn0
 .byte   W96
@  #08 @154   ----------------------------------------
 .byte   Cs1
 .byte   W96
@  #08 @155   ----------------------------------------
 .byte   Dn1
 .byte   W96
@  #08 @156   ----------------------------------------
 .byte   En1
 .byte   W96
@  #08 @157   ----------------------------------------
 .byte   W96
@  #08 @158   ----------------------------------------
 .byte   TIE ,Fs0
 .byte   W96
@  #08 @159   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @160   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #08 @161   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @162   ----------------------------------------
 .byte   GOTO
  .word Label_0101186C
@  #08 @163   ----------------------------------------
Label_01011A54:
 .byte   N23 ,Fs1 ,v080
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N08 ,Gs1
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   N15 ,Cs2
 .byte   W16
 .byte   N16 ,An1
 .byte   W16
 .byte   Fs1
 .byte   W16
 .byte   PEND 
@  #08 @164   ----------------------------------------
Label_01011A68:
 .byte   N07 ,Dn1 ,v080
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N08 ,Fs1
 .byte   W08
 .byte   N23 ,En1
 .byte   W24
 .byte   N07 ,Fn1
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N30
 .byte   W32
 .byte   PEND 
@  #08 @165   ----------------------------------------
 .byte   PATT
  .word Label_01011A54
@  #08 @166   ----------------------------------------
 .byte   PATT
  .word Label_01011A68
 .byte   FINE

@**************** Track 9 (Midi-Chn.8) ****************@

.align 2, 0
song07_009:
@  #09 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 121
 .byte   PAN , c_v-13
 .byte   VOL , 60*song07_mvl/mxv
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
 .byte   N16 ,Cn1 ,v120
 .byte   N92 ,An2 ,v080
 .byte   W16
 .byte   N15 ,Cn1
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
@  #09 @007   ----------------------------------------
 .byte   N16 ,Cn1 ,v120
 .byte   W16
 .byte   N15 ,Cn1 ,v080
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
@  #09 @008   ----------------------------------------
Label_0101298C:
 .byte   N16 ,Cn1 ,v120
 .byte   W16
 .byte   N07 ,Cn1 ,v080
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   PEND 
@  #09 @009   ----------------------------------------
 .byte   PATT
  .word Label_0101298C
@  #09 @010   ----------------------------------------
 .byte   PATT
  .word Label_0101298C
@  #09 @011   ----------------------------------------
 .byte   N16 ,Cn1 ,v120
 .byte   W16
 .byte   N07 ,Cn1 ,v080
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   N02 ,An2 ,v064
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
 .byte   W02
 .byte   N15 ,Cn1 ,v080
 .byte   W01
 .byte   N02 ,An2 ,v064
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N15 ,Cn1 ,v080
 .byte   N02 ,An2 ,v064
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W04
@  #09 @012   ----------------------------------------
Label_010129E3:
@  #09 @013   ----------------------------------------
 .byte   PATT
  .word Label_0101298C
@  #09 @014   ----------------------------------------
 .byte   PATT
  .word Label_0101298C
@  #09 @015   ----------------------------------------
 .byte   PATT
  .word Label_0101298C
@  #09 @016   ----------------------------------------
 .byte   PATT
  .word Label_0101298C
@  #09 @017   ----------------------------------------
 .byte   PATT
  .word Label_0101298C
@  #09 @018   ----------------------------------------
Label_010129FC:
 .byte   N16 ,Cn1 ,v120
 .byte   W16
 .byte   N07 ,Cn1 ,v080
 .byte   W08
 .byte   N07
 .byte   N23 ,An2 ,v064
 .byte   W08
 .byte   N15 ,Cn1 ,v080
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   N30 ,An2 ,v064
 .byte   W16
 .byte   N15 ,Cn1 ,v080
 .byte   W16
 .byte   PEND 
@  #09 @019   ----------------------------------------
 .byte   PATT
  .word Label_0101298C
@  #09 @020   ----------------------------------------
 .byte   PATT
  .word Label_010129FC
@  #09 @021   ----------------------------------------
 .byte   W96
@  #09 @022   ----------------------------------------
 .byte   W96
@  #09 @023   ----------------------------------------
Label_01012A25:
 .byte   N16 ,Cn1 ,v127
 .byte   N05 ,Dn1 ,v076
 .byte   W16
 .byte   N07 ,Cn1 ,v096
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   PEND 
@  #09 @024   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @025   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @026   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @027   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @028   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @029   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @030   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @031   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @032   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @033   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @034   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @035   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @036   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @037   ----------------------------------------
 .byte   N23 ,Cn1 ,v096
 .byte   W48
 .byte   N15
 .byte   N02 ,An2 ,v064
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
 .byte   W02
 .byte   N15 ,Cn1 ,v096
 .byte   W01
 .byte   N02 ,An2 ,v064
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N15 ,Cn1 ,v096
 .byte   N02 ,An2 ,v064
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W04
@  #09 @038   ----------------------------------------
 .byte   N23 ,Cn1 ,v096
 .byte   W96
@  #09 @039   ----------------------------------------
 .byte   W96
@  #09 @040   ----------------------------------------
 .byte   N16 ,Cn1 ,v127
 .byte   N05 ,Dn1 ,v076
 .byte   N92 ,An2 ,v064
 .byte   W16
 .byte   N07 ,Cn1 ,v096
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
@  #09 @041   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @042   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @043   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @044   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @045   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @046   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @047   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @048   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @049   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @050   ----------------------------------------
Label_01012B4C:
 .byte   N16 ,Cn1 ,v127
 .byte   N92 ,An2 ,v064
 .byte   W16
 .byte   N07 ,Cn1 ,v112
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   PEND 
@  #09 @051   ----------------------------------------
Label_01012B62:
 .byte   N16 ,Cn1 ,v127
 .byte   W16
 .byte   N07 ,Cn1 ,v112
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   PEND 
@  #09 @052   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @053   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @054   ----------------------------------------
 .byte   PATT
  .word Label_01012B4C
@  #09 @055   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @056   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @057   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @058   ----------------------------------------
Label_01012B93:
 .byte   N07 ,Dn1 ,v064
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   N68 ,An2 ,v080
 .byte   W48
 .byte   N07 ,Dn1 ,v064
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #09 @059   ----------------------------------------
 .byte   N23
 .byte   N92 ,An2 ,v080
 .byte   W48
 .byte   N07 ,Dn1 ,v064
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
@  #09 @060   ----------------------------------------
 .byte   PATT
  .word Label_01012B93
@  #09 @061   ----------------------------------------
 .byte   N23 ,Dn1 ,v064
 .byte   N92 ,An2 ,v080
 .byte   W48
 .byte   N07 ,Dn1 ,v064
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
@  #09 @062   ----------------------------------------
Label_01012BCC:
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   N68 ,An2 ,v080
 .byte   W48
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #09 @063   ----------------------------------------
Label_01012BE2:
 .byte   N23 ,Dn1 ,v064
 .byte   N92 ,An2 ,v080
 .byte   W48
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #09 @064   ----------------------------------------
 .byte   PATT
  .word Label_01012BCC
@  #09 @065   ----------------------------------------
 .byte   PATT
  .word Label_01012BE2
@  #09 @066   ----------------------------------------
 .byte   N92 ,An2 ,v080
 .byte   W96
@  #09 @067   ----------------------------------------
 .byte   W96
@  #09 @068   ----------------------------------------
 .byte   W16
 .byte   N07 ,An2 ,v064
 .byte   W08
 .byte   N08 ,Cn1 ,v112
 .byte   N68 ,An2 ,v064
 .byte   W08
 .byte   N15 ,Cn1 ,v112
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
@  #09 @069   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @070   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @071   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @072   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @073   ----------------------------------------
 .byte   PATT
  .word Label_01012B62
@  #09 @074   ----------------------------------------
Label_01012C36:
 .byte   N07 ,Ds2 ,v064
 .byte   W16
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #09 @075   ----------------------------------------
 .byte   PATT
  .word Label_01012C36
@  #09 @076   ----------------------------------------
Label_01012C4A:
 .byte   N07 ,Ds2 ,v064
 .byte   W16
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N23
 .byte   W24
 .byte   N07
 .byte   W16
 .byte   N08 ,Fn2
 .byte   W08
 .byte   PEND 
@  #09 @077   ----------------------------------------
Label_01012C5C:
 .byte   N07 ,Ds2 ,v064
 .byte   N07 ,Fn2
 .byte   W16
 .byte   N16 ,Ds2
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W08
 .byte   N07 ,Cn1 ,v112
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #09 @078   ----------------------------------------
Label_01012C74:
 .byte   N16 ,Cn1 ,v127
 .byte   N07 ,Ds2 ,v064
 .byte   W16
 .byte   Cn1 ,v112
 .byte   N07 ,Ds2 ,v064
 .byte   W08
 .byte   N08 ,Cn1 ,v112
 .byte   W08
 .byte   N15
 .byte   N07 ,Ds2 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15 ,Cn1 ,v112
 .byte   N23 ,Ds2 ,v064
 .byte   W16
 .byte   N15 ,Cn1 ,v112
 .byte   W08
 .byte   N23 ,Ds2 ,v064
 .byte   W08
 .byte   N15 ,Cn1 ,v112
 .byte   W16
 .byte   PEND 
@  #09 @079   ----------------------------------------
 .byte   PATT
  .word Label_01012C74
@  #09 @080   ----------------------------------------
 .byte   PATT
  .word Label_01012C74
@  #09 @081   ----------------------------------------
 .byte   PATT
  .word Label_01012C74
@  #09 @082   ----------------------------------------
 .byte   PATT
  .word Label_01012C36
@  #09 @083   ----------------------------------------
 .byte   PATT
  .word Label_01012C36
@  #09 @084   ----------------------------------------
 .byte   PATT
  .word Label_01012C4A
@  #09 @085   ----------------------------------------
 .byte   PATT
  .word Label_01012C5C
@  #09 @086   ----------------------------------------
 .byte   PATT
  .word Label_01012C74
@  #09 @087   ----------------------------------------
 .byte   PATT
  .word Label_01012C74
@  #09 @088   ----------------------------------------
 .byte   PATT
  .word Label_01012C74
@  #09 @089   ----------------------------------------
 .byte   PATT
  .word Label_01012C74
@  #09 @090   ----------------------------------------
 .byte   W96
@  #09 @091   ----------------------------------------
 .byte   W96
@  #09 @092   ----------------------------------------
 .byte   W96
@  #09 @093   ----------------------------------------
Label_01012CDA:
 .byte   W80
 .byte   N07 ,Ds2 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #09 @094   ----------------------------------------
 .byte   N92
 .byte   W96
@  #09 @095   ----------------------------------------
 .byte   W96
@  #09 @096   ----------------------------------------
 .byte   W96
@  #09 @097   ----------------------------------------
 .byte   PATT
  .word Label_01012CDA
@  #09 @098   ----------------------------------------
 .byte   N05 ,Dn1 ,v076
 .byte   N92 ,Ds2 ,v064
 .byte   N92 ,An2
 .byte   W16
 .byte   N07 ,Dn1
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
@  #09 @099   ----------------------------------------
Label_01012D19:
 .byte   N05 ,Dn1 ,v076
 .byte   W16
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   PEND 
@  #09 @100   ----------------------------------------
 .byte   PATT
  .word Label_01012D19
@  #09 @101   ----------------------------------------
 .byte   PATT
  .word Label_01012D19
@  #09 @102   ----------------------------------------
 .byte   N05 ,Dn1 ,v076
 .byte   N92 ,An2 ,v064
 .byte   W16
 .byte   N07 ,Dn1
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
@  #09 @103   ----------------------------------------
 .byte   PATT
  .word Label_01012D19
@  #09 @104   ----------------------------------------
 .byte   PATT
  .word Label_01012D19
@  #09 @105   ----------------------------------------
 .byte   N05 ,Dn1 ,v076
 .byte   W16
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v076
 .byte   W08
 .byte   N07 ,Cn1 ,v112
 .byte   N07 ,Dn1 ,v064
 .byte   W08
@  #09 @106   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @107   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @108   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @109   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @110   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @111   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @112   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @113   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @114   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @115   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @116   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @117   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @118   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @119   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @120   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @121   ----------------------------------------
 .byte   PATT
  .word Label_01012A25
@  #09 @122   ----------------------------------------
Label_01012E04:
 .byte   N44 ,Ds2 ,v064
 .byte   W48
 .byte   N44
 .byte   W48
 .byte   PEND 
@  #09 @123   ----------------------------------------
 .byte   PATT
  .word Label_01012E04
@  #09 @124   ----------------------------------------
 .byte   PATT
  .word Label_01012E04
@  #09 @125   ----------------------------------------
 .byte   PATT
  .word Label_01012E04
@  #09 @126   ----------------------------------------
Label_01012E1A:
 .byte   N05 ,Dn1 ,v060
 .byte   N44 ,Ds2 ,v064
 .byte   W08
 .byte   N07 ,Dn1 ,v052
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N16 ,Dn1 ,v060
 .byte   W24
 .byte   N05
 .byte   N44 ,Ds2 ,v064
 .byte   W08
 .byte   N07 ,Dn1 ,v052
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N16 ,Dn1 ,v060
 .byte   W24
 .byte   PEND 
@  #09 @127   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @128   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @129   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @130   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @131   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @132   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @133   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @134   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @135   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @136   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @137   ----------------------------------------
 .byte   PATT
  .word Label_01012E1A
@  #09 @138   ----------------------------------------
Label_01012E72:
 .byte   N05 ,Dn1 ,v060
 .byte   W08
 .byte   N07 ,Dn1 ,v052
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N23 ,Cn1 ,v096
 .byte   N16 ,Dn1 ,v060
 .byte   N68 ,An2 ,v064
 .byte   W24
 .byte   N05 ,Dn1 ,v060
 .byte   W08
 .byte   N07 ,Dn1 ,v052
 .byte   W04
 .byte   N23 ,Cn1 ,v096
 .byte   W04
 .byte   N07 ,Dn1 ,v052
 .byte   W08
 .byte   N16 ,Dn1 ,v060
 .byte   W24
 .byte   PEND 
@  #09 @139   ----------------------------------------
Label_01012E9B:
 .byte   N05 ,Dn1 ,v060
 .byte   W08
 .byte   N07 ,Dn1 ,v052
 .byte   W08
 .byte   Cn1 ,v096
 .byte   N07 ,Dn1 ,v052
 .byte   W08
 .byte   N16 ,Dn1 ,v060
 .byte   W24
 .byte   N05
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N07 ,Dn1 ,v052
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N16 ,Dn1 ,v060
 .byte   W16
 .byte   N07 ,Cn1 ,v096
 .byte   W08
 .byte   PEND 
@  #09 @140   ----------------------------------------
 .byte   PATT
  .word Label_01012E72
@  #09 @141   ----------------------------------------
Label_01012EC9:
 .byte   N05 ,Dn1 ,v060
 .byte   W08
 .byte   N07 ,Dn1 ,v052
 .byte   W04
 .byte   N15 ,Cn1 ,v096
 .byte   W04
 .byte   N07 ,Dn1 ,v052
 .byte   W08
 .byte   N16 ,Dn1 ,v060
 .byte   W04
 .byte   N15 ,Cn1 ,v096
 .byte   W16
 .byte   N15
 .byte   W04
 .byte   N05 ,Dn1 ,v060
 .byte   W08
 .byte   N07 ,Dn1 ,v052
 .byte   W04
 .byte   N15 ,Cn1 ,v096
 .byte   W04
 .byte   N07 ,Dn1 ,v052
 .byte   W08
 .byte   N16 ,Dn1 ,v060
 .byte   W04
 .byte   N07 ,Cn1 ,v096
 .byte   W20
 .byte   PEND 
@  #09 @142   ----------------------------------------
 .byte   PATT
  .word Label_01012E72
@  #09 @143   ----------------------------------------
 .byte   PATT
  .word Label_01012E9B
@  #09 @144   ----------------------------------------
 .byte   PATT
  .word Label_01012E72
@  #09 @145   ----------------------------------------
 .byte   PATT
  .word Label_01012EC9
@  #09 @146   ----------------------------------------
 .byte   W96
@  #09 @147   ----------------------------------------
 .byte   W96
@  #09 @148   ----------------------------------------
 .byte   W96
@  #09 @149   ----------------------------------------
 .byte   W48
 .byte   N02 ,An2 ,v064
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
@  #09 @150   ----------------------------------------
Label_01012F36:
 .byte   N16 ,Cn1 ,v127
 .byte   W16
 .byte   N07 ,Cn1 ,v096
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   PEND 
@  #09 @151   ----------------------------------------
 .byte   PATT
  .word Label_01012F36
@  #09 @152   ----------------------------------------
 .byte   PATT
  .word Label_01012F36
@  #09 @153   ----------------------------------------
 .byte   N16 ,Cn1 ,v127
 .byte   W16
 .byte   N07 ,Cn1 ,v096
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   N07 ,Ds2 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
@  #09 @154   ----------------------------------------
 .byte   N16 ,Cn1 ,v127
 .byte   N92 ,Ds2 ,v064
 .byte   N92 ,An2
 .byte   W16
 .byte   N07 ,Cn1 ,v096
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
@  #09 @155   ----------------------------------------
 .byte   PATT
  .word Label_01012F36
@  #09 @156   ----------------------------------------
 .byte   PATT
  .word Label_01012F36
@  #09 @157   ----------------------------------------
 .byte   PATT
  .word Label_01012F36
@  #09 @158   ----------------------------------------
Label_01012F90:
 .byte   W72
 .byte   N07 ,Dn1 ,v064
 .byte   W08
 .byte   Cn1 ,v096
 .byte   N07 ,Dn1 ,v076
 .byte   W08
 .byte   Cn1 ,v096
 .byte   N07 ,Dn1 ,v088
 .byte   W08
 .byte   PEND 
@  #09 @159   ----------------------------------------
Label_01012FA2:
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   N92 ,An2 ,v064
 .byte   W96
 .byte   PEND 
@  #09 @160   ----------------------------------------
 .byte   PATT
  .word Label_01012F90
@  #09 @161   ----------------------------------------
 .byte   PATT
  .word Label_01012FA2
@  #09 @162   ----------------------------------------
 .byte   W48
 .byte   N02 ,An2 ,v052
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
 .byte   W01
 .byte   N07 ,Dn1 ,v080
 .byte   W02
 .byte   N02 ,An2 ,v052
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N07 ,Cn1 ,v096
 .byte   N07 ,Dn1 ,v080
 .byte   N02 ,An2 ,v052
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W02
 .byte   N07 ,Cn1 ,v096
 .byte   N07 ,Dn1 ,v080
 .byte   W01
 .byte   N02 ,An2 ,v052
 .byte   W03
 .byte   N02
 .byte   W04
@  #09 @163   ----------------------------------------
 .byte   GOTO
  .word Label_010129E3
@  #09 @164   ----------------------------------------
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v080
 .byte   W96
@  #09 @165   ----------------------------------------
 .byte   W72
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
@  #09 @166   ----------------------------------------
 .byte   N23
 .byte   W96
@  #09 @167   ----------------------------------------
 .byte   W96
 .byte   FINE

@**************** Track 10 (Midi-Chn.9) ****************@

.align 2, 0
song07_010:
@  #10 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 40
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+14
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-15
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-21
 .byte   W96
@  #10 @001   ----------------------------------------
 .byte   W96
@  #10 @002   ----------------------------------------
 .byte   W96
@  #10 @003   ----------------------------------------
 .byte   W96
@  #10 @004   ----------------------------------------
 .byte   W96
@  #10 @005   ----------------------------------------
 .byte   W96
@  #10 @006   ----------------------------------------
 .byte   W96
@  #10 @007   ----------------------------------------
 .byte   W96
@  #10 @008   ----------------------------------------
 .byte   W96
@  #10 @009   ----------------------------------------
 .byte   W96
@  #10 @010   ----------------------------------------
 .byte   W96
@  #10 @011   ----------------------------------------
 .byte   W96
@  #10 @012   ----------------------------------------
Label_01010248:
 .byte   W96
@  #10 @013   ----------------------------------------
 .byte   W96
@  #10 @014   ----------------------------------------
 .byte   W96
@  #10 @015   ----------------------------------------
 .byte   W96
@  #10 @016   ----------------------------------------
 .byte   N11 ,Cs5 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W18
@  #10 @017   ----------------------------------------
Label_0101025A:
 .byte   N05 ,Cs5 ,v064
 .byte   W06
 .byte   N05
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W18
 .byte   PEND 
@  #10 @018   ----------------------------------------
 .byte   PATT
  .word Label_0101025A
@  #10 @019   ----------------------------------------
 .byte   N05 ,Cs5 ,v064
 .byte   W06
 .byte   N05
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N02 ,Bn3
 .byte   W03
 .byte   N03 ,Cs4
 .byte   W03
@  #10 @020   ----------------------------------------
 .byte   N11 ,Fs4
 .byte   W96
@  #10 @021   ----------------------------------------
 .byte   W96
@  #10 @022   ----------------------------------------
 .byte   N92 ,Cs4
 .byte   W96
@  #10 @023   ----------------------------------------
 .byte   N96 ,Dn4
 .byte   W96
@  #10 @024   ----------------------------------------
 .byte   Cs4
 .byte   W96
@  #10 @025   ----------------------------------------
 .byte   Bn3
 .byte   W96
@  #10 @026   ----------------------------------------
 .byte   Cs4
 .byte   W96
@  #10 @027   ----------------------------------------
Label_0101029A:
 .byte   N44 ,Cs4 ,v064
 .byte   W48
 .byte   N48 ,Bn3
 .byte   W48
 .byte   PEND 
@  #10 @028   ----------------------------------------
 .byte   N92
 .byte   W96
@  #10 @029   ----------------------------------------
 .byte   N92
 .byte   W96
@  #10 @030   ----------------------------------------
 .byte   N96 ,Cs4
 .byte   W96
@  #10 @031   ----------------------------------------
 .byte   N92
 .byte   W96
@  #10 @032   ----------------------------------------
 .byte   N96 ,Ds4
 .byte   W96
@  #10 @033   ----------------------------------------
 .byte   N92
 .byte   W96
@  #10 @034   ----------------------------------------
 .byte   N96 ,Dn4
 .byte   W96
@  #10 @035   ----------------------------------------
 .byte   Cs4
 .byte   W96
@  #10 @036   ----------------------------------------
 .byte   W08
 .byte   N07 ,Cs5
 .byte   W08
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W16
 .byte   N08 ,Gs4
 .byte   W08
 .byte   N07
 .byte   W16
 .byte   N08 ,Fn4
 .byte   W08
 .byte   N07
 .byte   W08
@  #10 @037   ----------------------------------------
 .byte   W96
@  #10 @038   ----------------------------------------
 .byte   W96
@  #10 @039   ----------------------------------------
 .byte   N92 ,Cs4
 .byte   W96
@  #10 @040   ----------------------------------------
 .byte   N96 ,Dn4
 .byte   W96
@  #10 @041   ----------------------------------------
 .byte   Cs4
 .byte   W96
@  #10 @042   ----------------------------------------
 .byte   Bn3
 .byte   W96
@  #10 @043   ----------------------------------------
 .byte   Cs4
 .byte   W96
@  #10 @044   ----------------------------------------
 .byte   PATT
  .word Label_0101029A
@  #10 @045   ----------------------------------------
 .byte   N92 ,Cs4 ,v064
 .byte   W96
@  #10 @046   ----------------------------------------
 .byte   N96 ,Bn3
 .byte   W96
@  #10 @047   ----------------------------------------
 .byte   Cs4
 .byte   W96
@  #10 @048   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N48 ,En4
 .byte   W48
@  #10 @049   ----------------------------------------
 .byte   TIE ,Bn3
 .byte   W96
@  #10 @050   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #10 @051   ----------------------------------------
 .byte   TIE ,Dn4
 .byte   W96
@  #10 @052   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #10 @053   ----------------------------------------
 .byte   N92
 .byte   W96
@  #10 @054   ----------------------------------------
 .byte   N92
 .byte   W96
@  #10 @055   ----------------------------------------
 .byte   N92
 .byte   W96
@  #10 @056   ----------------------------------------
 .byte   N92
 .byte   W96
@  #10 @057   ----------------------------------------
 .byte   W96
@  #10 @058   ----------------------------------------
 .byte   W96
@  #10 @059   ----------------------------------------
 .byte   W96
@  #10 @060   ----------------------------------------
 .byte   W96
@  #10 @061   ----------------------------------------
Label_01010304:
 .byte   N07 ,Cs4 ,v064
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W48
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #10 @062   ----------------------------------------
 .byte   N11
 .byte   W48
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N24 ,En4
 .byte   W24
@  #10 @063   ----------------------------------------
 .byte   PATT
  .word Label_01010304
@  #10 @064   ----------------------------------------
 .byte   N11 ,Cs4 ,v064
 .byte   W48
 .byte   N23 ,En4
 .byte   W24
 .byte   N24 ,Dn4
 .byte   W24
@  #10 @065   ----------------------------------------
 .byte   N32 ,Cs4
 .byte   W96
@  #10 @066   ----------------------------------------
 .byte   W96
@  #10 @067   ----------------------------------------
 .byte   W24
 .byte   N07 ,Bn3
 .byte   W08
 .byte   N08 ,Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs5
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Fs4
 .byte   W08
@  #10 @068   ----------------------------------------
 .byte   N07
 .byte   W08
 .byte   N08 ,Bn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Dn3
 .byte   W08
@  #10 @069   ----------------------------------------
 .byte   Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Bn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   Dn4
 .byte   W08
@  #10 @070   ----------------------------------------
 .byte   Fn4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   Cs5
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   Cs4
 .byte   W08
@  #10 @071   ----------------------------------------
 .byte   Cs5
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   An3
 .byte   W08
@  #10 @072   ----------------------------------------
 .byte   An4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   Cs4
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   N03 ,Dn4
 .byte   W08
 .byte   N01 ,En4 ,v068
 .byte   W08
 .byte   N02 ,Fs4 ,v072
 .byte   W08
 .byte   N03 ,Gs4
 .byte   W08
 .byte   N01 ,An4 ,v076
 .byte   W08
 .byte   N02 ,Bn4 ,v080
 .byte   W08
@  #10 @073   ----------------------------------------
Label_010103C8:
 .byte   N44 ,Cs5 ,v080
 .byte   W48
 .byte   N92 ,Fs4
 .byte   W48
 .byte   PEND 
@  #10 @074   ----------------------------------------
Label_010103D0:
 .byte   W48
 .byte   N15 ,Ds4 ,v080
 .byte   W16
 .byte   N16 ,Fs4
 .byte   W16
 .byte   As4
 .byte   W16
 .byte   PEND 
@  #10 @075   ----------------------------------------
Label_010103DB:
 .byte   N44 ,Cs5 ,v080
 .byte   W48
 .byte   TIE ,Fs4
 .byte   W48
 .byte   PEND 
@  #10 @076   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W24
 .byte   W01
@  #10 @077   ----------------------------------------
 .byte   PATT
  .word Label_010103C8
@  #10 @078   ----------------------------------------
 .byte   PATT
  .word Label_010103D0
@  #10 @079   ----------------------------------------
 .byte   PATT
  .word Label_010103DB
@  #10 @080   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Fs4
 .byte   N24 ,Fs4 ,v080
 .byte   W24
 .byte   W01
@  #10 @081   ----------------------------------------
Label_01010400:
 .byte   N44 ,Bn4 ,v080
 .byte   W48
 .byte   N92 ,En4
 .byte   W48
 .byte   PEND 
@  #10 @082   ----------------------------------------
Label_01010408:
 .byte   W48
 .byte   N15 ,Cs4 ,v080
 .byte   W16
 .byte   N16 ,En4
 .byte   W16
 .byte   Gs4
 .byte   W16
 .byte   PEND 
@  #10 @083   ----------------------------------------
Label_01010413:
 .byte   N44 ,Bn4 ,v080
 .byte   W48
 .byte   TIE ,En4
 .byte   W48
 .byte   PEND 
@  #10 @084   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W24
 .byte   W01
@  #10 @085   ----------------------------------------
 .byte   PATT
  .word Label_01010400
@  #10 @086   ----------------------------------------
 .byte   PATT
  .word Label_01010408
@  #10 @087   ----------------------------------------
 .byte   PATT
  .word Label_01010413
@  #10 @088   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   En4
 .byte   N24 ,En4 ,v080
 .byte   W24
 .byte   W01
@  #10 @089   ----------------------------------------
 .byte   W96
@  #10 @090   ----------------------------------------
 .byte   W96
@  #10 @091   ----------------------------------------
 .byte   W96
@  #10 @092   ----------------------------------------
 .byte   W96
@  #10 @093   ----------------------------------------
 .byte   W96
@  #10 @094   ----------------------------------------
 .byte   W96
@  #10 @095   ----------------------------------------
 .byte   W96
@  #10 @096   ----------------------------------------
 .byte   W96
@  #10 @097   ----------------------------------------
 .byte   W96
@  #10 @098   ----------------------------------------
 .byte   W96
@  #10 @099   ----------------------------------------
 .byte   W96
@  #10 @100   ----------------------------------------
 .byte   W96
@  #10 @101   ----------------------------------------
 .byte   N02 ,Dn2
 .byte   W08
 .byte   N08 ,Fn3
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Cn5
 .byte   W08
@  #10 @102   ----------------------------------------
 .byte   Fn2
 .byte   W08
 .byte   Fn3
 .byte   W08
 .byte   Cn4
 .byte   W08
 .byte   Fn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Dn5
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Fs4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Dn5
 .byte   W08
@  #10 @103   ----------------------------------------
 .byte   Gn2
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   As4
 .byte   W08
 .byte   Dn5
 .byte   W08
 .byte   Gs2
 .byte   W08
 .byte   Gs3
 .byte   W08
 .byte   En4
 .byte   W08
 .byte   Gs4
 .byte   W08
 .byte   As4
 .byte   W08
 .byte   Dn5
 .byte   W08
@  #10 @104   ----------------------------------------
 .byte   An2
 .byte   W08
 .byte   Gn3
 .byte   W08
 .byte   Dn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Bn4
 .byte   W08
 .byte   Dn5
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   An3
 .byte   W08
 .byte   Gn4
 .byte   W08
 .byte   An4
 .byte   W08
 .byte   Cn5
 .byte   W08
 .byte   Cs5
 .byte   W08
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
 .byte   N44 ,Fn5 ,v064
 .byte   W48
 .byte   N48 ,En5
 .byte   W48
@  #10 @126   ----------------------------------------
 .byte   Dn5
 .byte   W48
 .byte   N44 ,Cn5
 .byte   N44 ,En5
 .byte   W48
@  #10 @127   ----------------------------------------
 .byte   As4
 .byte   N44 ,Fn5
 .byte   W48
 .byte   An4
 .byte   N44 ,Fn5
 .byte   W48
@  #10 @128   ----------------------------------------
 .byte   Gn4
 .byte   N44 ,Fn5
 .byte   W48
 .byte   Fn4
 .byte   N44 ,Fn5
 .byte   W48
@  #10 @129   ----------------------------------------
 .byte   N48 ,Fs5
 .byte   W48
 .byte   Fn5
 .byte   W48
@  #10 @130   ----------------------------------------
 .byte   Ds5
 .byte   W48
 .byte   Cs5
 .byte   W48
@  #10 @131   ----------------------------------------
 .byte   Bn4
 .byte   W48
 .byte   As4
 .byte   W48
@  #10 @132   ----------------------------------------
 .byte   Gs4
 .byte   W48
 .byte   Fs4
 .byte   W48
@  #10 @133   ----------------------------------------
 .byte   TIE ,Fn4
 .byte   W96
@  #10 @134   ----------------------------------------
 .byte   W96
@  #10 @135   ----------------------------------------
 .byte   W96
@  #10 @136   ----------------------------------------
 .byte   W60
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N15 ,Fs4
 .byte   W16
 .byte   N16 ,Gn4
 .byte   W16
@  #10 @137   ----------------------------------------
 .byte   W96
@  #10 @138   ----------------------------------------
 .byte   W96
@  #10 @139   ----------------------------------------
 .byte   W96
@  #10 @140   ----------------------------------------
 .byte   W96
@  #10 @141   ----------------------------------------
 .byte   W96
@  #10 @142   ----------------------------------------
 .byte   W96
@  #10 @143   ----------------------------------------
 .byte   W96
@  #10 @144   ----------------------------------------
 .byte   W96
@  #10 @145   ----------------------------------------
 .byte   W96
@  #10 @146   ----------------------------------------
 .byte   W96
@  #10 @147   ----------------------------------------
 .byte   W96
@  #10 @148   ----------------------------------------
 .byte   W96
@  #10 @149   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   W96
@  #10 @150   ----------------------------------------
 .byte   N96 ,En3
 .byte   W96
@  #10 @151   ----------------------------------------
 .byte   Fs3
 .byte   W96
@  #10 @152   ----------------------------------------
 .byte   En3
 .byte   W96
@  #10 @153   ----------------------------------------
 .byte   Dn3
 .byte   W96
@  #10 @154   ----------------------------------------
 .byte   En3
 .byte   W96
@  #10 @155   ----------------------------------------
 .byte   Fs3
 .byte   W96
@  #10 @156   ----------------------------------------
 .byte   Gs3
 .byte   W96
@  #10 @157   ----------------------------------------
 .byte   W96
@  #10 @158   ----------------------------------------
 .byte   W24
 .byte   N23 ,As4
 .byte   W24
 .byte   N24 ,An4
 .byte   W24
 .byte   Fn4
 .byte   W24
@  #10 @159   ----------------------------------------
 .byte   Fs4
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   Bn3
 .byte   W24
@  #10 @160   ----------------------------------------
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   Gn3
 .byte   W24
@  #10 @161   ----------------------------------------
 .byte   Gs3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   Bn2
 .byte   W24
@  #10 @162   ----------------------------------------
 .byte   GOTO
  .word Label_01010248
@  #10 @163   ----------------------------------------
 .byte   W96
@  #10 @164   ----------------------------------------
 .byte   W96
@  #10 @165   ----------------------------------------
 .byte   W96
@  #10 @166   ----------------------------------------
 .byte   W96
 .byte   FINE

@**************** Track 11 (Midi-Chn.10) ****************@

.align 2, 0
song07_011:
@  #11 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 41
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v-15
 .byte   VOL , 45*song07_mvl/mxv
 .byte   PAN , c_v-15
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
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
 .byte   W96
@  #11 @010   ----------------------------------------
 .byte   N11 ,Bn3 ,v064
 .byte   N11 ,Cs4
 .byte   W24
 .byte   Bn3
 .byte   N11 ,Cs4
 .byte   W24
 .byte   N05 ,Bn3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W18
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W18
@  #11 @011   ----------------------------------------
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W18
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W18
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W18
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Bn3
 .byte   N05 ,Cs4
 .byte   W18
@  #11 @012   ----------------------------------------
Label_010106E9:
 .byte   N23 ,Fs2 ,v064
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N08 ,Gs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   N15 ,Cs3
 .byte   W16
 .byte   N16 ,An2
 .byte   W16
 .byte   Fs2
 .byte   W16
 .byte   PEND 
@  #11 @013   ----------------------------------------
Label_010106FD:
 .byte   N23 ,Dn2 ,v064
 .byte   W24
 .byte   N24 ,Dn3
 .byte   W24
 .byte   N15 ,Fn2
 .byte   W16
 .byte   N16 ,En3
 .byte   W16
 .byte   Dn3
 .byte   W16
 .byte   PEND 
@  #11 @014   ----------------------------------------
 .byte   PATT
  .word Label_010106E9
@  #11 @015   ----------------------------------------
 .byte   PATT
  .word Label_010106FD
@  #11 @016   ----------------------------------------
 .byte   PATT
  .word Label_010106E9
@  #11 @017   ----------------------------------------
 .byte   PATT
  .word Label_010106FD
@  #11 @018   ----------------------------------------
 .byte   PATT
  .word Label_010106E9
@  #11 @019   ----------------------------------------
 .byte   PATT
  .word Label_010106FD
@  #11 @020   ----------------------------------------
 .byte   W96
@  #11 @021   ----------------------------------------
 .byte   W96
@  #11 @022   ----------------------------------------
 .byte   N92 ,An2 ,v080
 .byte   W96
@  #11 @023   ----------------------------------------
Label_01010731:
 .byte   N60 ,Bn2 ,v080
 .byte   W64
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N07 ,Fn3
 .byte   W08
 .byte   PEND 
@  #11 @024   ----------------------------------------
 .byte   N92 ,Fs3
 .byte   W96
@  #11 @025   ----------------------------------------
 .byte   N96 ,En3
 .byte   W96
@  #11 @026   ----------------------------------------
Label_01010742:
 .byte   N60 ,Dn3 ,v080
 .byte   W64
 .byte   N15 ,Cs3
 .byte   W16
 .byte   N16 ,Bn2
 .byte   W16
 .byte   PEND 
@  #11 @027   ----------------------------------------
Label_0101074D:
 .byte   N30 ,An2 ,v080
 .byte   W32
 .byte   N60 ,Gs2
 .byte   W64
 .byte   PEND 
@  #11 @028   ----------------------------------------
 .byte   N44 ,Dn3
 .byte   W48
 .byte   N48 ,Bn2
 .byte   W48
@  #11 @029   ----------------------------------------
 .byte   En3
 .byte   W48
 .byte   Dn3
 .byte   W48
@  #11 @030   ----------------------------------------
 .byte   N92 ,Cs3
 .byte   W96
@  #11 @031   ----------------------------------------
 .byte   N96 ,Fs3
 .byte   W96
@  #11 @032   ----------------------------------------
 .byte   Cs3
 .byte   W96
@  #11 @033   ----------------------------------------
 .byte   Cn3
 .byte   W96
@  #11 @034   ----------------------------------------
 .byte   An2
 .byte   W96
@  #11 @035   ----------------------------------------
 .byte   Gs2
 .byte   W96
@  #11 @036   ----------------------------------------
 .byte   W08
 .byte   N07 ,Gs3
 .byte   W08
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N07
 .byte   W16
 .byte   N08 ,Fn3
 .byte   W08
 .byte   N07
 .byte   W16
 .byte   N08 ,Cs3
 .byte   W08
 .byte   N07
 .byte   W08
@  #11 @037   ----------------------------------------
 .byte   W96
@  #11 @038   ----------------------------------------
 .byte   W96
@  #11 @039   ----------------------------------------
 .byte   N92 ,An2
 .byte   W96
@  #11 @040   ----------------------------------------
 .byte   PATT
  .word Label_01010731
@  #11 @041   ----------------------------------------
 .byte   N92 ,Fs3 ,v080
 .byte   W96
@  #11 @042   ----------------------------------------
 .byte   N96 ,En3
 .byte   W96
@  #11 @043   ----------------------------------------
 .byte   PATT
  .word Label_01010742
@  #11 @044   ----------------------------------------
 .byte   PATT
  .word Label_0101074D
@  #11 @045   ----------------------------------------
 .byte   N92 ,An2 ,v080
 .byte   W96
@  #11 @046   ----------------------------------------
 .byte   N96 ,Bn2
 .byte   W96
@  #11 @047   ----------------------------------------
 .byte   N44 ,Cs3
 .byte   W48
 .byte   N48 ,Fs2
 .byte   W48
@  #11 @048   ----------------------------------------
 .byte   N23 ,As2
 .byte   W24
 .byte   N24 ,Cs3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Gn3
 .byte   W24
@  #11 @049   ----------------------------------------
 .byte   TIE ,Fs3
 .byte   W96
@  #11 @050   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @051   ----------------------------------------
 .byte   N92
 .byte   W96
@  #11 @052   ----------------------------------------
 .byte   N96 ,An3
 .byte   W96
@  #11 @053   ----------------------------------------
 .byte   Gn3
 .byte   W96
@  #11 @054   ----------------------------------------
 .byte   Fs3
 .byte   W96
@  #11 @055   ----------------------------------------
 .byte   En3
 .byte   W96
@  #11 @056   ----------------------------------------
 .byte   Dn3
 .byte   W96
@  #11 @057   ----------------------------------------
Label_010107C7:
 .byte   N07 ,Gs2 ,v080
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W48
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #11 @058   ----------------------------------------
Label_010107D4:
 .byte   N11 ,Gs2 ,v080
 .byte   W48
 .byte   N23 ,An2
 .byte   W24
 .byte   N24 ,Bn2
 .byte   W24
 .byte   PEND 
@  #11 @059   ----------------------------------------
 .byte   PATT
  .word Label_010107C7
@  #11 @060   ----------------------------------------
Label_010107E4:
 .byte   N11 ,Gs2 ,v080
 .byte   W48
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N24 ,An2
 .byte   W24
 .byte   PEND 
@  #11 @061   ----------------------------------------
 .byte   PATT
  .word Label_010107C7
@  #11 @062   ----------------------------------------
 .byte   PATT
  .word Label_010107D4
@  #11 @063   ----------------------------------------
 .byte   PATT
  .word Label_010107C7
@  #11 @064   ----------------------------------------
 .byte   PATT
  .word Label_010107E4
@  #11 @065   ----------------------------------------
 .byte   N32 ,Fs2 ,v080
 .byte   W96
@  #11 @066   ----------------------------------------
 .byte   W96
@  #11 @067   ----------------------------------------
 .byte   W96
@  #11 @068   ----------------------------------------
 .byte   W96
@  #11 @069   ----------------------------------------
 .byte   W96
@  #11 @070   ----------------------------------------
 .byte   W96
@  #11 @071   ----------------------------------------
 .byte   W96
@  #11 @072   ----------------------------------------
 .byte   W96
@  #11 @073   ----------------------------------------
 .byte   TIE ,Ds2
 .byte   W96
@  #11 @074   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @075   ----------------------------------------
 .byte   TIE ,Dn2
 .byte   W96
@  #11 @076   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
@  #11 @077   ----------------------------------------
 .byte   TIE ,Ds2 ,v052
 .byte   W96
@  #11 @078   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
@  #11 @079   ----------------------------------------
 .byte   TIE ,Dn2 ,v080
 .byte   W96
@  #11 @080   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
@  #11 @081   ----------------------------------------
 .byte   TIE ,Cs2 ,v052
 .byte   W96
@  #11 @082   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @083   ----------------------------------------
 .byte   TIE ,Cn2 ,v080
 .byte   W96
@  #11 @084   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
@  #11 @085   ----------------------------------------
 .byte   TIE ,Cs2 ,v052
 .byte   W96
@  #11 @086   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
@  #11 @087   ----------------------------------------
 .byte   TIE ,Cn2 ,v080
 .byte   W96
@  #11 @088   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @089   ----------------------------------------
 .byte   W96
@  #11 @090   ----------------------------------------
 .byte   W96
@  #11 @091   ----------------------------------------
 .byte   W96
@  #11 @092   ----------------------------------------
 .byte   W96
@  #11 @093   ----------------------------------------
 .byte   W96
@  #11 @094   ----------------------------------------
 .byte   W96
@  #11 @095   ----------------------------------------
 .byte   W96
@  #11 @096   ----------------------------------------
 .byte   W96
@  #11 @097   ----------------------------------------
 .byte   W96
@  #11 @098   ----------------------------------------
 .byte   W96
@  #11 @099   ----------------------------------------
 .byte   W96
@  #11 @100   ----------------------------------------
 .byte   W96
@  #11 @101   ----------------------------------------
 .byte   W96
@  #11 @102   ----------------------------------------
 .byte   W96
@  #11 @103   ----------------------------------------
 .byte   W96
@  #11 @104   ----------------------------------------
 .byte   W96
@  #11 @105   ----------------------------------------
 .byte   W96
@  #11 @106   ----------------------------------------
 .byte   W96
@  #11 @107   ----------------------------------------
 .byte   W96
@  #11 @108   ----------------------------------------
 .byte   W96
@  #11 @109   ----------------------------------------
 .byte   W96
@  #11 @110   ----------------------------------------
 .byte   W96
@  #11 @111   ----------------------------------------
 .byte   W96
@  #11 @112   ----------------------------------------
 .byte   W96
@  #11 @113   ----------------------------------------
 .byte   W96
@  #11 @114   ----------------------------------------
 .byte   W96
@  #11 @115   ----------------------------------------
 .byte   W96
@  #11 @116   ----------------------------------------
 .byte   W96
@  #11 @117   ----------------------------------------
 .byte   W96
@  #11 @118   ----------------------------------------
 .byte   W96
@  #11 @119   ----------------------------------------
 .byte   W96
@  #11 @120   ----------------------------------------
 .byte   W96
@  #11 @121   ----------------------------------------
 .byte   W96
@  #11 @122   ----------------------------------------
 .byte   W96
@  #11 @123   ----------------------------------------
 .byte   W96
@  #11 @124   ----------------------------------------
 .byte   W96
@  #11 @125   ----------------------------------------
 .byte   W96
@  #11 @126   ----------------------------------------
 .byte   W96
@  #11 @127   ----------------------------------------
 .byte   W96
@  #11 @128   ----------------------------------------
 .byte   W96
@  #11 @129   ----------------------------------------
 .byte   W96
@  #11 @130   ----------------------------------------
 .byte   W96
@  #11 @131   ----------------------------------------
 .byte   W96
@  #11 @132   ----------------------------------------
 .byte   W96
@  #11 @133   ----------------------------------------
 .byte   W96
@  #11 @134   ----------------------------------------
 .byte   W96
@  #11 @135   ----------------------------------------
 .byte   W96
@  #11 @136   ----------------------------------------
 .byte   W96
@  #11 @137   ----------------------------------------
 .byte   W96
@  #11 @138   ----------------------------------------
 .byte   W96
@  #11 @139   ----------------------------------------
 .byte   W96
@  #11 @140   ----------------------------------------
 .byte   W96
@  #11 @141   ----------------------------------------
 .byte   W96
@  #11 @142   ----------------------------------------
 .byte   W96
@  #11 @143   ----------------------------------------
 .byte   W96
@  #11 @144   ----------------------------------------
 .byte   W96
@  #11 @145   ----------------------------------------
 .byte   W96
@  #11 @146   ----------------------------------------
 .byte   W96
@  #11 @147   ----------------------------------------
 .byte   W96
@  #11 @148   ----------------------------------------
 .byte   W96
@  #11 @149   ----------------------------------------
 .byte   N92 ,Fs2
 .byte   W96
@  #11 @150   ----------------------------------------
 .byte   N96 ,Gs2
 .byte   W96
@  #11 @151   ----------------------------------------
 .byte   An2
 .byte   W96
@  #11 @152   ----------------------------------------
 .byte   Gs2
 .byte   W96
@  #11 @153   ----------------------------------------
 .byte   Fs2
 .byte   W96
@  #11 @154   ----------------------------------------
 .byte   Gs2
 .byte   W96
@  #11 @155   ----------------------------------------
 .byte   An2
 .byte   W96
@  #11 @156   ----------------------------------------
 .byte   Bn2
 .byte   W96
@  #11 @157   ----------------------------------------
 .byte   W96
@  #11 @158   ----------------------------------------
 .byte   W24
 .byte   N23 ,Fn4
 .byte   W24
 .byte   N24 ,Cn4
 .byte   W24
 .byte   Gn3
 .byte   W24
@  #11 @159   ----------------------------------------
 .byte   Gs3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   Dn3
 .byte   W24
@  #11 @160   ----------------------------------------
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N24 ,Cn3
 .byte   W24
 .byte   Gn2
 .byte   W24
@  #11 @161   ----------------------------------------
 .byte   Gs2
 .byte   W24
 .byte   En2
 .byte   W24
 .byte   Fn2
 .byte   W24
 .byte   Dn2
 .byte   W24
@  #11 @162   ----------------------------------------
 .byte   GOTO
  .word Label_010106E9
@  #11 @163   ----------------------------------------
 .byte   PATT
  .word Label_010106E9
@  #11 @164   ----------------------------------------
 .byte   PATT
  .word Label_010106FD
@  #11 @165   ----------------------------------------
 .byte   PATT
  .word Label_010106E9
@  #11 @166   ----------------------------------------
 .byte   PATT
  .word Label_010106FD
 .byte   FINE

@**************** Track 12 (Midi-Chn.11) ****************@

.align 2, 0
song07_012:
@  #12 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 49
 .byte   VOL , 45*song07_mvl/mxv
 .byte   PAN , c_v-15
 .byte   VOL , 37*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 41*song07_mvl/mxv
 .byte   PAN , c_v-21
 .byte   W96
@  #12 @001   ----------------------------------------
 .byte   W96
@  #12 @002   ----------------------------------------
 .byte   W96
@  #12 @003   ----------------------------------------
 .byte   W96
@  #12 @004   ----------------------------------------
 .byte   W96
@  #12 @005   ----------------------------------------
 .byte   W96
@  #12 @006   ----------------------------------------
 .byte   W96
@  #12 @007   ----------------------------------------
 .byte   W96
@  #12 @008   ----------------------------------------
 .byte   W96
@  #12 @009   ----------------------------------------
 .byte   W96
@  #12 @010   ----------------------------------------
 .byte   W96
@  #12 @011   ----------------------------------------
 .byte   W96
@  #12 @012   ----------------------------------------
Label_01011AB8:
 .byte   N23 ,Fs1 ,v080
 .byte   W24
 .byte   N07
 .byte   W08
 .byte   N08 ,Gs1
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   N15 ,Cs2
 .byte   W16
 .byte   N16 ,An1
 .byte   W16
 .byte   Fs1
 .byte   W16
 .byte   PEND 
@  #12 @013   ----------------------------------------
Label_01011ACC:
 .byte   N07 ,Dn1 ,v080
 .byte   W08
 .byte   N08 ,Fs1
 .byte   W08
 .byte   An1
 .byte   W08
 .byte   N23 ,En2
 .byte   W24
 .byte   N15 ,Fn1
 .byte   W16
 .byte   N30 ,Fn2
 .byte   W32
 .byte   PEND 
@  #12 @014   ----------------------------------------
 .byte   PATT
  .word Label_01011AB8
@  #12 @015   ----------------------------------------
 .byte   PATT
  .word Label_01011ACC
@  #12 @016   ----------------------------------------
 .byte   PATT
  .word Label_01011AB8
@  #12 @017   ----------------------------------------
 .byte   PATT
  .word Label_01011ACC
@  #12 @018   ----------------------------------------
 .byte   PATT
  .word Label_01011AB8
@  #12 @019   ----------------------------------------
 .byte   PATT
  .word Label_01011ACC
@  #12 @020   ----------------------------------------
 .byte   W96
@  #12 @021   ----------------------------------------
 .byte   W96
@  #12 @022   ----------------------------------------
 .byte   N92 ,En2 ,v080
 .byte   W96
@  #12 @023   ----------------------------------------
 .byte   N96 ,Dn2
 .byte   W96
@  #12 @024   ----------------------------------------
 .byte   Cs2
 .byte   W96
@  #12 @025   ----------------------------------------
 .byte   Bn1
 .byte   W96
@  #12 @026   ----------------------------------------
 .byte   Gs1
 .byte   W96
@  #12 @027   ----------------------------------------
 .byte   Cs2
 .byte   W96
@  #12 @028   ----------------------------------------
 .byte   Bn1
 .byte   W96
@  #12 @029   ----------------------------------------
 .byte   Gs1
 .byte   W96
@  #12 @030   ----------------------------------------
 .byte   Fs1
 .byte   W96
@  #12 @031   ----------------------------------------
 .byte   En1
 .byte   W96
@  #12 @032   ----------------------------------------
 .byte   Ds2
 .byte   W96
@  #12 @033   ----------------------------------------
 .byte   Gs1
 .byte   W96
@  #12 @034   ----------------------------------------
 .byte   Dn2
 .byte   W96
@  #12 @035   ----------------------------------------
 .byte   Cs2
 .byte   W96
@  #12 @036   ----------------------------------------
 .byte   N23
 .byte   W48
 .byte   N05
 .byte   W16
 .byte   N05
 .byte   W16
 .byte   N05
 .byte   W16
@  #12 @037   ----------------------------------------
 .byte   N07 ,Fs1
 .byte   W96
@  #12 @038   ----------------------------------------
 .byte   W96
@  #12 @039   ----------------------------------------
 .byte   N92 ,En2
 .byte   W96
@  #12 @040   ----------------------------------------
 .byte   N96 ,Dn2
 .byte   W96
@  #12 @041   ----------------------------------------
 .byte   Cs2
 .byte   W96
@  #12 @042   ----------------------------------------
 .byte   Bn1
 .byte   W96
@  #12 @043   ----------------------------------------
 .byte   Gs1
 .byte   W96
@  #12 @044   ----------------------------------------
 .byte   N44 ,Cs2
 .byte   W48
 .byte   N48 ,Fn2
 .byte   W48
@  #12 @045   ----------------------------------------
 .byte   N92 ,Fs2
 .byte   W96
@  #12 @046   ----------------------------------------
 .byte   N44 ,En2
 .byte   W48
 .byte   N48 ,Gs2
 .byte   W48
@  #12 @047   ----------------------------------------
 .byte   Cs2
 .byte   W48
 .byte   Bn1
 .byte   W48
@  #12 @048   ----------------------------------------
 .byte   As1
 .byte   W48
 .byte   Fs1
 .byte   W48
@  #12 @049   ----------------------------------------
 .byte   TIE ,Bn1
 .byte   W96
@  #12 @050   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @051   ----------------------------------------
 .byte   TIE ,An1
 .byte   W96
@  #12 @052   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @053   ----------------------------------------
 .byte   TIE ,Gn1
 .byte   W96
@  #12 @054   ----------------------------------------
 .byte   W96
@  #12 @055   ----------------------------------------
 .byte   W96
@  #12 @056   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @057   ----------------------------------------
Label_01011B64:
 .byte   N07 ,Cs1 ,v080
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   N11
 .byte   W48
 .byte   N07
 .byte   W16
 .byte   N07
 .byte   W08
 .byte   PEND 
@  #12 @058   ----------------------------------------
Label_01011B71:
 .byte   N11 ,Cs1 ,v080
 .byte   W48
 .byte   N23 ,Fs1
 .byte   W24
 .byte   N24 ,Gs1
 .byte   W24
 .byte   PEND 
@  #12 @059   ----------------------------------------
 .byte   PATT
  .word Label_01011B64
@  #12 @060   ----------------------------------------
Label_01011B81:
 .byte   N11 ,Cs1 ,v080
 .byte   W48
 .byte   N23 ,Gs1
 .byte   W24
 .byte   N24 ,Fs1
 .byte   W24
 .byte   PEND 
@  #12 @061   ----------------------------------------
 .byte   PATT
  .word Label_01011B64
@  #12 @062   ----------------------------------------
 .byte   PATT
  .word Label_01011B71
@  #12 @063   ----------------------------------------
 .byte   PATT
  .word Label_01011B64
@  #12 @064   ----------------------------------------
 .byte   PATT
  .word Label_01011B81
@  #12 @065   ----------------------------------------
 .byte   N32 ,Fs2 ,v080
 .byte   W96
@  #12 @066   ----------------------------------------
 .byte   W96
@  #12 @067   ----------------------------------------
 .byte   W24
 .byte   N68 ,Bn1
 .byte   W72
@  #12 @068   ----------------------------------------
 .byte   N92 ,An1
 .byte   W96
@  #12 @069   ----------------------------------------
 .byte   N96 ,Gn1
 .byte   W96
@  #12 @070   ----------------------------------------
 .byte   Cs1
 .byte   W96
@  #12 @071   ----------------------------------------
 .byte   Fs1
 .byte   W96
@  #12 @072   ----------------------------------------
 .byte   En1
 .byte   W96
@  #12 @073   ----------------------------------------
 .byte   W96
@  #12 @074   ----------------------------------------
 .byte   W96
@  #12 @075   ----------------------------------------
 .byte   W96
@  #12 @076   ----------------------------------------
 .byte   W96
@  #12 @077   ----------------------------------------
 .byte   TIE ,Ds1 ,v064
 .byte   W96
@  #12 @078   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
@  #12 @079   ----------------------------------------
 .byte   TIE ,Dn1 ,v080
 .byte   W96
@  #12 @080   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @081   ----------------------------------------
 .byte   W96
@  #12 @082   ----------------------------------------
 .byte   W96
@  #12 @083   ----------------------------------------
 .byte   W96
@  #12 @084   ----------------------------------------
 .byte   W96
@  #12 @085   ----------------------------------------
 .byte   TIE ,Cs1 ,v064
 .byte   W96
@  #12 @086   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
@  #12 @087   ----------------------------------------
 .byte   TIE ,Cn1 ,v080
 .byte   W96
@  #12 @088   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @089   ----------------------------------------
 .byte   W96
@  #12 @090   ----------------------------------------
 .byte   W96
@  #12 @091   ----------------------------------------
 .byte   W96
@  #12 @092   ----------------------------------------
 .byte   W96
@  #12 @093   ----------------------------------------
 .byte   W96
@  #12 @094   ----------------------------------------
 .byte   W96
@  #12 @095   ----------------------------------------
 .byte   W96
@  #12 @096   ----------------------------------------
 .byte   W96
@  #12 @097   ----------------------------------------
 .byte   W96
@  #12 @098   ----------------------------------------
 .byte   W96
@  #12 @099   ----------------------------------------
 .byte   W96
@  #12 @100   ----------------------------------------
 .byte   W96
@  #12 @101   ----------------------------------------
 .byte   W96
@  #12 @102   ----------------------------------------
 .byte   W96
@  #12 @103   ----------------------------------------
 .byte   W96
@  #12 @104   ----------------------------------------
 .byte   W96
@  #12 @105   ----------------------------------------
 .byte   W96
@  #12 @106   ----------------------------------------
 .byte   W96
@  #12 @107   ----------------------------------------
 .byte   W96
@  #12 @108   ----------------------------------------
 .byte   W96
@  #12 @109   ----------------------------------------
 .byte   W96
@  #12 @110   ----------------------------------------
 .byte   W96
@  #12 @111   ----------------------------------------
 .byte   W96
@  #12 @112   ----------------------------------------
 .byte   W96
@  #12 @113   ----------------------------------------
 .byte   W96
@  #12 @114   ----------------------------------------
 .byte   W96
@  #12 @115   ----------------------------------------
 .byte   W96
@  #12 @116   ----------------------------------------
 .byte   W96
@  #12 @117   ----------------------------------------
 .byte   W96
@  #12 @118   ----------------------------------------
 .byte   W96
@  #12 @119   ----------------------------------------
 .byte   W96
@  #12 @120   ----------------------------------------
 .byte   W96
@  #12 @121   ----------------------------------------
 .byte   W96
@  #12 @122   ----------------------------------------
 .byte   W96
@  #12 @123   ----------------------------------------
 .byte   W96
@  #12 @124   ----------------------------------------
 .byte   W96
@  #12 @125   ----------------------------------------
 .byte   W96
@  #12 @126   ----------------------------------------
 .byte   W96
@  #12 @127   ----------------------------------------
 .byte   W96
@  #12 @128   ----------------------------------------
 .byte   W96
@  #12 @129   ----------------------------------------
 .byte   W96
@  #12 @130   ----------------------------------------
 .byte   W96
@  #12 @131   ----------------------------------------
 .byte   W96
@  #12 @132   ----------------------------------------
 .byte   W96
@  #12 @133   ----------------------------------------
 .byte   W96
@  #12 @134   ----------------------------------------
 .byte   W96
@  #12 @135   ----------------------------------------
 .byte   W96
@  #12 @136   ----------------------------------------
 .byte   W96
@  #12 @137   ----------------------------------------
 .byte   W96
@  #12 @138   ----------------------------------------
 .byte   W96
@  #12 @139   ----------------------------------------
 .byte   W96
@  #12 @140   ----------------------------------------
 .byte   W96
@  #12 @141   ----------------------------------------
 .byte   W96
@  #12 @142   ----------------------------------------
 .byte   W96
@  #12 @143   ----------------------------------------
 .byte   W96
@  #12 @144   ----------------------------------------
 .byte   W96
@  #12 @145   ----------------------------------------
Label_01011C17:
 .byte   N07 ,Fs2 ,v096
 .byte   W08
 .byte   N08 ,En2
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Fs3
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Ds3
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Cs3
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   PEND 
@  #12 @146   ----------------------------------------
 .byte   Fs2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   Cs3
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Dn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Bn2
 .byte   W08
@  #12 @147   ----------------------------------------
 .byte   PATT
  .word Label_01011C17
@  #12 @148   ----------------------------------------
 .byte   N07 ,Fs2 ,v096
 .byte   W08
 .byte   N08 ,En2
 .byte   W08
 .byte   Bn2
 .byte   W08
 .byte   En3
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Fs2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   Dn2
 .byte   W08
 .byte   An2
 .byte   W08
 .byte   En2
 .byte   W08
 .byte   Bn2
 .byte   W08
@  #12 @149   ----------------------------------------
 .byte   W96
@  #12 @150   ----------------------------------------
 .byte   W96
@  #12 @151   ----------------------------------------
 .byte   W96
@  #12 @152   ----------------------------------------
 .byte   W96
@  #12 @153   ----------------------------------------
 .byte   W96
@  #12 @154   ----------------------------------------
 .byte   W96
@  #12 @155   ----------------------------------------
 .byte   W96
@  #12 @156   ----------------------------------------
 .byte   W96
@  #12 @157   ----------------------------------------
 .byte   W96
@  #12 @158   ----------------------------------------
 .byte   W96
@  #12 @159   ----------------------------------------
 .byte   W96
@  #12 @160   ----------------------------------------
 .byte   W96
@  #12 @161   ----------------------------------------
 .byte   W96
@  #12 @162   ----------------------------------------
 .byte   GOTO
  .word Label_01011AB8
@  #12 @163   ----------------------------------------
 .byte   W96
@  #12 @164   ----------------------------------------
 .byte   W96
@  #12 @165   ----------------------------------------
 .byte   W96
@  #12 @166   ----------------------------------------
 .byte   W96
 .byte   FINE

@******************************************************@
	.align	2

Song_ShatteringStar_MrGreen3339_SurfingKyogre:
	.byte	12	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song07_pri	@ Priority
	.byte	song07_rev	@ Reverb.
    
	.word	song07_grp
    
	.word	song07_001
	.word	song07_002
	.word	song07_003
	.word	song07_004
	.word	song07_005
	.word	song07_006
	.word	song07_007
	.word	song07_008
	.word	song07_009
	.word	song07_010
	.word	song07_011
	.word	song07_012

	.end
