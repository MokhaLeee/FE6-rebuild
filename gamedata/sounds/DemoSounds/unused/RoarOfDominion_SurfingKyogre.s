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
	.global	Song_RoarOfDominion_SurfingKyogre
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

.align 2, 0
song06_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   TEMPO , 100*song06_tbs/2
 .byte   VOICE , 61
 .byte   VOL , 52*song06_mvl/mxv
 .byte   PAN , c_v+23
 .byte   VOL , 52*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N92 ,Gn1 ,v064
 .byte   W96
@  #01 @001   ----------------------------------------
 .byte   W96
@  #01 @002   ----------------------------------------
Label_0101BB87:
 .byte   N92 ,Gn1 ,v064
 .byte   W96
@  #01 @003   ----------------------------------------
 .byte   W96
@  #01 @004   ----------------------------------------
 .byte   N92
 .byte   W96
@  #01 @005   ----------------------------------------
 .byte   W96
@  #01 @006   ----------------------------------------
 .byte   N92
 .byte   W96
@  #01 @007   ----------------------------------------
 .byte   W96
@  #01 @008   ----------------------------------------
Label_0101BB92:
 .byte   N92 ,En1 ,v096
 .byte   W24
 .byte   N23 ,Cn3 ,v080
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   Gn2
 .byte   W24
 .byte   PEND 
@  #01 @009   ----------------------------------------
 .byte   N92 ,An2
 .byte   W96
@  #01 @010   ----------------------------------------
 .byte   PATT
  .word Label_0101BB92
@  #01 @011   ----------------------------------------
Label_0101BBA7:
 .byte   N44 ,Ds3 ,v080
 .byte   W48
 .byte   Fs3
 .byte   W48
 .byte   PEND 
@  #01 @012   ----------------------------------------
Label_0101BBAE:
 .byte   N92 ,En1 ,v096
 .byte   W24
 .byte   N23 ,Ds3 ,v080
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   PEND 
@  #01 @013   ----------------------------------------
Label_0101BBBB:
 .byte   N44 ,Dn3 ,v080
 .byte   W48
 .byte   Cn3
 .byte   W48
 .byte   PEND 
@  #01 @014   ----------------------------------------
Label_0101BBC2:
 .byte   N92 ,En1 ,v096
 .byte   W24
 .byte   N23 ,Ds3 ,v080
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   Gn3
 .byte   W24
 .byte   PEND 
@  #01 @015   ----------------------------------------
Label_0101BBCF:
 .byte   N44 ,Fs3 ,v080
 .byte   W48
 .byte   Bn3
 .byte   W48
@  #01 @016   ----------------------------------------
 .byte   As0
 .byte   W48
 .byte   PEND 
Label_0101BBD8:
 .byte   TIE ,As1 ,v096
 .byte   N68 ,As3 ,v112
 .byte   W72
@  #01 @017   ----------------------------------------
 .byte   N23 ,Fn3
 .byte   W24
 .byte   PEND 
Label_0101BBE3:
 .byte   N88 ,An3 ,v112
 .byte   W92
@  #01 @018   ----------------------------------------
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   As1
 .byte   W01
Label_0101BBEC:
 .byte   TIE ,As1 ,v096
 .byte   N68 ,Gs3 ,v112
 .byte   W72
 .byte   N23 ,Fn3
 .byte   W24
 .byte   PEND 
@  #01 @019   ----------------------------------------
Label_0101BBF7:
 .byte   N88 ,Fs3 ,v112
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   As1
 .byte   W01
@  #01 @020   ----------------------------------------
Label_0101BC00:
 .byte   N92 ,As1 ,v096
 .byte   N44 ,Fn3 ,v112
 .byte   W48
 .byte   As2
 .byte   W48
 .byte   PEND 
@  #01 @021   ----------------------------------------
Label_0101BC0A:
 .byte   N92 ,An1 ,v096
 .byte   N44 ,An2 ,v112
 .byte   W48
 .byte   N23 ,Fs3
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   PEND 
@  #01 @022   ----------------------------------------
Label_0101BC17:
 .byte   N92 ,As1 ,v096
 .byte   N88 ,Fn3 ,v112
 .byte   W90
 .byte   N05 ,Gs3
 .byte   W06
 .byte   PEND 
@  #01 @023   ----------------------------------------
Label_0101BC22:
 .byte   N92 ,An1 ,v096
 .byte   N92 ,An3 ,v112
 .byte   W96
 .byte   PEND 
@  #01 @024   ----------------------------------------
 .byte   W96
@  #01 @025   ----------------------------------------
 .byte   W96
@  #01 @026   ----------------------------------------
 .byte   W96
@  #01 @027   ----------------------------------------
 .byte   W48
 .byte   Fs3 ,v064
 .byte   W48
@  #01 @028   ----------------------------------------
Label_0101BC31:
 .byte   TIE ,Dn2 ,v052
 .byte   W48
 .byte   Gn3 ,v064
 .byte   W48
 .byte   PEND 
@  #01 @029   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Dn2 ,v067
 .byte   W01
@  #01 @030   ----------------------------------------
Label_0101BC3F:
 .byte   N92 ,As1 ,v052
 .byte   N44 ,Fs3 ,v064
 .byte   W48
 .byte   N92 ,Gn3
 .byte   W48
 .byte   PEND 
@  #01 @031   ----------------------------------------
Label_0101BC4A:
 .byte   N92 ,As1 ,v052
 .byte   W48
 .byte   N44 ,Dn3 ,v064
 .byte   W48
 .byte   PEND 
@  #01 @032   ----------------------------------------
Label_0101BC53:
 .byte   N92 ,Cn2 ,v052
 .byte   N44 ,Gn3 ,v064
 .byte   W48
 .byte   N92 ,An3
 .byte   W48
 .byte   PEND 
@  #01 @033   ----------------------------------------
Label_0101BC5E:
 .byte   N92 ,Cn2 ,v052
 .byte   W48
 .byte   As3 ,v064
 .byte   W48
 .byte   PEND 
@  #01 @034   ----------------------------------------
Label_0101BC66:
 .byte   N92 ,An1 ,v052
 .byte   W48
 .byte   N68 ,Cn4 ,v064
 .byte   W48
 .byte   PEND 
@  #01 @035   ----------------------------------------
Label_0101BC6F:
 .byte   N92 ,An1 ,v052
 .byte   W24
 .byte   N23 ,As3 ,v064
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   PEND 
@  #01 @036   ----------------------------------------
Label_0101BC7C:
 .byte   N44 ,Bn2 ,v064
 .byte   N44 ,Fs3
 .byte   W48
 .byte   Bn2
 .byte   N44 ,En3
 .byte   W48
 .byte   PEND 
@  #01 @037   ----------------------------------------
Label_0101BC87:
 .byte   N92 ,Bn2 ,v064
 .byte   N44 ,Dn3
 .byte   W48
 .byte   Fs3
 .byte   W48
 .byte   PEND 
@  #01 @038   ----------------------------------------
 .byte   N92 ,Bn2
 .byte   N92 ,Gn3
 .byte   W96
@  #01 @039   ----------------------------------------
Label_0101BC95:
 .byte   N44 ,Bn2 ,v064
 .byte   W48
 .byte   Gn3
 .byte   W48
 .byte   PEND 
@  #01 @040   ----------------------------------------
Label_0101BC9C:
 .byte   N92 ,An2 ,v064
 .byte   N23 ,Fs3
 .byte   W24
 .byte   N68 ,An3
 .byte   W72
 .byte   PEND 
@  #01 @041   ----------------------------------------
 .byte   N92 ,An2
 .byte   N92 ,Cs3
 .byte   W96
@  #01 @042   ----------------------------------------
 .byte   Gn2
 .byte   N92 ,Cs3
 .byte   W96
@  #01 @043   ----------------------------------------
 .byte   Gn2
 .byte   N92 ,Fs3
 .byte   W96
@  #01 @044   ----------------------------------------
 .byte   W96
@  #01 @045   ----------------------------------------
 .byte   W96
@  #01 @046   ----------------------------------------
 .byte   W96
@  #01 @047   ----------------------------------------
 .byte   W96
@  #01 @048   ----------------------------------------
 .byte   W96
@  #01 @049   ----------------------------------------
 .byte   W96
@  #01 @050   ----------------------------------------
 .byte   W96
@  #01 @051   ----------------------------------------
 .byte   W96
@  #01 @052   ----------------------------------------
 .byte   W96
@  #01 @053   ----------------------------------------
Label_0101BCBC:
 .byte   N16 ,Gs1 ,v076
 .byte   N92 ,Bn2 ,v052
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16 ,Gs1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #01 @054   ----------------------------------------
Label_0101BCD9:
 .byte   N16 ,Gs1 ,v076
 .byte   N92 ,As2 ,v052
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16 ,Gs1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #01 @055   ----------------------------------------
Label_0101BCF6:
 .byte   N16 ,Gs1 ,v076
 .byte   N92 ,Bn2 ,v052
 .byte   N92 ,Ds3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16 ,Gs1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #01 @056   ----------------------------------------
Label_0101BD15:
 .byte   N16 ,Gs1 ,v076
 .byte   N92 ,As2 ,v052
 .byte   N92 ,En3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16 ,Gs1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #01 @057   ----------------------------------------
Label_0101BD34:
 .byte   N16 ,Cs2 ,v076
 .byte   N56 ,Cs3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16 ,Cs2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   N11 ,Ds3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   En3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
@  #01 @058   ----------------------------------------
Label_0101BD57:
 .byte   N16 ,Bn1 ,v076
 .byte   TIE ,Fs3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16 ,Bn1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #01 @059   ----------------------------------------
Label_0101BD74:
 .byte   N16 ,Ds2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W18
 .byte   PEND 
 .byte   EOT
 .byte   Fs3
 .byte   W01
 .byte   N07 ,Ds2
 .byte   N23 ,Gs3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07 ,Ds2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N23 ,As3 ,v080
 .byte   W24
@  #01 @060   ----------------------------------------
Label_0101BD98:
 .byte   N16 ,As1 ,v076
 .byte   N68 ,Fn3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N23 ,Gn3 ,v080
 .byte   W24
 .byte   PEND 
@  #01 @061   ----------------------------------------
Label_0101BDB8:
 .byte   N16 ,Fn2 ,v076
 .byte   N44 ,Gs3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16 ,Fn2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   N23 ,Gn3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07 ,Fn2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N23 ,Fn3 ,v080
 .byte   W24
 .byte   PEND 
@  #01 @062   ----------------------------------------
Label_0101BDDD:
 .byte   N16 ,Fn2 ,v076
 .byte   N44 ,Fn3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16 ,Fn2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   N23 ,Ds3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07 ,Fn2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N23 ,Cs3 ,v080
 .byte   W24
 .byte   PEND 
@  #01 @063   ----------------------------------------
Label_0101BE02:
 .byte   N05 ,Cn2 ,v064
 .byte   N15 ,Cn3 ,v080
 .byte   W12
 .byte   N05 ,As1 ,v064
 .byte   W04
 .byte   N15 ,As2 ,v080
 .byte   W08
 .byte   N05 ,Gs1 ,v064
 .byte   W08
 .byte   N30 ,Fn3 ,v080
 .byte   W04
 .byte   N05 ,Gn1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   Gn1
 .byte   W04
 .byte   N15 ,Ds3 ,v080
 .byte   W08
 .byte   N05 ,Fn1 ,v064
 .byte   W08
 .byte   N30 ,As3 ,v080
 .byte   W04
 .byte   N05 ,Ds1 ,v064
 .byte   W12
 .byte   PEND 
@  #01 @064   ----------------------------------------
Label_0101BE32:
 .byte   W12
 .byte   N05 ,An1 ,v064
 .byte   W04
 .byte   N15 ,Fn3 ,v080
 .byte   W08
 .byte   N05 ,Gn1 ,v064
 .byte   W08
 .byte   N15 ,Cn4 ,v080
 .byte   W04
 .byte   N05 ,Fn1 ,v064
 .byte   W12
 .byte   Cn2
 .byte   N15 ,Cn4 ,v080
 .byte   W12
 .byte   N05 ,As1 ,v064
 .byte   W04
 .byte   N15 ,As3 ,v080
 .byte   W08
 .byte   N05 ,An1 ,v064
 .byte   W06
 .byte   Gn1
 .byte   W02
 .byte   N15 ,Fn4 ,v080
 .byte   W04
 .byte   N05 ,Fn1 ,v064
 .byte   W12
 .byte   PEND 
@  #01 @065   ----------------------------------------
Label_0101BE63:
 .byte   N92 ,Fn3 ,v080
 .byte   W48
 .byte   N03 ,Fs1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #01 @066   ----------------------------------------
Label_0101BE88:
 .byte   N92 ,Ds3 ,v080
 .byte   W12
 .byte   N07 ,Fs1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #01 @067   ----------------------------------------
Label_0101BEAD:
 .byte   N92 ,Fn3 ,v080
 .byte   W12
 .byte   N07 ,Fs1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #01 @068   ----------------------------------------
 .byte   PATT
  .word Label_0101BE88
@  #01 @069   ----------------------------------------
Label_0101BED7:
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   N68 ,As3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #01 @070   ----------------------------------------
Label_0101BF0C:
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N02 ,Fn3 ,v080
 .byte   W02
 .byte   Gs3
 .byte   W03
 .byte   As3
 .byte   W02
 .byte   N40 ,Cn4
 .byte   W05
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #01 @071   ----------------------------------------
Label_0101BF49:
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   N68 ,Gs3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #01 @072   ----------------------------------------
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N02 ,Fn3 ,v080
 .byte   W02
 .byte   Fs3
 .byte   W03
 .byte   Gs3
 .byte   W02
 .byte   N40 ,As3
 .byte   W05
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
@  #01 @073   ----------------------------------------
 .byte   TEMPO , 100*song06_tbs/2
 .byte   N92 ,Gn1 ,v064
 .byte   W96
@  #01 @074   ----------------------------------------
 .byte   W96
@  #01 @075   ----------------------------------------
 .byte   GOTO
  .word Label_0101BB87
@  #01 @076   ----------------------------------------
 .byte   N92 ,Gn1 ,v064
 .byte   W96
@  #01 @077   ----------------------------------------
 .byte   W96
@  #01 @078   ----------------------------------------
 .byte   N92
 .byte   W96
@  #01 @079   ----------------------------------------
 .byte   W96
@  #01 @080   ----------------------------------------
 .byte   N92
 .byte   W96
@  #01 @081   ----------------------------------------
 .byte   W96
@  #01 @082   ----------------------------------------
 .byte   PATT
  .word Label_0101BB92
@  #01 @083   ----------------------------------------
 .byte   N92 ,An2 ,v080
 .byte   W96
@  #01 @084   ----------------------------------------
 .byte   PATT
  .word Label_0101BB92
@  #01 @085   ----------------------------------------
 .byte   PATT
  .word Label_0101BBA7
@  #01 @086   ----------------------------------------
 .byte   PATT
  .word Label_0101BBAE
@  #01 @087   ----------------------------------------
 .byte   PATT
  .word Label_0101BBBB
@  #01 @088   ----------------------------------------
 .byte   PATT
  .word Label_0101BBC2
@  #01 @089   ----------------------------------------
 .byte   PATT
  .word Label_0101BBCF
@  #01 @090   ----------------------------------------
 .byte   PATT
  .word Label_0101BBD8
@  #01 @091   ----------------------------------------
 .byte   PATT
  .word Label_0101BBE3
@  #01 @092   ----------------------------------------
 .byte   EOT
 .byte   As1
 .byte   W01
@  #01 @093   ----------------------------------------
 .byte   PATT
  .word Label_0101BBEC
@  #01 @094   ----------------------------------------
 .byte   PATT
  .word Label_0101BBF7
@  #01 @095   ----------------------------------------
 .byte   EOT
 .byte   As1
 .byte   W01
@  #01 @096   ----------------------------------------
 .byte   PATT
  .word Label_0101BC00
@  #01 @097   ----------------------------------------
 .byte   PATT
  .word Label_0101BC0A
@  #01 @098   ----------------------------------------
 .byte   PATT
  .word Label_0101BC17
@  #01 @099   ----------------------------------------
 .byte   PATT
  .word Label_0101BC22
@  #01 @100   ----------------------------------------
 .byte   W96
@  #01 @101   ----------------------------------------
 .byte   W96
@  #01 @102   ----------------------------------------
 .byte   W96
@  #01 @103   ----------------------------------------
 .byte   W48
 .byte   N92 ,Fs3 ,v064
 .byte   W48
@  #01 @104   ----------------------------------------
 .byte   PATT
  .word Label_0101BC31
@  #01 @105   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Dn2 ,v067
 .byte   W01
@  #01 @106   ----------------------------------------
 .byte   PATT
  .word Label_0101BC3F
@  #01 @107   ----------------------------------------
 .byte   PATT
  .word Label_0101BC4A
@  #01 @108   ----------------------------------------
 .byte   PATT
  .word Label_0101BC53
@  #01 @109   ----------------------------------------
 .byte   PATT
  .word Label_0101BC5E
@  #01 @110   ----------------------------------------
 .byte   PATT
  .word Label_0101BC66
@  #01 @111   ----------------------------------------
 .byte   PATT
  .word Label_0101BC6F
@  #01 @112   ----------------------------------------
 .byte   PATT
  .word Label_0101BC7C
@  #01 @113   ----------------------------------------
 .byte   PATT
  .word Label_0101BC87
@  #01 @114   ----------------------------------------
 .byte   N92 ,Bn2 ,v064
 .byte   N92 ,Gn3
 .byte   W96
@  #01 @115   ----------------------------------------
 .byte   PATT
  .word Label_0101BC95
@  #01 @116   ----------------------------------------
 .byte   PATT
  .word Label_0101BC9C
@  #01 @117   ----------------------------------------
 .byte   N92 ,An2 ,v064
 .byte   N92 ,Cs3
 .byte   W96
@  #01 @118   ----------------------------------------
 .byte   Gn2
 .byte   N92 ,Cs3
 .byte   W96
@  #01 @119   ----------------------------------------
 .byte   Gn2
 .byte   N92 ,Fs3
 .byte   W96
@  #01 @120   ----------------------------------------
 .byte   W96
@  #01 @121   ----------------------------------------
 .byte   W96
@  #01 @122   ----------------------------------------
 .byte   W96
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
 .byte   PATT
  .word Label_0101BCBC
@  #01 @130   ----------------------------------------
 .byte   PATT
  .word Label_0101BCD9
@  #01 @131   ----------------------------------------
 .byte   PATT
  .word Label_0101BCF6
@  #01 @132   ----------------------------------------
 .byte   PATT
  .word Label_0101BD15
@  #01 @133   ----------------------------------------
 .byte   PATT
  .word Label_0101BD34
@  #01 @134   ----------------------------------------
 .byte   PATT
  .word Label_0101BD57
@  #01 @135   ----------------------------------------
 .byte   PATT
  .word Label_0101BD74
@  #01 @136   ----------------------------------------
 .byte   EOT
 .byte   Fs3
 .byte   W01
 .byte   N07 ,Ds2 ,v076
 .byte   N23 ,Gs3 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07 ,Ds2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N23 ,As3 ,v080
 .byte   W24
@  #01 @137   ----------------------------------------
 .byte   PATT
  .word Label_0101BD98
@  #01 @138   ----------------------------------------
 .byte   PATT
  .word Label_0101BDB8
@  #01 @139   ----------------------------------------
 .byte   PATT
  .word Label_0101BDDD
@  #01 @140   ----------------------------------------
 .byte   PATT
  .word Label_0101BE02
@  #01 @141   ----------------------------------------
 .byte   PATT
  .word Label_0101BE32
@  #01 @142   ----------------------------------------
 .byte   PATT
  .word Label_0101BE63
@  #01 @143   ----------------------------------------
 .byte   PATT
  .word Label_0101BE88
@  #01 @144   ----------------------------------------
 .byte   PATT
  .word Label_0101BEAD
@  #01 @145   ----------------------------------------
 .byte   PATT
  .word Label_0101BE88
@  #01 @146   ----------------------------------------
 .byte   PATT
  .word Label_0101BED7
@  #01 @147   ----------------------------------------
 .byte   PATT
  .word Label_0101BF0C
@  #01 @148   ----------------------------------------
 .byte   PATT
  .word Label_0101BF49
@  #01 @149   ----------------------------------------
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N02 ,Fn3 ,v080
 .byte   W02
 .byte   Fs3
 .byte   W03
 .byte   Gs3
 .byte   W02
 .byte   N40 ,As3
 .byte   W05
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

.align 2, 0
song06_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 62
 .byte   VOL , 32*song06_mvl/mxv
 .byte   PAN , c_v-31
 .byte   VOL , 36*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N92 ,Gn2 ,v064
 .byte   W96
@  #02 @001   ----------------------------------------
 .byte   W96
@  #02 @002   ----------------------------------------
Label_01013035:
 .byte   N92 ,Gn2 ,v064
 .byte   W96
@  #02 @003   ----------------------------------------
 .byte   W96
@  #02 @004   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @005   ----------------------------------------
 .byte   W96
@  #02 @006   ----------------------------------------
Label_0101303D:
 .byte   N92 ,Gn2 ,v064
 .byte   W24
 .byte   N03 ,Ds4 ,v036
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   En4
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs4 ,v040
 .byte   W02
 .byte   W01
 .byte   W01
 .byte   Gs4 ,v044
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   As4 ,v048
 .byte   W01
 .byte   W01
 .byte   W02
 .byte   Ds5 ,v052
 .byte   W04
 .byte   As4
 .byte   W04
 .byte   Gs4
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   Ds4
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   As3
 .byte   W28
 .byte   PEND 
@  #02 @007   ----------------------------------------
 .byte   W96
@  #02 @008   ----------------------------------------
 .byte   N92 ,En2 ,v064
 .byte   W96
@  #02 @009   ----------------------------------------
 .byte   W96
@  #02 @010   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @011   ----------------------------------------
 .byte   W96
@  #02 @012   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @013   ----------------------------------------
 .byte   W96
@  #02 @014   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @015   ----------------------------------------
 .byte   W96
@  #02 @016   ----------------------------------------
 .byte   N44 ,As1
 .byte   W48
 .byte   TIE ,As2
 .byte   W96
@  #02 @017   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @018   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #02 @019   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @020   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @021   ----------------------------------------
Label_0101308D:
 .byte   N92 ,An2 ,v064
 .byte   W84
 .byte   N03 ,Ds4 ,v080
 .byte   W04
 .byte   Fn4
 .byte   W04
 .byte   Fs4
 .byte   W04
 .byte   PEND 
@  #02 @022   ----------------------------------------
Label_0101309A:
 .byte   N92 ,As2 ,v064
 .byte   N05 ,As4 ,v080
 .byte   W96
 .byte   PEND 
@  #02 @023   ----------------------------------------
 .byte   N92 ,An2 ,v064
 .byte   W96
@  #02 @024   ----------------------------------------
 .byte   W96
@  #02 @025   ----------------------------------------
 .byte   W96
@  #02 @026   ----------------------------------------
 .byte   W96
@  #02 @027   ----------------------------------------
 .byte   W96
@  #02 @028   ----------------------------------------
 .byte   TIE ,Gn2 ,v052
 .byte   W96
@  #02 @029   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @030   ----------------------------------------
 .byte   N92 ,Ds2
 .byte   W96
@  #02 @031   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @032   ----------------------------------------
 .byte   Fn2
 .byte   W96
@  #02 @033   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @034   ----------------------------------------
 .byte   Dn2
 .byte   W96
@  #02 @035   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @036   ----------------------------------------
Label_010130BF:
 .byte   N44 ,Bn2 ,v064
 .byte   W48
 .byte   Cs3
 .byte   W48
 .byte   PEND 
@  #02 @037   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   W96
@  #02 @038   ----------------------------------------
Label_010130C9:
 .byte   N68 ,Dn3 ,v064
 .byte   W72
 .byte   N23 ,Cs3
 .byte   W24
 .byte   PEND 
@  #02 @039   ----------------------------------------
Label_010130D1:
 .byte   N44 ,Dn3 ,v064
 .byte   W48
 .byte   Cs3
 .byte   W48
 .byte   PEND 
@  #02 @040   ----------------------------------------
Label_010130D8:
 .byte   N23 ,An2 ,v064
 .byte   W24
 .byte   N44 ,Bn2
 .byte   W48
 .byte   N23 ,Dn3
 .byte   W24
 .byte   PEND 
@  #02 @041   ----------------------------------------
 .byte   N92 ,Cs3
 .byte   W96
@  #02 @042   ----------------------------------------
Label_010130E6:
 .byte   N44 ,Cs3 ,v064
 .byte   W48
 .byte   TIE ,Bn2
 .byte   W48
 .byte   PEND 
@  #02 @043   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @044   ----------------------------------------
Label_010130F2:
 .byte   W24
 .byte   N11 ,Gs4 ,v052
 .byte   W48
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #02 @045   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @046   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @047   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @048   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @049   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @050   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @051   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @052   ----------------------------------------
 .byte   W96
@  #02 @053   ----------------------------------------
 .byte   N92 ,Gs2 ,v064
 .byte   N92 ,Bn2
 .byte   W96
@  #02 @054   ----------------------------------------
 .byte   Gs2
 .byte   N92 ,As2
 .byte   W96
@  #02 @055   ----------------------------------------
Label_01013128:
 .byte   N92 ,Gs2 ,v064
 .byte   N92 ,Bn2
 .byte   N92 ,Ds3
 .byte   W96
 .byte   PEND 
@  #02 @056   ----------------------------------------
Label_01013131:
 .byte   N92 ,Gs2 ,v064
 .byte   N92 ,As2
 .byte   N92 ,En3
 .byte   W96
 .byte   PEND 
@  #02 @057   ----------------------------------------
Label_0101313A:
 .byte   N56 ,Cs3 ,v080
 .byte   W60
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
@  #02 @058   ----------------------------------------
Label_01013146:
 .byte   N32 ,Fs3 ,v080
 .byte   W36
 .byte   N11 ,En3
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   PEND 
@  #02 @059   ----------------------------------------
Label_01013153:
 .byte   N44 ,Fs3 ,v080
 .byte   W48
 .byte   N23 ,Fn3
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   PEND 
@  #02 @060   ----------------------------------------
 .byte   N92 ,Cs3
 .byte   W96
@  #02 @061   ----------------------------------------
Label_01013160:
 .byte   N44 ,Fn3 ,v080
 .byte   W48
 .byte   N23 ,Gn3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   PEND 
@  #02 @062   ----------------------------------------
Label_0101316A:
 .byte   N44 ,Gs3 ,v080
 .byte   W48
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #02 @063   ----------------------------------------
Label_01013173:
 .byte   N15 ,Fn3 ,v080
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N44 ,As3
 .byte   W48
 .byte   PEND 
@  #02 @064   ----------------------------------------
 .byte   N92 ,Cn4
 .byte   W96
@  #02 @065   ----------------------------------------
Label_01013182:
 .byte   W48
 .byte   N03 ,As2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #02 @066   ----------------------------------------
Label_010131A4:
 .byte   W12
 .byte   N07 ,As2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #02 @067   ----------------------------------------
 .byte   PATT
  .word Label_010131A4
@  #02 @068   ----------------------------------------
 .byte   PATT
  .word Label_010131A4
@  #02 @069   ----------------------------------------
 .byte   W96
@  #02 @070   ----------------------------------------
 .byte   W96
@  #02 @071   ----------------------------------------
 .byte   W96
@  #02 @072   ----------------------------------------
 .byte   W96
@  #02 @073   ----------------------------------------
 .byte   N92 ,Gn2 ,v064
 .byte   W96
@  #02 @074   ----------------------------------------
 .byte   W96
@  #02 @075   ----------------------------------------
 .byte   GOTO
  .word Label_01013035
@  #02 @076   ----------------------------------------
 .byte   N92 ,Gn2 ,v064
 .byte   W96
@  #02 @077   ----------------------------------------
 .byte   W96
@  #02 @078   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @079   ----------------------------------------
 .byte   W96
@  #02 @080   ----------------------------------------
 .byte   PATT
  .word Label_0101303D
@  #02 @081   ----------------------------------------
 .byte   W96
@  #02 @082   ----------------------------------------
 .byte   N92 ,En2 ,v064
 .byte   W96
@  #02 @083   ----------------------------------------
 .byte   W96
@  #02 @084   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @085   ----------------------------------------
 .byte   W96
@  #02 @086   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @087   ----------------------------------------
 .byte   W96
@  #02 @088   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @089   ----------------------------------------
 .byte   W96
@  #02 @090   ----------------------------------------
 .byte   N44 ,As1
 .byte   W48
 .byte   TIE ,As2
 .byte   W96
@  #02 @091   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @092   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #02 @093   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @094   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @095   ----------------------------------------
 .byte   PATT
  .word Label_0101308D
@  #02 @096   ----------------------------------------
 .byte   PATT
  .word Label_0101309A
@  #02 @097   ----------------------------------------
 .byte   N92 ,An2 ,v064
 .byte   W96
@  #02 @098   ----------------------------------------
 .byte   W96
@  #02 @099   ----------------------------------------
 .byte   W96
@  #02 @100   ----------------------------------------
 .byte   W96
@  #02 @101   ----------------------------------------
 .byte   W96
@  #02 @102   ----------------------------------------
 .byte   TIE ,Gn2 ,v052
 .byte   W96
@  #02 @103   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #02 @104   ----------------------------------------
 .byte   N92 ,Ds2
 .byte   W96
@  #02 @105   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @106   ----------------------------------------
 .byte   Fn2
 .byte   W96
@  #02 @107   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @108   ----------------------------------------
 .byte   Dn2
 .byte   W96
@  #02 @109   ----------------------------------------
 .byte   N92
 .byte   W96
@  #02 @110   ----------------------------------------
 .byte   PATT
  .word Label_010130BF
@  #02 @111   ----------------------------------------
 .byte   N92 ,Dn3 ,v064
 .byte   W96
@  #02 @112   ----------------------------------------
 .byte   PATT
  .word Label_010130C9
@  #02 @113   ----------------------------------------
 .byte   PATT
  .word Label_010130D1
@  #02 @114   ----------------------------------------
 .byte   PATT
  .word Label_010130D8
@  #02 @115   ----------------------------------------
 .byte   N92 ,Cs3 ,v064
 .byte   W96
@  #02 @116   ----------------------------------------
 .byte   PATT
  .word Label_010130E6
@  #02 @117   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn2
 .byte   W01
@  #02 @118   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @119   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @120   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @121   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @122   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @123   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @124   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @125   ----------------------------------------
 .byte   PATT
  .word Label_010130F2
@  #02 @126   ----------------------------------------
 .byte   W96
@  #02 @127   ----------------------------------------
 .byte   N92 ,Gs2 ,v064
 .byte   N92 ,Bn2
 .byte   W96
@  #02 @128   ----------------------------------------
 .byte   Gs2
 .byte   N92 ,As2
 .byte   W96
@  #02 @129   ----------------------------------------
 .byte   PATT
  .word Label_01013128
@  #02 @130   ----------------------------------------
 .byte   PATT
  .word Label_01013131
@  #02 @131   ----------------------------------------
 .byte   PATT
  .word Label_0101313A
@  #02 @132   ----------------------------------------
 .byte   PATT
  .word Label_01013146
@  #02 @133   ----------------------------------------
 .byte   PATT
  .word Label_01013153
@  #02 @134   ----------------------------------------
 .byte   N92 ,Cs3 ,v080
 .byte   W96
@  #02 @135   ----------------------------------------
 .byte   PATT
  .word Label_01013160
@  #02 @136   ----------------------------------------
 .byte   PATT
  .word Label_0101316A
@  #02 @137   ----------------------------------------
 .byte   PATT
  .word Label_01013173
@  #02 @138   ----------------------------------------
 .byte   N92 ,Cn4 ,v080
 .byte   W96
@  #02 @139   ----------------------------------------
 .byte   PATT
  .word Label_01013182
@  #02 @140   ----------------------------------------
 .byte   PATT
  .word Label_010131A4
@  #02 @141   ----------------------------------------
 .byte   PATT
  .word Label_010131A4
@  #02 @142   ----------------------------------------
 .byte   PATT
  .word Label_010131A4
@  #02 @143   ----------------------------------------
 .byte   W96
@  #02 @144   ----------------------------------------
 .byte   W96
@  #02 @145   ----------------------------------------
 .byte   W96
@  #02 @146   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

.align 2, 0
song06_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 58
 .byte   PAN , c_v+11
 .byte   VOL , 56*song06_mvl/mxv
 .byte   VOL , 52*song06_mvl/mxv
 .byte   N92 ,Gn0 ,v080
 .byte   W96
@  #03 @001   ----------------------------------------
 .byte   W96
@  #03 @002   ----------------------------------------
Label_0100EA86:
 .byte   N92 ,Gn0 ,v080
 .byte   W96
@  #03 @003   ----------------------------------------
 .byte   W96
@  #03 @004   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @005   ----------------------------------------
 .byte   W96
@  #03 @006   ----------------------------------------
Label_0100EA8E:
 .byte   N92 ,Gn0 ,v080
 .byte   W24
 .byte   N03 ,Dn3 ,v052
 .byte   W02
 .byte   W01
 .byte   W01
 .byte   Ds3
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn3 ,v056
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gn3 ,v060
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   As3 ,v064
 .byte   W02
 .byte   W01
 .byte   W01
 .byte   Cn4
 .byte   W04
 .byte   As3
 .byte   W04
 .byte   An3
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   Fn3
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   As2
 .byte   W28
 .byte   PEND 
@  #03 @007   ----------------------------------------
 .byte   W96
@  #03 @008   ----------------------------------------
 .byte   N92 ,En0 ,v096
 .byte   W96
@  #03 @009   ----------------------------------------
 .byte   W96
@  #03 @010   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @011   ----------------------------------------
 .byte   W96
@  #03 @012   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @013   ----------------------------------------
 .byte   W96
@  #03 @014   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @015   ----------------------------------------
 .byte   W96
@  #03 @016   ----------------------------------------
 .byte   N44 ,As0 ,v080
 .byte   W48
 .byte   TIE ,As0 ,v096
 .byte   W96
@  #03 @017   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @018   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #03 @019   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @020   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #03 @021   ----------------------------------------
Label_0100EAE0:
 .byte   W84
 .byte   N03 ,Ds3 ,v080
 .byte   W04
 .byte   Fn3
 .byte   W04
 .byte   Fs3
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   As0
 .byte   W01
@  #03 @022   ----------------------------------------
Label_0100EAED:
 .byte   TIE ,As0 ,v096
 .byte   N05 ,As3 ,v080
 .byte   W96
 .byte   PEND 
@  #03 @023   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   As0
 .byte   W01
@  #03 @024   ----------------------------------------
 .byte   TIE ,Ds1
 .byte   W96
@  #03 @025   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @026   ----------------------------------------
 .byte   N92 ,As0
 .byte   W96
@  #03 @027   ----------------------------------------
 .byte   An0
 .byte   W96
@  #03 @028   ----------------------------------------
 .byte   Gn1 ,v052
 .byte   W96
@  #03 @029   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @030   ----------------------------------------
 .byte   As0
 .byte   W96
@  #03 @031   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @032   ----------------------------------------
 .byte   Cn1
 .byte   W96
@  #03 @033   ----------------------------------------
 .byte   Fn1
 .byte   W96
@  #03 @034   ----------------------------------------
 .byte   Dn1
 .byte   W96
@  #03 @035   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @036   ----------------------------------------
 .byte   TIE ,Bn0 ,v080
 .byte   W96
@  #03 @037   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @038   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #03 @039   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @040   ----------------------------------------
 .byte   TIE ,An0
 .byte   W96
@  #03 @041   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @042   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #03 @043   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @044   ----------------------------------------
 .byte   TIE ,Gs0
 .byte   W96
@  #03 @045   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @046   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #03 @047   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @048   ----------------------------------------
Label_0100EB40:
 .byte   N16 ,Fs0 ,v096
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   TIE ,Fs0 ,v080
 .byte   W72
 .byte   PEND 
@  #03 @049   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @050   ----------------------------------------
Label_0100EB50:
 .byte   N16 ,En0 ,v096
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   TIE ,En0 ,v080
 .byte   W72
 .byte   PEND 
@  #03 @051   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @052   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #03 @071   ----------------------------------------
 .byte   W96
@  #03 @072   ----------------------------------------
 .byte   W96
@  #03 @073   ----------------------------------------
 .byte   N92 ,Gn0
 .byte   W96
@  #03 @074   ----------------------------------------
 .byte   W96
@  #03 @075   ----------------------------------------
 .byte   GOTO
  .word Label_0100EA86
@  #03 @076   ----------------------------------------
 .byte   N92 ,Gn0 ,v080
 .byte   W96
@  #03 @077   ----------------------------------------
 .byte   W96
@  #03 @078   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @079   ----------------------------------------
 .byte   W96
@  #03 @080   ----------------------------------------
 .byte   PATT
  .word Label_0100EA8E
@  #03 @081   ----------------------------------------
 .byte   W96
@  #03 @082   ----------------------------------------
 .byte   N92 ,En0 ,v096
 .byte   W96
@  #03 @083   ----------------------------------------
 .byte   W96
@  #03 @084   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @085   ----------------------------------------
 .byte   W96
@  #03 @086   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @087   ----------------------------------------
 .byte   W96
@  #03 @088   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @089   ----------------------------------------
 .byte   W96
@  #03 @090   ----------------------------------------
 .byte   N44 ,As0 ,v080
 .byte   W48
 .byte   TIE ,As0 ,v096
 .byte   W96
@  #03 @091   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @092   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #03 @093   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @094   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #03 @095   ----------------------------------------
 .byte   PATT
  .word Label_0100EAE0
@  #03 @096   ----------------------------------------
 .byte   EOT
 .byte   As0
 .byte   W01
@  #03 @097   ----------------------------------------
 .byte   PATT
  .word Label_0100EAED
@  #03 @098   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   As0
 .byte   W01
@  #03 @099   ----------------------------------------
 .byte   TIE ,Ds1 ,v080
 .byte   W96
@  #03 @100   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @101   ----------------------------------------
 .byte   N92 ,As0
 .byte   W96
@  #03 @102   ----------------------------------------
 .byte   An0
 .byte   W96
@  #03 @103   ----------------------------------------
 .byte   Gn1 ,v052
 .byte   W96
@  #03 @104   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @105   ----------------------------------------
 .byte   As0
 .byte   W96
@  #03 @106   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @107   ----------------------------------------
 .byte   Cn1
 .byte   W96
@  #03 @108   ----------------------------------------
 .byte   Fn1
 .byte   W96
@  #03 @109   ----------------------------------------
 .byte   Dn1
 .byte   W96
@  #03 @110   ----------------------------------------
 .byte   N92
 .byte   W96
@  #03 @111   ----------------------------------------
 .byte   TIE ,Bn0 ,v080
 .byte   W96
@  #03 @112   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @113   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #03 @114   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @115   ----------------------------------------
 .byte   TIE ,An0
 .byte   W96
@  #03 @116   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @117   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #03 @118   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @119   ----------------------------------------
 .byte   TIE ,Gs0
 .byte   W96
@  #03 @120   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @121   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #03 @122   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #03 @123   ----------------------------------------
 .byte   PATT
  .word Label_0100EB40
@  #03 @124   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0
 .byte   W01
@  #03 @125   ----------------------------------------
 .byte   PATT
  .word Label_0100EB50
@  #03 @126   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En0
 .byte   W01
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
 .byte   W96
@  #03 @134   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #03 @144   ----------------------------------------
 .byte   W96
@  #03 @145   ----------------------------------------
 .byte   W96
@  #03 @146   ----------------------------------------
 .byte   W96
@  #03 @147   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

.align 2, 0
song06_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 49
 .byte   VOL , 25*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 25*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W96
@  #04 @001   ----------------------------------------
 .byte   W96
@  #04 @002   ----------------------------------------
Label_01014DAE:
 .byte   W96
@  #04 @003   ----------------------------------------
 .byte   W96
@  #04 @004   ----------------------------------------
Label_01014DB0:
 .byte   N05 ,Dn4 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #04 @005   ----------------------------------------
Label_01014DD3:
 .byte   N05 ,Gn3 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #04 @006   ----------------------------------------
Label_01014DF6:
 .byte   N05 ,As3 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #04 @007   ----------------------------------------
Label_01014E19:
 .byte   N05 ,Gn4 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #04 @008   ----------------------------------------
 .byte   N92 ,En3
 .byte   W96
@  #04 @009   ----------------------------------------
 .byte   W96
@  #04 @010   ----------------------------------------
 .byte   N92
 .byte   W96
@  #04 @011   ----------------------------------------
 .byte   W96
@  #04 @012   ----------------------------------------
 .byte   N92
 .byte   W96
@  #04 @013   ----------------------------------------
 .byte   W96
@  #04 @014   ----------------------------------------
 .byte   N92
 .byte   W96
@  #04 @015   ----------------------------------------
 .byte   W96
@  #04 @016   ----------------------------------------
 .byte   W48
Label_01014E4A:
 .byte   N05 ,As3 ,v064
 .byte   N05 ,As4
 .byte   W06
 .byte   Cn4
 .byte   N05 ,Cn5
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Cn4
 .byte   N05 ,Cn5
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Ds4
 .byte   N05 ,Ds5
 .byte   W06
 .byte   Cn4
 .byte   N05 ,Cn5
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Cs5
 .byte   W06
@  #04 @017   ----------------------------------------
 .byte   Ds4
 .byte   N05 ,Ds5
 .byte   W06
 .byte   Fn4
 .byte   N05 ,Fn5
 .byte   W06
 .byte   Cn4
 .byte   N05 ,Cn5
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Fn4
 .byte   N05 ,Fn5
 .byte   W06
 .byte   Fs4
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Fn4
 .byte   N05 ,Fn5
 .byte   W12
 .byte   PEND 
Label_01014E89:
 .byte   N05 ,As3 ,v064
 .byte   N05 ,As4
 .byte   W06
 .byte   Cn4
 .byte   N05 ,Cn5
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Cn4
 .byte   N05 ,Cn5
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Ds4
 .byte   N05 ,Ds5
 .byte   W06
 .byte   Cs4
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Ds4
 .byte   N05 ,Ds5
 .byte   W06
@  #04 @018   ----------------------------------------
 .byte   Fn4
 .byte   N05 ,Fn5
 .byte   W06
 .byte   Fs4
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Fn4
 .byte   N05 ,Fn5
 .byte   W06
 .byte   Fs4
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Gs4
 .byte   N05 ,Gs5
 .byte   W06
 .byte   Fs4
 .byte   N05 ,Fs5
 .byte   W06
 .byte   Fn4
 .byte   N05 ,Fn5
 .byte   W06
 .byte   Ds4
 .byte   N05 ,Ds5
 .byte   W06
 .byte   PEND 
@  #04 @019   ----------------------------------------
 .byte   PATT
  .word Label_01014E4A
@  #04 @020   ----------------------------------------
 .byte   PATT
  .word Label_01014E89
@  #04 @021   ----------------------------------------
 .byte   PATT
  .word Label_01014E4A
@  #04 @022   ----------------------------------------
 .byte   PATT
  .word Label_01014E89
@  #04 @023   ----------------------------------------
 .byte   PATT
  .word Label_01014E4A
@  #04 @024   ----------------------------------------
 .byte   PATT
  .word Label_01014E89
@  #04 @025   ----------------------------------------
Label_01014EEA:
 .byte   N05 ,As3 ,v064
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fn4
 .byte   W12
 .byte   PEND 
@  #04 @026   ----------------------------------------
Label_01014F0B:
 .byte   N05 ,As3 ,v064
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
@  #04 @027   ----------------------------------------
Label_01014F2E:
 .byte   N05 ,As4 ,v064
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
@  #04 @028   ----------------------------------------
Label_01014F51:
 .byte   N05 ,An4 ,v064
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   PEND 
@  #04 @029   ----------------------------------------
 .byte   TIE ,Dn4
 .byte   W96
@  #04 @030   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N92 ,Ds4
 .byte   W48
@  #04 @031   ----------------------------------------
 .byte   W48
 .byte   Fn4
 .byte   W48
@  #04 @032   ----------------------------------------
 .byte   W48
 .byte   Gn4
 .byte   W48
@  #04 @033   ----------------------------------------
 .byte   W48
 .byte   An4
 .byte   W48
@  #04 @034   ----------------------------------------
 .byte   W48
 .byte   As4
 .byte   W48
@  #04 @035   ----------------------------------------
 .byte   W48
 .byte   Cn5
 .byte   W48
@  #04 @036   ----------------------------------------
 .byte   W48
 .byte   N68 ,Dn5
 .byte   W48
@  #04 @037   ----------------------------------------
Label_01014F91:
 .byte   W24
 .byte   N44 ,Cs5 ,v064
 .byte   W48
 .byte   Bn4
 .byte   W24
 .byte   PEND 
@  #04 @038   ----------------------------------------
 .byte   W24
 .byte   N92 ,Cs5
 .byte   W72
@  #04 @039   ----------------------------------------
Label_01014F9D:
 .byte   W24
 .byte   N44 ,Bn4 ,v064
 .byte   W48
 .byte   N68 ,An4
 .byte   W24
 .byte   PEND 
@  #04 @040   ----------------------------------------
 .byte   W48
 .byte   Cs5
 .byte   W48
@  #04 @041   ----------------------------------------
Label_01014FA9:
 .byte   W24
 .byte   N44 ,Bn4 ,v064
 .byte   N44 ,Fs5
 .byte   W48
 .byte   N68 ,An4
 .byte   N68 ,Gn5
 .byte   W24
 .byte   PEND 
@  #04 @042   ----------------------------------------
Label_01014FB6:
 .byte   W48
 .byte   N44 ,Bn4 ,v064
 .byte   N44 ,Fs5
 .byte   W48
 .byte   PEND 
@  #04 @043   ----------------------------------------
 .byte   N92 ,An4
 .byte   N92 ,Fs5
 .byte   W96
@  #04 @044   ----------------------------------------
 .byte   An4
 .byte   N92 ,An5
 .byte   W96
@  #04 @045   ----------------------------------------
Label_01014FC7:
 .byte   N44 ,As4 ,v080
 .byte   W48
 .byte   Gs4
 .byte   W48
 .byte   PEND 
@  #04 @046   ----------------------------------------
Label_01014FCE:
 .byte   N44 ,Ds4 ,v080
 .byte   W48
 .byte   Cs4
 .byte   W48
 .byte   PEND 
@  #04 @047   ----------------------------------------
Label_01014FD5:
 .byte   N44 ,Fs4 ,v080
 .byte   W48
 .byte   Ds4
 .byte   W48
 .byte   PEND 
@  #04 @048   ----------------------------------------
Label_01014FDC:
 .byte   N44 ,Cs4 ,v080
 .byte   W48
 .byte   Ds4
 .byte   W48
 .byte   PEND 
@  #04 @049   ----------------------------------------
 .byte   PATT
  .word Label_01014FC7
@  #04 @050   ----------------------------------------
Label_01014FE8:
 .byte   N44 ,Bn4 ,v080
 .byte   W48
 .byte   As4
 .byte   W48
 .byte   PEND 
@  #04 @051   ----------------------------------------
 .byte   PATT
  .word Label_01014FC7
@  #04 @052   ----------------------------------------
Label_01014FF4:
 .byte   N44 ,Cs5 ,v080
 .byte   W48
 .byte   Ds5
 .byte   W48
 .byte   PEND 
@  #04 @053   ----------------------------------------
Label_01014FFB:
 .byte   N88 ,Gs5 ,v080
 .byte   W90
 .byte   N05 ,En5
 .byte   W06
 .byte   PEND 
@  #04 @054   ----------------------------------------
Label_01015003:
 .byte   N05 ,Ds5 ,v080
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   PEND 
@  #04 @055   ----------------------------------------
Label_01015026:
 .byte   N05 ,Cs3 ,v080
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   PEND 
@  #04 @056   ----------------------------------------
Label_01015049:
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   PEND 
@  #04 @057   ----------------------------------------
 .byte   PATT
  .word Label_01015049
@  #04 @058   ----------------------------------------
Label_01015071:
 .byte   N56 ,Cs4 ,v096
 .byte   W60
 .byte   N11 ,Ds4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #04 @059   ----------------------------------------
 .byte   TIE ,Fs4
 .byte   W96
@  #04 @060   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N23 ,Gs4
 .byte   W24
 .byte   As4
 .byte   W24
@  #04 @061   ----------------------------------------
Label_01015089:
 .byte   N68 ,Fn4 ,v096
 .byte   W72
 .byte   N23 ,Gn4
 .byte   W24
 .byte   PEND 
@  #04 @062   ----------------------------------------
Label_01015091:
 .byte   N44 ,Gs4 ,v096
 .byte   W48
 .byte   N23 ,Gn4
 .byte   W24
 .byte   Fn4
 .byte   W24
 .byte   PEND 
@  #04 @063   ----------------------------------------
Label_0101509B:
 .byte   N44 ,Fn4 ,v096
 .byte   W48
 .byte   N23 ,Ds4
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   PEND 
@  #04 @064   ----------------------------------------
Label_010150A5:
 .byte   N15 ,Cn4 ,v096
 .byte   W16
 .byte   As3
 .byte   W16
 .byte   N30 ,Fn4
 .byte   W32
 .byte   N15 ,Ds4
 .byte   W16
 .byte   N30 ,As4
 .byte   W16
 .byte   PEND 
@  #04 @065   ----------------------------------------
Label_010150B5:
 .byte   W16
 .byte   N15 ,Fn4 ,v096
 .byte   W08
 .byte   N23 ,Cn4 ,v080
 .byte   W04
 .byte   W04
 .byte   N15 ,Cn5 ,v096
 .byte   W01
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   W02
 .byte   N23 ,Fn3 ,v088
 .byte   N15 ,Cn5 ,v096
 .byte   W03
 .byte   W04
 .byte   W05
 .byte   W04
 .byte   As4
 .byte   W05
 .byte   W03
 .byte   N23 ,Cn4 ,v092
 .byte   W01
 .byte   W05
 .byte   W02
 .byte   N84 ,Fn5 ,v096
 .byte   W02
 .byte   W05
 .byte   W04
 .byte   W05
 .byte   PEND 
@  #04 @066   ----------------------------------------
Label_010150E2:
 .byte   N23 ,Cs3 ,v096
 .byte   N23 ,Cs4
 .byte   W24
 .byte   Fs3 ,v064
 .byte   W48
 .byte   N11 ,Ds5 ,v096
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   PEND 
@  #04 @067   ----------------------------------------
Label_010150F2:
 .byte   N23 ,Gs5 ,v096
 .byte   W24
 .byte   N44 ,Cs5
 .byte   W48
 .byte   N23 ,Cn5
 .byte   W24
 .byte   PEND 
@  #04 @068   ----------------------------------------
Label_010150FD:
 .byte   N23 ,Cs5 ,v096
 .byte   W24
 .byte   N44 ,Ds5
 .byte   W48
 .byte   N23 ,Gs4
 .byte   W24
 .byte   PEND 
@  #04 @069   ----------------------------------------
Label_01015108:
 .byte   N23 ,Gs4 ,v096
 .byte   W24
 .byte   Fs4
 .byte   W24
 .byte   Fn4
 .byte   W24
 .byte   Gs4
 .byte   W24
 .byte   PEND 
@  #04 @070   ----------------------------------------
 .byte   TIE ,As4
 .byte   W96
@  #04 @071   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #04 @072   ----------------------------------------
Label_0101511A:
 .byte   N05 ,As4 ,v096
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
@  #04 @073   ----------------------------------------
 .byte   PATT
  .word Label_0101511A
@  #04 @074   ----------------------------------------
 .byte   W96
@  #04 @075   ----------------------------------------
 .byte   W96
@  #04 @076   ----------------------------------------
 .byte   GOTO
  .word Label_01014DAE
@  #04 @077   ----------------------------------------
 .byte   W96
@  #04 @078   ----------------------------------------
 .byte   W96
@  #04 @079   ----------------------------------------
 .byte   PATT
  .word Label_01014DB0
@  #04 @080   ----------------------------------------
 .byte   PATT
  .word Label_01014DD3
@  #04 @081   ----------------------------------------
 .byte   PATT
  .word Label_01014DF6
@  #04 @082   ----------------------------------------
 .byte   PATT
  .word Label_01014E19
@  #04 @083   ----------------------------------------
 .byte   N92 ,En3 ,v064
 .byte   W96
@  #04 @084   ----------------------------------------
 .byte   W96
@  #04 @085   ----------------------------------------
 .byte   N92
 .byte   W96
@  #04 @086   ----------------------------------------
 .byte   W96
@  #04 @087   ----------------------------------------
 .byte   N92
 .byte   W96
@  #04 @088   ----------------------------------------
 .byte   W96
@  #04 @089   ----------------------------------------
 .byte   N92
 .byte   W96
@  #04 @090   ----------------------------------------
 .byte   W96
@  #04 @091   ----------------------------------------
 .byte   W48
@  #04 @092   ----------------------------------------
 .byte   PATT
  .word Label_01014E4A
@  #04 @093   ----------------------------------------
 .byte   PATT
  .word Label_01014E89
@  #04 @094   ----------------------------------------
 .byte   PATT
  .word Label_01014E4A
@  #04 @095   ----------------------------------------
 .byte   PATT
  .word Label_01014E89
@  #04 @096   ----------------------------------------
 .byte   PATT
  .word Label_01014E4A
@  #04 @097   ----------------------------------------
 .byte   PATT
  .word Label_01014E89
@  #04 @098   ----------------------------------------
 .byte   PATT
  .word Label_01014E4A
@  #04 @099   ----------------------------------------
 .byte   PATT
  .word Label_01014E89
@  #04 @100   ----------------------------------------
 .byte   PATT
  .word Label_01014EEA
@  #04 @101   ----------------------------------------
 .byte   PATT
  .word Label_01014F0B
@  #04 @102   ----------------------------------------
 .byte   PATT
  .word Label_01014F2E
@  #04 @103   ----------------------------------------
 .byte   PATT
  .word Label_01014F51
@  #04 @104   ----------------------------------------
 .byte   TIE ,Dn4 ,v064
 .byte   W96
@  #04 @105   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N92 ,Ds4
 .byte   W48
@  #04 @106   ----------------------------------------
 .byte   W48
 .byte   Fn4
 .byte   W48
@  #04 @107   ----------------------------------------
 .byte   W48
 .byte   Gn4
 .byte   W48
@  #04 @108   ----------------------------------------
 .byte   W48
 .byte   An4
 .byte   W48
@  #04 @109   ----------------------------------------
 .byte   W48
 .byte   As4
 .byte   W48
@  #04 @110   ----------------------------------------
 .byte   W48
 .byte   Cn5
 .byte   W48
@  #04 @111   ----------------------------------------
 .byte   W48
 .byte   N68 ,Dn5
 .byte   W48
@  #04 @112   ----------------------------------------
 .byte   PATT
  .word Label_01014F91
@  #04 @113   ----------------------------------------
 .byte   W24
 .byte   N92 ,Cs5 ,v064
 .byte   W72
@  #04 @114   ----------------------------------------
 .byte   PATT
  .word Label_01014F9D
@  #04 @115   ----------------------------------------
 .byte   W48
 .byte   N68 ,Cs5 ,v064
 .byte   W48
@  #04 @116   ----------------------------------------
 .byte   PATT
  .word Label_01014FA9
@  #04 @117   ----------------------------------------
 .byte   PATT
  .word Label_01014FB6
@  #04 @118   ----------------------------------------
 .byte   N92 ,An4 ,v064
 .byte   N92 ,Fs5
 .byte   W96
@  #04 @119   ----------------------------------------
 .byte   An4
 .byte   N92 ,An5
 .byte   W96
@  #04 @120   ----------------------------------------
 .byte   PATT
  .word Label_01014FC7
@  #04 @121   ----------------------------------------
 .byte   PATT
  .word Label_01014FCE
@  #04 @122   ----------------------------------------
 .byte   PATT
  .word Label_01014FD5
@  #04 @123   ----------------------------------------
 .byte   PATT
  .word Label_01014FDC
@  #04 @124   ----------------------------------------
 .byte   PATT
  .word Label_01014FC7
@  #04 @125   ----------------------------------------
 .byte   PATT
  .word Label_01014FE8
@  #04 @126   ----------------------------------------
 .byte   PATT
  .word Label_01014FC7
@  #04 @127   ----------------------------------------
 .byte   PATT
  .word Label_01014FF4
@  #04 @128   ----------------------------------------
 .byte   PATT
  .word Label_01014FFB
@  #04 @129   ----------------------------------------
 .byte   PATT
  .word Label_01015003
@  #04 @130   ----------------------------------------
 .byte   PATT
  .word Label_01015026
@  #04 @131   ----------------------------------------
 .byte   PATT
  .word Label_01015049
@  #04 @132   ----------------------------------------
 .byte   PATT
  .word Label_01015049
@  #04 @133   ----------------------------------------
 .byte   PATT
  .word Label_01015071
@  #04 @134   ----------------------------------------
 .byte   TIE ,Fs4 ,v096
 .byte   W96
@  #04 @135   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N23 ,Gs4
 .byte   W24
 .byte   As4
 .byte   W24
@  #04 @136   ----------------------------------------
 .byte   PATT
  .word Label_01015089
@  #04 @137   ----------------------------------------
 .byte   PATT
  .word Label_01015091
@  #04 @138   ----------------------------------------
 .byte   PATT
  .word Label_0101509B
@  #04 @139   ----------------------------------------
 .byte   PATT
  .word Label_010150A5
@  #04 @140   ----------------------------------------
 .byte   PATT
  .word Label_010150B5
@  #04 @141   ----------------------------------------
 .byte   PATT
  .word Label_010150E2
@  #04 @142   ----------------------------------------
 .byte   PATT
  .word Label_010150F2
@  #04 @143   ----------------------------------------
 .byte   PATT
  .word Label_010150FD
@  #04 @144   ----------------------------------------
 .byte   PATT
  .word Label_01015108
@  #04 @145   ----------------------------------------
 .byte   TIE ,As4 ,v096
 .byte   W96
@  #04 @146   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #04 @147   ----------------------------------------
 .byte   PATT
  .word Label_0101511A
@  #04 @148   ----------------------------------------
 .byte   N05 ,As4 ,v096
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn4
 .byte   W05
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

.align 2, 0
song06_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 49
 .byte   VOL , 47*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 65*song06_mvl/mxv
 .byte   PAN , c_v+2
 .byte   VOL , 47*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W96
@  #05 @001   ----------------------------------------
 .byte   W96
@  #05 @002   ----------------------------------------
Label_0100E6EA:
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
 .byte   W48
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
Label_0100E705:
 .byte   N44 ,Dn3 ,v080
 .byte   W48
 .byte   N23 ,Cn3
 .byte   W24
 .byte   As2
 .byte   W24
 .byte   PEND 
@  #05 @029   ----------------------------------------
Label_0100E70F:
 .byte   N23 ,An2 ,v080
 .byte   W24
 .byte   N44 ,Gn2
 .byte   W48
 .byte   N11 ,An2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
@  #05 @030   ----------------------------------------
 .byte   PATT
  .word Label_0100E705
@  #05 @031   ----------------------------------------
Label_0100E721:
 .byte   N44 ,An2 ,v080
 .byte   W48
 .byte   N23 ,As2
 .byte   W24
 .byte   N44 ,Fn3
 .byte   W24
 .byte   PEND 
@  #05 @032   ----------------------------------------
Label_0100E72C:
 .byte   W24
 .byte   N44 ,Cn3 ,v080
 .byte   W48
 .byte   N23 ,As2
 .byte   W24
 .byte   PEND 
@  #05 @033   ----------------------------------------
Label_0100E735:
 .byte   N23 ,An2 ,v080
 .byte   W24
 .byte   As2
 .byte   W24
 .byte   Cn3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   PEND 
@  #05 @034   ----------------------------------------
Label_0100E740:
 .byte   N02 ,Fn3 ,v080
 .byte   W02
 .byte   N44 ,An3
 .byte   W44
 .byte   W02
 .byte   N23 ,As3
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   PEND 
@  #05 @035   ----------------------------------------
Label_0100E74E:
 .byte   N44 ,Fn3 ,v080
 .byte   W48
 .byte   Dn3
 .byte   W48
 .byte   PEND 
@  #05 @036   ----------------------------------------
Label_0100E755:
 .byte   N23 ,Dn3 ,v080
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   N68 ,Fs3
 .byte   W48
 .byte   PEND 
@  #05 @037   ----------------------------------------
Label_0100E75F:
 .byte   W24
 .byte   N23 ,En3 ,v080
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   Cs3
 .byte   W24
 .byte   PEND 
@  #05 @038   ----------------------------------------
Label_0100E769:
 .byte   N44 ,Dn3 ,v080
 .byte   W48
 .byte   N68 ,En3
 .byte   W48
 .byte   PEND 
@  #05 @039   ----------------------------------------
Label_0100E771:
 .byte   W24
 .byte   N23 ,Dn3 ,v080
 .byte   W24
 .byte   Cs3
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   PEND 
@  #05 @040   ----------------------------------------
Label_0100E77B:
 .byte   N44 ,An2 ,v080
 .byte   W48
 .byte   N68 ,Bn2
 .byte   W48
 .byte   PEND 
@  #05 @041   ----------------------------------------
Label_0100E783:
 .byte   W24
 .byte   N23 ,Cs3 ,v080
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   PEND 
@  #05 @042   ----------------------------------------
 .byte   N92 ,An3
 .byte   W96
@  #05 @043   ----------------------------------------
 .byte   Bn3
 .byte   W96
@  #05 @044   ----------------------------------------
Label_0100E792:
 .byte   N44 ,As3 ,v080
 .byte   W48
 .byte   Bn3
 .byte   W48
 .byte   PEND 
@  #05 @045   ----------------------------------------
Label_0100E799:
 .byte   N44 ,As3 ,v080
 .byte   W48
 .byte   Gs3
 .byte   W48
 .byte   PEND 
@  #05 @046   ----------------------------------------
Label_0100E7A0:
 .byte   N44 ,Cs4 ,v080
 .byte   W48
 .byte   Gs3
 .byte   W48
 .byte   PEND 
@  #05 @047   ----------------------------------------
 .byte   PATT
  .word Label_0100E799
@  #05 @048   ----------------------------------------
 .byte   PATT
  .word Label_0100E792
@  #05 @049   ----------------------------------------
Label_0100E7B1:
 .byte   N44 ,As3 ,v080
 .byte   W48
 .byte   N44
 .byte   W48
 .byte   PEND 
@  #05 @050   ----------------------------------------
Label_0100E7B8:
 .byte   N44 ,Fs3 ,v080
 .byte   W48
 .byte   Bn3
 .byte   W48
 .byte   PEND 
@  #05 @051   ----------------------------------------
 .byte   PATT
  .word Label_0100E799
@  #05 @052   ----------------------------------------
 .byte   W96
@  #05 @053   ----------------------------------------
 .byte   W96
@  #05 @054   ----------------------------------------
 .byte   W96
@  #05 @055   ----------------------------------------
 .byte   W48
 .byte   N44 ,Gs3 ,v096
 .byte   W48
@  #05 @056   ----------------------------------------
Label_0100E7CC:
 .byte   N44 ,As3 ,v096
 .byte   W48
 .byte   N23 ,Bn3
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   PEND 
@  #05 @057   ----------------------------------------
 .byte   N92 ,Cs3
 .byte   W96
@  #05 @058   ----------------------------------------
Label_0100E7D9:
 .byte   N44 ,Bn3 ,v096
 .byte   W48
 .byte   Fs3
 .byte   W48
 .byte   PEND 
@  #05 @059   ----------------------------------------
Label_0100E7E0:
 .byte   N44 ,As3 ,v096
 .byte   W48
 .byte   N23 ,Cn4
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   PEND 
@  #05 @060   ----------------------------------------
Label_0100E7EA:
 .byte   N23 ,Cs4 ,v096
 .byte   W24
 .byte   Cn4
 .byte   W24
 .byte   N44 ,Cs4
 .byte   W48
 .byte   PEND 
@  #05 @061   ----------------------------------------
 .byte   N92 ,Cn4
 .byte   W96
@  #05 @062   ----------------------------------------
 .byte   Cs4
 .byte   W96
@  #05 @063   ----------------------------------------
Label_0100E7F9:
 .byte   N15 ,Fn3 ,v096
 .byte   W16
 .byte   N15
 .byte   W16
 .byte   N30
 .byte   W32
 .byte   N15 ,Ds3
 .byte   W16
 .byte   N36 ,As3
 .byte   W16
 .byte   PEND 
@  #05 @064   ----------------------------------------
 .byte   W24
 .byte   N68 ,Fn3
 .byte   W72
@  #05 @065   ----------------------------------------
 .byte   N92 ,Cn3
 .byte   N92 ,Fn3
 .byte   W96
@  #05 @066   ----------------------------------------
 .byte   Cn3
 .byte   N92 ,Ds3
 .byte   W96
@  #05 @067   ----------------------------------------
 .byte   Cn3
 .byte   N92 ,Fn3
 .byte   W96
@  #05 @068   ----------------------------------------
 .byte   Cn3
 .byte   N92 ,Ds3
 .byte   W96
@  #05 @069   ----------------------------------------
Label_0100E81D:
 .byte   N05 ,As2 ,v096
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   PEND 
@  #05 @070   ----------------------------------------
 .byte   PATT
  .word Label_0100E81D
@  #05 @071   ----------------------------------------
 .byte   PATT
  .word Label_0100E81D
@  #05 @072   ----------------------------------------
 .byte   PATT
  .word Label_0100E81D
@  #05 @073   ----------------------------------------
 .byte   W96
@  #05 @074   ----------------------------------------
 .byte   W96
@  #05 @075   ----------------------------------------
 .byte   GOTO
  .word Label_0100E6EA
@  #05 @076   ----------------------------------------
 .byte   W96
@  #05 @077   ----------------------------------------
 .byte   W96
@  #05 @078   ----------------------------------------
 .byte   W96
@  #05 @079   ----------------------------------------
 .byte   W96
@  #05 @080   ----------------------------------------
 .byte   W96
@  #05 @081   ----------------------------------------
 .byte   W96
@  #05 @082   ----------------------------------------
 .byte   W96
@  #05 @083   ----------------------------------------
 .byte   W96
@  #05 @084   ----------------------------------------
 .byte   W96
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
 .byte   W48
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
 .byte   W96
@  #05 @099   ----------------------------------------
 .byte   W96
@  #05 @100   ----------------------------------------
 .byte   W96
@  #05 @101   ----------------------------------------
 .byte   W96
@  #05 @102   ----------------------------------------
 .byte   PATT
  .word Label_0100E705
@  #05 @103   ----------------------------------------
 .byte   PATT
  .word Label_0100E70F
@  #05 @104   ----------------------------------------
 .byte   PATT
  .word Label_0100E705
@  #05 @105   ----------------------------------------
 .byte   PATT
  .word Label_0100E721
@  #05 @106   ----------------------------------------
 .byte   PATT
  .word Label_0100E72C
@  #05 @107   ----------------------------------------
 .byte   PATT
  .word Label_0100E735
@  #05 @108   ----------------------------------------
 .byte   PATT
  .word Label_0100E740
@  #05 @109   ----------------------------------------
 .byte   PATT
  .word Label_0100E74E
@  #05 @110   ----------------------------------------
 .byte   PATT
  .word Label_0100E755
@  #05 @111   ----------------------------------------
 .byte   PATT
  .word Label_0100E75F
@  #05 @112   ----------------------------------------
 .byte   PATT
  .word Label_0100E769
@  #05 @113   ----------------------------------------
 .byte   PATT
  .word Label_0100E771
@  #05 @114   ----------------------------------------
 .byte   PATT
  .word Label_0100E77B
@  #05 @115   ----------------------------------------
 .byte   PATT
  .word Label_0100E783
@  #05 @116   ----------------------------------------
 .byte   N92 ,An3 ,v080
 .byte   W96
@  #05 @117   ----------------------------------------
 .byte   Bn3
 .byte   W96
@  #05 @118   ----------------------------------------
 .byte   PATT
  .word Label_0100E792
@  #05 @119   ----------------------------------------
 .byte   PATT
  .word Label_0100E799
@  #05 @120   ----------------------------------------
 .byte   PATT
  .word Label_0100E7A0
@  #05 @121   ----------------------------------------
 .byte   PATT
  .word Label_0100E799
@  #05 @122   ----------------------------------------
 .byte   PATT
  .word Label_0100E792
@  #05 @123   ----------------------------------------
 .byte   PATT
  .word Label_0100E7B1
@  #05 @124   ----------------------------------------
 .byte   PATT
  .word Label_0100E7B8
@  #05 @125   ----------------------------------------
 .byte   PATT
  .word Label_0100E799
@  #05 @126   ----------------------------------------
 .byte   W96
@  #05 @127   ----------------------------------------
 .byte   W96
@  #05 @128   ----------------------------------------
 .byte   W96
@  #05 @129   ----------------------------------------
 .byte   W48
 .byte   N44 ,Gs3 ,v096
 .byte   W48
@  #05 @130   ----------------------------------------
 .byte   PATT
  .word Label_0100E7CC
@  #05 @131   ----------------------------------------
 .byte   N92 ,Cs3 ,v096
 .byte   W96
@  #05 @132   ----------------------------------------
 .byte   PATT
  .word Label_0100E7D9
@  #05 @133   ----------------------------------------
 .byte   PATT
  .word Label_0100E7E0
@  #05 @134   ----------------------------------------
 .byte   PATT
  .word Label_0100E7EA
@  #05 @135   ----------------------------------------
 .byte   N92 ,Cn4 ,v096
 .byte   W96
@  #05 @136   ----------------------------------------
 .byte   Cs4
 .byte   W96
@  #05 @137   ----------------------------------------
 .byte   PATT
  .word Label_0100E7F9
@  #05 @138   ----------------------------------------
 .byte   W24
 .byte   N68 ,Fn3 ,v096
 .byte   W72
@  #05 @139   ----------------------------------------
 .byte   N92 ,Cn3
 .byte   N92 ,Fn3
 .byte   W96
@  #05 @140   ----------------------------------------
 .byte   Cn3
 .byte   N92 ,Ds3
 .byte   W96
@  #05 @141   ----------------------------------------
 .byte   Cn3
 .byte   N92 ,Fn3
 .byte   W96
@  #05 @142   ----------------------------------------
 .byte   Cn3
 .byte   N92 ,Ds3
 .byte   W96
@  #05 @143   ----------------------------------------
 .byte   PATT
  .word Label_0100E81D
@  #05 @144   ----------------------------------------
 .byte   PATT
  .word Label_0100E81D
@  #05 @145   ----------------------------------------
 .byte   PATT
  .word Label_0100E81D
@  #05 @146   ----------------------------------------
 .byte   N05 ,As2 ,v096
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Fn2
 .byte   W05
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

.align 2, 0
song06_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 1
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N05 ,Dn3 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
@  #06 @001   ----------------------------------------
Label_0100E0D6:
 .byte   N05 ,Gn2 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #06 @002   ----------------------------------------
Label_0100E0F9:
 .byte   N05 ,As2 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #06 @003   ----------------------------------------
Label_0100E11C:
 .byte   N05 ,Gn3 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #06 @004   ----------------------------------------
Label_0100E13F:
 .byte   N05 ,Dn3 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #06 @005   ----------------------------------------
 .byte   PATT
  .word Label_0100E0D6
@  #06 @006   ----------------------------------------
 .byte   PATT
  .word Label_0100E0F9
@  #06 @007   ----------------------------------------
 .byte   PATT
  .word Label_0100E11C
@  #06 @008   ----------------------------------------
Label_0100E171:
 .byte   N11 ,Bn2 ,v064
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #06 @009   ----------------------------------------
Label_0100E184:
 .byte   N11 ,En2 ,v064
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   PEND 
@  #06 @010   ----------------------------------------
Label_0100E197:
 .byte   N11 ,Gn2 ,v064
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   PEND 
@  #06 @011   ----------------------------------------
Label_0100E1AA:
 .byte   N11 ,En3 ,v064
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #06 @012   ----------------------------------------
 .byte   PATT
  .word Label_0100E171
@  #06 @013   ----------------------------------------
 .byte   PATT
  .word Label_0100E184
@  #06 @014   ----------------------------------------
 .byte   PATT
  .word Label_0100E197
@  #06 @015   ----------------------------------------
Label_0100E1CC:
 .byte   N11 ,En3 ,v064
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   En3
 .byte   W60
 .byte   PEND 
@  #06 @016   ----------------------------------------
Label_0100E1DF:
 .byte   N11 ,Fn3 ,v064
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   PEND 
@  #06 @017   ----------------------------------------
Label_0100E1F2:
 .byte   N11 ,As2 ,v064
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   PEND 
@  #06 @018   ----------------------------------------
Label_0100E205:
 .byte   N11 ,Cs3 ,v064
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
@  #06 @019   ----------------------------------------
Label_0100E218:
 .byte   N11 ,As3 ,v064
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
@  #06 @020   ----------------------------------------
 .byte   PATT
  .word Label_0100E1DF
@  #06 @021   ----------------------------------------
 .byte   PATT
  .word Label_0100E1F2
@  #06 @022   ----------------------------------------
 .byte   PATT
  .word Label_0100E205
@  #06 @023   ----------------------------------------
 .byte   PATT
  .word Label_0100E218
@  #06 @024   ----------------------------------------
Label_0100E23F:
 .byte   N92 ,Cs3 ,v080
 .byte   N44 ,Fn3
 .byte   W48
 .byte   Fs3
 .byte   W48
 .byte   PEND 
@  #06 @025   ----------------------------------------
Label_0100E248:
 .byte   N44 ,Cs3 ,v080
 .byte   N92 ,Ds3
 .byte   W48
 .byte   N44 ,Cn3
 .byte   W48
 .byte   PEND 
@  #06 @026   ----------------------------------------
Label_0100E252:
 .byte   N44 ,Cn3 ,v080
 .byte   N44 ,Ds3
 .byte   W48
 .byte   Cs3
 .byte   N44 ,Fn3
 .byte   W48
 .byte   PEND 
@  #06 @027   ----------------------------------------
Label_0100E25D:
 .byte   N23 ,Dn3 ,v080
 .byte   N23 ,Fs3
 .byte   W24
 .byte   Dn3
 .byte   N23 ,Gn3
 .byte   W24
 .byte   Dn3
 .byte   N23 ,An3
 .byte   W24
 .byte   Dn3
 .byte   N23 ,As3
 .byte   W24
 .byte   PEND 
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
 .byte   W96
@  #06 @071   ----------------------------------------
 .byte   W96
@  #06 @072   ----------------------------------------
 .byte   W96
@  #06 @073   ----------------------------------------
 .byte   PATT
  .word Label_0100E13F
@  #06 @074   ----------------------------------------
 .byte   PATT
  .word Label_0100E0D6
@  #06 @075   ----------------------------------------
 .byte   GOTO
  .word Label_0100E0F9
@  #06 @076   ----------------------------------------
 .byte   PATT
  .word Label_0100E0F9
@  #06 @077   ----------------------------------------
 .byte   PATT
  .word Label_0100E11C
@  #06 @078   ----------------------------------------
 .byte   PATT
  .word Label_0100E13F
@  #06 @079   ----------------------------------------
 .byte   PATT
  .word Label_0100E0D6
@  #06 @080   ----------------------------------------
 .byte   PATT
  .word Label_0100E0F9
@  #06 @081   ----------------------------------------
 .byte   PATT
  .word Label_0100E11C
@  #06 @082   ----------------------------------------
 .byte   PATT
  .word Label_0100E171
@  #06 @083   ----------------------------------------
 .byte   PATT
  .word Label_0100E184
@  #06 @084   ----------------------------------------
 .byte   PATT
  .word Label_0100E197
@  #06 @085   ----------------------------------------
 .byte   PATT
  .word Label_0100E1AA
@  #06 @086   ----------------------------------------
 .byte   PATT
  .word Label_0100E171
@  #06 @087   ----------------------------------------
 .byte   PATT
  .word Label_0100E184
@  #06 @088   ----------------------------------------
 .byte   PATT
  .word Label_0100E197
@  #06 @089   ----------------------------------------
 .byte   PATT
  .word Label_0100E1CC
@  #06 @090   ----------------------------------------
 .byte   PATT
  .word Label_0100E1DF
@  #06 @091   ----------------------------------------
 .byte   PATT
  .word Label_0100E1F2
@  #06 @092   ----------------------------------------
 .byte   PATT
  .word Label_0100E205
@  #06 @093   ----------------------------------------
 .byte   PATT
  .word Label_0100E218
@  #06 @094   ----------------------------------------
 .byte   PATT
  .word Label_0100E1DF
@  #06 @095   ----------------------------------------
 .byte   PATT
  .word Label_0100E1F2
@  #06 @096   ----------------------------------------
 .byte   PATT
  .word Label_0100E205
@  #06 @097   ----------------------------------------
 .byte   PATT
  .word Label_0100E218
@  #06 @098   ----------------------------------------
 .byte   PATT
  .word Label_0100E23F
@  #06 @099   ----------------------------------------
 .byte   PATT
  .word Label_0100E248
@  #06 @100   ----------------------------------------
 .byte   PATT
  .word Label_0100E252
@  #06 @101   ----------------------------------------
 .byte   PATT
  .word Label_0100E25D
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
 .byte   W96
@  #06 @114   ----------------------------------------
 .byte   W96
@  #06 @115   ----------------------------------------
 .byte   W96
@  #06 @116   ----------------------------------------
 .byte   W96
@  #06 @117   ----------------------------------------
 .byte   W96
@  #06 @118   ----------------------------------------
 .byte   W96
@  #06 @119   ----------------------------------------
 .byte   W96
@  #06 @120   ----------------------------------------
 .byte   W96
@  #06 @121   ----------------------------------------
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
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

.align 2, 0
song06_007:
@  #07 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 71
 .byte   PAN , c_v+10
 .byte   VOL , 51*song06_mvl/mxv
 .byte   VOL , 42*song06_mvl/mxv
 .byte   W96
@  #07 @001   ----------------------------------------
 .byte   W96
@  #07 @002   ----------------------------------------
Label_549F33:
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
 .byte   W96
@  #07 @010   ----------------------------------------
 .byte   W96
@  #07 @011   ----------------------------------------
 .byte   W96
@  #07 @012   ----------------------------------------
 .byte   W96
@  #07 @013   ----------------------------------------
 .byte   W96
@  #07 @014   ----------------------------------------
 .byte   W96
@  #07 @015   ----------------------------------------
 .byte   W96
@  #07 @016   ----------------------------------------
 .byte   W48
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
Label_549F56:
 .byte   N23 ,Dn4 ,v080
 .byte   W24
 .byte   En4
 .byte   W24
 .byte   N68 ,Fs4
 .byte   W48
 .byte   PEND 
@  #07 @037   ----------------------------------------
Label_549F60:
 .byte   W24
 .byte   N23 ,En4 ,v080
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   PEND 
@  #07 @038   ----------------------------------------
Label_549F6A:
 .byte   N44 ,Dn4 ,v080
 .byte   W48
 .byte   N68 ,En4
 .byte   W48
 .byte   PEND 
@  #07 @039   ----------------------------------------
Label_549F72:
 .byte   W24
 .byte   N23 ,Dn4 ,v080
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   Bn3
 .byte   W24
 .byte   PEND 
@  #07 @040   ----------------------------------------
Label_549F7C:
 .byte   N44 ,An3 ,v080
 .byte   W48
 .byte   N68 ,Bn3
 .byte   W48
 .byte   PEND 
@  #07 @041   ----------------------------------------
Label_549F84:
 .byte   W24
 .byte   N23 ,Cs4 ,v080
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   En4
 .byte   W24
 .byte   PEND 
@  #07 @042   ----------------------------------------
 .byte   N92 ,An4
 .byte   W96
@  #07 @043   ----------------------------------------
 .byte   Bn4
 .byte   W96
@  #07 @044   ----------------------------------------
Label_549F93:
 .byte   N44 ,Fs3 ,v052
 .byte   N44 ,As3
 .byte   N44 ,Cs4
 .byte   W48
 .byte   Gs3
 .byte   N44 ,Bn3
 .byte   N44 ,Ds4
 .byte   W48
 .byte   PEND 
@  #07 @045   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @046   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @047   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @048   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @049   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @050   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @051   ----------------------------------------
 .byte   PATT
  .word Label_549F93
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
Label_549FD1:
 .byte   N92 ,Fn3 ,v064
 .byte   N92 ,Cn4
 .byte   N92 ,Fn4
 .byte   W96
 .byte   PEND 
@  #07 @065   ----------------------------------------
Label_549FDA:
 .byte   N92 ,Fn3 ,v064
 .byte   N92 ,As3
 .byte   N92 ,Cs4
 .byte   N92 ,Fn4
 .byte   W96
 .byte   PEND 
@  #07 @066   ----------------------------------------
Label_549FE5:
 .byte   N92 ,Ds3 ,v064
 .byte   N92 ,As3
 .byte   N92 ,Cn4
 .byte   N92 ,Fn4
 .byte   W96
 .byte   PEND 
@  #07 @067   ----------------------------------------
 .byte   PATT
  .word Label_549FDA
@  #07 @068   ----------------------------------------
 .byte   PATT
  .word Label_549FE5
@  #07 @069   ----------------------------------------
 .byte   PATT
  .word Label_549FDA
@  #07 @070   ----------------------------------------
Label_549FFF:
 .byte   N92 ,Fs3 ,v064
 .byte   N92 ,As3
 .byte   N92 ,Cs4
 .byte   N92 ,Fs4
 .byte   W96
 .byte   PEND 
@  #07 @071   ----------------------------------------
 .byte   PATT
  .word Label_549FDA
@  #07 @072   ----------------------------------------
 .byte   PATT
  .word Label_549FFF
@  #07 @073   ----------------------------------------
 .byte   W96
@  #07 @074   ----------------------------------------
 .byte   W96
@  #07 @075   ----------------------------------------
 .byte   GOTO
  .word Label_549F33
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
 .byte   W48
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
 .byte   PATT
  .word Label_549F56
@  #07 @111   ----------------------------------------
 .byte   PATT
  .word Label_549F60
@  #07 @112   ----------------------------------------
 .byte   PATT
  .word Label_549F6A
@  #07 @113   ----------------------------------------
 .byte   PATT
  .word Label_549F72
@  #07 @114   ----------------------------------------
 .byte   PATT
  .word Label_549F7C
@  #07 @115   ----------------------------------------
 .byte   PATT
  .word Label_549F84
@  #07 @116   ----------------------------------------
 .byte   N92 ,An4 ,v080
 .byte   W96
@  #07 @117   ----------------------------------------
 .byte   Bn4
 .byte   W96
@  #07 @118   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @119   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @120   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @121   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @122   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @123   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @124   ----------------------------------------
 .byte   PATT
  .word Label_549F93
@  #07 @125   ----------------------------------------
 .byte   PATT
  .word Label_549F93
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
 .byte   PATT
  .word Label_549FD1
@  #07 @139   ----------------------------------------
 .byte   PATT
  .word Label_549FDA
@  #07 @140   ----------------------------------------
 .byte   PATT
  .word Label_549FE5
@  #07 @141   ----------------------------------------
 .byte   PATT
  .word Label_549FDA
@  #07 @142   ----------------------------------------
 .byte   PATT
  .word Label_549FE5
@  #07 @143   ----------------------------------------
 .byte   PATT
  .word Label_549FDA
@  #07 @144   ----------------------------------------
 .byte   PATT
  .word Label_549FFF
@  #07 @145   ----------------------------------------
 .byte   PATT
  .word Label_549FDA
@  #07 @146   ----------------------------------------
 .byte   N92 ,Fs3 ,v064
 .byte   N92 ,As3
 .byte   N92 ,Cs4
 .byte   N92 ,Fs4
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

.align 2, 0
song06_008:
@  #08 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 121
 .byte   PAN , c_v-14
 .byte   VOL , 62*song06_mvl/mxv
 .byte   Dn3 ,v062
 .byte   VOL , 62*song06_mvl/mxv
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v076
 .byte   W24
 .byte   N07
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Cs1 ,v080
 .byte   W12
 .byte   N11 ,Cn1 ,v052
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v056
 .byte   W06
 .byte   Cn1 ,v060
 .byte   W06
@  #08 @001   ----------------------------------------
Label_01017378:
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N03 ,Cn1 ,v076
 .byte   N05 ,Dn1 ,v052
 .byte   W06
 .byte   N03 ,Cn1 ,v076
 .byte   N05 ,Dn1 ,v052
 .byte   W06
 .byte   PEND 
@  #08 @002   ----------------------------------------
Label_010173A3:
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v076
 .byte   W24
 .byte   N07
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Cs1 ,v080
 .byte   W12
 .byte   N11 ,Cn1 ,v052
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @003   ----------------------------------------
Label_010173C7:
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N16 ,Cn1 ,v076
 .byte   W12
 .byte   N05 ,Dn1 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @004   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @005   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @006   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @007   ----------------------------------------
Label_010173F9:
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N03 ,Cn1 ,v076
 .byte   N05 ,Dn1 ,v052
 .byte   W06
 .byte   N17 ,Cn1 ,v064
 .byte   N17 ,Dn1 ,v052
 .byte   W18
 .byte   N07 ,Cn1 ,v076
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   N03 ,Cn1 ,v076
 .byte   N05 ,Dn1 ,v052
 .byte   W06
 .byte   N03 ,Cn1 ,v076
 .byte   N05 ,Dn1 ,v052
 .byte   W06
 .byte   PEND 
@  #08 @008   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @009   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @010   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @011   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @012   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @013   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @014   ----------------------------------------
Label_01017449:
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N07 ,Cn1 ,v076
 .byte   N02 ,Ds2 ,v016
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
 .byte   N07 ,Cn1 ,v076
 .byte   N11 ,Dn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Cs1 ,v080
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N11 ,Cn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05 ,Cn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05 ,Cn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05 ,Cn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05 ,Cn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #08 @015   ----------------------------------------
Label_010174C0:
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N11 ,Cn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N11 ,Cn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N11 ,Cn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N11 ,Cn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N16 ,Cn1 ,v076
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05 ,Dn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05 ,Dn1 ,v052
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W03
@  #08 @016   ----------------------------------------
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
 .byte   W09
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0101754E:
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N07 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v052
 .byte   N05 ,Fn2
 .byte   W06
 .byte   N05
 .byte   W06
@  #08 @017   ----------------------------------------
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Cs1 ,v080
 .byte   W12
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   PEND 
Label_01017596:
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
@  #08 @018   ----------------------------------------
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N16 ,Cn1 ,v096
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1
 .byte   N05 ,Fn2
 .byte   W06
 .byte   Dn1
 .byte   N05 ,Fn2
 .byte   W06
 .byte   PEND 
@  #08 @019   ----------------------------------------
 .byte   PATT
  .word Label_0101754E
@  #08 @020   ----------------------------------------
Label_010175DF:
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N16 ,Cn1 ,v096
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Dn1
 .byte   N01 ,Fn2 ,v064
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   N05 ,Dn1 ,v052
 .byte   N01 ,Fn2 ,v064
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   PEND 
@  #08 @021   ----------------------------------------
 .byte   PATT
  .word Label_0101754E
@  #08 @022   ----------------------------------------
 .byte   PATT
  .word Label_01017596
@  #08 @023   ----------------------------------------
 .byte   PATT
  .word Label_0101754E
@  #08 @024   ----------------------------------------
Label_01017642:
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1 ,v064
 .byte   N05 ,Fn2 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N07 ,Dn1 ,v052
 .byte   N05 ,Fn2
 .byte   W06
 .byte   N05
 .byte   W02
 .byte   Cn1 ,v096
 .byte   N07 ,Dn1 ,v052
 .byte   W04
 .byte   N05 ,Fn2
 .byte   W04
 .byte   Cn1 ,v096
 .byte   N07 ,Dn1 ,v052
 .byte   W02
 .byte   N05 ,Fn2
 .byte   W06
 .byte   PEND 
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
Label_0101769D:
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Fs1
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   PEND 
@  #08 @038   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @039   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @040   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @041   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @042   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @043   ----------------------------------------
Label_010176CD:
 .byte   N11 ,Fs1 ,v064
 .byte   N11 ,As1
 .byte   N92 ,Fn2 ,v052
 .byte   W12
 .byte   N11 ,Gs1 ,v064
 .byte   W12
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Fs1
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   PEND 
@  #08 @044   ----------------------------------------
Label_010176EB:
 .byte   N11 ,Fs1 ,v064
 .byte   N02 ,Ds2 ,v016
 .byte   W03
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   N11 ,Gs1 ,v064
 .byte   N02 ,Ds2 ,v020
 .byte   W02
 .byte   W01
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   N05 ,Fs1 ,v064
 .byte   N02 ,Ds2 ,v024
 .byte   W02
 .byte   W01
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   N05 ,Fs1 ,v064
 .byte   N02 ,Ds2 ,v024
 .byte   W01
 .byte   W02
 .byte   N02
 .byte   W01
 .byte   W02
 .byte   N05 ,Gs1 ,v064
 .byte   N02 ,Ds2 ,v028
 .byte   W01
 .byte   W02
 .byte   N02
 .byte   W01
 .byte   W02
 .byte   N05 ,Gs1 ,v064
 .byte   N02 ,Ds2 ,v028
 .byte   W01
 .byte   W02
 .byte   N02
 .byte   W01
 .byte   W02
 .byte   N23 ,Fs1 ,v064
 .byte   N02 ,Ds2 ,v032
 .byte   W01
 .byte   W02
 .byte   N02
 .byte   W01
 .byte   W02
 .byte   N02
 .byte   W01
 .byte   W02
 .byte   N02
 .byte   W01
 .byte   W02
 .byte   Ds2 ,v036
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N11 ,Fs1 ,v064
 .byte   N02 ,Ds2 ,v040
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N11 ,Gs1 ,v064
 .byte   N02 ,Ds2 ,v044
 .byte   W03
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   N02
 .byte   W02
 .byte   W01
 .byte   PEND 
@  #08 @045   ----------------------------------------
Label_01017770:
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Fs1
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #08 @046   ----------------------------------------
Label_01017788:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Gs1 ,v064
 .byte   W12
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,As1
 .byte   W18
 .byte   N05 ,Cn1 ,v080
 .byte   W06
 .byte   N11
 .byte   N23 ,Fs1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @047   ----------------------------------------
Label_010177B2:
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   N23 ,Cn1 ,v080
 .byte   N05 ,Fs1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Fs1
 .byte   W24
 .byte   N23
 .byte   W12
 .byte   N05 ,Cn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @048   ----------------------------------------
Label_010177D4:
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,As1
 .byte   W24
 .byte   N11 ,Cn1 ,v080
 .byte   N23 ,Fs1 ,v064
 .byte   W12
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   PEND 
@  #08 @049   ----------------------------------------
Label_010177F5:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v080
 .byte   N11 ,Gs1 ,v064
 .byte   W06
 .byte   N05 ,Cn1 ,v080
 .byte   W06
 .byte   N23
 .byte   N05 ,Fs1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Fs1
 .byte   W24
 .byte   N23
 .byte   W12
 .byte   N05 ,Cn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @050   ----------------------------------------
Label_0101781E:
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,As1
 .byte   W12
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   N23 ,Fs1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @051   ----------------------------------------
Label_01017843:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,Gs1 ,v064
 .byte   W12
 .byte   N23 ,Cn1 ,v080
 .byte   N05 ,Fs1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Fs1
 .byte   W24
 .byte   N11 ,Cn1 ,v080
 .byte   N23 ,Fs1 ,v064
 .byte   W12
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   PEND 
@  #08 @052   ----------------------------------------
Label_0101786C:
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,As1
 .byte   W12
 .byte   N05 ,Cn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   N23 ,Fs1 ,v064
 .byte   W12
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   PEND 
@  #08 @053   ----------------------------------------
Label_01017891:
 .byte   W84
 .byte   N01 ,Ds2 ,v052
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   PEND 
@  #08 @054   ----------------------------------------
Label_010178A5:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N05 ,Cn1 ,v052
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N05 ,Cn1 ,v052
 .byte   W06
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
 .byte   Cn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @055   ----------------------------------------
 .byte   PATT
  .word Label_010178A5
@  #08 @056   ----------------------------------------
 .byte   PATT
  .word Label_010178A5
@  #08 @057   ----------------------------------------
 .byte   PATT
  .word Label_010178A5
@  #08 @058   ----------------------------------------
Label_010178DA:
 .byte   N07 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   N05 ,Cn1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N07 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N05 ,Cn1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @059   ----------------------------------------
Label_01017909:
 .byte   N07 ,Cn1 ,v096
 .byte   W12
 .byte   N05 ,Cn1 ,v064
 .byte   N11 ,Dn1 ,v052
 .byte   W06
 .byte   N05 ,Cn1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N07 ,Cn1 ,v096
 .byte   W12
 .byte   N05 ,Cn1 ,v064
 .byte   N23 ,Dn1 ,v052
 .byte   W06
 .byte   N05 ,Cn1 ,v064
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1 ,v052
 .byte   W06
 .byte   N05 ,Cn1 ,v064
 .byte   W06
 .byte   N03 ,Cn1 ,v096
 .byte   W06
 .byte   N03
 .byte   W06
 .byte   PEND 
@  #08 @060   ----------------------------------------
 .byte   PATT
  .word Label_010178DA
@  #08 @061   ----------------------------------------
 .byte   PATT
  .word Label_01017909
@  #08 @062   ----------------------------------------
 .byte   PATT
  .word Label_010178DA
@  #08 @063   ----------------------------------------
 .byte   PATT
  .word Label_01017909
@  #08 @064   ----------------------------------------
Label_01017953:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,Dn1 ,v052
 .byte   W36
 .byte   Cn1 ,v080
 .byte   N11 ,Dn1 ,v052
 .byte   W36
 .byte   N23 ,Cn1 ,v080
 .byte   N23 ,Dn1 ,v052
 .byte   W24
 .byte   PEND 
@  #08 @065   ----------------------------------------
Label_01017968:
 .byte   W12
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,Dn1 ,v052
 .byte   W36
 .byte   Cn1 ,v080
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N05 ,Cn1 ,v036
 .byte   W06
 .byte   Cn1 ,v040
 .byte   W06
 .byte   Cn1 ,v048
 .byte   N23 ,Dn1 ,v052
 .byte   W06
 .byte   N05 ,Cn1 ,v056
 .byte   W06
 .byte   Cn1 ,v064
 .byte   N01 ,Ds2 ,v052
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn1 ,v072
 .byte   N01 ,Ds2 ,v052
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W01
 .byte   N01
 .byte   W02
 .byte   PEND 
@  #08 @066   ----------------------------------------
Label_010179A1:
 .byte   W24
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   PEND 
@  #08 @067   ----------------------------------------
Label_010179C0:
 .byte   N11 ,Cn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   PEND 
@  #08 @068   ----------------------------------------
Label_010179E9:
 .byte   N23 ,Dn1 ,v052
 .byte   W24
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   PEND 
@  #08 @069   ----------------------------------------
 .byte   PATT
  .word Label_010179C0
@  #08 @070   ----------------------------------------
Label_01017A10:
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   W24
 .byte   N07
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v096
 .byte   N23 ,Cs1 ,v080
 .byte   W12
 .byte   N11 ,Cn1 ,v052
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #08 @071   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @072   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @073   ----------------------------------------
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N10 ,Cn1 ,v096
 .byte   N15 ,Dn1 ,v064
 .byte   W16
 .byte   N10 ,Cn1 ,v096
 .byte   N15 ,Dn1 ,v064
 .byte   W16
 .byte   N10 ,Cn1 ,v096
 .byte   N15 ,Dn1 ,v064
 .byte   W16
@  #08 @074   ----------------------------------------
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v076
 .byte   W24
 .byte   N07
 .byte   N11 ,Dn1 ,v052
 .byte   W12
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Cs1 ,v080
 .byte   W12
 .byte   N11 ,Cn1 ,v052
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v056
 .byte   W06
 .byte   Cn1 ,v060
 .byte   W06
@  #08 @075   ----------------------------------------
 .byte   PATT
  .word Label_01017378
@  #08 @076   ----------------------------------------
 .byte   GOTO
  .word Label_010173A3
@  #08 @077   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @078   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @079   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @080   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @081   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @082   ----------------------------------------
 .byte   PATT
  .word Label_010173F9
@  #08 @083   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @084   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @085   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @086   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @087   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @088   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @089   ----------------------------------------
 .byte   PATT
  .word Label_01017449
@  #08 @090   ----------------------------------------
 .byte   PATT
  .word Label_010174C0
@  #08 @091   ----------------------------------------
 .byte   PATT
  .word Label_0101754E
@  #08 @092   ----------------------------------------
 .byte   PATT
  .word Label_01017596
@  #08 @093   ----------------------------------------
 .byte   PATT
  .word Label_0101754E
@  #08 @094   ----------------------------------------
 .byte   PATT
  .word Label_010175DF
@  #08 @095   ----------------------------------------
 .byte   PATT
  .word Label_0101754E
@  #08 @096   ----------------------------------------
 .byte   PATT
  .word Label_01017596
@  #08 @097   ----------------------------------------
 .byte   PATT
  .word Label_0101754E
@  #08 @098   ----------------------------------------
 .byte   PATT
  .word Label_01017642
@  #08 @099   ----------------------------------------
 .byte   W96
@  #08 @100   ----------------------------------------
 .byte   W96
@  #08 @101   ----------------------------------------
 .byte   W96
@  #08 @102   ----------------------------------------
 .byte   W96
@  #08 @103   ----------------------------------------
 .byte   W96
@  #08 @104   ----------------------------------------
 .byte   W96
@  #08 @105   ----------------------------------------
 .byte   W96
@  #08 @106   ----------------------------------------
 .byte   W96
@  #08 @107   ----------------------------------------
 .byte   W96
@  #08 @108   ----------------------------------------
 .byte   W96
@  #08 @109   ----------------------------------------
 .byte   W96
@  #08 @110   ----------------------------------------
 .byte   W96
@  #08 @111   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @112   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @113   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @114   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @115   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @116   ----------------------------------------
 .byte   PATT
  .word Label_0101769D
@  #08 @117   ----------------------------------------
 .byte   PATT
  .word Label_010176CD
@  #08 @118   ----------------------------------------
 .byte   PATT
  .word Label_010176EB
@  #08 @119   ----------------------------------------
 .byte   PATT
  .word Label_01017770
@  #08 @120   ----------------------------------------
 .byte   PATT
  .word Label_01017788
@  #08 @121   ----------------------------------------
 .byte   PATT
  .word Label_010177B2
@  #08 @122   ----------------------------------------
 .byte   PATT
  .word Label_010177D4
@  #08 @123   ----------------------------------------
 .byte   PATT
  .word Label_010177F5
@  #08 @124   ----------------------------------------
 .byte   PATT
  .word Label_0101781E
@  #08 @125   ----------------------------------------
 .byte   PATT
  .word Label_01017843
@  #08 @126   ----------------------------------------
 .byte   PATT
  .word Label_0101786C
@  #08 @127   ----------------------------------------
 .byte   PATT
  .word Label_01017891
@  #08 @128   ----------------------------------------
 .byte   PATT
  .word Label_010178A5
@  #08 @129   ----------------------------------------
 .byte   PATT
  .word Label_010178A5
@  #08 @130   ----------------------------------------
 .byte   PATT
  .word Label_010178A5
@  #08 @131   ----------------------------------------
 .byte   PATT
  .word Label_010178A5
@  #08 @132   ----------------------------------------
 .byte   PATT
  .word Label_010178DA
@  #08 @133   ----------------------------------------
 .byte   PATT
  .word Label_01017909
@  #08 @134   ----------------------------------------
 .byte   PATT
  .word Label_010178DA
@  #08 @135   ----------------------------------------
 .byte   PATT
  .word Label_01017909
@  #08 @136   ----------------------------------------
 .byte   PATT
  .word Label_010178DA
@  #08 @137   ----------------------------------------
 .byte   PATT
  .word Label_01017909
@  #08 @138   ----------------------------------------
 .byte   PATT
  .word Label_01017953
@  #08 @139   ----------------------------------------
 .byte   PATT
  .word Label_01017968
@  #08 @140   ----------------------------------------
 .byte   PATT
  .word Label_010179A1
@  #08 @141   ----------------------------------------
 .byte   PATT
  .word Label_010179C0
@  #08 @142   ----------------------------------------
 .byte   PATT
  .word Label_010179E9
@  #08 @143   ----------------------------------------
 .byte   PATT
  .word Label_010179C0
@  #08 @144   ----------------------------------------
 .byte   PATT
  .word Label_01017A10
@  #08 @145   ----------------------------------------
 .byte   PATT
  .word Label_010173C7
@  #08 @146   ----------------------------------------
 .byte   PATT
  .word Label_010173A3
@  #08 @147   ----------------------------------------
 .byte   N07 ,Cn1 ,v076
 .byte   N23 ,Dn1 ,v052
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N10 ,Cn1 ,v096
 .byte   N15 ,Dn1 ,v064
 .byte   W16
 .byte   N10 ,Cn1 ,v096
 .byte   N15 ,Dn1 ,v064
 .byte   W16
 .byte   N10 ,Cn1 ,v096
 .byte   N15 ,Dn1 ,v064
 .byte   W15
 .byte   FINE

@**************** Track 9 (Midi-Chn.8) ****************@

.align 2, 0
song06_009:
@  #09 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 48
 .byte   PAN , c_v+15
 .byte   VOL , 52*song06_mvl/mxv
 .byte   VOL , 52*song06_mvl/mxv
 .byte   N11 ,Dn2 ,v064
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   As1
 .byte   W12
@  #09 @001   ----------------------------------------
Label_010152BB:
 .byte   N11 ,Gn1 ,v064
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   PEND 
@  #09 @002   ----------------------------------------
Label_010152CE:
 .byte   N11 ,As1 ,v064
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   PEND 
@  #09 @003   ----------------------------------------
Label_010152E1:
 .byte   N11 ,Gn2 ,v064
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #09 @004   ----------------------------------------
Label_010152F4:
 .byte   N11 ,Dn2 ,v064
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   PEND 
@  #09 @005   ----------------------------------------
 .byte   PATT
  .word Label_010152BB
@  #09 @006   ----------------------------------------
 .byte   PATT
  .word Label_010152CE
@  #09 @007   ----------------------------------------
 .byte   PATT
  .word Label_010152E1
@  #09 @008   ----------------------------------------
Label_01015316:
 .byte   N11 ,Bn1 ,v064
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   PEND 
@  #09 @009   ----------------------------------------
Label_01015329:
 .byte   N11 ,En1 ,v064
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   An1
 .byte   W12
 .byte   PEND 
@  #09 @010   ----------------------------------------
Label_0101533C:
 .byte   N11 ,Gn1 ,v064
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   PEND 
@  #09 @011   ----------------------------------------
Label_0101534F:
 .byte   N11 ,En2 ,v064
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   PEND 
@  #09 @012   ----------------------------------------
 .byte   PATT
  .word Label_01015316
@  #09 @013   ----------------------------------------
 .byte   PATT
  .word Label_01015329
@  #09 @014   ----------------------------------------
 .byte   PATT
  .word Label_0101533C
@  #09 @015   ----------------------------------------
Label_01015371:
 .byte   N11 ,En2 ,v064
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   En2
 .byte   W60
 .byte   PEND 
@  #09 @016   ----------------------------------------
Label_01015384:
 .byte   N11 ,Fn2 ,v080
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   PEND 
@  #09 @017   ----------------------------------------
Label_01015397:
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #09 @018   ----------------------------------------
Label_010153AA:
 .byte   N11 ,Cs2 ,v080
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   PEND 
@  #09 @019   ----------------------------------------
Label_010153BD:
 .byte   N11 ,As2 ,v080
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
@  #09 @020   ----------------------------------------
 .byte   PATT
  .word Label_01015384
@  #09 @021   ----------------------------------------
 .byte   PATT
  .word Label_01015397
@  #09 @022   ----------------------------------------
 .byte   PATT
  .word Label_010153AA
@  #09 @023   ----------------------------------------
 .byte   PATT
  .word Label_010153BD
@  #09 @024   ----------------------------------------
 .byte   TIE ,Ds2 ,v064
 .byte   W96
@  #09 @025   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #09 @026   ----------------------------------------
 .byte   N92 ,As1
 .byte   W96
@  #09 @027   ----------------------------------------
 .byte   An1
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
 .byte   W96
@  #09 @035   ----------------------------------------
 .byte   W96
@  #09 @036   ----------------------------------------
Label_010153F9:
 .byte   N03 ,Bn1 ,v064
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@  #09 @037   ----------------------------------------
 .byte   PATT
  .word Label_010153F9
@  #09 @038   ----------------------------------------
 .byte   PATT
  .word Label_010153F9
@  #09 @039   ----------------------------------------
 .byte   PATT
  .word Label_010153F9
@  #09 @040   ----------------------------------------
Label_0101541B:
 .byte   N03 ,An1 ,v064
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@  #09 @041   ----------------------------------------
 .byte   PATT
  .word Label_0101541B
@  #09 @042   ----------------------------------------
Label_01015433:
 .byte   N03 ,Gn1 ,v064
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@  #09 @043   ----------------------------------------
 .byte   PATT
  .word Label_01015433
@  #09 @044   ----------------------------------------
 .byte   W96
@  #09 @045   ----------------------------------------
 .byte   W96
@  #09 @046   ----------------------------------------
 .byte   W96
@  #09 @047   ----------------------------------------
 .byte   W96
@  #09 @048   ----------------------------------------
 .byte   W96
@  #09 @049   ----------------------------------------
 .byte   W96
@  #09 @050   ----------------------------------------
 .byte   W96
@  #09 @051   ----------------------------------------
 .byte   W96
@  #09 @052   ----------------------------------------
 .byte   W96
@  #09 @053   ----------------------------------------
Label_01015454:
 .byte   N05 ,Cs2 ,v064
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Fs2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Cs2
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   As1
 .byte   W06
 .byte   PEND 
@  #09 @054   ----------------------------------------
 .byte   PATT
  .word Label_01015454
@  #09 @055   ----------------------------------------
 .byte   PATT
  .word Label_01015454
@  #09 @056   ----------------------------------------
 .byte   PATT
  .word Label_01015454
@  #09 @057   ----------------------------------------
Label_01015486:
 .byte   N03 ,Cs3 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #09 @058   ----------------------------------------
Label_010154D9:
 .byte   N03 ,Bn2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Bn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Bn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Bn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Bn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Bn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Bn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Bn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #09 @059   ----------------------------------------
Label_0101552C:
 .byte   N03 ,As2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   As1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   As2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   As1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   As2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   As1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   As2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   As1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #09 @060   ----------------------------------------
 .byte   PATT
  .word Label_0101552C
@  #09 @061   ----------------------------------------
Label_01015584:
 .byte   N03 ,Fn2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cn3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cn3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cn3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cn3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #09 @062   ----------------------------------------
Label_010155D7:
 .byte   N03 ,Fn2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs3
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #09 @063   ----------------------------------------
Label_0101562A:
 .byte   N07 ,Cn2 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   As1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Gs1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Gn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Gs1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Gn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Fn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Ds1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #09 @064   ----------------------------------------
Label_01015655:
 .byte   W12
 .byte   N07 ,An1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Gn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Fn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Cn2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   As1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03 ,An1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N07 ,Fn1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #09 @065   ----------------------------------------
Label_01015683:
 .byte   W24
 .byte   TIE ,Fs1 ,v064
 .byte   W72
 .byte   PEND 
@  #09 @066   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #09 @067   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #09 @068   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #09 @069   ----------------------------------------
Label_01015693:
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #09 @070   ----------------------------------------
 .byte   PATT
  .word Label_01015693
@  #09 @071   ----------------------------------------
 .byte   PATT
  .word Label_01015693
@  #09 @072   ----------------------------------------
 .byte   PATT
  .word Label_01015693
@  #09 @073   ----------------------------------------
 .byte   PATT
  .word Label_010152F4
@  #09 @074   ----------------------------------------
 .byte   PATT
  .word Label_010152BB
@  #09 @075   ----------------------------------------
 .byte   GOTO
  .word Label_010152CE
@  #09 @076   ----------------------------------------
 .byte   PATT
  .word Label_010152CE
@  #09 @077   ----------------------------------------
 .byte   PATT
  .word Label_010152E1
@  #09 @078   ----------------------------------------
 .byte   PATT
  .word Label_010152F4
@  #09 @079   ----------------------------------------
 .byte   PATT
  .word Label_010152BB
@  #09 @080   ----------------------------------------
 .byte   PATT
  .word Label_010152CE
@  #09 @081   ----------------------------------------
 .byte   PATT
  .word Label_010152E1
@  #09 @082   ----------------------------------------
 .byte   PATT
  .word Label_01015316
@  #09 @083   ----------------------------------------
 .byte   PATT
  .word Label_01015329
@  #09 @084   ----------------------------------------
 .byte   PATT
  .word Label_0101533C
@  #09 @085   ----------------------------------------
 .byte   PATT
  .word Label_0101534F
@  #09 @086   ----------------------------------------
 .byte   PATT
  .word Label_01015316
@  #09 @087   ----------------------------------------
 .byte   PATT
  .word Label_01015329
@  #09 @088   ----------------------------------------
 .byte   PATT
  .word Label_0101533C
@  #09 @089   ----------------------------------------
 .byte   PATT
  .word Label_01015371
@  #09 @090   ----------------------------------------
 .byte   PATT
  .word Label_01015384
@  #09 @091   ----------------------------------------
 .byte   PATT
  .word Label_01015397
@  #09 @092   ----------------------------------------
 .byte   PATT
  .word Label_010153AA
@  #09 @093   ----------------------------------------
 .byte   PATT
  .word Label_010153BD
@  #09 @094   ----------------------------------------
 .byte   PATT
  .word Label_01015384
@  #09 @095   ----------------------------------------
 .byte   PATT
  .word Label_01015397
@  #09 @096   ----------------------------------------
 .byte   PATT
  .word Label_010153AA
@  #09 @097   ----------------------------------------
 .byte   PATT
  .word Label_010153BD
@  #09 @098   ----------------------------------------
 .byte   TIE ,Ds2 ,v064
 .byte   W96
@  #09 @099   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #09 @100   ----------------------------------------
 .byte   N92 ,As1
 .byte   W96
@  #09 @101   ----------------------------------------
 .byte   An1
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
 .byte   PATT
  .word Label_010153F9
@  #09 @111   ----------------------------------------
 .byte   PATT
  .word Label_010153F9
@  #09 @112   ----------------------------------------
 .byte   PATT
  .word Label_010153F9
@  #09 @113   ----------------------------------------
 .byte   PATT
  .word Label_010153F9
@  #09 @114   ----------------------------------------
 .byte   PATT
  .word Label_0101541B
@  #09 @115   ----------------------------------------
 .byte   PATT
  .word Label_0101541B
@  #09 @116   ----------------------------------------
 .byte   PATT
  .word Label_01015433
@  #09 @117   ----------------------------------------
 .byte   PATT
  .word Label_01015433
@  #09 @118   ----------------------------------------
 .byte   W96
@  #09 @119   ----------------------------------------
 .byte   W96
@  #09 @120   ----------------------------------------
 .byte   W96
@  #09 @121   ----------------------------------------
 .byte   W96
@  #09 @122   ----------------------------------------
 .byte   W96
@  #09 @123   ----------------------------------------
 .byte   W96
@  #09 @124   ----------------------------------------
 .byte   W96
@  #09 @125   ----------------------------------------
 .byte   W96
@  #09 @126   ----------------------------------------
 .byte   W96
@  #09 @127   ----------------------------------------
 .byte   PATT
  .word Label_01015454
@  #09 @128   ----------------------------------------
 .byte   PATT
  .word Label_01015454
@  #09 @129   ----------------------------------------
 .byte   PATT
  .word Label_01015454
@  #09 @130   ----------------------------------------
 .byte   PATT
  .word Label_01015454
@  #09 @131   ----------------------------------------
 .byte   PATT
  .word Label_01015486
@  #09 @132   ----------------------------------------
 .byte   PATT
  .word Label_010154D9
@  #09 @133   ----------------------------------------
 .byte   PATT
  .word Label_0101552C
@  #09 @134   ----------------------------------------
 .byte   PATT
  .word Label_0101552C
@  #09 @135   ----------------------------------------
 .byte   PATT
  .word Label_01015584
@  #09 @136   ----------------------------------------
 .byte   PATT
  .word Label_010155D7
@  #09 @137   ----------------------------------------
 .byte   PATT
  .word Label_0101562A
@  #09 @138   ----------------------------------------
 .byte   PATT
  .word Label_01015655
@  #09 @139   ----------------------------------------
 .byte   PATT
  .word Label_01015683
@  #09 @140   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs1
 .byte   W01
@  #09 @141   ----------------------------------------
 .byte   TIE ,Fs1 ,v064
 .byte   W96
@  #09 @142   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #09 @143   ----------------------------------------
 .byte   PATT
  .word Label_01015693
@  #09 @144   ----------------------------------------
 .byte   PATT
  .word Label_01015693
@  #09 @145   ----------------------------------------
 .byte   PATT
  .word Label_01015693
@  #09 @146   ----------------------------------------
 .byte   N07 ,As1 ,v076
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   FINE

@**************** Track 10 (Midi-Chn.9) ****************@

.align 2, 0
song06_010:
@  #10 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 52
 .byte   VOL , 62*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 62*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W96
@  #10 @001   ----------------------------------------
 .byte   W96
@  #10 @002   ----------------------------------------
Label_0100D2DE:
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
 .byte   W96
@  #10 @013   ----------------------------------------
 .byte   W96
@  #10 @014   ----------------------------------------
 .byte   W96
@  #10 @015   ----------------------------------------
 .byte   W96
@  #10 @016   ----------------------------------------
 .byte   W48
 .byte   W96
@  #10 @017   ----------------------------------------
 .byte   W96
@  #10 @018   ----------------------------------------
 .byte   W96
@  #10 @019   ----------------------------------------
 .byte   W96
@  #10 @020   ----------------------------------------
 .byte   W96
@  #10 @021   ----------------------------------------
 .byte   W96
@  #10 @022   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #10 @049   ----------------------------------------
 .byte   W96
@  #10 @050   ----------------------------------------
 .byte   W96
@  #10 @051   ----------------------------------------
 .byte   W96
@  #10 @052   ----------------------------------------
Label_0100D311:
 .byte   N32 ,Gs1 ,v080
 .byte   W36
 .byte   N05 ,Fn1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   Bn0
 .byte   W06
 .byte   As0
 .byte   W06
 .byte   An0
 .byte   W06
 .byte   Gs0
 .byte   W06
 .byte   Gn0
 .byte   W06
 .byte   Fs0 ,v052
 .byte   W06
 .byte   PEND 
@  #10 @053   ----------------------------------------
 .byte   W96
@  #10 @054   ----------------------------------------
 .byte   W96
@  #10 @055   ----------------------------------------
 .byte   W96
@  #10 @056   ----------------------------------------
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
 .byte   W96
@  #10 @062   ----------------------------------------
 .byte   W96
@  #10 @063   ----------------------------------------
 .byte   W96
@  #10 @064   ----------------------------------------
 .byte   W96
@  #10 @065   ----------------------------------------
 .byte   W96
@  #10 @066   ----------------------------------------
 .byte   W96
@  #10 @067   ----------------------------------------
 .byte   W96
@  #10 @068   ----------------------------------------
 .byte   W96
@  #10 @069   ----------------------------------------
 .byte   W96
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
 .byte   GOTO
  .word Label_0100D2DE
@  #10 @076   ----------------------------------------
 .byte   W96
@  #10 @077   ----------------------------------------
 .byte   W96
@  #10 @078   ----------------------------------------
 .byte   W96
@  #10 @079   ----------------------------------------
 .byte   W96
@  #10 @080   ----------------------------------------
 .byte   W96
@  #10 @081   ----------------------------------------
 .byte   W96
@  #10 @082   ----------------------------------------
 .byte   W96
@  #10 @083   ----------------------------------------
 .byte   W96
@  #10 @084   ----------------------------------------
 .byte   W96
@  #10 @085   ----------------------------------------
 .byte   W96
@  #10 @086   ----------------------------------------
 .byte   W96
@  #10 @087   ----------------------------------------
 .byte   W96
@  #10 @088   ----------------------------------------
 .byte   W96
@  #10 @089   ----------------------------------------
 .byte   W96
@  #10 @090   ----------------------------------------
 .byte   W48
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
 .byte   W96
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
 .byte   PATT
  .word Label_0100D311
@  #10 @127   ----------------------------------------
 .byte   W96
@  #10 @128   ----------------------------------------
 .byte   W96
@  #10 @129   ----------------------------------------
 .byte   W96
@  #10 @130   ----------------------------------------
 .byte   W96
@  #10 @131   ----------------------------------------
 .byte   W96
@  #10 @132   ----------------------------------------
 .byte   W96
@  #10 @133   ----------------------------------------
 .byte   W96
@  #10 @134   ----------------------------------------
 .byte   W96
@  #10 @135   ----------------------------------------
 .byte   W96
@  #10 @136   ----------------------------------------
 .byte   W96
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
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 11 (Midi-Chn.10) ****************@

.align 2, 0
song06_011:
@  #11 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 45
 .byte   VOL , 62*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 62*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W96
@  #11 @001   ----------------------------------------
 .byte   W96
@  #11 @002   ----------------------------------------
Label_01017BF6:
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
 .byte   W96
@  #11 @011   ----------------------------------------
 .byte   W96
@  #11 @012   ----------------------------------------
 .byte   W96
@  #11 @013   ----------------------------------------
 .byte   W96
@  #11 @014   ----------------------------------------
 .byte   W96
@  #11 @015   ----------------------------------------
 .byte   W96
@  #11 @016   ----------------------------------------
 .byte   W48
 .byte   W96
@  #11 @017   ----------------------------------------
 .byte   W96
@  #11 @018   ----------------------------------------
 .byte   W96
@  #11 @019   ----------------------------------------
 .byte   W96
@  #11 @020   ----------------------------------------
 .byte   W96
@  #11 @021   ----------------------------------------
 .byte   W96
@  #11 @022   ----------------------------------------
 .byte   W96
@  #11 @023   ----------------------------------------
 .byte   W96
@  #11 @024   ----------------------------------------
 .byte   W96
@  #11 @025   ----------------------------------------
 .byte   W96
@  #11 @026   ----------------------------------------
 .byte   W96
@  #11 @027   ----------------------------------------
 .byte   W96
@  #11 @028   ----------------------------------------
 .byte   W96
@  #11 @029   ----------------------------------------
 .byte   W96
@  #11 @030   ----------------------------------------
 .byte   W96
@  #11 @031   ----------------------------------------
 .byte   W96
@  #11 @032   ----------------------------------------
 .byte   W96
@  #11 @033   ----------------------------------------
 .byte   W96
@  #11 @034   ----------------------------------------
 .byte   W96
@  #11 @035   ----------------------------------------
 .byte   W96
@  #11 @036   ----------------------------------------
 .byte   W96
@  #11 @037   ----------------------------------------
 .byte   W96
@  #11 @038   ----------------------------------------
 .byte   W96
@  #11 @039   ----------------------------------------
 .byte   W96
@  #11 @040   ----------------------------------------
 .byte   W96
@  #11 @041   ----------------------------------------
 .byte   W96
@  #11 @042   ----------------------------------------
 .byte   W96
@  #11 @043   ----------------------------------------
 .byte   W96
@  #11 @044   ----------------------------------------
 .byte   W96
@  #11 @045   ----------------------------------------
 .byte   W96
@  #11 @046   ----------------------------------------
 .byte   W96
@  #11 @047   ----------------------------------------
 .byte   W96
@  #11 @048   ----------------------------------------
 .byte   W96
@  #11 @049   ----------------------------------------
 .byte   W96
@  #11 @050   ----------------------------------------
 .byte   W96
@  #11 @051   ----------------------------------------
 .byte   W96
@  #11 @052   ----------------------------------------
 .byte   W96
@  #11 @053   ----------------------------------------
Label_01017C2A:
 .byte   N16 ,Gs0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #11 @054   ----------------------------------------
 .byte   PATT
  .word Label_01017C2A
@  #11 @055   ----------------------------------------
 .byte   PATT
  .word Label_01017C2A
@  #11 @056   ----------------------------------------
 .byte   PATT
  .word Label_01017C2A
@  #11 @057   ----------------------------------------
Label_01017C51:
 .byte   N16 ,Cs1 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #11 @058   ----------------------------------------
Label_01017C69:
 .byte   N16 ,Bn0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #11 @059   ----------------------------------------
Label_01017C81:
 .byte   N16 ,Ds1 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #11 @060   ----------------------------------------
Label_01017C99:
 .byte   N16 ,As0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #11 @061   ----------------------------------------
Label_01017CB1:
 .byte   N16 ,Fn1 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N16
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   PEND 
@  #11 @062   ----------------------------------------
 .byte   PATT
  .word Label_01017CB1
@  #11 @063   ----------------------------------------
Label_01017CCE:
 .byte   N05 ,Cn1 ,v052
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Fn0
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   PEND 
@  #11 @064   ----------------------------------------
Label_01017CE1:
 .byte   W12
 .byte   N05 ,An0 ,v052
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Fn0
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   An0
 .byte   W06
 .byte   Gn0
 .byte   W06
 .byte   Fn0
 .byte   W12
 .byte   PEND 
@  #11 @065   ----------------------------------------
Label_01017CF5:
 .byte   W24
 .byte   TIE ,Fs0 ,v052
 .byte   W72
 .byte   PEND 
@  #11 @066   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @067   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #11 @068   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @069   ----------------------------------------
Label_01017D05:
 .byte   N07 ,As0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #11 @070   ----------------------------------------
 .byte   PATT
  .word Label_01017D05
@  #11 @071   ----------------------------------------
 .byte   PATT
  .word Label_01017D05
@  #11 @072   ----------------------------------------
 .byte   PATT
  .word Label_01017D05
@  #11 @073   ----------------------------------------
 .byte   W96
@  #11 @074   ----------------------------------------
 .byte   W96
@  #11 @075   ----------------------------------------
 .byte   GOTO
  .word Label_01017BF6
@  #11 @076   ----------------------------------------
 .byte   W96
@  #11 @077   ----------------------------------------
 .byte   W96
@  #11 @078   ----------------------------------------
 .byte   W96
@  #11 @079   ----------------------------------------
 .byte   W96
@  #11 @080   ----------------------------------------
 .byte   W96
@  #11 @081   ----------------------------------------
 .byte   W96
@  #11 @082   ----------------------------------------
 .byte   W96
@  #11 @083   ----------------------------------------
 .byte   W96
@  #11 @084   ----------------------------------------
 .byte   W96
@  #11 @085   ----------------------------------------
 .byte   W96
@  #11 @086   ----------------------------------------
 .byte   W96
@  #11 @087   ----------------------------------------
 .byte   W96
@  #11 @088   ----------------------------------------
 .byte   W96
@  #11 @089   ----------------------------------------
 .byte   W96
@  #11 @090   ----------------------------------------
 .byte   W48
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
 .byte   PATT
  .word Label_01017C2A
@  #11 @128   ----------------------------------------
 .byte   PATT
  .word Label_01017C2A
@  #11 @129   ----------------------------------------
 .byte   PATT
  .word Label_01017C2A
@  #11 @130   ----------------------------------------
 .byte   PATT
  .word Label_01017C2A
@  #11 @131   ----------------------------------------
 .byte   PATT
  .word Label_01017C51
@  #11 @132   ----------------------------------------
 .byte   PATT
  .word Label_01017C69
@  #11 @133   ----------------------------------------
 .byte   PATT
  .word Label_01017C81
@  #11 @134   ----------------------------------------
 .byte   PATT
  .word Label_01017C99
@  #11 @135   ----------------------------------------
 .byte   PATT
  .word Label_01017CB1
@  #11 @136   ----------------------------------------
 .byte   PATT
  .word Label_01017CB1
@  #11 @137   ----------------------------------------
 .byte   PATT
  .word Label_01017CCE
@  #11 @138   ----------------------------------------
 .byte   PATT
  .word Label_01017CE1
@  #11 @139   ----------------------------------------
 .byte   PATT
  .word Label_01017CF5
@  #11 @140   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0
 .byte   W01
@  #11 @141   ----------------------------------------
 .byte   TIE ,Fs0 ,v052
 .byte   W96
@  #11 @142   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @143   ----------------------------------------
 .byte   PATT
  .word Label_01017D05
@  #11 @144   ----------------------------------------
 .byte   PATT
  .word Label_01017D05
@  #11 @145   ----------------------------------------
 .byte   PATT
  .word Label_01017D05
@  #11 @146   ----------------------------------------
 .byte   N07 ,As0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   FINE

@**************** Track 12 (Midi-Chn.11) ****************@

.align 2, 0
song06_012:
@  #12 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 48
 .byte   VOL , 52*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 52*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   As0
 .byte   W12
@  #12 @001   ----------------------------------------
Label_0101377E:
 .byte   N11 ,Gn0 ,v064
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   PEND 
@  #12 @002   ----------------------------------------
Label_01013791:
 .byte   N11 ,As0 ,v064
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   PEND 
@  #12 @003   ----------------------------------------
Label_010137A4:
 .byte   N11 ,Gn1 ,v064
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   PEND 
@  #12 @004   ----------------------------------------
Label_010137B7:
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   PEND 
@  #12 @005   ----------------------------------------
 .byte   PATT
  .word Label_0101377E
@  #12 @006   ----------------------------------------
 .byte   PATT
  .word Label_01013791
@  #12 @007   ----------------------------------------
 .byte   PATT
  .word Label_010137A4
@  #12 @008   ----------------------------------------
Label_010137D9:
 .byte   N11 ,Bn0 ,v064
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   Bn0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   PEND 
@  #12 @009   ----------------------------------------
Label_010137EC:
 .byte   N11 ,En0 ,v064
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   Bn0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   An0
 .byte   W12
 .byte   PEND 
@  #12 @010   ----------------------------------------
Label_010137FF:
 .byte   N11 ,Gn0 ,v064
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   Bn0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   Bn0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   PEND 
@  #12 @011   ----------------------------------------
Label_01013812:
 .byte   N11 ,En1 ,v064
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   PEND 
@  #12 @012   ----------------------------------------
 .byte   PATT
  .word Label_010137D9
@  #12 @013   ----------------------------------------
 .byte   PATT
  .word Label_010137EC
@  #12 @014   ----------------------------------------
 .byte   PATT
  .word Label_010137FF
@  #12 @015   ----------------------------------------
Label_01013834:
 .byte   N11 ,En1 ,v064
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   En0
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   En1
 .byte   W60
 .byte   PEND 
@  #12 @016   ----------------------------------------
Label_01013847:
 .byte   N11 ,Fn1 ,v080
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   PEND 
@  #12 @017   ----------------------------------------
Label_0101385A:
 .byte   N11 ,As0 ,v080
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   PEND 
@  #12 @018   ----------------------------------------
Label_0101386D:
 .byte   N11 ,Cs1 ,v080
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   PEND 
@  #12 @019   ----------------------------------------
Label_01013880:
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   PEND 
@  #12 @020   ----------------------------------------
 .byte   PATT
  .word Label_01013847
@  #12 @021   ----------------------------------------
 .byte   PATT
  .word Label_0101385A
@  #12 @022   ----------------------------------------
 .byte   PATT
  .word Label_0101386D
@  #12 @023   ----------------------------------------
 .byte   PATT
  .word Label_01013880
@  #12 @024   ----------------------------------------
 .byte   TIE ,Ds1 ,v064
 .byte   W96
@  #12 @025   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @026   ----------------------------------------
 .byte   N92 ,As0
 .byte   W96
@  #12 @027   ----------------------------------------
 .byte   An0
 .byte   W96
@  #12 @028   ----------------------------------------
Label_010138B4:
 .byte   N23 ,Gn1 ,v064
 .byte   W24
 .byte   Dn1
 .byte   W24
 .byte   N68 ,Gn1
 .byte   W48
 .byte   PEND 
@  #12 @029   ----------------------------------------
Label_010138BE:
 .byte   W24
 .byte   N44 ,Dn1 ,v064
 .byte   W48
 .byte   N23 ,Gn1
 .byte   W24
 .byte   PEND 
@  #12 @030   ----------------------------------------
Label_010138C7:
 .byte   N23 ,Ds1 ,v064
 .byte   W24
 .byte   As0
 .byte   W24
 .byte   N92 ,Ds1
 .byte   W48
 .byte   PEND 
@  #12 @031   ----------------------------------------
Label_010138D1:
 .byte   W48
 .byte   N23 ,As0 ,v064
 .byte   W24
 .byte   Ds1
 .byte   W24
 .byte   PEND 
@  #12 @032   ----------------------------------------
Label_010138D9:
 .byte   N23 ,Fn1 ,v064
 .byte   W24
 .byte   Cn1
 .byte   W24
 .byte   N92 ,Fn1
 .byte   W48
 .byte   PEND 
@  #12 @033   ----------------------------------------
 .byte   W48
 .byte   N44
 .byte   W48
@  #12 @034   ----------------------------------------
Label_010138E6:
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   An1
 .byte   W24
 .byte   N92 ,Dn1
 .byte   W48
 .byte   PEND 
@  #12 @035   ----------------------------------------
 .byte   W48
 .byte   N44 ,An1
 .byte   W48
@  #12 @036   ----------------------------------------
Label_010138F4:
 .byte   N03 ,Bn0 ,v080
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@  #12 @037   ----------------------------------------
 .byte   PATT
  .word Label_010138F4
@  #12 @038   ----------------------------------------
 .byte   PATT
  .word Label_010138F4
@  #12 @039   ----------------------------------------
 .byte   PATT
  .word Label_010138F4
@  #12 @040   ----------------------------------------
Label_01013916:
 .byte   N03 ,An0 ,v080
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@  #12 @041   ----------------------------------------
 .byte   PATT
  .word Label_01013916
@  #12 @042   ----------------------------------------
Label_0101392E:
 .byte   N03 ,Gn0 ,v080
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@  #12 @043   ----------------------------------------
 .byte   PATT
  .word Label_0101392E
@  #12 @044   ----------------------------------------
 .byte   TIE ,Gs1 ,v080
 .byte   W96
@  #12 @045   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @046   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #12 @047   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @048   ----------------------------------------
 .byte   TIE ,Fs1
 .byte   W96
@  #12 @049   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @050   ----------------------------------------
 .byte   TIE ,En1
 .byte   W96
@  #12 @051   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @052   ----------------------------------------
Label_01013962:
 .byte   N32 ,Gs1 ,v080
 .byte   W36
 .byte   N05 ,Fn1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   Bn0
 .byte   W06
 .byte   As0
 .byte   W06
 .byte   An0
 .byte   W06
 .byte   Gs0
 .byte   W06
 .byte   Gn0
 .byte   W06
 .byte   Fs0 ,v052
 .byte   W06
 .byte   PEND 
@  #12 @053   ----------------------------------------
 .byte   N92 ,Gs1
 .byte   W96
@  #12 @054   ----------------------------------------
 .byte   N92
 .byte   W96
@  #12 @055   ----------------------------------------
 .byte   N92
 .byte   W96
@  #12 @056   ----------------------------------------
 .byte   N92
 .byte   W96
@  #12 @057   ----------------------------------------
Label_01013986:
 .byte   N92 ,Cs2 ,v052
 .byte   N56 ,Cs4
 .byte   W06
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
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   N11 ,Ds4 ,v068
 .byte   W01
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   En4 ,v072
 .byte   W01
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   Gs4 ,v076
 .byte   W01
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   PEND 
@  #12 @058   ----------------------------------------
Label_010139B5:
 .byte   N92 ,Bn1 ,v052
 .byte   TIE ,Fs4 ,v080
 .byte   W96
 .byte   PEND 
@  #12 @059   ----------------------------------------
Label_010139BD:
 .byte   N92 ,Ds2 ,v052
 .byte   W44
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fs4
 .byte   W01
 .byte   N23 ,Gs4 ,v080
 .byte   W24
 .byte   As4
 .byte   W24
@  #12 @060   ----------------------------------------
Label_010139CC:
 .byte   N92 ,As1 ,v052
 .byte   N68 ,Fn4 ,v080
 .byte   W72
 .byte   N23 ,Gn4
 .byte   W24
 .byte   PEND 
@  #12 @061   ----------------------------------------
Label_010139D7:
 .byte   N92 ,Fn1 ,v052
 .byte   N44 ,Gs4 ,v080
 .byte   W48
 .byte   N23 ,Gn4
 .byte   W24
 .byte   Fn4
 .byte   W24
 .byte   PEND 
@  #12 @062   ----------------------------------------
Label_010139E4:
 .byte   N92 ,Fn1 ,v052
 .byte   N44 ,Fn4 ,v080
 .byte   W48
 .byte   N23 ,Ds4
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   PEND 
@  #12 @063   ----------------------------------------
Label_010139F1:
 .byte   N07 ,Cn1 ,v060
 .byte   N15 ,Cn4 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07 ,As0 ,v060
 .byte   W03
 .byte   W01
 .byte   N15 ,As3 ,v080
 .byte   W01
 .byte   W07
 .byte   N07 ,Gs0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W03
 .byte   N30 ,Fn4 ,v080
 .byte   W04
 .byte   N07 ,Gn0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Gs0
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Gn0
 .byte   W03
 .byte   W01
 .byte   N15 ,Ds4 ,v080
 .byte   W01
 .byte   W07
 .byte   N07 ,Fn0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W03
 .byte   N30 ,As4 ,v080
 .byte   W04
 .byte   N07 ,Ds0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #12 @064   ----------------------------------------
Label_01013A37:
 .byte   W12
 .byte   N07 ,An0 ,v060
 .byte   W03
 .byte   W01
 .byte   N15 ,Fn4 ,v080
 .byte   W01
 .byte   W07
 .byte   N07 ,Gn0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W03
 .byte   N15 ,Cn5 ,v080
 .byte   W04
 .byte   N07 ,Fn0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Cn1
 .byte   N15 ,Cn5 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07 ,As0 ,v060
 .byte   W03
 .byte   W01
 .byte   N15 ,As4 ,v080
 .byte   W01
 .byte   W07
 .byte   N03 ,An0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Gn0
 .byte   W02
 .byte   N84 ,Fn5 ,v080
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N07 ,Fn0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #12 @065   ----------------------------------------
Label_01013A7E:
 .byte   W24
 .byte   TIE ,Fs0 ,v052
 .byte   W48
 .byte   N11 ,Ds5 ,v080
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   PEND 
@  #12 @066   ----------------------------------------
Label_01013A8A:
 .byte   N23 ,Gs5 ,v080
 .byte   W24
 .byte   N44 ,Cs5
 .byte   W48
 .byte   N23 ,Cn5
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Fs0
 .byte   W01
@  #12 @067   ----------------------------------------
Label_01013A98:
 .byte   TIE ,Fs0 ,v052
 .byte   N23 ,Cs5 ,v080
 .byte   W24
 .byte   N44 ,Ds5
 .byte   W48
 .byte   N23 ,Gs4
 .byte   W24
 .byte   PEND 
@  #12 @068   ----------------------------------------
Label_01013AA6:
 .byte   N23 ,Gs4 ,v080
 .byte   W24
 .byte   Fs4
 .byte   W24
 .byte   Fn4
 .byte   W24
 .byte   Gs4
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Fs0
 .byte   W01
@  #12 @069   ----------------------------------------
Label_01013AB4:
 .byte   N07 ,As0 ,v060
 .byte   TIE ,As4 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07 ,As0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #12 @070   ----------------------------------------
Label_01013AE9:
 .byte   N07 ,As0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   PEND 
 .byte   EOT
 .byte   As4
 .byte   W01
@  #12 @071   ----------------------------------------
Label_01013B1B:
 .byte   N07 ,As0 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   PEND 
@  #12 @072   ----------------------------------------
 .byte   N07 ,As1
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
@  #12 @073   ----------------------------------------
 .byte   PATT
  .word Label_010137B7
@  #12 @074   ----------------------------------------
 .byte   PATT
  .word Label_0101377E
@  #12 @075   ----------------------------------------
 .byte   GOTO
  .word Label_01013791
@  #12 @076   ----------------------------------------
 .byte   PATT
  .word Label_01013791
@  #12 @077   ----------------------------------------
 .byte   PATT
  .word Label_010137A4
@  #12 @078   ----------------------------------------
 .byte   PATT
  .word Label_010137B7
@  #12 @079   ----------------------------------------
 .byte   PATT
  .word Label_0101377E
@  #12 @080   ----------------------------------------
 .byte   PATT
  .word Label_01013791
@  #12 @081   ----------------------------------------
 .byte   PATT
  .word Label_010137A4
@  #12 @082   ----------------------------------------
 .byte   PATT
  .word Label_010137D9
@  #12 @083   ----------------------------------------
 .byte   PATT
  .word Label_010137EC
@  #12 @084   ----------------------------------------
 .byte   PATT
  .word Label_010137FF
@  #12 @085   ----------------------------------------
 .byte   PATT
  .word Label_01013812
@  #12 @086   ----------------------------------------
 .byte   PATT
  .word Label_010137D9
@  #12 @087   ----------------------------------------
 .byte   PATT
  .word Label_010137EC
@  #12 @088   ----------------------------------------
 .byte   PATT
  .word Label_010137FF
@  #12 @089   ----------------------------------------
 .byte   PATT
  .word Label_01013834
@  #12 @090   ----------------------------------------
 .byte   PATT
  .word Label_01013847
@  #12 @091   ----------------------------------------
 .byte   PATT
  .word Label_0101385A
@  #12 @092   ----------------------------------------
 .byte   PATT
  .word Label_0101386D
@  #12 @093   ----------------------------------------
 .byte   PATT
  .word Label_01013880
@  #12 @094   ----------------------------------------
 .byte   PATT
  .word Label_01013847
@  #12 @095   ----------------------------------------
 .byte   PATT
  .word Label_0101385A
@  #12 @096   ----------------------------------------
 .byte   PATT
  .word Label_0101386D
@  #12 @097   ----------------------------------------
 .byte   PATT
  .word Label_01013880
@  #12 @098   ----------------------------------------
 .byte   TIE ,Ds1 ,v064
 .byte   W96
@  #12 @099   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @100   ----------------------------------------
 .byte   N92 ,As0
 .byte   W96
@  #12 @101   ----------------------------------------
 .byte   An0
 .byte   W96
@  #12 @102   ----------------------------------------
 .byte   PATT
  .word Label_010138B4
@  #12 @103   ----------------------------------------
 .byte   PATT
  .word Label_010138BE
@  #12 @104   ----------------------------------------
 .byte   PATT
  .word Label_010138C7
@  #12 @105   ----------------------------------------
 .byte   PATT
  .word Label_010138D1
@  #12 @106   ----------------------------------------
 .byte   PATT
  .word Label_010138D9
@  #12 @107   ----------------------------------------
 .byte   W48
 .byte   N44 ,Fn1 ,v064
 .byte   W48
@  #12 @108   ----------------------------------------
 .byte   PATT
  .word Label_010138E6
@  #12 @109   ----------------------------------------
 .byte   W48
 .byte   N44 ,An1 ,v064
 .byte   W48
@  #12 @110   ----------------------------------------
 .byte   PATT
  .word Label_010138F4
@  #12 @111   ----------------------------------------
 .byte   PATT
  .word Label_010138F4
@  #12 @112   ----------------------------------------
 .byte   PATT
  .word Label_010138F4
@  #12 @113   ----------------------------------------
 .byte   PATT
  .word Label_010138F4
@  #12 @114   ----------------------------------------
 .byte   PATT
  .word Label_01013916
@  #12 @115   ----------------------------------------
 .byte   PATT
  .word Label_01013916
@  #12 @116   ----------------------------------------
 .byte   PATT
  .word Label_0101392E
@  #12 @117   ----------------------------------------
 .byte   PATT
  .word Label_0101392E
@  #12 @118   ----------------------------------------
 .byte   TIE ,Gs1 ,v080
 .byte   W96
@  #12 @119   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @120   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #12 @121   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @122   ----------------------------------------
 .byte   TIE ,Fs1
 .byte   W96
@  #12 @123   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @124   ----------------------------------------
 .byte   TIE ,En1
 .byte   W96
@  #12 @125   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #12 @126   ----------------------------------------
 .byte   PATT
  .word Label_01013962
@  #12 @127   ----------------------------------------
 .byte   N92 ,Gs1 ,v052
 .byte   W96
@  #12 @128   ----------------------------------------
 .byte   N92
 .byte   W96
@  #12 @129   ----------------------------------------
 .byte   N92
 .byte   W96
@  #12 @130   ----------------------------------------
 .byte   N92
 .byte   W96
@  #12 @131   ----------------------------------------
 .byte   PATT
  .word Label_01013986
@  #12 @132   ----------------------------------------
 .byte   PATT
  .word Label_010139B5
@  #12 @133   ----------------------------------------
 .byte   PATT
  .word Label_010139BD
@  #12 @134   ----------------------------------------
 .byte   EOT
 .byte   Fs4
 .byte   W01
 .byte   N23 ,Gs4 ,v080
 .byte   W24
 .byte   As4
 .byte   W24
@  #12 @135   ----------------------------------------
 .byte   PATT
  .word Label_010139CC
@  #12 @136   ----------------------------------------
 .byte   PATT
  .word Label_010139D7
@  #12 @137   ----------------------------------------
 .byte   PATT
  .word Label_010139E4
@  #12 @138   ----------------------------------------
 .byte   PATT
  .word Label_010139F1
@  #12 @139   ----------------------------------------
 .byte   PATT
  .word Label_01013A37
@  #12 @140   ----------------------------------------
 .byte   PATT
  .word Label_01013A7E
@  #12 @141   ----------------------------------------
 .byte   PATT
  .word Label_01013A8A
@  #12 @142   ----------------------------------------
 .byte   EOT
 .byte   Fs0
 .byte   W01
@  #12 @143   ----------------------------------------
 .byte   PATT
  .word Label_01013A98
@  #12 @144   ----------------------------------------
 .byte   PATT
  .word Label_01013AA6
@  #12 @145   ----------------------------------------
 .byte   EOT
 .byte   Fs0
 .byte   W01
@  #12 @146   ----------------------------------------
 .byte   PATT
  .word Label_01013AB4
@  #12 @147   ----------------------------------------
 .byte   PATT
  .word Label_01013AE9
@  #12 @148   ----------------------------------------
 .byte   EOT
 .byte   As4
 .byte   W01
@  #12 @149   ----------------------------------------
 .byte   PATT
  .word Label_01013B1B
@  #12 @150   ----------------------------------------
 .byte   N07 ,As1 ,v060
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W19
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N07
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N03
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   FINE

@******************************************************@
	.align	2

Song_RoarOfDominion_SurfingKyogre:
	.byte	12	@ NumTrks
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
	.word	song06_012

	.end
