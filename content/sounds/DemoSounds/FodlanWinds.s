	.include "MPlayDef.s"

	.equ	song0A_grp, AllInstrument
	.equ	song0A_pri, 0
	.equ	song0A_rev, 0
	.equ	song0A_mvl, 127
	.equ	song0A_key, 0
	.equ	song0A_tbs, 1
	.equ	song0A_exg, 0
	.equ	song0A_cmp, 1

	.section .rodata
	.global	Song_FodlanWinds
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

song0A_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   TEMPO , 172*song0A_tbs/2
 .byte   VOICE , 49
 .byte   PAN , c_v+3
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   W24
 .byte   N11 ,Fn3 ,v080
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
@  #01 @001   ----------------------------------------
Label_93FDDA:
 .byte   N12 ,Fn3 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N12 ,Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #01 @002   ----------------------------------------
Label_93FDEF:
 .byte   N12 ,Cn4 ,v080
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N12 ,Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   PEND 
@  #01 @003   ----------------------------------------
Label_93FE04:
 .byte   N12 ,Gn3 ,v080
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
@  #01 @004   ----------------------------------------
Label_93FE19:
 .byte   N12 ,Dn4 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #01 @005   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @006   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @007   ----------------------------------------
Label_93FE38:
 .byte   N12 ,Gn3 ,v080
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
Label_93FE47:
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Ds4
 .byte   W12
@  #01 @008   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @009   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @010   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @011   ----------------------------------------
 .byte   PATT
  .word Label_93FE04
@  #01 @012   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @013   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @014   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @015   ----------------------------------------
Label_93FE73:
 .byte   N12 ,Gn3 ,v080
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N24 ,Dn4
 .byte   W24
 .byte   N12 ,Ds4
 .byte   W12
 .byte   PEND 
@  #01 @016   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @017   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @018   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @019   ----------------------------------------
 .byte   PATT
  .word Label_93FE04
@  #01 @020   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @021   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @022   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @023   ----------------------------------------
 .byte   PATT
  .word Label_93FE04
@  #01 @024   ----------------------------------------
Label_93FEB0:
 .byte   N12 ,Dn4 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N68 ,Cn3
 .byte   N68 ,Gn3
 .byte   W72
 .byte   PEND 
@  #01 @025   ----------------------------------------
Label_93FEBC:
 .byte   N44 ,Dn3 ,v080
 .byte   N44 ,Fn3
 .byte   W48
 .byte   N68 ,As2
 .byte   N23 ,Dn3
 .byte   W24
 .byte   N24 ,Ds3
 .byte   W24
 .byte   PEND 
@  #01 @026   ----------------------------------------
Label_93FECB:
 .byte   N20 ,As3 ,v080
 .byte   W24
 .byte   TIE ,Ds3
 .byte   N32 ,As3
 .byte   W36
 .byte   N36 ,Gs3
 .byte   W36
 .byte   PEND 
@  #01 @027   ----------------------------------------
 .byte   N44 ,Gn3
 .byte   W48
 .byte   N68 ,Fn3
 .byte   W23
 .byte   EOT
 .byte   Ds3
 .byte   N01
 .byte   W01
 .byte   N44 ,Dn3
 .byte   W24
@  #01 @028   ----------------------------------------
Label_93FEE5:
 .byte   W24
 .byte   N44 ,Ds3 ,v080
 .byte   N44 ,Gn3
 .byte   W48
 .byte   Cn3
 .byte   N44 ,Ds3
 .byte   W24
 .byte   PEND 
@  #01 @029   ----------------------------------------
Label_93FEF1:
 .byte   W24
 .byte   N68 ,Dn3 ,v080
 .byte   N68 ,Fn3
 .byte   W72
 .byte   PEND 
@  #01 @030   ----------------------------------------
Label_93FEF9:
 .byte   TIE ,Cn3 ,v080
 .byte   TIE ,Cs3
 .byte   W96
 .byte   PEND 
@  #01 @031   ----------------------------------------
 .byte   W96
@  #01 @032   ----------------------------------------
 .byte   W96
@  #01 @033   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn3 ,v061
 .byte   N01 ,Cn3 ,v064
 .byte   W24
 .byte   W01
 .byte   N23 ,As3 ,v112
 .byte   N23 ,As4
 .byte   W24
 .byte   Ds3
 .byte   N23 ,Ds4
 .byte   W24
@  #01 @034   ----------------------------------------
 .byte   Gn3
 .byte   N23 ,Gn4
 .byte   W24
 .byte   N90 ,Fn3 ,v064
 .byte   N90 ,Fn4
 .byte   W72
@  #01 @035   ----------------------------------------
Label_93FF1F:
 .byte   W48
 .byte   N23 ,As3 ,v112
 .byte   N23 ,As4
 .byte   W24
 .byte   Ds3
 .byte   N23 ,Ds4
 .byte   W24
 .byte   PEND 
@  #01 @036   ----------------------------------------
Label_93FF2B:
 .byte   N23 ,Gn3 ,v112
 .byte   N23 ,Gn4
 .byte   W24
 .byte   N32 ,Fn3
 .byte   N32 ,Fn4
 .byte   W36
 .byte   N56 ,Gn3
 .byte   N56 ,Gn4
 .byte   W36
 .byte   PEND 
@  #01 @037   ----------------------------------------
Label_93FF3C:
 .byte   W48
 .byte   N23 ,Ds3 ,v112
 .byte   N23 ,Ds4
 .byte   W24
 .byte   Fn3
 .byte   N23 ,Fn4
 .byte   W24
 .byte   PEND 
@  #01 @038   ----------------------------------------
Label_93FF48:
 .byte   N23 ,Dn3 ,v112
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N44 ,Ds3
 .byte   N44 ,Ds4
 .byte   W48
 .byte   As3
 .byte   N44 ,As4
 .byte   W24
 .byte   PEND 
@  #01 @039   ----------------------------------------
Label_93FF58:
 .byte   W24
 .byte   N23 ,As3 ,v112
 .byte   N23 ,As4
 .byte   W24
 .byte   Gs3
 .byte   N23 ,Gs4
 .byte   W24
 .byte   Gn3
 .byte   N23 ,Gn4
 .byte   W24
 .byte   PEND 
@  #01 @040   ----------------------------------------
Label_93FF68:
 .byte   N11 ,Fn3 ,v112
 .byte   N11 ,Fn4
 .byte   W12
 .byte   TIE ,Gn3
 .byte   TIE ,Gn4
 .byte   W84
 .byte   PEND 
@  #01 @041   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gn3 ,v079
 .byte   N01 ,Gn3 ,v080
 .byte   W72
 .byte   W01
@  #01 @042   ----------------------------------------
Label_93FF7D:
 .byte   W24
 .byte   N11 ,Ds4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W36
 .byte   PEND 
@  #01 @043   ----------------------------------------
Label_93FF89:
 .byte   N12 ,Dn4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W60
 .byte   PEND 
@  #01 @044   ----------------------------------------
Label_93FF94:
 .byte   W24
 .byte   N11 ,Dn4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W36
 .byte   PEND 
@  #01 @045   ----------------------------------------
Label_93FFA0:
 .byte   N12 ,Ds4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   N23 ,Ds5
 .byte   W24
 .byte   Fn4
 .byte   N23 ,Fn5
 .byte   W24
 .byte   PEND 
@  #01 @046   ----------------------------------------
Label_93FFB3:
 .byte   N23 ,Dn4 ,v096
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N92 ,Ds4
 .byte   N92 ,Ds5
 .byte   W72
 .byte   PEND 
@  #01 @047   ----------------------------------------
Label_93FFBF:
 .byte   W48
 .byte   N23 ,Ds4 ,v096
 .byte   N23 ,Ds5
 .byte   W24
 .byte   Fn4
 .byte   N23 ,Fn5
 .byte   W24
 .byte   PEND 
@  #01 @048   ----------------------------------------
Label_93FFCB:
 .byte   N23 ,Dn4 ,v096
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N32 ,Dn4
 .byte   N32 ,Dn5
 .byte   W36
 .byte   TIE ,Cn4
 .byte   TIE ,Cn5
 .byte   W36
 .byte   PEND 
@  #01 @049   ----------------------------------------
 .byte   W96
@  #01 @050   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn4 ,v084
 .byte   N01 ,Cn4 ,v084
 .byte   W72
 .byte   W01
@  #01 @051   ----------------------------------------
 .byte   W96
@  #01 @052   ----------------------------------------
 .byte   W96
@  #01 @053   ----------------------------------------
 .byte   W96
@  #01 @054   ----------------------------------------
Label_93FFE9:
 .byte   W24
 .byte   N23 ,Cn3 ,v064
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   PEND 
@  #01 @055   ----------------------------------------
Label_93FFF9:
 .byte   N23 ,Cn3 ,v064
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   PEND 
@  #01 @056   ----------------------------------------
Label_94000C:
 .byte   N11 ,Cn3 ,v064
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Cn3
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N23 ,Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   PEND 
@  #01 @057   ----------------------------------------
Label_940024:
 .byte   N23 ,Cn3 ,v064
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N03 ,Cn3
 .byte   N11 ,Dn3 ,v080
 .byte   W12
 .byte   N03 ,Ds3 ,v084
 .byte   W12
 .byte   PEND 
@  #01 @058   ----------------------------------------
Label_94003D:
 .byte   N23 ,Cn3 ,v064
 .byte   N11 ,Gn3 ,v088
 .byte   W12
 .byte   N03 ,As3 ,v092
 .byte   W12
 .byte   N23 ,Ds3 ,v080
 .byte   N68 ,Dn4 ,v096
 .byte   W24
 .byte   N23 ,Ds3 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #01 @059   ----------------------------------------
Label_940056:
 .byte   N23 ,Ds3 ,v080
 .byte   N11 ,Ds4 ,v096
 .byte   W12
 .byte   TIE ,Cn4
 .byte   W12
 .byte   N23 ,Ds3 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #01 @060   ----------------------------------------
Label_940069:
 .byte   N11 ,Ds3 ,v080
 .byte   W12
 .byte   N11
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Cn4
 .byte   N01
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N23
 .byte   N23 ,Gn3 ,v096
 .byte   W24
 .byte   Ds3 ,v080
 .byte   N23 ,Gn4 ,v096
 .byte   W24
@  #01 @061   ----------------------------------------
Label_940082:
 .byte   N11 ,Ds3 ,v080
 .byte   N11 ,Fn4 ,v096
 .byte   W12
 .byte   N12 ,Ds4
 .byte   W12
 .byte   N23 ,Ds3 ,v080
 .byte   N44 ,Dn4 ,v096
 .byte   W24
 .byte   N23 ,Ds3 ,v080
 .byte   W24
 .byte   N23
 .byte   N44 ,As3 ,v096
 .byte   W24
 .byte   PEND 
@  #01 @062   ----------------------------------------
Label_94009D:
 .byte   N23 ,Ds3 ,v080
 .byte   W24
 .byte   N23
 .byte   N23 ,Dn4 ,v096
 .byte   W24
 .byte   N11 ,Ds3 ,v080
 .byte   N11 ,Ds4 ,v096
 .byte   W12
 .byte   TIE ,Cn4
 .byte   W12
 .byte   N23 ,Ds3 ,v080
 .byte   W24
 .byte   PEND 
@  #01 @063   ----------------------------------------
Label_9400B5:
 .byte   N23 ,Ds3 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #01 @064   ----------------------------------------
 .byte   PATT
  .word Label_940069
@  #01 @065   ----------------------------------------
 .byte   EOT
 .byte   Cn4
 .byte   N01 ,Cn4 ,v080
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
Label_9400D2:
 .byte   N23 ,Ds3 ,v080
 .byte   W24
@  #01 @066   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N12 ,Ds3
 .byte   W12
 .byte   PEND 
Label_9400E1:
 .byte   N12 ,Gn3 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
@  #01 @067   ----------------------------------------
 .byte   N68 ,Dn4
 .byte   W72
 .byte   PEND 
Label_9400EB:
 .byte   N11 ,Ds4 ,v080
 .byte   W12
 .byte   TIE ,Cn4
 .byte   W84
 .byte   PEND 
@  #01 @068   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W24
 .byte   W01
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N24 ,Gn4
 .byte   W24
@  #01 @069   ----------------------------------------
Label_9400FE:
 .byte   N11 ,Fn4 ,v080
 .byte   W12
 .byte   N12 ,Ds4
 .byte   W12
 .byte   N44 ,Dn4
 .byte   W48
 .byte   N48 ,As3
 .byte   W24
 .byte   PEND 
@  #01 @070   ----------------------------------------
Label_94010C:
 .byte   W24
 .byte   N23 ,Dn4 ,v080
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   TIE ,As4
 .byte   W36
 .byte   PEND 
@  #01 @071   ----------------------------------------
 .byte   W96
@  #01 @072   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #01 @073   ----------------------------------------
 .byte   W84
 .byte   N11 ,Dn3
 .byte   W12
@  #01 @074   ----------------------------------------
Label_940122:
 .byte   N12 ,Ds3 ,v080
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N32 ,Gn3
 .byte   W36
 .byte   N36 ,Fn3
 .byte   W36
 .byte   PEND 
@  #01 @075   ----------------------------------------
Label_94012F:
 .byte   N44 ,Cn3 ,v080
 .byte   W48
 .byte   N23 ,Dn3
 .byte   W24
 .byte   N24 ,Ds3
 .byte   W24
 .byte   PEND 
@  #01 @076   ----------------------------------------
Label_94013A:
 .byte   N24 ,As3 ,v080
 .byte   W24
 .byte   N32
 .byte   W36
 .byte   N36 ,Gs3
 .byte   W36
 .byte   PEND 
@  #01 @077   ----------------------------------------
Label_940144:
 .byte   N44 ,Gn3 ,v080
 .byte   W48
 .byte   N23 ,Fn3
 .byte   W24
 .byte   N24 ,Ds3
 .byte   W24
 .byte   PEND 
@  #01 @078   ----------------------------------------
Label_94014F:
 .byte   N24 ,Dn3 ,v080
 .byte   W24
 .byte   N56 ,Cn3
 .byte   W60
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #01 @079   ----------------------------------------
Label_940159:
 .byte   N12 ,Dn3 ,v080
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N44 ,Fn3
 .byte   W48
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N12 ,Fn3
 .byte   W12
 .byte   PEND 
@  #01 @080   ----------------------------------------
 .byte   TIE ,Gn3
 .byte   W96
@  #01 @081   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #01 @082   ----------------------------------------
 .byte   PATT
  .word Label_93FF7D
@  #01 @083   ----------------------------------------
 .byte   PATT
  .word Label_93FF89
@  #01 @084   ----------------------------------------
 .byte   PATT
  .word Label_93FF94
@  #01 @085   ----------------------------------------
Label_940180:
 .byte   N12 ,Ds4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W60
 .byte   PEND 
@  #01 @086   ----------------------------------------
Label_94018B:
 .byte   W36
 .byte   N11 ,Ds4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #01 @087   ----------------------------------------
Label_940197:
 .byte   N11 ,Ds4 ,v096
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #01 @088   ----------------------------------------
Label_9401A6:
 .byte   N11 ,Ds4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W36
 .byte   PEND 
@  #01 @089   ----------------------------------------
Label_9401B5:
 .byte   N12 ,Ds4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,As3 ,v112
 .byte   N23 ,As4
 .byte   W24
 .byte   Ds3
 .byte   N23 ,Ds4
 .byte   W24
 .byte   PEND 
@  #01 @090   ----------------------------------------
Label_9401CA:
 .byte   N23 ,Gn3 ,v112
 .byte   N23 ,Gn4
 .byte   W24
 .byte   N92 ,Fn3
 .byte   N92 ,Fn4
 .byte   W72
 .byte   PEND 
@  #01 @091   ----------------------------------------
 .byte   PATT
  .word Label_93FF1F
@  #01 @092   ----------------------------------------
 .byte   PATT
  .word Label_93FF2B
@  #01 @093   ----------------------------------------
 .byte   PATT
  .word Label_93FFBF
@  #01 @094   ----------------------------------------
 .byte   PATT
  .word Label_93FFB3
@  #01 @095   ----------------------------------------
 .byte   PATT
  .word Label_93FFBF
@  #01 @096   ----------------------------------------
 .byte   PATT
  .word Label_93FFCB
@  #01 @097   ----------------------------------------
 .byte   W96
@  #01 @098   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn4 ,v084
 .byte   N01 ,Cn4 ,v084
 .byte   W01
 .byte   N92 ,Dn4 ,v064
 .byte   TIE ,Gn4
 .byte   W72
@  #01 @099   ----------------------------------------
 .byte   W24
 .byte   N80 ,Cn4
 .byte   W72
@  #01 @100   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Gn4
 .byte   N01
 .byte   W01
 .byte   TIE ,As3
 .byte   TIE ,Fn4
 .byte   W84
@  #01 @101   ----------------------------------------
 .byte   W96
@  #01 @102   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   As3 ,v077
 .byte   N13 ,As3 ,v080
 .byte   W13
 .byte   N44 ,Dn4 ,v064
 .byte   TIE ,Ds4
 .byte   W48
 .byte   N44 ,Cn4
 .byte   W24
@  #01 @103   ----------------------------------------
Label_940223:
 .byte   W24
 .byte   N44 ,As3 ,v064
 .byte   W48
 .byte   N32 ,Gs3
 .byte   W24
 .byte   PEND 
@  #01 @104   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Ds4
 .byte   N01
 .byte   W01
 .byte   TIE ,Gn3
 .byte   TIE ,Dn4
 .byte   W84
@  #01 @105   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gn3 ,v074
 .byte   N01
 .byte   W01
 .byte   N44 ,Ds4
 .byte   W48
 .byte   N32 ,Fn4
 .byte   W24
@  #01 @106   ----------------------------------------
Label_940242:
 .byte   W11
 .byte   N13 ,Gn3 ,v064
 .byte   W13
 .byte   N11 ,Ds3 ,v080
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
@  #01 @107   ----------------------------------------
Label_940257:
 .byte   N12 ,Ds3 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11 ,As3
 .byte   W12
 .byte   N12 ,Ds3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #01 @108   ----------------------------------------
Label_94026C:
 .byte   N12 ,As3 ,v080
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N12 ,As3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   PEND 
@  #01 @109   ----------------------------------------
Label_940281:
 .byte   N12 ,Gn3 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N24 ,Dn4
 .byte   W24
 .byte   N12 ,Ds4
 .byte   W12
 .byte   PEND 
@  #01 @110   ----------------------------------------
Label_940296:
 .byte   N12 ,Dn4 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #01 @111   ----------------------------------------
Label_9402AB:
 .byte   N11 ,Cn4 ,v080
 .byte   W12
 .byte   N12 ,Ds3
 .byte   W12
 .byte   N11 ,As3
 .byte   W12
 .byte   N12 ,Ds3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N12 ,As3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #01 @112   ----------------------------------------
Label_9402C2:
 .byte   N12 ,As3 ,v080
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N12 ,Dn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   PEND 
@  #01 @113   ----------------------------------------
Label_9402D7:
 .byte   N12 ,Dn3 ,v080
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N12 ,Ds3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N24 ,Dn4
 .byte   W24
 .byte   N12 ,Ds4
 .byte   W12
 .byte   PEND 
@  #01 @114   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @115   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @116   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @117   ----------------------------------------
 .byte   PATT
  .word Label_93FE04
@  #01 @118   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @119   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @120   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @121   ----------------------------------------
 .byte   PATT
  .word Label_93FE38
@  #01 @122   ----------------------------------------
 .byte   GOTO
  .word Label_93FE47
@  #01 @123   ----------------------------------------
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Ds4
 .byte   W12
@  #01 @124   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @125   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @126   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @127   ----------------------------------------
 .byte   PATT
  .word Label_93FE04
@  #01 @128   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @129   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @130   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @131   ----------------------------------------
 .byte   PATT
  .word Label_93FE73
@  #01 @132   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @133   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @134   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @135   ----------------------------------------
 .byte   PATT
  .word Label_93FE04
@  #01 @136   ----------------------------------------
 .byte   PATT
  .word Label_93FE19
@  #01 @137   ----------------------------------------
 .byte   PATT
  .word Label_93FDDA
@  #01 @138   ----------------------------------------
 .byte   PATT
  .word Label_93FDEF
@  #01 @139   ----------------------------------------
 .byte   PATT
  .word Label_93FE04
@  #01 @140   ----------------------------------------
 .byte   PATT
  .word Label_93FEB0
@  #01 @141   ----------------------------------------
 .byte   PATT
  .word Label_93FEBC
@  #01 @142   ----------------------------------------
 .byte   PATT
  .word Label_93FECB
@  #01 @143   ----------------------------------------
 .byte   N44 ,Gn3 ,v080
 .byte   W48
 .byte   N23 ,Fn3
 .byte   W23
 .byte   EOT
 .byte   Ds3
 .byte   W01
 .byte   N44 ,Dn3
 .byte   W24
@  #01 @144   ----------------------------------------
 .byte   PATT
  .word Label_93FEE5
@  #01 @145   ----------------------------------------
 .byte   PATT
  .word Label_93FEF1
@  #01 @146   ----------------------------------------
 .byte   PATT
  .word Label_93FEF9
@  #01 @147   ----------------------------------------
 .byte   W96
@  #01 @148   ----------------------------------------
 .byte   W96
@  #01 @149   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn3 ,v061
 .byte   N01 ,Cn3 ,v064
 .byte   W24
 .byte   W01
 .byte   N23 ,As3 ,v112
 .byte   N23 ,As4
 .byte   W24
 .byte   Ds3
 .byte   N23 ,Ds4
 .byte   W24
@  #01 @150   ----------------------------------------
 .byte   PATT
  .word Label_9401CA
@  #01 @151   ----------------------------------------
 .byte   PATT
  .word Label_93FF1F
@  #01 @152   ----------------------------------------
 .byte   PATT
  .word Label_93FF2B
@  #01 @153   ----------------------------------------
 .byte   PATT
  .word Label_93FF3C
@  #01 @154   ----------------------------------------
 .byte   PATT
  .word Label_93FF48
@  #01 @155   ----------------------------------------
 .byte   PATT
  .word Label_93FF58
@  #01 @156   ----------------------------------------
 .byte   PATT
  .word Label_93FF68
@  #01 @157   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gn3 ,v079
 .byte   N01 ,Gn3 ,v080
 .byte   W72
 .byte   W01
@  #01 @158   ----------------------------------------
 .byte   PATT
  .word Label_93FF7D
@  #01 @159   ----------------------------------------
 .byte   PATT
  .word Label_93FF89
@  #01 @160   ----------------------------------------
 .byte   PATT
  .word Label_93FF94
@  #01 @161   ----------------------------------------
 .byte   PATT
  .word Label_93FFA0
@  #01 @162   ----------------------------------------
 .byte   PATT
  .word Label_93FFB3
@  #01 @163   ----------------------------------------
 .byte   PATT
  .word Label_93FFBF
@  #01 @164   ----------------------------------------
 .byte   PATT
  .word Label_93FFCB
@  #01 @165   ----------------------------------------
 .byte   W96
@  #01 @166   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn4 ,v084
 .byte   N01 ,Cn4 ,v084
 .byte   W72
 .byte   W01
@  #01 @167   ----------------------------------------
 .byte   W96
@  #01 @168   ----------------------------------------
 .byte   W96
@  #01 @169   ----------------------------------------
 .byte   W96
@  #01 @170   ----------------------------------------
 .byte   PATT
  .word Label_93FFE9
@  #01 @171   ----------------------------------------
 .byte   PATT
  .word Label_93FFF9
@  #01 @172   ----------------------------------------
 .byte   PATT
  .word Label_94000C
@  #01 @173   ----------------------------------------
 .byte   PATT
  .word Label_940024
@  #01 @174   ----------------------------------------
 .byte   PATT
  .word Label_94003D
@  #01 @175   ----------------------------------------
 .byte   PATT
  .word Label_940056
@  #01 @176   ----------------------------------------
 .byte   PATT
  .word Label_940069
@  #01 @177   ----------------------------------------
 .byte   EOT
 .byte   Cn4
 .byte   N01 ,Cn4 ,v080
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N23
 .byte   N23 ,Gn3 ,v096
 .byte   W24
 .byte   Ds3 ,v080
 .byte   N23 ,Gn4 ,v096
 .byte   W24
@  #01 @178   ----------------------------------------
 .byte   PATT
  .word Label_940082
@  #01 @179   ----------------------------------------
 .byte   PATT
  .word Label_94009D
@  #01 @180   ----------------------------------------
 .byte   PATT
  .word Label_9400B5
@  #01 @181   ----------------------------------------
 .byte   PATT
  .word Label_940069
@  #01 @182   ----------------------------------------
 .byte   EOT
 .byte   Cn4
 .byte   N01 ,Cn4 ,v080
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
@  #01 @183   ----------------------------------------
 .byte   PATT
  .word Label_9400D2
@  #01 @184   ----------------------------------------
 .byte   PATT
  .word Label_9400E1
@  #01 @185   ----------------------------------------
 .byte   PATT
  .word Label_9400EB
@  #01 @186   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn4
 .byte   N01 ,Cn4 ,v080
 .byte   W24
 .byte   W01
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N24 ,Gn4
 .byte   W24
@  #01 @187   ----------------------------------------
 .byte   PATT
  .word Label_9400FE
@  #01 @188   ----------------------------------------
 .byte   PATT
  .word Label_94010C
@  #01 @189   ----------------------------------------
 .byte   W96
@  #01 @190   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As4
 .byte   N01 ,As4 ,v080
 .byte   W72
 .byte   W01
@  #01 @191   ----------------------------------------
 .byte   W84
 .byte   N11 ,Dn3
 .byte   W12
@  #01 @192   ----------------------------------------
 .byte   PATT
  .word Label_940122
@  #01 @193   ----------------------------------------
 .byte   PATT
  .word Label_94012F
@  #01 @194   ----------------------------------------
 .byte   PATT
  .word Label_94013A
@  #01 @195   ----------------------------------------
 .byte   PATT
  .word Label_940144
@  #01 @196   ----------------------------------------
 .byte   PATT
  .word Label_94014F
@  #01 @197   ----------------------------------------
 .byte   PATT
  .word Label_940159
@  #01 @198   ----------------------------------------
 .byte   TIE ,Gn3 ,v080
 .byte   W96
@  #01 @199   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #01 @200   ----------------------------------------
 .byte   PATT
  .word Label_93FF7D
@  #01 @201   ----------------------------------------
 .byte   PATT
  .word Label_93FF89
@  #01 @202   ----------------------------------------
 .byte   PATT
  .word Label_93FF94
@  #01 @203   ----------------------------------------
 .byte   PATT
  .word Label_940180
@  #01 @204   ----------------------------------------
 .byte   PATT
  .word Label_94018B
@  #01 @205   ----------------------------------------
 .byte   PATT
  .word Label_940197
@  #01 @206   ----------------------------------------
 .byte   PATT
  .word Label_9401A6
@  #01 @207   ----------------------------------------
 .byte   PATT
  .word Label_9401B5
@  #01 @208   ----------------------------------------
 .byte   PATT
  .word Label_9401CA
@  #01 @209   ----------------------------------------
 .byte   PATT
  .word Label_93FF1F
@  #01 @210   ----------------------------------------
 .byte   PATT
  .word Label_93FF2B
@  #01 @211   ----------------------------------------
 .byte   PATT
  .word Label_93FFBF
@  #01 @212   ----------------------------------------
 .byte   PATT
  .word Label_93FFB3
@  #01 @213   ----------------------------------------
 .byte   PATT
  .word Label_93FFBF
@  #01 @214   ----------------------------------------
 .byte   PATT
  .word Label_93FFCB
@  #01 @215   ----------------------------------------
 .byte   W96
@  #01 @216   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn4 ,v084
 .byte   N01 ,Cn4 ,v084
 .byte   W01
 .byte   N92 ,Dn4 ,v064
 .byte   TIE ,Gn4
 .byte   W72
@  #01 @217   ----------------------------------------
 .byte   W24
 .byte   N80 ,Cn4
 .byte   W72
@  #01 @218   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Gn4
 .byte   N01
 .byte   W01
 .byte   TIE ,As3
 .byte   TIE ,Fn4
 .byte   W84
@  #01 @219   ----------------------------------------
 .byte   W96
@  #01 @220   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   As3 ,v077
 .byte   N13 ,As3 ,v080
 .byte   W13
 .byte   N44 ,Dn4 ,v064
 .byte   TIE ,Ds4
 .byte   W48
 .byte   N44 ,Cn4
 .byte   W24
@  #01 @221   ----------------------------------------
 .byte   PATT
  .word Label_940223
@  #01 @222   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Ds4
 .byte   N01 ,Ds4 ,v064
 .byte   W01
 .byte   TIE ,Gn3
 .byte   TIE ,Dn4
 .byte   W84
@  #01 @223   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gn3 ,v074
 .byte   N01
 .byte   W01
 .byte   N44 ,Ds4
 .byte   W48
 .byte   N32 ,Fn4
 .byte   W24
@  #01 @224   ----------------------------------------
 .byte   PATT
  .word Label_940242
@  #01 @225   ----------------------------------------
 .byte   PATT
  .word Label_940257
@  #01 @226   ----------------------------------------
 .byte   PATT
  .word Label_94026C
@  #01 @227   ----------------------------------------
 .byte   PATT
  .word Label_940281
@  #01 @228   ----------------------------------------
 .byte   PATT
  .word Label_940296
@  #01 @229   ----------------------------------------
 .byte   PATT
  .word Label_9402AB
@  #01 @230   ----------------------------------------
 .byte   PATT
  .word Label_9402C2
@  #01 @231   ----------------------------------------
 .byte   PATT
  .word Label_9402D7
@  #01 @232   ----------------------------------------
 .byte   N12 ,Dn4 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W11
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

song0A_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   VOICE , 61
 .byte   PAN , c_v+3
 .byte   VOL , 38*song0A_mvl/mxv
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
 .byte   W60
Label_94059C:
 .byte   W36
@  #02 @008   ----------------------------------------
 .byte   W96
@  #02 @009   ----------------------------------------
 .byte   W96
@  #02 @010   ----------------------------------------
 .byte   W96
@  #02 @011   ----------------------------------------
 .byte   W96
@  #02 @012   ----------------------------------------
 .byte   W96
@  #02 @013   ----------------------------------------
 .byte   W96
@  #02 @014   ----------------------------------------
 .byte   W96
@  #02 @015   ----------------------------------------
 .byte   W96
@  #02 @016   ----------------------------------------
 .byte   W24
 .byte   N92 ,Cn3 ,v080
 .byte   W72
@  #02 @017   ----------------------------------------
 .byte   W24
 .byte   Gn3
 .byte   W72
@  #02 @018   ----------------------------------------
 .byte   W24
 .byte   N80 ,Fn3
 .byte   W72
@  #02 @019   ----------------------------------------
Label_9405B1:
 .byte   W12
 .byte   N11 ,Ds3 ,v080
 .byte   W12
 .byte   N92 ,Dn3
 .byte   W72
 .byte   PEND 
@  #02 @020   ----------------------------------------
Label_9405BA:
 .byte   W24
 .byte   N11 ,Cn3 ,v080
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   TIE ,Cn4
 .byte   W48
 .byte   PEND 
@  #02 @021   ----------------------------------------
 .byte   W96
@  #02 @022   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #02 @023   ----------------------------------------
 .byte   W96
@  #02 @024   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gs2
 .byte   W72
@  #02 @025   ----------------------------------------
 .byte   TIE ,As2
 .byte   W96
@  #02 @026   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N68 ,Cn3
 .byte   W72
@  #02 @027   ----------------------------------------
Label_9405DB:
 .byte   N44 ,Cn3 ,v080
 .byte   W48
 .byte   N23 ,As2
 .byte   W24
 .byte   N44 ,Gs2
 .byte   W24
 .byte   PEND 
@  #02 @028   ----------------------------------------
 .byte   W24
 .byte   N92 ,Ds3
 .byte   W72
@  #02 @029   ----------------------------------------
 .byte   W24
 .byte   N68 ,Dn3
 .byte   W72
@  #02 @030   ----------------------------------------
 .byte   TIE ,Gs2
 .byte   W96
@  #02 @031   ----------------------------------------
 .byte   W96
@  #02 @032   ----------------------------------------
 .byte   W96
@  #02 @033   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #02 @034   ----------------------------------------
Label_9405F8:
 .byte   W24
 .byte   TIE ,Fn3 ,v096
 .byte   W72
 .byte   PEND 
@  #02 @035   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N24 ,Dn3
 .byte   W24
@  #02 @036   ----------------------------------------
Label_940608:
 .byte   N11 ,As2 ,v096
 .byte   W12
 .byte   N12 ,Fn2
 .byte   W12
 .byte   TIE ,Dn3
 .byte   W72
 .byte   PEND 
@  #02 @037   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W48
 .byte   W01
@  #02 @038   ----------------------------------------
 .byte   W24
 .byte   N92 ,Gn3
 .byte   W72
@  #02 @039   ----------------------------------------
 .byte   W24
 .byte   Fn3
 .byte   W72
@  #02 @040   ----------------------------------------
 .byte   W24
 .byte   N92
 .byte   W72
@  #02 @041   ----------------------------------------
Label_940622:
 .byte   W48
 .byte   N23 ,As3 ,v112
 .byte   W24
 .byte   N24 ,Ds3
 .byte   W24
 .byte   PEND 
@  #02 @042   ----------------------------------------
Label_94062B:
 .byte   N24 ,Gn3 ,v112
 .byte   W24
 .byte   N92 ,Fn3
 .byte   W72
 .byte   PEND 
@  #02 @043   ----------------------------------------
 .byte   PATT
  .word Label_940622
@  #02 @044   ----------------------------------------
Label_940638:
 .byte   N24 ,Gn3 ,v112
 .byte   W24
 .byte   N32 ,Fn3
 .byte   W36
 .byte   N56 ,Gn3
 .byte   W36
 .byte   PEND 
@  #02 @045   ----------------------------------------
Label_940643:
 .byte   W48
 .byte   N23 ,Ds3 ,v112
 .byte   W24
 .byte   N24 ,Fn3
 .byte   W24
 .byte   PEND 
@  #02 @046   ----------------------------------------
Label_94064C:
 .byte   N24 ,Dn3 ,v112
 .byte   W24
 .byte   N92 ,Ds3
 .byte   W72
 .byte   PEND 
@  #02 @047   ----------------------------------------
 .byte   PATT
  .word Label_940643
@  #02 @048   ----------------------------------------
Label_940659:
 .byte   N24 ,Dn3 ,v112
 .byte   W24
 .byte   N32
 .byte   W36
 .byte   TIE ,Cn3
 .byte   W36
 .byte   PEND 
@  #02 @049   ----------------------------------------
 .byte   W96
@  #02 @050   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #02 @051   ----------------------------------------
 .byte   W96
@  #02 @052   ----------------------------------------
 .byte   W96
@  #02 @053   ----------------------------------------
 .byte   W96
@  #02 @054   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #02 @061   ----------------------------------------
 .byte   W96
@  #02 @062   ----------------------------------------
 .byte   W96
@  #02 @063   ----------------------------------------
 .byte   W96
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
Label_940680:
 .byte   W24
 .byte   N23 ,Cn3 ,v080
 .byte   W36
 .byte   N23
 .byte   W36
 .byte   PEND 
@  #02 @075   ----------------------------------------
Label_940688:
 .byte   N23 ,Cn3 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W36
 .byte   N23
 .byte   W12
 .byte   PEND 
@  #02 @076   ----------------------------------------
Label_940693:
 .byte   W24
 .byte   N23 ,Dn3 ,v080
 .byte   W36
 .byte   N23
 .byte   W36
 .byte   PEND 
@  #02 @077   ----------------------------------------
Label_94069B:
 .byte   N23 ,Dn3 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W36
 .byte   N23
 .byte   W12
 .byte   PEND 
@  #02 @078   ----------------------------------------
Label_9406A6:
 .byte   W24
 .byte   N56 ,Cn3 ,v080
 .byte   W60
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #02 @079   ----------------------------------------
Label_9406AE:
 .byte   N12 ,Dn3 ,v080
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N44 ,Fn3
 .byte   W48
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N12 ,Fn3
 .byte   W12
 .byte   PEND 
@  #02 @080   ----------------------------------------
 .byte   TIE ,Gn3
 .byte   W96
@  #02 @081   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #02 @082   ----------------------------------------
 .byte   PATT
  .word Label_9405F8
@  #02 @083   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fn3
 .byte   N01 ,Fn3 ,v096
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N24 ,Dn3
 .byte   W24
@  #02 @084   ----------------------------------------
 .byte   PATT
  .word Label_940608
@  #02 @085   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn3
 .byte   N01 ,Dn3 ,v096
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N24 ,Fn3
 .byte   W24
@  #02 @086   ----------------------------------------
Label_9406EC:
 .byte   N24 ,Dn3 ,v096
 .byte   W24
 .byte   N44 ,Ds3
 .byte   W48
 .byte   N48 ,As3
 .byte   W24
 .byte   PEND 
@  #02 @087   ----------------------------------------
Label_9406F7:
 .byte   W24
 .byte   N23 ,As3 ,v096
 .byte   W24
 .byte   N24 ,Gs3
 .byte   W24
 .byte   Gn3
 .byte   W24
 .byte   PEND 
@  #02 @088   ----------------------------------------
Label_940702:
 .byte   N11 ,Fn3 ,v096
 .byte   W12
 .byte   TIE ,Gn3
 .byte   W84
 .byte   PEND 
@  #02 @089   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #02 @090   ----------------------------------------
Label_94070F:
 .byte   W24
 .byte   N44 ,Gs2 ,v096
 .byte   W48
 .byte   N48 ,Gn3
 .byte   W24
 .byte   PEND 
@  #02 @091   ----------------------------------------
Label_940718:
 .byte   W24
 .byte   N44 ,Dn3 ,v096
 .byte   W48
 .byte   N48 ,As2
 .byte   W24
 .byte   PEND 
@  #02 @092   ----------------------------------------
Label_940721:
 .byte   W24
 .byte   N44 ,Gn2 ,v096
 .byte   W48
 .byte   N32 ,Fn3
 .byte   W24
 .byte   PEND 
@  #02 @093   ----------------------------------------
Label_94072A:
 .byte   W12
 .byte   N32 ,Fn3 ,v096
 .byte   W36
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N24 ,Dn3
 .byte   W24
 .byte   PEND 
@  #02 @094   ----------------------------------------
Label_940736:
 .byte   N24 ,As2 ,v096
 .byte   W24
 .byte   N92 ,Ds3
 .byte   W72
 .byte   PEND 
@  #02 @095   ----------------------------------------
Label_94073E:
 .byte   W48
 .byte   N23 ,Ds3 ,v096
 .byte   W24
 .byte   N24 ,Fn3
 .byte   W24
 .byte   PEND 
@  #02 @096   ----------------------------------------
Label_940747:
 .byte   N24 ,Dn3 ,v096
 .byte   W24
 .byte   N32
 .byte   W36
 .byte   TIE ,Cn3
 .byte   W36
 .byte   PEND 
@  #02 @097   ----------------------------------------
 .byte   W96
@  #02 @098   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #02 @099   ----------------------------------------
 .byte   W96
@  #02 @100   ----------------------------------------
 .byte   W96
@  #02 @101   ----------------------------------------
 .byte   W96
@  #02 @102   ----------------------------------------
 .byte   W96
@  #02 @103   ----------------------------------------
 .byte   W96
@  #02 @104   ----------------------------------------
 .byte   W96
@  #02 @105   ----------------------------------------
 .byte   W96
@  #02 @106   ----------------------------------------
 .byte   W96
@  #02 @107   ----------------------------------------
 .byte   W96
@  #02 @108   ----------------------------------------
 .byte   W96
@  #02 @109   ----------------------------------------
 .byte   W96
@  #02 @110   ----------------------------------------
 .byte   W96
@  #02 @111   ----------------------------------------
 .byte   W96
@  #02 @112   ----------------------------------------
 .byte   W96
@  #02 @113   ----------------------------------------
 .byte   W96
@  #02 @114   ----------------------------------------
 .byte   W96
@  #02 @115   ----------------------------------------
 .byte   W96
@  #02 @116   ----------------------------------------
 .byte   W96
@  #02 @117   ----------------------------------------
 .byte   W96
@  #02 @118   ----------------------------------------
 .byte   W96
@  #02 @119   ----------------------------------------
 .byte   W96
@  #02 @120   ----------------------------------------
 .byte   W96
@  #02 @121   ----------------------------------------
 .byte   W60
 .byte   GOTO
  .word Label_94059C
@  #02 @122   ----------------------------------------
 .byte   W36
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
 .byte   W96
@  #02 @128   ----------------------------------------
 .byte   W96
@  #02 @129   ----------------------------------------
 .byte   W96
@  #02 @130   ----------------------------------------
 .byte   W24
 .byte   N92 ,Cn3 ,v080
 .byte   W72
@  #02 @131   ----------------------------------------
 .byte   W24
 .byte   Gn3
 .byte   W72
@  #02 @132   ----------------------------------------
 .byte   W24
 .byte   N80 ,Fn3
 .byte   W72
@  #02 @133   ----------------------------------------
 .byte   PATT
  .word Label_9405B1
@  #02 @134   ----------------------------------------
 .byte   PATT
  .word Label_9405BA
@  #02 @135   ----------------------------------------
 .byte   W96
@  #02 @136   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn4
 .byte   N01 ,Cn4 ,v080
 .byte   W72
 .byte   W01
@  #02 @137   ----------------------------------------
 .byte   W96
@  #02 @138   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gs2
 .byte   W72
@  #02 @139   ----------------------------------------
 .byte   TIE ,As2
 .byte   W96
@  #02 @140   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N68 ,Cn3
 .byte   W72
@  #02 @141   ----------------------------------------
 .byte   PATT
  .word Label_9405DB
@  #02 @142   ----------------------------------------
 .byte   W24
 .byte   N92 ,Ds3 ,v080
 .byte   W72
@  #02 @143   ----------------------------------------
 .byte   W24
 .byte   N68 ,Dn3
 .byte   W72
@  #02 @144   ----------------------------------------
 .byte   TIE ,Gs2
 .byte   W96
@  #02 @145   ----------------------------------------
 .byte   W96
@  #02 @146   ----------------------------------------
 .byte   W96
@  #02 @147   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #02 @148   ----------------------------------------
 .byte   PATT
  .word Label_9405F8
@  #02 @149   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fn3
 .byte   N01 ,Fn3 ,v096
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N24 ,Dn3
 .byte   W24
@  #02 @150   ----------------------------------------
 .byte   PATT
  .word Label_940608
@  #02 @151   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn3
 .byte   N72 ,Dn3 ,v096
 .byte   W48
 .byte   W01
@  #02 @152   ----------------------------------------
 .byte   W24
 .byte   N92 ,Gn3
 .byte   W72
@  #02 @153   ----------------------------------------
 .byte   W24
 .byte   Fn3
 .byte   W72
@  #02 @154   ----------------------------------------
 .byte   W24
 .byte   N92
 .byte   W72
@  #02 @155   ----------------------------------------
 .byte   PATT
  .word Label_940622
@  #02 @156   ----------------------------------------
 .byte   PATT
  .word Label_94062B
@  #02 @157   ----------------------------------------
 .byte   PATT
  .word Label_940622
@  #02 @158   ----------------------------------------
 .byte   PATT
  .word Label_940638
@  #02 @159   ----------------------------------------
 .byte   PATT
  .word Label_940643
@  #02 @160   ----------------------------------------
 .byte   PATT
  .word Label_94064C
@  #02 @161   ----------------------------------------
 .byte   PATT
  .word Label_940643
@  #02 @162   ----------------------------------------
 .byte   PATT
  .word Label_940659
@  #02 @163   ----------------------------------------
 .byte   W96
@  #02 @164   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn3
 .byte   N01 ,Cn3 ,v112
 .byte   W72
 .byte   W01
@  #02 @165   ----------------------------------------
 .byte   W96
@  #02 @166   ----------------------------------------
 .byte   W96
@  #02 @167   ----------------------------------------
 .byte   W96
@  #02 @168   ----------------------------------------
 .byte   W96
@  #02 @169   ----------------------------------------
 .byte   W96
@  #02 @170   ----------------------------------------
 .byte   W96
@  #02 @171   ----------------------------------------
 .byte   W96
@  #02 @172   ----------------------------------------
 .byte   W96
@  #02 @173   ----------------------------------------
 .byte   W96
@  #02 @174   ----------------------------------------
 .byte   W96
@  #02 @175   ----------------------------------------
 .byte   W96
@  #02 @176   ----------------------------------------
 .byte   W96
@  #02 @177   ----------------------------------------
 .byte   W96
@  #02 @178   ----------------------------------------
 .byte   W96
@  #02 @179   ----------------------------------------
 .byte   W96
@  #02 @180   ----------------------------------------
 .byte   W96
@  #02 @181   ----------------------------------------
 .byte   W96
@  #02 @182   ----------------------------------------
 .byte   W96
@  #02 @183   ----------------------------------------
 .byte   W96
@  #02 @184   ----------------------------------------
 .byte   W96
@  #02 @185   ----------------------------------------
 .byte   W96
@  #02 @186   ----------------------------------------
 .byte   W96
@  #02 @187   ----------------------------------------
 .byte   W96
@  #02 @188   ----------------------------------------
 .byte   PATT
  .word Label_940680
@  #02 @189   ----------------------------------------
 .byte   PATT
  .word Label_940688
@  #02 @190   ----------------------------------------
 .byte   PATT
  .word Label_940693
@  #02 @191   ----------------------------------------
 .byte   PATT
  .word Label_94069B
@  #02 @192   ----------------------------------------
 .byte   PATT
  .word Label_9406A6
@  #02 @193   ----------------------------------------
 .byte   PATT
  .word Label_9406AE
@  #02 @194   ----------------------------------------
 .byte   TIE ,Gn3 ,v080
 .byte   W96
@  #02 @195   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #02 @196   ----------------------------------------
 .byte   PATT
  .word Label_9405F8
@  #02 @197   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fn3
 .byte   N01 ,Fn3 ,v096
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N24 ,Dn3
 .byte   W24
@  #02 @198   ----------------------------------------
 .byte   PATT
  .word Label_940608
@  #02 @199   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn3
 .byte   N01 ,Dn3 ,v096
 .byte   W01
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N24 ,Fn3
 .byte   W24
@  #02 @200   ----------------------------------------
 .byte   PATT
  .word Label_9406EC
@  #02 @201   ----------------------------------------
 .byte   PATT
  .word Label_9406F7
@  #02 @202   ----------------------------------------
 .byte   PATT
  .word Label_940702
@  #02 @203   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gn3
 .byte   N01 ,Gn3 ,v096
 .byte   W72
 .byte   W01
@  #02 @204   ----------------------------------------
 .byte   PATT
  .word Label_94070F
@  #02 @205   ----------------------------------------
 .byte   PATT
  .word Label_940718
@  #02 @206   ----------------------------------------
 .byte   PATT
  .word Label_940721
@  #02 @207   ----------------------------------------
 .byte   PATT
  .word Label_94072A
@  #02 @208   ----------------------------------------
 .byte   PATT
  .word Label_940736
@  #02 @209   ----------------------------------------
 .byte   PATT
  .word Label_94073E
@  #02 @210   ----------------------------------------
 .byte   PATT
  .word Label_940747
@  #02 @211   ----------------------------------------
 .byte   W96
@  #02 @212   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn3
 .byte   N01 ,Cn3 ,v096
 .byte   W72
 .byte   W01
@  #02 @213   ----------------------------------------
 .byte   W96
@  #02 @214   ----------------------------------------
 .byte   W96
@  #02 @215   ----------------------------------------
 .byte   W96
@  #02 @216   ----------------------------------------
 .byte   W96
@  #02 @217   ----------------------------------------
 .byte   W96
@  #02 @218   ----------------------------------------
 .byte   W96
@  #02 @219   ----------------------------------------
 .byte   W96
@  #02 @220   ----------------------------------------
 .byte   W96
@  #02 @221   ----------------------------------------
 .byte   W96
@  #02 @222   ----------------------------------------
 .byte   W96
@  #02 @223   ----------------------------------------
 .byte   W96
@  #02 @224   ----------------------------------------
 .byte   W96
@  #02 @225   ----------------------------------------
 .byte   W96
@  #02 @226   ----------------------------------------
 .byte   W96
@  #02 @227   ----------------------------------------
 .byte   W96
@  #02 @228   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

song0A_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   VOICE , 48
 .byte   VOL , 49*song0A_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 49*song0A_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W24
 .byte   N11 ,Cn1 ,v096
 .byte   W36
 .byte   N36 ,Gn2
 .byte   W36
@  #03 @001   ----------------------------------------
Label_9408EC:
 .byte   N24 ,Dn3 ,v096
 .byte   W36
 .byte   N11 ,Ds3
 .byte   W36
 .byte   N36 ,Dn3
 .byte   W24
 .byte   PEND 
@  #03 @002   ----------------------------------------
Label_9408F7:
 .byte   W12
 .byte   N12 ,Gs1 ,v096
 .byte   W48
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #03 @003   ----------------------------------------
Label_940905:
 .byte   N24 ,As2 ,v096
 .byte   W24
 .byte   N11 ,Fn2
 .byte   W36
 .byte   N12 ,As2
 .byte   W12
 .byte   N24 ,Fn2 ,v080
 .byte   W24
 .byte   PEND 
@  #03 @004   ----------------------------------------
Label_940914:
 .byte   N11 ,Fn2 ,v080
 .byte   W24
 .byte   Cn1 ,v096
 .byte   W36
 .byte   N36 ,Gn2
 .byte   W36
 .byte   PEND 
@  #03 @005   ----------------------------------------
 .byte   PATT
  .word Label_9408EC
@  #03 @006   ----------------------------------------
 .byte   PATT
  .word Label_9408F7
@  #03 @007   ----------------------------------------
Label_940929:
 .byte   N24 ,As2 ,v096
 .byte   W24
 .byte   N11 ,Fn2
 .byte   W36
 .byte   PEND 
Label_940931:
 .byte   N11 ,As2 ,v096
 .byte   W12
 .byte   Fn2 ,v080
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
@  #03 @008   ----------------------------------------
Label_94093E:
 .byte   N11 ,Fn2 ,v080
 .byte   N11 ,As3 ,v096
 .byte   W12
 .byte   N12 ,Cn4
 .byte   W12
 .byte   N11 ,Cn1
 .byte   N68 ,Dn4
 .byte   W36
 .byte   N11 ,Gn2
 .byte   W36
 .byte   PEND 
@  #03 @009   ----------------------------------------
Label_940951:
 .byte   N11 ,Dn3 ,v096
 .byte   N11 ,Ds4
 .byte   W12
 .byte   TIE ,Cn4
 .byte   W24
 .byte   N11 ,Ds3
 .byte   W36
 .byte   N36 ,Dn3
 .byte   W24
 .byte   PEND 
@  #03 @010   ----------------------------------------
 .byte   W12
 .byte   N11 ,Gs1
 .byte   W11
 .byte   EOT
 .byte   Cn4
 .byte   N01
 .byte   W24
 .byte   W01
 .byte   N23 ,Gn3
 .byte   W12
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N12 ,Gs2
 .byte   N23 ,Gn4
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
@  #03 @011   ----------------------------------------
Label_940978:
 .byte   N11 ,As2 ,v096
 .byte   N11 ,Fn4
 .byte   W12
 .byte   N12 ,Ds4
 .byte   W12
 .byte   N11 ,Fn2
 .byte   N44 ,Dn4
 .byte   W36
 .byte   N11 ,As2
 .byte   W12
 .byte   N24 ,Fn2 ,v080
 .byte   N44 ,As3 ,v096
 .byte   W24
 .byte   PEND 
@  #03 @012   ----------------------------------------
Label_940991:
 .byte   N11 ,Fn2 ,v080
 .byte   W24
 .byte   Cn1 ,v096
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N12 ,Gn2
 .byte   TIE ,Cn4
 .byte   W36
 .byte   PEND 
@  #03 @013   ----------------------------------------
Label_9409A3:
 .byte   N11 ,Dn3 ,v096
 .byte   W36
 .byte   Ds3
 .byte   W36
 .byte   N36 ,Dn3
 .byte   W24
 .byte   PEND 
@  #03 @014   ----------------------------------------
 .byte   W12
 .byte   N11 ,Gs1
 .byte   W11
 .byte   EOT
 .byte   Cn4
 .byte   N01
 .byte   W36
 .byte   W01
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W12
 .byte   Ds2
 .byte   W12
@  #03 @015   ----------------------------------------
Label_9409BE:
 .byte   N24 ,As2 ,v096
 .byte   W24
 .byte   N11 ,Fn2
 .byte   W36
 .byte   N12 ,As2
 .byte   W12
 .byte   N11 ,Fn2 ,v080
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   PEND 
@  #03 @016   ----------------------------------------
 .byte   PATT
  .word Label_94093E
@  #03 @017   ----------------------------------------
 .byte   PATT
  .word Label_940951
@  #03 @018   ----------------------------------------
 .byte   W12
 .byte   N11 ,Gs1 ,v096
 .byte   W11
 .byte   EOT
 .byte   Cn4
 .byte   N01
 .byte   W24
 .byte   W01
 .byte   N23 ,Gn3
 .byte   W12
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N12 ,Gs2
 .byte   N23 ,Gn4
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
@  #03 @019   ----------------------------------------
 .byte   PATT
  .word Label_940978
@  #03 @020   ----------------------------------------
Label_9409FA:
 .byte   N11 ,Fn2 ,v080
 .byte   W24
 .byte   Cn1 ,v096
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N12 ,Gn2
 .byte   TIE ,As4
 .byte   W36
 .byte   PEND 
@  #03 @021   ----------------------------------------
 .byte   PATT
  .word Label_9409A3
@  #03 @022   ----------------------------------------
 .byte   W12
 .byte   N11 ,Gs1 ,v096
 .byte   W11
 .byte   EOT
 .byte   As4
 .byte   N01
 .byte   W36
 .byte   W01
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W12
 .byte   Ds2
 .byte   W12
@  #03 @023   ----------------------------------------
 .byte   PATT
  .word Label_940905
@  #03 @024   ----------------------------------------
Label_940A28:
 .byte   N11 ,Fn2 ,v080
 .byte   W24
 .byte   N68 ,Gn2
 .byte   W72
 .byte   PEND 
@  #03 @025   ----------------------------------------
 .byte   TIE ,Fn2
 .byte   W96
@  #03 @026   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N68 ,Ds2
 .byte   W72
@  #03 @027   ----------------------------------------
 .byte   TIE ,Fn2
 .byte   W96
@  #03 @028   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N92 ,Gs2
 .byte   W72
@  #03 @029   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gn2
 .byte   W72
@  #03 @030   ----------------------------------------
 .byte   TIE ,Cs2
 .byte   W96
@  #03 @031   ----------------------------------------
 .byte   W96
@  #03 @032   ----------------------------------------
 .byte   W96
@  #03 @033   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #03 @034   ----------------------------------------
Label_940A52:
 .byte   W24
 .byte   N11 ,Ds2 ,v096
 .byte   W12
 .byte   N12 ,Gs1
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #03 @035   ----------------------------------------
Label_940A63:
 .byte   N44 ,Fn2 ,v096
 .byte   W48
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N12 ,Fn2
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
@  #03 @036   ----------------------------------------
Label_940A72:
 .byte   N12 ,Fn2 ,v096
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   N23 ,Dn2
 .byte   W24
 .byte   N24 ,Fn2
 .byte   W24
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N12 ,Fn2
 .byte   W12
 .byte   PEND 
@  #03 @037   ----------------------------------------
Label_940A85:
 .byte   N12 ,Gn2 ,v096
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   N11 ,Fn2
 .byte   W12
 .byte   N12 ,Ds2
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N24 ,Dn3
 .byte   W24
 .byte   PEND 
@  #03 @038   ----------------------------------------
Label_940A98:
 .byte   N24 ,As2 ,v096
 .byte   W24
 .byte   N11 ,Fn1
 .byte   W12
 .byte   N12 ,Ds2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #03 @039   ----------------------------------------
Label_940AAB:
 .byte   N12 ,Gn2 ,v096
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   N11 ,Gn1
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #03 @040   ----------------------------------------
Label_940AC0:
 .byte   N12 ,Bn2 ,v096
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N23 ,Fn2
 .byte   W24
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #03 @041   ----------------------------------------
Label_940AD1:
 .byte   N12 ,Dn3 ,v096
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #03 @042   ----------------------------------------
Label_940AE6:
 .byte   N12 ,Gn2 ,v096
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
 .byte   N12 ,Gs1
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #03 @043   ----------------------------------------
 .byte   PATT
  .word Label_940A63
@  #03 @044   ----------------------------------------
 .byte   PATT
  .word Label_940A72
@  #03 @045   ----------------------------------------
 .byte   PATT
  .word Label_940A85
@  #03 @046   ----------------------------------------
 .byte   PATT
  .word Label_940A98
@  #03 @047   ----------------------------------------
Label_940B0F:
 .byte   N12 ,Gn2 ,v096
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   N11 ,Gn1
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   PEND 
@  #03 @048   ----------------------------------------
Label_940B24:
 .byte   N12 ,As2 ,v096
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N23 ,Cn2
 .byte   W24
 .byte   N11 ,Dn2
 .byte   W12
 .byte   N12 ,Cn2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   PEND 
@  #03 @049   ----------------------------------------
Label_940B38:
 .byte   N12 ,Gn2 ,v096
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N12 ,Ds3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   PEND 
@  #03 @050   ----------------------------------------
Label_940B4D:
 .byte   N12 ,As1 ,v096
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   N23 ,Gs1 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #03 @051   ----------------------------------------
Label_940B5C:
 .byte   N23 ,Gs1 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #03 @052   ----------------------------------------
Label_940B67:
 .byte   N11 ,Gs1 ,v080
 .byte   W12
 .byte   N12 ,Cn2 ,v096
 .byte   W12
 .byte   N23 ,Cn2 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #03 @053   ----------------------------------------
Label_940B78:
 .byte   N24 ,Gn1 ,v096
 .byte   W24
 .byte   N23 ,Gn1 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #03 @054   ----------------------------------------
Label_940B85:
 .byte   N23 ,Gn1 ,v080
 .byte   W24
 .byte   Gs1
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #03 @055   ----------------------------------------
 .byte   PATT
  .word Label_940B5C
@  #03 @056   ----------------------------------------
 .byte   PATT
  .word Label_940B67
@  #03 @057   ----------------------------------------
 .byte   PATT
  .word Label_940B78
@  #03 @058   ----------------------------------------
 .byte   PATT
  .word Label_940B85
@  #03 @059   ----------------------------------------
 .byte   PATT
  .word Label_940B5C
@  #03 @060   ----------------------------------------
 .byte   PATT
  .word Label_940B67
@  #03 @061   ----------------------------------------
 .byte   PATT
  .word Label_940B78
@  #03 @062   ----------------------------------------
 .byte   PATT
  .word Label_940B85
@  #03 @063   ----------------------------------------
 .byte   PATT
  .word Label_940B5C
@  #03 @064   ----------------------------------------
 .byte   PATT
  .word Label_940B67
@  #03 @065   ----------------------------------------
 .byte   PATT
  .word Label_940B78
@  #03 @066   ----------------------------------------
Label_940BC7:
 .byte   N23 ,Gn1 ,v080
 .byte   W24
 .byte   Cn2 ,v096
 .byte   W36
 .byte   N36 ,Ds2
 .byte   W36
 .byte   PEND 
@  #03 @067   ----------------------------------------
Label_940BD2:
 .byte   N24 ,As2 ,v096
 .byte   W36
 .byte   N23 ,Cn3
 .byte   W36
 .byte   N48 ,Gn2
 .byte   W24
 .byte   PEND 
@  #03 @068   ----------------------------------------
 .byte   W60
 .byte   N23 ,Fn2
 .byte   W36
@  #03 @069   ----------------------------------------
 .byte   W60
 .byte   N23
 .byte   W36
@  #03 @070   ----------------------------------------
Label_940BE4:
 .byte   W24
 .byte   N23 ,Cn2 ,v096
 .byte   W36
 .byte   N36 ,Ds2
 .byte   W36
 .byte   PEND 
@  #03 @071   ----------------------------------------
 .byte   PATT
  .word Label_940BD2
@  #03 @072   ----------------------------------------
 .byte   W60
 .byte   N23 ,Fn2 ,v096
 .byte   W36
@  #03 @073   ----------------------------------------
 .byte   W60
 .byte   N23
 .byte   W36
@  #03 @074   ----------------------------------------
Label_940BFA:
 .byte   W24
 .byte   N23 ,Fn2 ,v080
 .byte   W36
 .byte   N23
 .byte   W36
 .byte   PEND 
@  #03 @075   ----------------------------------------
Label_940C02:
 .byte   N23 ,Fn2 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W36
 .byte   N23
 .byte   W12
 .byte   PEND 
@  #03 @076   ----------------------------------------
Label_940C0D:
 .byte   W24
 .byte   N23 ,Dn2 ,v080
 .byte   W36
 .byte   N23
 .byte   W36
 .byte   PEND 
@  #03 @077   ----------------------------------------
Label_940C15:
 .byte   N23 ,Dn2 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W36
 .byte   N23
 .byte   W12
 .byte   PEND 
@  #03 @078   ----------------------------------------
 .byte   PATT
  .word Label_940BFA
@  #03 @079   ----------------------------------------
Label_940C25:
 .byte   N23 ,Fn2 ,v080
 .byte   W48
 .byte   N23
 .byte   W36
 .byte   N23
 .byte   W12
 .byte   PEND 
@  #03 @080   ----------------------------------------
Label_940C2E:
 .byte   W24
 .byte   N23 ,Gn2 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #03 @081   ----------------------------------------
 .byte   N23
 .byte   W96
@  #03 @082   ----------------------------------------
 .byte   PATT
  .word Label_940A52
@  #03 @083   ----------------------------------------
 .byte   PATT
  .word Label_940A63
@  #03 @084   ----------------------------------------
 .byte   PATT
  .word Label_940A72
@  #03 @085   ----------------------------------------
 .byte   PATT
  .word Label_940A85
@  #03 @086   ----------------------------------------
 .byte   PATT
  .word Label_940A98
@  #03 @087   ----------------------------------------
 .byte   PATT
  .word Label_940AAB
@  #03 @088   ----------------------------------------
 .byte   PATT
  .word Label_940AC0
@  #03 @089   ----------------------------------------
 .byte   PATT
  .word Label_940AD1
@  #03 @090   ----------------------------------------
 .byte   PATT
  .word Label_940AE6
@  #03 @091   ----------------------------------------
 .byte   PATT
  .word Label_940A63
@  #03 @092   ----------------------------------------
 .byte   PATT
  .word Label_940A72
@  #03 @093   ----------------------------------------
 .byte   PATT
  .word Label_940A85
@  #03 @094   ----------------------------------------
 .byte   PATT
  .word Label_940A98
@  #03 @095   ----------------------------------------
 .byte   PATT
  .word Label_940B0F
@  #03 @096   ----------------------------------------
 .byte   PATT
  .word Label_940B24
@  #03 @097   ----------------------------------------
 .byte   PATT
  .word Label_940B38
@  #03 @098   ----------------------------------------
Label_940C8A:
 .byte   N12 ,As1 ,v096
 .byte   W12
 .byte   Gn1
 .byte   W84
 .byte   PEND 
@  #03 @099   ----------------------------------------
 .byte   W96
@  #03 @100   ----------------------------------------
 .byte   W96
@  #03 @101   ----------------------------------------
 .byte   W96
@  #03 @102   ----------------------------------------
 .byte   W96
@  #03 @103   ----------------------------------------
 .byte   W96
@  #03 @104   ----------------------------------------
 .byte   W96
@  #03 @105   ----------------------------------------
 .byte   W96
@  #03 @106   ----------------------------------------
Label_940C98:
 .byte   W24
 .byte   N11 ,Ds2 ,v080
 .byte   W36
 .byte   N11
 .byte   W36
 .byte   PEND 
@  #03 @107   ----------------------------------------
Label_940CA0:
 .byte   N24 ,Cn3 ,v080
 .byte   W36
 .byte   N11 ,As2
 .byte   W36
 .byte   N36 ,Ds2
 .byte   W24
 .byte   PEND 
@  #03 @108   ----------------------------------------
Label_940CAB:
 .byte   W12
 .byte   N12 ,Dn2 ,v080
 .byte   W48
 .byte   N11 ,Gn2
 .byte   W36
 .byte   PEND 
@  #03 @109   ----------------------------------------
 .byte   N24 ,Cn2
 .byte   W96
@  #03 @110   ----------------------------------------
Label_940CB7:
 .byte   W24
 .byte   N11 ,Cn2 ,v080
 .byte   W36
 .byte   N11
 .byte   W36
 .byte   PEND 
@  #03 @111   ----------------------------------------
Label_940CBF:
 .byte   N24 ,Gs2 ,v080
 .byte   W36
 .byte   N11 ,Cn2
 .byte   W36
 .byte   N36 ,Gs1
 .byte   W24
 .byte   PEND 
@  #03 @112   ----------------------------------------
Label_940CCA:
 .byte   W12
 .byte   N11 ,Gs1 ,v080
 .byte   W48
 .byte   N11
 .byte   W36
 .byte   PEND 
@  #03 @113   ----------------------------------------
Label_940CD2:
 .byte   N24 ,Gn1 ,v080
 .byte   W48
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #03 @114   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   Cn1 ,v096
 .byte   W36
 .byte   N36 ,Gn2
 .byte   W36
@  #03 @115   ----------------------------------------
 .byte   PATT
  .word Label_9408EC
@  #03 @116   ----------------------------------------
 .byte   PATT
  .word Label_9408F7
@  #03 @117   ----------------------------------------
 .byte   PATT
  .word Label_940905
@  #03 @118   ----------------------------------------
 .byte   PATT
  .word Label_940914
@  #03 @119   ----------------------------------------
 .byte   PATT
  .word Label_9408EC
@  #03 @120   ----------------------------------------
 .byte   PATT
  .word Label_9408F7
@  #03 @121   ----------------------------------------
 .byte   PATT
  .word Label_940929
@  #03 @122   ----------------------------------------
 .byte   GOTO
  .word Label_940931
@  #03 @123   ----------------------------------------
 .byte   N11 ,As2 ,v096
 .byte   W12
 .byte   Fn2 ,v080
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
@  #03 @124   ----------------------------------------
 .byte   PATT
  .word Label_94093E
@  #03 @125   ----------------------------------------
 .byte   PATT
  .word Label_940951
@  #03 @126   ----------------------------------------
 .byte   W12
 .byte   N11 ,Gs1 ,v096
 .byte   W11
 .byte   EOT
 .byte   Cn4
 .byte   N01
 .byte   W24
 .byte   W01
 .byte   N23 ,Gn3
 .byte   W12
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N12 ,Gs2
 .byte   N23 ,Gn4
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
@  #03 @127   ----------------------------------------
 .byte   PATT
  .word Label_940978
@  #03 @128   ----------------------------------------
 .byte   PATT
  .word Label_940991
@  #03 @129   ----------------------------------------
 .byte   PATT
  .word Label_9409A3
@  #03 @130   ----------------------------------------
 .byte   W12
 .byte   N11 ,Gs1 ,v096
 .byte   W11
 .byte   EOT
 .byte   Cn4
 .byte   N01
 .byte   W36
 .byte   W01
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W12
 .byte   Ds2
 .byte   W12
@  #03 @131   ----------------------------------------
 .byte   PATT
  .word Label_9409BE
@  #03 @132   ----------------------------------------
 .byte   PATT
  .word Label_94093E
@  #03 @133   ----------------------------------------
 .byte   PATT
  .word Label_940951
@  #03 @134   ----------------------------------------
 .byte   W12
 .byte   N11 ,Gs1 ,v096
 .byte   W11
 .byte   EOT
 .byte   Cn4
 .byte   N01
 .byte   W24
 .byte   W01
 .byte   N23 ,Gn3
 .byte   W12
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N12 ,Gs2
 .byte   N23 ,Gn4
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
@  #03 @135   ----------------------------------------
 .byte   PATT
  .word Label_940978
@  #03 @136   ----------------------------------------
 .byte   PATT
  .word Label_9409FA
@  #03 @137   ----------------------------------------
 .byte   PATT
  .word Label_9409A3
@  #03 @138   ----------------------------------------
 .byte   W12
 .byte   N11 ,Gs1 ,v096
 .byte   W11
 .byte   EOT
 .byte   As4
 .byte   N01
 .byte   W36
 .byte   W01
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W12
 .byte   Ds2
 .byte   W12
@  #03 @139   ----------------------------------------
 .byte   PATT
  .word Label_940905
@  #03 @140   ----------------------------------------
 .byte   PATT
  .word Label_940A28
@  #03 @141   ----------------------------------------
 .byte   TIE ,Fn2 ,v080
 .byte   W96
@  #03 @142   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N68 ,Ds2
 .byte   W72
@  #03 @143   ----------------------------------------
 .byte   TIE ,Fn2
 .byte   W96
@  #03 @144   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N92 ,Gs2
 .byte   W72
@  #03 @145   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gn2
 .byte   W72
@  #03 @146   ----------------------------------------
 .byte   TIE ,Cs2
 .byte   W96
@  #03 @147   ----------------------------------------
 .byte   W96
@  #03 @148   ----------------------------------------
 .byte   W96
@  #03 @149   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #03 @150   ----------------------------------------
 .byte   PATT
  .word Label_940A52
@  #03 @151   ----------------------------------------
 .byte   PATT
  .word Label_940A63
@  #03 @152   ----------------------------------------
 .byte   PATT
  .word Label_940A72
@  #03 @153   ----------------------------------------
 .byte   PATT
  .word Label_940A85
@  #03 @154   ----------------------------------------
 .byte   PATT
  .word Label_940A98
@  #03 @155   ----------------------------------------
 .byte   PATT
  .word Label_940AAB
@  #03 @156   ----------------------------------------
 .byte   PATT
  .word Label_940AC0
@  #03 @157   ----------------------------------------
 .byte   PATT
  .word Label_940AD1
@  #03 @158   ----------------------------------------
 .byte   PATT
  .word Label_940AE6
@  #03 @159   ----------------------------------------
 .byte   PATT
  .word Label_940A63
@  #03 @160   ----------------------------------------
 .byte   PATT
  .word Label_940A72
@  #03 @161   ----------------------------------------
 .byte   PATT
  .word Label_940A85
@  #03 @162   ----------------------------------------
 .byte   PATT
  .word Label_940A98
@  #03 @163   ----------------------------------------
 .byte   PATT
  .word Label_940B0F
@  #03 @164   ----------------------------------------
 .byte   PATT
  .word Label_940B24
@  #03 @165   ----------------------------------------
 .byte   PATT
  .word Label_940B38
@  #03 @166   ----------------------------------------
 .byte   PATT
  .word Label_940B4D
@  #03 @167   ----------------------------------------
 .byte   PATT
  .word Label_940B5C
@  #03 @168   ----------------------------------------
 .byte   PATT
  .word Label_940B67
@  #03 @169   ----------------------------------------
 .byte   PATT
  .word Label_940B78
@  #03 @170   ----------------------------------------
 .byte   PATT
  .word Label_940B85
@  #03 @171   ----------------------------------------
 .byte   PATT
  .word Label_940B5C
@  #03 @172   ----------------------------------------
 .byte   PATT
  .word Label_940B67
@  #03 @173   ----------------------------------------
 .byte   PATT
  .word Label_940B78
@  #03 @174   ----------------------------------------
 .byte   PATT
  .word Label_940B85
@  #03 @175   ----------------------------------------
 .byte   PATT
  .word Label_940B5C
@  #03 @176   ----------------------------------------
 .byte   PATT
  .word Label_940B67
@  #03 @177   ----------------------------------------
 .byte   PATT
  .word Label_940B78
@  #03 @178   ----------------------------------------
 .byte   PATT
  .word Label_940B85
@  #03 @179   ----------------------------------------
 .byte   PATT
  .word Label_940B5C
@  #03 @180   ----------------------------------------
 .byte   PATT
  .word Label_940B67
@  #03 @181   ----------------------------------------
 .byte   PATT
  .word Label_940B78
@  #03 @182   ----------------------------------------
 .byte   PATT
  .word Label_940BC7
@  #03 @183   ----------------------------------------
 .byte   PATT
  .word Label_940BD2
@  #03 @184   ----------------------------------------
 .byte   W60
 .byte   N23 ,Fn2 ,v096
 .byte   W36
@  #03 @185   ----------------------------------------
 .byte   W60
 .byte   N23
 .byte   W36
@  #03 @186   ----------------------------------------
 .byte   PATT
  .word Label_940BE4
@  #03 @187   ----------------------------------------
 .byte   PATT
  .word Label_940BD2
@  #03 @188   ----------------------------------------
 .byte   W60
 .byte   N23 ,Fn2 ,v096
 .byte   W36
@  #03 @189   ----------------------------------------
 .byte   W60
 .byte   N23
 .byte   W36
@  #03 @190   ----------------------------------------
 .byte   PATT
  .word Label_940BFA
@  #03 @191   ----------------------------------------
 .byte   PATT
  .word Label_940C02
@  #03 @192   ----------------------------------------
 .byte   PATT
  .word Label_940C0D
@  #03 @193   ----------------------------------------
 .byte   PATT
  .word Label_940C15
@  #03 @194   ----------------------------------------
 .byte   PATT
  .word Label_940BFA
@  #03 @195   ----------------------------------------
 .byte   PATT
  .word Label_940C25
@  #03 @196   ----------------------------------------
 .byte   PATT
  .word Label_940C2E
@  #03 @197   ----------------------------------------
 .byte   N23 ,Gn2 ,v080
 .byte   W96
@  #03 @198   ----------------------------------------
 .byte   PATT
  .word Label_940A52
@  #03 @199   ----------------------------------------
 .byte   PATT
  .word Label_940A63
@  #03 @200   ----------------------------------------
 .byte   PATT
  .word Label_940A72
@  #03 @201   ----------------------------------------
 .byte   PATT
  .word Label_940A85
@  #03 @202   ----------------------------------------
 .byte   PATT
  .word Label_940A98
@  #03 @203   ----------------------------------------
 .byte   PATT
  .word Label_940AAB
@  #03 @204   ----------------------------------------
 .byte   PATT
  .word Label_940AC0
@  #03 @205   ----------------------------------------
 .byte   PATT
  .word Label_940AD1
@  #03 @206   ----------------------------------------
 .byte   PATT
  .word Label_940AE6
@  #03 @207   ----------------------------------------
 .byte   PATT
  .word Label_940A63
@  #03 @208   ----------------------------------------
 .byte   PATT
  .word Label_940A72
@  #03 @209   ----------------------------------------
 .byte   PATT
  .word Label_940A85
@  #03 @210   ----------------------------------------
 .byte   PATT
  .word Label_940A98
@  #03 @211   ----------------------------------------
 .byte   PATT
  .word Label_940B0F
@  #03 @212   ----------------------------------------
 .byte   PATT
  .word Label_940B24
@  #03 @213   ----------------------------------------
 .byte   PATT
  .word Label_940B38
@  #03 @214   ----------------------------------------
 .byte   PATT
  .word Label_940C8A
@  #03 @215   ----------------------------------------
 .byte   W96
@  #03 @216   ----------------------------------------
 .byte   W96
@  #03 @217   ----------------------------------------
 .byte   W96
@  #03 @218   ----------------------------------------
 .byte   W96
@  #03 @219   ----------------------------------------
 .byte   W96
@  #03 @220   ----------------------------------------
 .byte   W96
@  #03 @221   ----------------------------------------
 .byte   W96
@  #03 @222   ----------------------------------------
 .byte   PATT
  .word Label_940C98
@  #03 @223   ----------------------------------------
 .byte   PATT
  .word Label_940CA0
@  #03 @224   ----------------------------------------
 .byte   PATT
  .word Label_940CAB
@  #03 @225   ----------------------------------------
 .byte   N24 ,Cn2 ,v080
 .byte   W96
@  #03 @226   ----------------------------------------
 .byte   PATT
  .word Label_940CB7
@  #03 @227   ----------------------------------------
 .byte   PATT
  .word Label_940CBF
@  #03 @228   ----------------------------------------
 .byte   PATT
  .word Label_940CCA
@  #03 @229   ----------------------------------------
 .byte   PATT
  .word Label_940CD2
@  #03 @230   ----------------------------------------
 .byte   N11 ,Gn1 ,v080
 .byte   W24
 .byte   Cn2
 .byte   W11
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

song0A_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   VOICE , 57
 .byte   PAN , c_v+11
 .byte   VOL , 44*song0A_mvl/mxv
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
 .byte   W60
Label_940F58:
 .byte   W36
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
Label_940F73:
 .byte   W24
 .byte   N92 ,Gs2 ,v080
 .byte   N92 ,Cn3
 .byte   W72
 .byte   PEND 
@  #04 @035   ----------------------------------------
 .byte   W96
@  #04 @036   ----------------------------------------
Label_940F7C:
 .byte   W24
 .byte   TIE ,Gn2 ,v080
 .byte   TIE ,Dn3
 .byte   W72
 .byte   PEND 
@  #04 @037   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gn2 ,v062
 .byte   N72 ,Gn2 ,v064
 .byte   W48
 .byte   W01
@  #04 @038   ----------------------------------------
Label_940F8E:
 .byte   W24
 .byte   N92 ,Gn2 ,v080
 .byte   N92 ,Cn3
 .byte   W72
 .byte   PEND 
@  #04 @039   ----------------------------------------
Label_940F96:
 .byte   W24
 .byte   N92 ,Fn2 ,v080
 .byte   N92 ,Bn2
 .byte   W72
 .byte   PEND 
@  #04 @040   ----------------------------------------
Label_940F9E:
 .byte   W24
 .byte   N92 ,As2 ,v080
 .byte   N92 ,Dn3
 .byte   W72
 .byte   PEND 
@  #04 @041   ----------------------------------------
 .byte   W96
@  #04 @042   ----------------------------------------
 .byte   W24
 .byte   Gs1
 .byte   W72
@  #04 @043   ----------------------------------------
 .byte   W96
@  #04 @044   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gn1
 .byte   W72
@  #04 @045   ----------------------------------------
 .byte   N23 ,Cn2
 .byte   W96
@  #04 @046   ----------------------------------------
 .byte   W96
@  #04 @047   ----------------------------------------
 .byte   W96
@  #04 @048   ----------------------------------------
 .byte   W96
@  #04 @049   ----------------------------------------
 .byte   W96
@  #04 @050   ----------------------------------------
 .byte   W96
@  #04 @051   ----------------------------------------
 .byte   W96
@  #04 @052   ----------------------------------------
 .byte   W96
@  #04 @053   ----------------------------------------
 .byte   W96
@  #04 @054   ----------------------------------------
 .byte   W96
@  #04 @055   ----------------------------------------
 .byte   W96
@  #04 @056   ----------------------------------------
 .byte   W96
@  #04 @057   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #04 @064   ----------------------------------------
 .byte   W96
@  #04 @065   ----------------------------------------
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
 .byte   PATT
  .word Label_940F73
@  #04 @083   ----------------------------------------
 .byte   W96
@  #04 @084   ----------------------------------------
 .byte   PATT
  .word Label_940F7C
@  #04 @085   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gn2 ,v062
 .byte   N72 ,Gn2 ,v064
 .byte   W48
 .byte   W01
@  #04 @086   ----------------------------------------
 .byte   PATT
  .word Label_940F8E
@  #04 @087   ----------------------------------------
 .byte   PATT
  .word Label_940F96
@  #04 @088   ----------------------------------------
 .byte   PATT
  .word Label_940F9E
@  #04 @089   ----------------------------------------
 .byte   W96
@  #04 @090   ----------------------------------------
 .byte   W24
 .byte   N92 ,Gs1 ,v080
 .byte   W72
@  #04 @091   ----------------------------------------
 .byte   W96
@  #04 @092   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gn1
 .byte   W72
@  #04 @093   ----------------------------------------
 .byte   N23 ,Cn2
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
 .byte   W96
@  #04 @106   ----------------------------------------
 .byte   W96
@  #04 @107   ----------------------------------------
 .byte   W96
@  #04 @108   ----------------------------------------
 .byte   W96
@  #04 @109   ----------------------------------------
 .byte   W96
@  #04 @110   ----------------------------------------
 .byte   W96
@  #04 @111   ----------------------------------------
 .byte   W96
@  #04 @112   ----------------------------------------
 .byte   W96
@  #04 @113   ----------------------------------------
Label_94101B:
 .byte   W24
 .byte   N92 ,Gn2 ,v080
 .byte   N92 ,Dn3
 .byte   W72
 .byte   PEND 
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
 .byte   W60
 .byte   GOTO
  .word Label_940F58
@  #04 @122   ----------------------------------------
 .byte   W36
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
 .byte   W96
@  #04 @134   ----------------------------------------
 .byte   W96
@  #04 @135   ----------------------------------------
 .byte   W96
@  #04 @136   ----------------------------------------
 .byte   W96
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
 .byte   PATT
  .word Label_940F73
@  #04 @149   ----------------------------------------
 .byte   W96
@  #04 @150   ----------------------------------------
 .byte   PATT
  .word Label_940F7C
@  #04 @151   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gn2 ,v062
 .byte   N72 ,Gn2 ,v064
 .byte   W48
 .byte   W01
@  #04 @152   ----------------------------------------
 .byte   PATT
  .word Label_940F8E
@  #04 @153   ----------------------------------------
 .byte   PATT
  .word Label_940F96
@  #04 @154   ----------------------------------------
 .byte   PATT
  .word Label_940F9E
@  #04 @155   ----------------------------------------
 .byte   W96
@  #04 @156   ----------------------------------------
 .byte   W24
 .byte   N92 ,Gs1 ,v080
 .byte   W72
@  #04 @157   ----------------------------------------
 .byte   W96
@  #04 @158   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gn1
 .byte   W72
@  #04 @159   ----------------------------------------
 .byte   N23 ,Cn2
 .byte   W96
@  #04 @160   ----------------------------------------
 .byte   W96
@  #04 @161   ----------------------------------------
 .byte   W96
@  #04 @162   ----------------------------------------
 .byte   W96
@  #04 @163   ----------------------------------------
 .byte   W96
@  #04 @164   ----------------------------------------
 .byte   W96
@  #04 @165   ----------------------------------------
 .byte   W96
@  #04 @166   ----------------------------------------
 .byte   W96
@  #04 @167   ----------------------------------------
 .byte   W96
@  #04 @168   ----------------------------------------
 .byte   W96
@  #04 @169   ----------------------------------------
 .byte   W96
@  #04 @170   ----------------------------------------
 .byte   W96
@  #04 @171   ----------------------------------------
 .byte   W96
@  #04 @172   ----------------------------------------
 .byte   W96
@  #04 @173   ----------------------------------------
 .byte   W96
@  #04 @174   ----------------------------------------
 .byte   W96
@  #04 @175   ----------------------------------------
 .byte   W96
@  #04 @176   ----------------------------------------
 .byte   W96
@  #04 @177   ----------------------------------------
 .byte   W96
@  #04 @178   ----------------------------------------
 .byte   W96
@  #04 @179   ----------------------------------------
 .byte   W96
@  #04 @180   ----------------------------------------
 .byte   W96
@  #04 @181   ----------------------------------------
 .byte   W96
@  #04 @182   ----------------------------------------
 .byte   W96
@  #04 @183   ----------------------------------------
 .byte   W96
@  #04 @184   ----------------------------------------
 .byte   W96
@  #04 @185   ----------------------------------------
 .byte   W96
@  #04 @186   ----------------------------------------
 .byte   W96
@  #04 @187   ----------------------------------------
 .byte   W96
@  #04 @188   ----------------------------------------
 .byte   W96
@  #04 @189   ----------------------------------------
 .byte   W96
@  #04 @190   ----------------------------------------
 .byte   W96
@  #04 @191   ----------------------------------------
 .byte   W96
@  #04 @192   ----------------------------------------
 .byte   W96
@  #04 @193   ----------------------------------------
 .byte   W96
@  #04 @194   ----------------------------------------
 .byte   W96
@  #04 @195   ----------------------------------------
 .byte   W96
@  #04 @196   ----------------------------------------
 .byte   PATT
  .word Label_940F73
@  #04 @197   ----------------------------------------
 .byte   W96
@  #04 @198   ----------------------------------------
 .byte   PATT
  .word Label_940F7C
@  #04 @199   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gn2 ,v062
 .byte   N72 ,Gn2 ,v064
 .byte   W48
 .byte   W01
@  #04 @200   ----------------------------------------
 .byte   PATT
  .word Label_940F8E
@  #04 @201   ----------------------------------------
 .byte   PATT
  .word Label_940F96
@  #04 @202   ----------------------------------------
 .byte   PATT
  .word Label_940F9E
@  #04 @203   ----------------------------------------
 .byte   W96
@  #04 @204   ----------------------------------------
 .byte   W24
 .byte   N92 ,Gs1 ,v080
 .byte   W72
@  #04 @205   ----------------------------------------
 .byte   W96
@  #04 @206   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gn1
 .byte   W72
@  #04 @207   ----------------------------------------
 .byte   N23 ,Cn2
 .byte   W96
@  #04 @208   ----------------------------------------
 .byte   W96
@  #04 @209   ----------------------------------------
 .byte   W96
@  #04 @210   ----------------------------------------
 .byte   W96
@  #04 @211   ----------------------------------------
 .byte   W96
@  #04 @212   ----------------------------------------
 .byte   W96
@  #04 @213   ----------------------------------------
 .byte   W96
@  #04 @214   ----------------------------------------
 .byte   W96
@  #04 @215   ----------------------------------------
 .byte   W96
@  #04 @216   ----------------------------------------
 .byte   W96
@  #04 @217   ----------------------------------------
 .byte   W96
@  #04 @218   ----------------------------------------
 .byte   W96
@  #04 @219   ----------------------------------------
 .byte   W96
@  #04 @220   ----------------------------------------
 .byte   W96
@  #04 @221   ----------------------------------------
 .byte   W96
@  #04 @222   ----------------------------------------
 .byte   W96
@  #04 @223   ----------------------------------------
 .byte   W96
@  #04 @224   ----------------------------------------
 .byte   W96
@  #04 @225   ----------------------------------------
 .byte   W96
@  #04 @226   ----------------------------------------
 .byte   W96
@  #04 @227   ----------------------------------------
 .byte   PATT
  .word Label_94101B
@  #04 @228   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

song0A_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   VOICE , 56
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W24
 .byte   TIE ,Cn1 ,v096
 .byte   W72
@  #05 @001   ----------------------------------------
 .byte   W96
@  #05 @002   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   N80 ,Gs0
 .byte   W84
@  #05 @003   ----------------------------------------
 .byte   TIE ,As0
 .byte   W96
@  #05 @004   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @005   ----------------------------------------
 .byte   W96
@  #05 @006   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @007   ----------------------------------------
 .byte   As0
 .byte   W24
 .byte   EOT
 .byte   Gs0
 .byte   W36
Label_94111F:
 .byte   W36
@  #05 @008   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As0
 .byte   N01 ,As0 ,v096
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @009   ----------------------------------------
 .byte   W96
@  #05 @010   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @011   ----------------------------------------
 .byte   As0
 .byte   W96
@  #05 @012   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0 ,v034
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @013   ----------------------------------------
 .byte   W96
@  #05 @014   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @015   ----------------------------------------
 .byte   As0
 .byte   W96
@  #05 @016   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0 ,v034
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @017   ----------------------------------------
 .byte   W96
@  #05 @018   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @019   ----------------------------------------
 .byte   As0
 .byte   W96
@  #05 @020   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0 ,v034
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @021   ----------------------------------------
 .byte   W96
@  #05 @022   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @023   ----------------------------------------
 .byte   As0
 .byte   W96
@  #05 @024   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0 ,v034
 .byte   W01
 .byte   N68 ,Fn0 ,v080
 .byte   W72
@  #05 @025   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #05 @026   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N68 ,Gs0
 .byte   W72
@  #05 @027   ----------------------------------------
 .byte   TIE ,As0
 .byte   W96
@  #05 @028   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N92 ,Fn0
 .byte   W72
@  #05 @029   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gn0
 .byte   W72
@  #05 @030   ----------------------------------------
 .byte   TIE ,Cs1
 .byte   W96
@  #05 @031   ----------------------------------------
 .byte   W96
@  #05 @032   ----------------------------------------
 .byte   W96
@  #05 @033   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #05 @034   ----------------------------------------
Label_941195:
 .byte   W24
 .byte   N32 ,Gs0 ,v096
 .byte   W36
 .byte   N32
 .byte   W36
 .byte   PEND 
@  #05 @035   ----------------------------------------
Label_94119D:
 .byte   N23 ,Gs0 ,v096
 .byte   W48
 .byte   N68
 .byte   W48
 .byte   PEND 
@  #05 @036   ----------------------------------------
Label_9411A4:
 .byte   W24
 .byte   N32 ,Gn0 ,v096
 .byte   W36
 .byte   N32
 .byte   W36
 .byte   PEND 
@  #05 @037   ----------------------------------------
Label_9411AC:
 .byte   N23 ,Cn1 ,v096
 .byte   W48
 .byte   N68
 .byte   W48
 .byte   PEND 
@  #05 @038   ----------------------------------------
 .byte   W24
 .byte   N92 ,Fn0
 .byte   W72
@  #05 @039   ----------------------------------------
 .byte   W24
 .byte   Gn0
 .byte   W72
@  #05 @040   ----------------------------------------
 .byte   W24
 .byte   N68 ,Cn1
 .byte   W72
@  #05 @041   ----------------------------------------
Label_9411BE:
 .byte   N44 ,Dn1 ,v096
 .byte   W48
 .byte   N23 ,Ds1
 .byte   W48
 .byte   PEND 
@  #05 @042   ----------------------------------------
Label_9411C6:
 .byte   N24 ,As0 ,v096
 .byte   W24
 .byte   N32 ,Gs0
 .byte   W36
 .byte   N32
 .byte   W36
 .byte   PEND 
@  #05 @043   ----------------------------------------
 .byte   PATT
  .word Label_94119D
@  #05 @044   ----------------------------------------
 .byte   PATT
  .word Label_9411A4
@  #05 @045   ----------------------------------------
 .byte   PATT
  .word Label_9411AC
@  #05 @046   ----------------------------------------
 .byte   W24
 .byte   N92 ,Fn0 ,v096
 .byte   W72
@  #05 @047   ----------------------------------------
 .byte   W24
 .byte   Gn0
 .byte   W72
@  #05 @048   ----------------------------------------
Label_9411E7:
 .byte   W24
 .byte   TIE ,Cn1 ,v096
 .byte   W72
 .byte   PEND 
@  #05 @049   ----------------------------------------
 .byte   W96
@  #05 @050   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N23 ,Gs0 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
@  #05 @051   ----------------------------------------
Label_9411FA:
 .byte   N23 ,Gs0 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #05 @052   ----------------------------------------
Label_941205:
 .byte   N11 ,Gs0 ,v080
 .byte   W12
 .byte   N12 ,Cn1 ,v096
 .byte   W12
 .byte   N23 ,Cn1 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #05 @053   ----------------------------------------
Label_941216:
 .byte   N24 ,Gn0 ,v096
 .byte   W24
 .byte   N23 ,Gn0 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #05 @054   ----------------------------------------
Label_941223:
 .byte   N23 ,Gn0 ,v080
 .byte   W24
 .byte   Gs0
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #05 @055   ----------------------------------------
 .byte   PATT
  .word Label_9411FA
@  #05 @056   ----------------------------------------
 .byte   PATT
  .word Label_941205
@  #05 @057   ----------------------------------------
 .byte   PATT
  .word Label_941216
@  #05 @058   ----------------------------------------
Label_94123D:
 .byte   N23 ,Gn0 ,v080
 .byte   W24
 .byte   TIE ,Gs0
 .byte   W72
 .byte   PEND 
@  #05 @059   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N32 ,As0
 .byte   W24
@  #05 @060   ----------------------------------------
 .byte   W12
 .byte   N80 ,Cn1
 .byte   W84
@  #05 @061   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #05 @062   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W72
@  #05 @063   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N32 ,As0
 .byte   W24
@  #05 @064   ----------------------------------------
Label_941263:
 .byte   W12
 .byte   TIE ,Cn1 ,v080
 .byte   W84
 .byte   PEND 
@  #05 @065   ----------------------------------------
 .byte   Gn0
 .byte   W96
@  #05 @066   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   EOT
 .byte   Cn1
 .byte   W01
 .byte   TIE ,Gs0 ,v096
 .byte   W72
@  #05 @067   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N32 ,As0
 .byte   W24
@  #05 @068   ----------------------------------------
 .byte   W12
 .byte   N80 ,Cn1
 .byte   W84
@  #05 @069   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #05 @070   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W72
@  #05 @071   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N32 ,As0
 .byte   W24
@  #05 @072   ----------------------------------------
Label_941292:
 .byte   W12
 .byte   TIE ,Cn1 ,v096
 .byte   W84
 .byte   PEND 
@  #05 @073   ----------------------------------------
 .byte   Gn0
 .byte   W96
@  #05 @074   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   EOT
 .byte   Cn1
 .byte   W01
 .byte   N23 ,Fn1 ,v080
 .byte   W36
 .byte   N23
 .byte   W36
@  #05 @075   ----------------------------------------
Label_9412A5:
 .byte   N23 ,Fn1 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W36
 .byte   N23
 .byte   W12
 .byte   PEND 
@  #05 @076   ----------------------------------------
Label_9412B0:
 .byte   W24
 .byte   N23 ,Cn1 ,v080
 .byte   W36
 .byte   N23
 .byte   W36
 .byte   PEND 
@  #05 @077   ----------------------------------------
Label_9412B8:
 .byte   N23 ,Cn1 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W36
 .byte   N23
 .byte   W12
 .byte   PEND 
@  #05 @078   ----------------------------------------
Label_9412C3:
 .byte   W24
 .byte   N23 ,Fn1 ,v080
 .byte   W36
 .byte   N23
 .byte   W36
 .byte   PEND 
@  #05 @079   ----------------------------------------
Label_9412CB:
 .byte   N23 ,Fn1 ,v080
 .byte   W48
 .byte   N23
 .byte   W36
 .byte   N23
 .byte   W12
 .byte   PEND 
@  #05 @080   ----------------------------------------
Label_9412D4:
 .byte   W24
 .byte   N23 ,Gn1 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #05 @081   ----------------------------------------
 .byte   N23
 .byte   W96
@  #05 @082   ----------------------------------------
 .byte   PATT
  .word Label_941195
@  #05 @083   ----------------------------------------
 .byte   PATT
  .word Label_94119D
@  #05 @084   ----------------------------------------
 .byte   PATT
  .word Label_9411A4
@  #05 @085   ----------------------------------------
 .byte   PATT
  .word Label_9411AC
@  #05 @086   ----------------------------------------
 .byte   W24
 .byte   N92 ,Fn0 ,v096
 .byte   W72
@  #05 @087   ----------------------------------------
 .byte   W24
 .byte   Gn0
 .byte   W72
@  #05 @088   ----------------------------------------
 .byte   W24
 .byte   N68 ,Cn1
 .byte   W72
@  #05 @089   ----------------------------------------
 .byte   PATT
  .word Label_9411BE
@  #05 @090   ----------------------------------------
 .byte   PATT
  .word Label_9411C6
@  #05 @091   ----------------------------------------
 .byte   PATT
  .word Label_94119D
@  #05 @092   ----------------------------------------
 .byte   PATT
  .word Label_9411A4
@  #05 @093   ----------------------------------------
 .byte   PATT
  .word Label_9411AC
@  #05 @094   ----------------------------------------
 .byte   W24
 .byte   N92 ,Fn0 ,v096
 .byte   W72
@  #05 @095   ----------------------------------------
 .byte   W24
 .byte   Gn0
 .byte   W72
@  #05 @096   ----------------------------------------
 .byte   PATT
  .word Label_9411E7
@  #05 @097   ----------------------------------------
 .byte   W96
@  #05 @098   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn1
 .byte   N01 ,Cn1 ,v096
 .byte   W72
 .byte   W01
@  #05 @099   ----------------------------------------
 .byte   W96
@  #05 @100   ----------------------------------------
 .byte   W96
@  #05 @101   ----------------------------------------
 .byte   W96
@  #05 @102   ----------------------------------------
 .byte   W96
@  #05 @103   ----------------------------------------
 .byte   W96
@  #05 @104   ----------------------------------------
 .byte   W96
@  #05 @105   ----------------------------------------
 .byte   W96
@  #05 @106   ----------------------------------------
Label_941336:
 .byte   W24
 .byte   TIE ,Gs0 ,v064
 .byte   W72
 .byte   PEND 
@  #05 @107   ----------------------------------------
 .byte   W96
@  #05 @108   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   N80 ,Gn0
 .byte   W84
@  #05 @109   ----------------------------------------
 .byte   TIE ,Cn1
 .byte   W96
@  #05 @110   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Fn0
 .byte   W72
@  #05 @111   ----------------------------------------
 .byte   W96
@  #05 @112   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   N80 ,Gs0
 .byte   W84
@  #05 @113   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #05 @114   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Cn1 ,v096
 .byte   W72
@  #05 @115   ----------------------------------------
 .byte   W96
@  #05 @116   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @117   ----------------------------------------
 .byte   As0
 .byte   W96
@  #05 @118   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0 ,v034
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @119   ----------------------------------------
 .byte   W96
@  #05 @120   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @121   ----------------------------------------
 .byte   As0
 .byte   W24
 .byte   EOT
 .byte   Gs0
 .byte   W36
 .byte   GOTO
  .word Label_94111F
@  #05 @122   ----------------------------------------
 .byte   W36
 .byte   W23
 .byte   EOT
 .byte   As0
 .byte   N01 ,As0 ,v096
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @123   ----------------------------------------
 .byte   W96
@  #05 @124   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @125   ----------------------------------------
 .byte   As0
 .byte   W96
@  #05 @126   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0 ,v034
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @127   ----------------------------------------
 .byte   W96
@  #05 @128   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @129   ----------------------------------------
 .byte   As0
 .byte   W96
@  #05 @130   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0 ,v034
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @131   ----------------------------------------
 .byte   W96
@  #05 @132   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @133   ----------------------------------------
 .byte   As0
 .byte   W96
@  #05 @134   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0 ,v034
 .byte   W01
 .byte   TIE ,Cn1
 .byte   W72
@  #05 @135   ----------------------------------------
 .byte   W96
@  #05 @136   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @137   ----------------------------------------
 .byte   As0
 .byte   W96
@  #05 @138   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs0 ,v034
 .byte   W01
 .byte   N68 ,Fn0 ,v080
 .byte   W72
@  #05 @139   ----------------------------------------
 .byte   TIE ,Gn0
 .byte   W96
@  #05 @140   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N68 ,Gs0
 .byte   W72
@  #05 @141   ----------------------------------------
 .byte   TIE ,As0
 .byte   W96
@  #05 @142   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N92 ,Fn0
 .byte   W72
@  #05 @143   ----------------------------------------
 .byte   W24
 .byte   N68 ,Gn0
 .byte   W72
@  #05 @144   ----------------------------------------
 .byte   TIE ,Cs1
 .byte   W96
@  #05 @145   ----------------------------------------
 .byte   W96
@  #05 @146   ----------------------------------------
 .byte   W96
@  #05 @147   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #05 @148   ----------------------------------------
 .byte   PATT
  .word Label_941195
@  #05 @149   ----------------------------------------
 .byte   PATT
  .word Label_94119D
@  #05 @150   ----------------------------------------
 .byte   PATT
  .word Label_9411A4
@  #05 @151   ----------------------------------------
 .byte   PATT
  .word Label_9411AC
@  #05 @152   ----------------------------------------
 .byte   W24
 .byte   N92 ,Fn0 ,v096
 .byte   W72
@  #05 @153   ----------------------------------------
 .byte   W24
 .byte   Gn0
 .byte   W72
@  #05 @154   ----------------------------------------
 .byte   W24
 .byte   N68 ,Cn1
 .byte   W72
@  #05 @155   ----------------------------------------
 .byte   PATT
  .word Label_9411BE
@  #05 @156   ----------------------------------------
 .byte   PATT
  .word Label_9411C6
@  #05 @157   ----------------------------------------
 .byte   PATT
  .word Label_94119D
@  #05 @158   ----------------------------------------
 .byte   PATT
  .word Label_9411A4
@  #05 @159   ----------------------------------------
 .byte   PATT
  .word Label_9411AC
@  #05 @160   ----------------------------------------
 .byte   W24
 .byte   N92 ,Fn0 ,v096
 .byte   W72
@  #05 @161   ----------------------------------------
 .byte   W24
 .byte   Gn0
 .byte   W72
@  #05 @162   ----------------------------------------
 .byte   PATT
  .word Label_9411E7
@  #05 @163   ----------------------------------------
 .byte   W96
@  #05 @164   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn1
 .byte   N01 ,Cn1 ,v096
 .byte   W01
 .byte   N23 ,Gs0 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
@  #05 @165   ----------------------------------------
 .byte   PATT
  .word Label_9411FA
@  #05 @166   ----------------------------------------
 .byte   PATT
  .word Label_941205
@  #05 @167   ----------------------------------------
 .byte   PATT
  .word Label_941216
@  #05 @168   ----------------------------------------
 .byte   PATT
  .word Label_941223
@  #05 @169   ----------------------------------------
 .byte   PATT
  .word Label_9411FA
@  #05 @170   ----------------------------------------
 .byte   PATT
  .word Label_941205
@  #05 @171   ----------------------------------------
 .byte   PATT
  .word Label_941216
@  #05 @172   ----------------------------------------
 .byte   PATT
  .word Label_94123D
@  #05 @173   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Gs0
 .byte   N01 ,Gs0 ,v080
 .byte   W01
 .byte   N32 ,As0
 .byte   W24
@  #05 @174   ----------------------------------------
 .byte   PATT
  .word Label_941263
@  #05 @175   ----------------------------------------
 .byte   TIE ,Gn0 ,v080
 .byte   W96
@  #05 @176   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   EOT
 .byte   Cn1
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W72
@  #05 @177   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N32 ,As0
 .byte   W24
@  #05 @178   ----------------------------------------
 .byte   PATT
  .word Label_941263
@  #05 @179   ----------------------------------------
 .byte   TIE ,Gn0 ,v080
 .byte   W96
@  #05 @180   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   EOT
 .byte   Cn1
 .byte   W01
 .byte   TIE ,Gs0 ,v096
 .byte   W72
@  #05 @181   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N32 ,As0
 .byte   W24
@  #05 @182   ----------------------------------------
 .byte   PATT
  .word Label_941292
@  #05 @183   ----------------------------------------
 .byte   TIE ,Gn0 ,v096
 .byte   W96
@  #05 @184   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   EOT
 .byte   Cn1
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W72
@  #05 @185   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   N32 ,As0
 .byte   W24
@  #05 @186   ----------------------------------------
 .byte   PATT
  .word Label_941292
@  #05 @187   ----------------------------------------
 .byte   TIE ,Gn0 ,v096
 .byte   W96
@  #05 @188   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   EOT
 .byte   Cn1
 .byte   W01
 .byte   N23 ,Fn1 ,v080
 .byte   W36
 .byte   N23
 .byte   W36
@  #05 @189   ----------------------------------------
 .byte   PATT
  .word Label_9412A5
@  #05 @190   ----------------------------------------
 .byte   PATT
  .word Label_9412B0
@  #05 @191   ----------------------------------------
 .byte   PATT
  .word Label_9412B8
@  #05 @192   ----------------------------------------
 .byte   PATT
  .word Label_9412C3
@  #05 @193   ----------------------------------------
 .byte   PATT
  .word Label_9412CB
@  #05 @194   ----------------------------------------
 .byte   PATT
  .word Label_9412D4
@  #05 @195   ----------------------------------------
 .byte   N23 ,Gn1 ,v080
 .byte   W96
@  #05 @196   ----------------------------------------
 .byte   PATT
  .word Label_941195
@  #05 @197   ----------------------------------------
 .byte   PATT
  .word Label_94119D
@  #05 @198   ----------------------------------------
 .byte   PATT
  .word Label_9411A4
@  #05 @199   ----------------------------------------
 .byte   PATT
  .word Label_9411AC
@  #05 @200   ----------------------------------------
 .byte   W24
 .byte   N92 ,Fn0 ,v096
 .byte   W72
@  #05 @201   ----------------------------------------
 .byte   W24
 .byte   Gn0
 .byte   W72
@  #05 @202   ----------------------------------------
 .byte   W24
 .byte   N68 ,Cn1
 .byte   W72
@  #05 @203   ----------------------------------------
 .byte   PATT
  .word Label_9411BE
@  #05 @204   ----------------------------------------
 .byte   PATT
  .word Label_9411C6
@  #05 @205   ----------------------------------------
 .byte   PATT
  .word Label_94119D
@  #05 @206   ----------------------------------------
 .byte   PATT
  .word Label_9411A4
@  #05 @207   ----------------------------------------
 .byte   PATT
  .word Label_9411AC
@  #05 @208   ----------------------------------------
 .byte   W24
 .byte   N92 ,Fn0 ,v096
 .byte   W72
@  #05 @209   ----------------------------------------
 .byte   W24
 .byte   Gn0
 .byte   W72
@  #05 @210   ----------------------------------------
 .byte   PATT
  .word Label_9411E7
@  #05 @211   ----------------------------------------
 .byte   W96
@  #05 @212   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn1
 .byte   N01 ,Cn1 ,v096
 .byte   W72
 .byte   W01
@  #05 @213   ----------------------------------------
 .byte   W96
@  #05 @214   ----------------------------------------
 .byte   W96
@  #05 @215   ----------------------------------------
 .byte   W96
@  #05 @216   ----------------------------------------
 .byte   W96
@  #05 @217   ----------------------------------------
 .byte   W96
@  #05 @218   ----------------------------------------
 .byte   W96
@  #05 @219   ----------------------------------------
 .byte   W96
@  #05 @220   ----------------------------------------
 .byte   PATT
  .word Label_941336
@  #05 @221   ----------------------------------------
 .byte   W96
@  #05 @222   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Gs0
 .byte   N01 ,Gs0 ,v064
 .byte   W01
 .byte   TIE ,Gn0
 .byte   W84
@  #05 @223   ----------------------------------------
 .byte   Cn1
 .byte   W96
@  #05 @224   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gn0 ,v036
 .byte   W01
 .byte   TIE ,Fn0
 .byte   W72
@  #05 @225   ----------------------------------------
 .byte   W96
@  #05 @226   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gs0
 .byte   W84
@  #05 @227   ----------------------------------------
 .byte   Gn0
 .byte   W96
@  #05 @228   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   EOT
 .byte   Gs0
 .byte   W01
 .byte   N11 ,Cn1
 .byte   W11
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

song0A_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   VOICE , 46
 .byte   PAN , c_v+9
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   W24
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N92 ,As2
 .byte   N92 ,Dn3
 .byte   N92 ,Fn3
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @001   ----------------------------------------
 .byte   W96
@  #06 @002   ----------------------------------------
Label_9415A3:
 .byte   W12
 .byte   N80 ,Gs1 ,v080
 .byte   N80 ,Ds2
 .byte   N80 ,Cn3
 .byte   W84
 .byte   PEND 
@  #06 @003   ----------------------------------------
Label_9415AD:
 .byte   TIE ,As1 ,v080
 .byte   TIE ,Fn2
 .byte   N92 ,Dn3
 .byte   W96
 .byte   PEND 
@  #06 @004   ----------------------------------------
Label_9415B6:
 .byte   N11 ,Gn4 ,v080
 .byte   W12
 .byte   As4
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Gn1
 .byte   N32 ,Cn2
 .byte   N44 ,Dn5
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @005   ----------------------------------------
Label_9415D3:
 .byte   N11 ,Ds5 ,v080
 .byte   W12
 .byte   N80 ,Cn5
 .byte   W84
 .byte   PEND 
@  #06 @006   ----------------------------------------
Label_9415DB:
 .byte   W12
 .byte   N80 ,Gs1 ,v080
 .byte   N80 ,Ds2
 .byte   N32 ,Cn3
 .byte   W36
 .byte   N05 ,Gn4
 .byte   W06
 .byte   N06 ,Cn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   N23 ,Gn5
 .byte   W24
 .byte   PEND 
@  #06 @007   ----------------------------------------
Label_9415F2:
 .byte   TIE ,As1 ,v080
 .byte   TIE ,Fn2
 .byte   N11 ,Fn5
 .byte   W12
 .byte   N12 ,Ds5
 .byte   W12
 .byte   N05 ,Dn5
 .byte   W06
 .byte   N06 ,Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
Label_94160C:
 .byte   N11 ,Dn4 ,v080
 .byte   W36
@  #06 @008   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N92 ,As2
 .byte   N92 ,Dn3
 .byte   N92 ,Fn3
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @009   ----------------------------------------
 .byte   W96
@  #06 @010   ----------------------------------------
Label_94162A:
 .byte   W12
 .byte   N12 ,Gs1 ,v080
 .byte   N12 ,Ds2
 .byte   N12 ,Cn3
 .byte   W84
 .byte   PEND 
@  #06 @011   ----------------------------------------
Label_941634:
 .byte   TIE ,As1 ,v080
 .byte   TIE ,Fn2
 .byte   TIE ,Dn3
 .byte   W96
 .byte   PEND 
@  #06 @012   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   Dn3
 .byte   N01 ,As1 ,v056
 .byte   N01 ,Dn3
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N68 ,As2
 .byte   N68 ,Dn3
 .byte   N68 ,Fn3
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @013   ----------------------------------------
Label_941659:
 .byte   W12
 .byte   N11 ,Dn5 ,v080
 .byte   W12
 .byte   Ds5
 .byte   W60
 .byte   N12 ,Dn5
 .byte   W12
 .byte   PEND 
@  #06 @014   ----------------------------------------
Label_941664:
 .byte   N12 ,Cn5 ,v080
 .byte   W12
 .byte   N80 ,Gs1
 .byte   N80 ,Ds2
 .byte   N11 ,As4
 .byte   W72
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @015   ----------------------------------------
Label_941672:
 .byte   TIE ,As1 ,v080
 .byte   TIE ,Fn2
 .byte   N11 ,Gs4
 .byte   W12
 .byte   N12 ,Gn4
 .byte   W12
 .byte   N11 ,Fn4
 .byte   W12
 .byte   N12 ,Gn4
 .byte   W12
 .byte   N11
 .byte   W48
 .byte   PEND 
@  #06 @016   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N92 ,As2
 .byte   N92 ,Dn3
 .byte   N92 ,Fn3
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @017   ----------------------------------------
 .byte   W96
@  #06 @018   ----------------------------------------
 .byte   PATT
  .word Label_94162A
@  #06 @019   ----------------------------------------
Label_9416A5:
 .byte   TIE ,As1 ,v080
 .byte   TIE ,Fn2
 .byte   W96
 .byte   PEND 
@  #06 @020   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N92 ,As2
 .byte   N92 ,Dn3
 .byte   N92 ,Fn3
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @021   ----------------------------------------
Label_9416C5:
 .byte   W48
 .byte   N11 ,Gn3 ,v080
 .byte   W12
 .byte   N12 ,Gs4
 .byte   W12
 .byte   N23 ,Gn4
 .byte   W24
 .byte   PEND 
@  #06 @022   ----------------------------------------
Label_9416D1:
 .byte   N11 ,Fn4 ,v080
 .byte   W12
 .byte   N80 ,Gs1
 .byte   N80 ,Ds2
 .byte   N44 ,Ds4
 .byte   W48
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N12 ,Cn4
 .byte   W12
 .byte   N08 ,Ds3
 .byte   W12
 .byte   PEND 
@  #06 @023   ----------------------------------------
Label_9416E6:
 .byte   TIE ,As1 ,v080
 .byte   TIE ,Fn2
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N23 ,As3
 .byte   W24
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Ds3
 .byte   W12
 .byte   N56 ,Dn3
 .byte   W36
 .byte   PEND 
@  #06 @024   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N11 ,Fn1
 .byte   W12
 .byte   N12 ,Cn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N32 ,Gs2
 .byte   W36
@  #06 @025   ----------------------------------------
 .byte   N11 ,Gn1
 .byte   W12
 .byte   N12 ,Dn2
 .byte   W12
 .byte   N11 ,Gn2 ,v080
 .byte   W12
 .byte   N80 ,As2
 .byte   W60
@  #06 @026   ----------------------------------------
Label_94171B:
 .byte   W24
 .byte   N11 ,Cn2 ,v080
 .byte   W12
 .byte   N12 ,Ds2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   N32 ,Cn3
 .byte   W36
 .byte   PEND 
@  #06 @027   ----------------------------------------
Label_941729:
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N12 ,Fn2
 .byte   W12
 .byte   N11 ,Cn3
 .byte   W12
 .byte   N80 ,Dn3
 .byte   W60
 .byte   PEND 
@  #06 @028   ----------------------------------------
 .byte   W12
 .byte   N11 ,As4
 .byte   W12
 .byte   N12 ,Gs4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Gn3
 .byte   W12
@  #06 @029   ----------------------------------------
Label_941748:
 .byte   N12 ,Ds3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N11 ,Fn4
 .byte   W12
 .byte   N12 ,Dn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
@  #06 @030   ----------------------------------------
Label_94175D:
 .byte   TIE ,Cn3 ,v080
 .byte   TIE ,Cn4
 .byte   W96
 .byte   PEND 
@  #06 @031   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn3 ,v072
 .byte   N01 ,Cn3 ,v072
 .byte   W01
 .byte   N44 ,Cn4 ,v080
 .byte   W48
 .byte   N11 ,Fn4
 .byte   W12
 .byte   N12 ,Cn4
 .byte   W12
@  #06 @032   ----------------------------------------
Label_941776:
 .byte   N12 ,Fn4 ,v080
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N92 ,Fn4
 .byte   N92 ,Gn4
 .byte   N92 ,Cn5
 .byte   W72
 .byte   PEND 
@  #06 @033   ----------------------------------------
 .byte   W96
@  #06 @034   ----------------------------------------
Label_941785:
 .byte   W24
 .byte   N32 ,Gs1 ,v064
 .byte   N32 ,Ds2
 .byte   W24
 .byte   N23 ,As2
 .byte   N11 ,As4
 .byte   W12
 .byte   N32 ,Gs1
 .byte   N32 ,Ds2
 .byte   N44 ,Ds5
 .byte   W12
 .byte   N23 ,Cn3
 .byte   W24
 .byte   PEND 
@  #06 @035   ----------------------------------------
Label_94179C:
 .byte   N08 ,Gs1 ,v064
 .byte   N44 ,Fn2
 .byte   W12
 .byte   N11 ,Ds4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   N08 ,Ds5
 .byte   W12
 .byte   N68 ,Gs1
 .byte   N11 ,Gn2
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Fn2
 .byte   N11 ,As3
 .byte   W12
 .byte   N44 ,Ds3
 .byte   W12
 .byte   N11 ,As2
 .byte   W12
 .byte   PEND 
@  #06 @036   ----------------------------------------
Label_9417BC:
 .byte   N12 ,Fn2 ,v064
 .byte   W12
 .byte   N08 ,Ds2
 .byte   W12
 .byte   N32 ,Gn1
 .byte   N23 ,Dn2
 .byte   W24
 .byte   N08 ,Fn2
 .byte   N11 ,As4
 .byte   W12
 .byte   N32 ,Gn1
 .byte   N44 ,Ds5
 .byte   W12
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N08 ,Fn2
 .byte   W12
 .byte   PEND 
@  #06 @037   ----------------------------------------
Label_9417D9:
 .byte   N23 ,Cn2 ,v064
 .byte   N11 ,Gn2
 .byte   W12
 .byte   Ds2
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Fn2
 .byte   N11 ,As4
 .byte   W12
 .byte   Ds2
 .byte   N11 ,Ds5
 .byte   W12
 .byte   N68 ,Cn2
 .byte   N23 ,Ds3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Dn3
 .byte   N44 ,Ds3
 .byte   W24
 .byte   PEND 
@  #06 @038   ----------------------------------------
Label_9417FA:
 .byte   N23 ,As2 ,v064
 .byte   W24
 .byte   N92 ,Fn1 ,v080
 .byte   N44 ,Ds3
 .byte   N44 ,Ds4
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W12
 .byte   N08 ,Ds2
 .byte   W12
 .byte   N12 ,Cn3
 .byte   N44 ,As3
 .byte   N44 ,As4
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
 .byte   PEND 
@  #06 @039   ----------------------------------------
Label_94181A:
 .byte   N12 ,Gn2 ,v080
 .byte   W12
 .byte   N08 ,Ds2
 .byte   W12
 .byte   N92 ,Gn1
 .byte   N23 ,As3
 .byte   N23 ,As4
 .byte   W12
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N12 ,Bn2
 .byte   N23 ,Gs3
 .byte   N23 ,Gs4
 .byte   W12
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N12 ,Dn3
 .byte   N23 ,Gn3
 .byte   N23 ,Gn4
 .byte   W12
 .byte   N11 ,Gn2
 .byte   W12
 .byte   PEND 
@  #06 @040   ----------------------------------------
Label_941840:
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Fn3
 .byte   N11 ,Fn4
 .byte   W12
 .byte   N08 ,Gn2
 .byte   N32 ,Gn3
 .byte   N32 ,Gn4
 .byte   W12
 .byte   N68 ,Cn2
 .byte   N23 ,Fn2
 .byte   W24
 .byte   N11 ,Gn2 ,v064
 .byte   N11 ,As4
 .byte   W12
 .byte   N32 ,Gn2
 .byte   N44 ,Ds5
 .byte   W36
 .byte   PEND 
@  #06 @041   ----------------------------------------
Label_941860:
 .byte   N08 ,Dn2 ,v064
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Ds3
 .byte   N11 ,Ds5
 .byte   W12
 .byte   Fn3
 .byte   N11 ,As4
 .byte   W12
 .byte   Gn3
 .byte   N11 ,Ds5
 .byte   W12
 .byte   N23 ,Ds2
 .byte   N11 ,Ds3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Gn2
 .byte   N11 ,As3
 .byte   W12
 .byte   N12 ,As2
 .byte   N44 ,Ds4
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
 .byte   PEND 
@  #06 @042   ----------------------------------------
Label_941886:
 .byte   N23 ,As1 ,v064
 .byte   N23 ,Gn2
 .byte   W24
 .byte   N32 ,Gs1
 .byte   N32 ,Ds2
 .byte   W24
 .byte   N11 ,As4
 .byte   W12
 .byte   N32 ,Gs1
 .byte   N32 ,Ds2
 .byte   N44 ,Ds5
 .byte   W36
 .byte   PEND 
@  #06 @043   ----------------------------------------
Label_94189C:
 .byte   N23 ,Gs1 ,v064
 .byte   N23 ,Ds2
 .byte   W12
 .byte   N11 ,Ds4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   N12 ,Ds5
 .byte   W12
 .byte   N32 ,Gs1
 .byte   N32 ,Ds2
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N12 ,As3
 .byte   W12
 .byte   N44 ,Ds3
 .byte   W12
 .byte   N32 ,Gs1
 .byte   N32 ,Ds2
 .byte   W12
 .byte   PEND 
@  #06 @044   ----------------------------------------
Label_9418BD:
 .byte   W24
 .byte   N32 ,Gn1 ,v064
 .byte   N32 ,Dn2
 .byte   W24
 .byte   N11 ,As4
 .byte   W12
 .byte   N32 ,Gn0
 .byte   N32 ,Gn1
 .byte   N44 ,Ds5
 .byte   W36
 .byte   PEND 
@  #06 @045   ----------------------------------------
Label_9418CF:
 .byte   N23 ,Cn1 ,v064
 .byte   N23 ,Cn2
 .byte   W12
 .byte   N11 ,Ds4
 .byte   W12
 .byte   As4
 .byte   W24
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Cn2
 .byte   N23 ,Ds4
 .byte   N23 ,Ds5
 .byte   W24
 .byte   N08 ,Fn4
 .byte   N23 ,Fn5
 .byte   W12
 .byte   N32 ,Cn1
 .byte   N32 ,Cn2
 .byte   W12
 .byte   PEND 
@  #06 @046   ----------------------------------------
Label_9418EF:
 .byte   N23 ,Dn4 ,v096
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N92 ,Fn0
 .byte   N92 ,Fn1
 .byte   N92 ,Ds4
 .byte   N92 ,Ds5
 .byte   W72
 .byte   PEND 
@  #06 @047   ----------------------------------------
Label_9418FF:
 .byte   W24
 .byte   N92 ,Gn0 ,v096
 .byte   N92 ,Gn1
 .byte   W24
 .byte   N23 ,Ds4
 .byte   N23 ,Ds5
 .byte   W24
 .byte   Fn4
 .byte   N23 ,Fn5
 .byte   W24
 .byte   PEND 
@  #06 @048   ----------------------------------------
Label_941910:
 .byte   N20 ,Dn4 ,v096
 .byte   N23 ,Dn5
 .byte   W24
 .byte   TIE ,Cn1
 .byte   TIE ,Cn2
 .byte   N32 ,Dn4
 .byte   N32 ,Dn5
 .byte   W36
 .byte   Cn4
 .byte   N32 ,Cn5
 .byte   W36
 .byte   PEND 
@  #06 @049   ----------------------------------------
Label_941924:
 .byte   N68 ,Cn5 ,v096
 .byte   N68 ,Ds5
 .byte   W72
 .byte   N11 ,Cn5
 .byte   N11 ,Ds5
 .byte   W12
 .byte   Cn5
 .byte   N11 ,Ds5
 .byte   W12
 .byte   PEND 
@  #06 @050   ----------------------------------------
Label_941934:
 .byte   N11 ,Cn5 ,v096
 .byte   N11 ,Ds5
 .byte   W12
 .byte   Cn5
 .byte   N11 ,Ds5
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Cn1 ,v048
 .byte   N01 ,Cn1 ,v048
 .byte   W72
 .byte   W01
@  #06 @051   ----------------------------------------
Label_941947:
 .byte   W24
 .byte   N44 ,Cn4 ,v064
 .byte   N44 ,Ds4
 .byte   N44 ,Gn4
 .byte   W48
 .byte   N32 ,Gn3
 .byte   N32 ,Cn4
 .byte   N32 ,Ds4
 .byte   W24
 .byte   PEND 
@  #06 @052   ----------------------------------------
Label_941958:
 .byte   W12
 .byte   N80 ,Fn3 ,v064
 .byte   N80 ,As3
 .byte   N80 ,Dn4
 .byte   W84
 .byte   PEND 
@  #06 @053   ----------------------------------------
Label_941962:
 .byte   N11 ,Fn4 ,v064
 .byte   W12
 .byte   N12 ,As4
 .byte   W12
 .byte   N30 ,Ds4
 .byte   N05 ,Dn5
 .byte   W06
 .byte   N06 ,Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N17 ,Ds4
 .byte   W06
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N44 ,Fn4
 .byte   W24
 .byte   PEND 
@  #06 @054   ----------------------------------------
 .byte   W24
 .byte   N92 ,Gn4
 .byte   W72
@  #06 @055   ----------------------------------------
Label_941985:
 .byte   W24
 .byte   N44 ,Ds4 ,v064
 .byte   W48
 .byte   N32 ,Gn4
 .byte   W24
 .byte   PEND 
@  #06 @056   ----------------------------------------
Label_94198E:
 .byte   W12
 .byte   TIE ,Fn4 ,v064
 .byte   W84
 .byte   PEND 
@  #06 @057   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W72
 .byte   W01
@  #06 @058   ----------------------------------------
Label_941998:
 .byte   W24
 .byte   N68 ,Fn4 ,v080
 .byte   N68 ,Dn5
 .byte   W72
 .byte   PEND 
@  #06 @059   ----------------------------------------
Label_9419A0:
 .byte   N11 ,Gn4 ,v080
 .byte   N11 ,Ds5
 .byte   W12
 .byte   N56 ,Ds4
 .byte   N56 ,Cn5
 .byte   W60
 .byte   N32 ,Cn3
 .byte   N32 ,Ds3
 .byte   N32 ,Cn4
 .byte   N32 ,Ds4
 .byte   W24
 .byte   PEND 
@  #06 @060   ----------------------------------------
Label_9419B5:
 .byte   W12
 .byte   TIE ,Dn3 ,v080
 .byte   TIE ,Fn3
 .byte   TIE ,Dn4
 .byte   TIE ,Fn4
 .byte   W84
 .byte   PEND 
@  #06 @061   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Dn3 ,v065
 .byte   Dn4 ,v077
 .byte   N01 ,Dn3 ,v068
 .byte   N01 ,Dn4 ,v080
 .byte   W01
 .byte   N44 ,Fn3
 .byte   N44 ,As3
 .byte   W48
 .byte   Dn3
 .byte   N44 ,Ds3
 .byte   N44 ,Gn3
 .byte   W24
@  #06 @062   ----------------------------------------
Label_9419D9:
 .byte   W24
 .byte   N23 ,Fn4 ,v080
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N11 ,Gn4
 .byte   N11 ,Ds5
 .byte   W12
 .byte   N56 ,Ds4
 .byte   N56 ,Cn5
 .byte   W36
 .byte   PEND 
@  #06 @063   ----------------------------------------
Label_9419EB:
 .byte   W24
 .byte   N23 ,Dn3 ,v080
 .byte   N23 ,Fn3
 .byte   W24
 .byte   N11 ,Ds3
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N23 ,Cn3
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N24 ,Gn3
 .byte   W12
 .byte   PEND 
@  #06 @064   ----------------------------------------
Label_941A00:
 .byte   W12
 .byte   N32 ,Fn3 ,v080
 .byte   W36
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N11 ,Dn3
 .byte   W12
 .byte   PEND 
@  #06 @065   ----------------------------------------
Label_941A0F:
 .byte   TIE ,Fn2 ,v080
 .byte   TIE ,Gn2
 .byte   TIE ,As2
 .byte   W96
 .byte   PEND 
@  #06 @066   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Fn2 ,v055
 .byte   As2
 .byte   N01 ,Fn2 ,v056
 .byte   N01 ,As2
 .byte   W01
 .byte   N68 ,Fn4 ,v080
 .byte   N68 ,Dn5
 .byte   W72
@  #06 @067   ----------------------------------------
 .byte   PATT
  .word Label_9419A0
@  #06 @068   ----------------------------------------
 .byte   PATT
  .word Label_9419B5
@  #06 @069   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Dn3 ,v065
 .byte   Dn4 ,v077
 .byte   N01 ,Dn3 ,v068
 .byte   N01 ,Dn4 ,v080
 .byte   W01
 .byte   N44 ,Fn3
 .byte   N44 ,As3
 .byte   W48
 .byte   Dn3
 .byte   N44 ,Ds3
 .byte   N44 ,Gn3
 .byte   W24
@  #06 @070   ----------------------------------------
Label_941A4B:
 .byte   W24
 .byte   N23 ,Fn4 ,v080
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N11 ,Gn4
 .byte   N11 ,Ds5
 .byte   W12
 .byte   N32 ,Ds4
 .byte   N32 ,Cn5
 .byte   W36
 .byte   PEND 
@  #06 @071   ----------------------------------------
Label_941A5D:
 .byte   N11 ,Dn4 ,v064
 .byte   W12
 .byte   N12 ,Ds4
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N12 ,Dn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   N23 ,Gn4
 .byte   W24
 .byte   PEND 
@  #06 @072   ----------------------------------------
Label_941A72:
 .byte   N24 ,Fn4 ,v064
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N12 ,Fn3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N23 ,Fn3
 .byte   W24
 .byte   PEND 
@  #06 @073   ----------------------------------------
Label_941A84:
 .byte   N11 ,Cn3 ,v064
 .byte   W12
 .byte   N12 ,Dn3
 .byte   W12
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N12 ,Fn3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   N23 ,Ds4
 .byte   W24
 .byte   N11 ,Dn3
 .byte   W12
 .byte   PEND 
@  #06 @074   ----------------------------------------
Label_941A9A:
 .byte   N12 ,Ds3 ,v064
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
 .byte   N12 ,As2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   PEND 
@  #06 @075   ----------------------------------------
Label_941AAF:
 .byte   N12 ,Dn3 ,v064
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #06 @076   ----------------------------------------
Label_941AC4:
 .byte   N12 ,Fn2 ,v064
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   N11 ,As2
 .byte   W12
 .byte   N12 ,Dn3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   PEND 
@  #06 @077   ----------------------------------------
Label_941AD9:
 .byte   N12 ,As2 ,v064
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #06 @078   ----------------------------------------
Label_941AEE:
 .byte   N12 ,As2 ,v064
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
 .byte   N12 ,Gs3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #06 @079   ----------------------------------------
Label_941B03:
 .byte   N12 ,Gn2 ,v064
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #06 @080   ----------------------------------------
Label_941B18:
 .byte   N44 ,Gn3 ,v064
 .byte   N44 ,Bn3
 .byte   N44 ,Ds4
 .byte   W48
 .byte   N23 ,Gn3
 .byte   N23 ,Bn3
 .byte   N23 ,Ds4
 .byte   W24
 .byte   Gn3
 .byte   N23 ,Bn3
 .byte   N23 ,Ds4
 .byte   W24
 .byte   PEND 
@  #06 @081   ----------------------------------------
Label_941B2E:
 .byte   N23 ,Gn3 ,v064
 .byte   N23 ,Bn3
 .byte   N23 ,Ds4
 .byte   W48
 .byte   Gn3
 .byte   N23 ,As3
 .byte   W24
 .byte   Gn2
 .byte   N23 ,Dn3
 .byte   N23 ,Fn3
 .byte   W24
 .byte   PEND 
@  #06 @082   ----------------------------------------
Label_941B41:
 .byte   N23 ,Gn1 ,v064
 .byte   N23 ,Gn2
 .byte   N23 ,Dn3
 .byte   W96
 .byte   PEND 
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
Label_941B54:
 .byte   W48
 .byte   N23 ,Ds5 ,v096
 .byte   W24
 .byte   N24 ,Fn5
 .byte   W24
 .byte   PEND 
@  #06 @094   ----------------------------------------
Label_941B5D:
 .byte   N24 ,Dn5 ,v096
 .byte   W24
 .byte   N92 ,Ds5
 .byte   W72
 .byte   PEND 
@  #06 @095   ----------------------------------------
 .byte   PATT
  .word Label_941B54
@  #06 @096   ----------------------------------------
Label_941B6A:
 .byte   N24 ,Dn5 ,v096
 .byte   W24
 .byte   N32
 .byte   W36
 .byte   N36 ,Cn5
 .byte   W36
 .byte   PEND 
@  #06 @097   ----------------------------------------
 .byte   PATT
  .word Label_941924
@  #06 @098   ----------------------------------------
Label_941B79:
 .byte   N11 ,Cn5 ,v096
 .byte   N11 ,Ds5
 .byte   W12
 .byte   Cn5
 .byte   N11 ,Ds5
 .byte   W12
 .byte   Gs4 ,v064
 .byte   N11 ,Ds5
 .byte   N11 ,Fn5
 .byte   W12
 .byte   N12 ,Gn5
 .byte   W12
 .byte   Cn6
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   Cn6
 .byte   W12
 .byte   PEND 
@  #06 @099   ----------------------------------------
Label_941B96:
 .byte   N12 ,Fn5 ,v064
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   N11 ,Cn5
 .byte   N11 ,Cn6
 .byte   W12
 .byte   N12 ,Fn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   Cn6
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   PEND 
@  #06 @100   ----------------------------------------
Label_941BAD:
 .byte   N12 ,Cn6 ,v064
 .byte   W12
 .byte   N11 ,Fn4
 .byte   N11 ,As4
 .byte   N11 ,Fn5
 .byte   W12
 .byte   N12 ,Gn5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   PEND 
@  #06 @101   ----------------------------------------
Label_941BC6:
 .byte   N23 ,As3 ,v064
 .byte   N23 ,Ds4
 .byte   N11 ,Gn5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   N12 ,Fn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   N23 ,Gn4
 .byte   N11 ,As5
 .byte   W12
 .byte   Dn6
 .byte   W12
 .byte   N44 ,Dn5
 .byte   W12
 .byte   N11 ,Ds6
 .byte   W12
 .byte   PEND 
@  #06 @102   ----------------------------------------
Label_941BE3:
 .byte   N12 ,Dn6 ,v064
 .byte   W12
 .byte   N08 ,As5
 .byte   W12
 .byte   N44 ,Fn3
 .byte   N44 ,Gs4
 .byte   N44 ,Cn5
 .byte   N11 ,Fn5
 .byte   W12
 .byte   N12 ,Gn5
 .byte   W12
 .byte   Cn6
 .byte   W12
 .byte   N08 ,Fn5
 .byte   W12
 .byte   N44 ,Cn4
 .byte   N11 ,Gn5
 .byte   W12
 .byte   N12 ,Cn6
 .byte   W12
 .byte   PEND 
@  #06 @103   ----------------------------------------
Label_941C04:
 .byte   N12 ,Fn5 ,v064
 .byte   W12
 .byte   N08 ,Gn5
 .byte   W12
 .byte   N44 ,As4
 .byte   N11 ,Cn6
 .byte   W12
 .byte   N12 ,Fn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   N08 ,Cn6
 .byte   W12
 .byte   N32 ,Gs4
 .byte   N11 ,Fn5
 .byte   W12
 .byte   N12 ,Gn5
 .byte   W12
 .byte   PEND 
@  #06 @104   ----------------------------------------
Label_941C21:
 .byte   N08 ,Cn6 ,v064
 .byte   W12
 .byte   N56 ,Cn3
 .byte   N56 ,Fn4
 .byte   N56 ,Gn4
 .byte   N11 ,Fn5
 .byte   W12
 .byte   N12 ,Gn5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   N08 ,Gn5
 .byte   W12
 .byte   N12 ,As5
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   PEND 
@  #06 @105   ----------------------------------------
Label_941C3E:
 .byte   N23 ,Ds4 ,v064
 .byte   N11 ,Gn5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   N12 ,Fn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   N23 ,Gn3
 .byte   N11 ,As5
 .byte   W12
 .byte   Dn6
 .byte   W12
 .byte   N23 ,Dn4
 .byte   W12
 .byte   N11 ,Ds6
 .byte   W12
 .byte   PEND 
@  #06 @106   ----------------------------------------
Label_941C59:
 .byte   N12 ,Dn6 ,v064
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   TIE ,Gs2
 .byte   N56 ,Cn3
 .byte   N56 ,Gn3
 .byte   W60
 .byte   N11 ,Cn3
 .byte   W12
 .byte   PEND 
@  #06 @107   ----------------------------------------
Label_941C6A:
 .byte   N12 ,Ds3 ,v064
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N23 ,Cn4
 .byte   W24
 .byte   N24 ,As3
 .byte   W24
 .byte   N32 ,Ds3
 .byte   W24
 .byte   PEND 
@  #06 @108   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Gs2
 .byte   N01
 .byte   W01
 .byte   N80 ,Gn2
 .byte   N80 ,Dn3
 .byte   N80 ,Fn3
 .byte   W84
@  #06 @109   ----------------------------------------
 .byte   TIE ,Cn2
 .byte   TIE ,Ds3
 .byte   TIE ,Gn3
 .byte   W96
@  #06 @110   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn2 ,v063
 .byte   Gn3
 .byte   N01 ,Cn2
 .byte   N01 ,Gn3
 .byte   W01
 .byte   TIE ,Gs2
 .byte   TIE ,Cn3
 .byte   W72
@  #06 @111   ----------------------------------------
 .byte   W96
@  #06 @112   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Gs2 ,v060
 .byte   N01 ,Gs2 ,v060
 .byte   W01
 .byte   TIE ,As2
 .byte   TIE ,Dn3
 .byte   TIE ,Fn3
 .byte   W84
@  #06 @113   ----------------------------------------
 .byte   W96
@  #06 @114   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As2 ,v062
 .byte   Fn3
 .byte   N01 ,As2 ,v064
 .byte   N01 ,Fn3
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N92 ,As2
 .byte   N92 ,Dn3
 .byte   N92 ,Fn3
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @115   ----------------------------------------
 .byte   W96
@  #06 @116   ----------------------------------------
 .byte   PATT
  .word Label_9415A3
@  #06 @117   ----------------------------------------
 .byte   PATT
  .word Label_9415AD
@  #06 @118   ----------------------------------------
 .byte   PATT
  .word Label_9415B6
@  #06 @119   ----------------------------------------
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Gn1
 .byte   N32 ,Cn2
 .byte   N44 ,Dn5
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @120   ----------------------------------------
 .byte   PATT
  .word Label_9415D3
@  #06 @121   ----------------------------------------
 .byte   PATT
  .word Label_9415DB
@  #06 @122   ----------------------------------------
 .byte   PATT
  .word Label_9415F2
@  #06 @123   ----------------------------------------
 .byte   GOTO
  .word Label_94160C
@  #06 @124   ----------------------------------------
 .byte   N11 ,Dn4 ,v080
 .byte   W36
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N92 ,As2
 .byte   N92 ,Dn3
 .byte   N92 ,Fn3
 .byte   W36
@  #06 @125   ----------------------------------------
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
 .byte   W96
@  #06 @126   ----------------------------------------
 .byte   PATT
  .word Label_94162A
@  #06 @127   ----------------------------------------
 .byte   PATT
  .word Label_941634
@  #06 @128   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   Dn3
 .byte   N01 ,As1 ,v056
 .byte   N01 ,Dn3
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N68 ,As2
 .byte   N68 ,Dn3
 .byte   N68 ,Fn3
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @129   ----------------------------------------
 .byte   PATT
  .word Label_941659
@  #06 @130   ----------------------------------------
 .byte   PATT
  .word Label_941664
@  #06 @131   ----------------------------------------
 .byte   PATT
  .word Label_941672
@  #06 @132   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N92 ,As2
 .byte   N92 ,Dn3
 .byte   N92 ,Fn3
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @133   ----------------------------------------
 .byte   W96
@  #06 @134   ----------------------------------------
 .byte   PATT
  .word Label_94162A
@  #06 @135   ----------------------------------------
 .byte   PATT
  .word Label_9416A5
@  #06 @136   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Cn2
 .byte   N92 ,As2
 .byte   N92 ,Dn3
 .byte   N92 ,Fn3
 .byte   W36
 .byte   N56 ,Cn0
 .byte   N56 ,Cn1
 .byte   W36
@  #06 @137   ----------------------------------------
 .byte   PATT
  .word Label_9416C5
@  #06 @138   ----------------------------------------
 .byte   PATT
  .word Label_9416D1
@  #06 @139   ----------------------------------------
 .byte   PATT
  .word Label_9416E6
@  #06 @140   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As1 ,v053
 .byte   N01 ,As1 ,v056
 .byte   W01
 .byte   N11 ,Fn1 ,v080
 .byte   W12
 .byte   N12 ,Cn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N32 ,Gs2
 .byte   W36
@  #06 @141   ----------------------------------------
 .byte   N11 ,Gn1
 .byte   W12
 .byte   N12 ,Dn2
 .byte   W12
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N80 ,As2
 .byte   W60
@  #06 @142   ----------------------------------------
 .byte   PATT
  .word Label_94171B
@  #06 @143   ----------------------------------------
 .byte   PATT
  .word Label_941729
@  #06 @144   ----------------------------------------
 .byte   W12
 .byte   N11 ,As4 ,v080
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   N12 ,Gn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Gn3
 .byte   W12
@  #06 @145   ----------------------------------------
 .byte   PATT
  .word Label_941748
@  #06 @146   ----------------------------------------
 .byte   PATT
  .word Label_94175D
@  #06 @147   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn3 ,v072
 .byte   N01 ,Cn3 ,v072
 .byte   W01
 .byte   N44 ,Cn4 ,v080
 .byte   W48
 .byte   N11 ,Fn4
 .byte   W12
 .byte   N12 ,Cn4
 .byte   W12
@  #06 @148   ----------------------------------------
 .byte   PATT
  .word Label_941776
@  #06 @149   ----------------------------------------
 .byte   W96
@  #06 @150   ----------------------------------------
 .byte   PATT
  .word Label_941785
@  #06 @151   ----------------------------------------
 .byte   PATT
  .word Label_94179C
@  #06 @152   ----------------------------------------
 .byte   PATT
  .word Label_9417BC
@  #06 @153   ----------------------------------------
 .byte   PATT
  .word Label_9417D9
@  #06 @154   ----------------------------------------
 .byte   PATT
  .word Label_9417FA
@  #06 @155   ----------------------------------------
 .byte   PATT
  .word Label_94181A
@  #06 @156   ----------------------------------------
 .byte   PATT
  .word Label_941840
@  #06 @157   ----------------------------------------
 .byte   PATT
  .word Label_941860
@  #06 @158   ----------------------------------------
 .byte   PATT
  .word Label_941886
@  #06 @159   ----------------------------------------
 .byte   PATT
  .word Label_94189C
@  #06 @160   ----------------------------------------
 .byte   PATT
  .word Label_9418BD
@  #06 @161   ----------------------------------------
 .byte   PATT
  .word Label_9418CF
@  #06 @162   ----------------------------------------
 .byte   PATT
  .word Label_9418EF
@  #06 @163   ----------------------------------------
 .byte   PATT
  .word Label_9418FF
@  #06 @164   ----------------------------------------
 .byte   PATT
  .word Label_941910
@  #06 @165   ----------------------------------------
 .byte   PATT
  .word Label_941924
@  #06 @166   ----------------------------------------
 .byte   PATT
  .word Label_941934
@  #06 @167   ----------------------------------------
 .byte   EOT
 .byte   Cn1 ,v048
 .byte   N01 ,Cn1 ,v048
 .byte   W72
 .byte   W01
@  #06 @168   ----------------------------------------
 .byte   PATT
  .word Label_941947
@  #06 @169   ----------------------------------------
 .byte   PATT
  .word Label_941958
@  #06 @170   ----------------------------------------
 .byte   PATT
  .word Label_941962
@  #06 @171   ----------------------------------------
 .byte   W24
 .byte   N92 ,Gn4 ,v064
 .byte   W72
@  #06 @172   ----------------------------------------
 .byte   PATT
  .word Label_941985
@  #06 @173   ----------------------------------------
 .byte   PATT
  .word Label_94198E
@  #06 @174   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Fn4
 .byte   N01 ,Fn4 ,v064
 .byte   W72
 .byte   W01
@  #06 @175   ----------------------------------------
 .byte   PATT
  .word Label_941998
@  #06 @176   ----------------------------------------
 .byte   PATT
  .word Label_9419A0
@  #06 @177   ----------------------------------------
 .byte   PATT
  .word Label_9419B5
@  #06 @178   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Dn3 ,v065
 .byte   Dn4 ,v077
 .byte   N01 ,Dn3 ,v068
 .byte   N01 ,Dn4 ,v080
 .byte   W01
 .byte   N44 ,Fn3
 .byte   N44 ,As3
 .byte   W48
 .byte   Dn3
 .byte   N44 ,Ds3
 .byte   N44 ,Gn3
 .byte   W24
@  #06 @179   ----------------------------------------
 .byte   PATT
  .word Label_9419D9
@  #06 @180   ----------------------------------------
 .byte   PATT
  .word Label_9419EB
@  #06 @181   ----------------------------------------
 .byte   PATT
  .word Label_941A00
@  #06 @182   ----------------------------------------
 .byte   PATT
  .word Label_941A0F
@  #06 @183   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Fn2 ,v055
 .byte   As2
 .byte   N01 ,Fn2 ,v056
 .byte   N01 ,As2
 .byte   W01
 .byte   N68 ,Fn4 ,v080
 .byte   N68 ,Dn5
 .byte   W72
@  #06 @184   ----------------------------------------
 .byte   PATT
  .word Label_9419A0
@  #06 @185   ----------------------------------------
 .byte   PATT
  .word Label_9419B5
@  #06 @186   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Dn3 ,v065
 .byte   Dn4 ,v077
 .byte   N01 ,Dn3 ,v068
 .byte   N01 ,Dn4 ,v080
 .byte   W01
 .byte   N44 ,Fn3
 .byte   N44 ,As3
 .byte   W48
 .byte   Dn3
 .byte   N44 ,Ds3
 .byte   N44 ,Gn3
 .byte   W24
@  #06 @187   ----------------------------------------
 .byte   PATT
  .word Label_941A4B
@  #06 @188   ----------------------------------------
 .byte   PATT
  .word Label_941A5D
@  #06 @189   ----------------------------------------
 .byte   PATT
  .word Label_941A72
@  #06 @190   ----------------------------------------
 .byte   PATT
  .word Label_941A84
@  #06 @191   ----------------------------------------
 .byte   PATT
  .word Label_941A9A
@  #06 @192   ----------------------------------------
 .byte   PATT
  .word Label_941AAF
@  #06 @193   ----------------------------------------
 .byte   PATT
  .word Label_941AC4
@  #06 @194   ----------------------------------------
 .byte   PATT
  .word Label_941AD9
@  #06 @195   ----------------------------------------
 .byte   PATT
  .word Label_941AEE
@  #06 @196   ----------------------------------------
 .byte   PATT
  .word Label_941B03
@  #06 @197   ----------------------------------------
 .byte   PATT
  .word Label_941B18
@  #06 @198   ----------------------------------------
 .byte   PATT
  .word Label_941B2E
@  #06 @199   ----------------------------------------
 .byte   PATT
  .word Label_941B41
@  #06 @200   ----------------------------------------
 .byte   W96
@  #06 @201   ----------------------------------------
 .byte   W96
@  #06 @202   ----------------------------------------
 .byte   W96
@  #06 @203   ----------------------------------------
 .byte   W96
@  #06 @204   ----------------------------------------
 .byte   W96
@  #06 @205   ----------------------------------------
 .byte   W96
@  #06 @206   ----------------------------------------
 .byte   W96
@  #06 @207   ----------------------------------------
 .byte   W96
@  #06 @208   ----------------------------------------
 .byte   W96
@  #06 @209   ----------------------------------------
 .byte   W96
@  #06 @210   ----------------------------------------
 .byte   PATT
  .word Label_941B54
@  #06 @211   ----------------------------------------
 .byte   PATT
  .word Label_941B5D
@  #06 @212   ----------------------------------------
 .byte   PATT
  .word Label_941B54
@  #06 @213   ----------------------------------------
 .byte   PATT
  .word Label_941B6A
@  #06 @214   ----------------------------------------
 .byte   PATT
  .word Label_941924
@  #06 @215   ----------------------------------------
 .byte   PATT
  .word Label_941B79
@  #06 @216   ----------------------------------------
 .byte   PATT
  .word Label_941B96
@  #06 @217   ----------------------------------------
 .byte   PATT
  .word Label_941BAD
@  #06 @218   ----------------------------------------
 .byte   PATT
  .word Label_941BC6
@  #06 @219   ----------------------------------------
 .byte   PATT
  .word Label_941BE3
@  #06 @220   ----------------------------------------
 .byte   PATT
  .word Label_941C04
@  #06 @221   ----------------------------------------
 .byte   PATT
  .word Label_941C21
@  #06 @222   ----------------------------------------
 .byte   PATT
  .word Label_941C3E
@  #06 @223   ----------------------------------------
 .byte   PATT
  .word Label_941C59
@  #06 @224   ----------------------------------------
 .byte   PATT
  .word Label_941C6A
@  #06 @225   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Gs2
 .byte   N01 ,Gs2 ,v064
 .byte   W01
 .byte   TIE ,Gn2
 .byte   TIE ,Dn3
 .byte   TIE ,Fn3
 .byte   W84
@  #06 @226   ----------------------------------------
 .byte   Cn2
 .byte   TIE ,Ds3
 .byte   TIE ,Gn3
 .byte   W24
 .byte   EOT
 .byte   Gn2 ,v062
 .byte   Fn3
 .byte   W72
@  #06 @227   ----------------------------------------
 .byte   W23
 .byte   Cn2 ,v063
 .byte   Gn3
 .byte   N01 ,Cn2
 .byte   N01 ,Gn3
 .byte   W01
 .byte   TIE ,Gs2
 .byte   TIE ,Cn3
 .byte   W72
@  #06 @228   ----------------------------------------
 .byte   W96
@  #06 @229   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Gs2 ,v060
 .byte   N01 ,Gs2 ,v060
 .byte   W01
 .byte   TIE ,As2 ,v064
 .byte   TIE ,Dn3
 .byte   TIE ,Fn3
 .byte   W84
@  #06 @230   ----------------------------------------
 .byte   W96
@  #06 @231   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   As2 ,v062
 .byte   Fn3
 .byte   N01 ,As2
 .byte   N01 ,Fn3
 .byte   W12
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

song0A_007:
@  #07 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   VOICE , 40
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   PAN , c_v+0
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
 .byte   W60
Label_941FE0:
 .byte   W36
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
Label_941FF5:
 .byte   W24
 .byte   N56 ,Cn4 ,v096
 .byte   W60
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #07 @029   ----------------------------------------
Label_941FFD:
 .byte   N12 ,Dn4 ,v096
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N44 ,Fn4
 .byte   W48
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N12 ,Fn4
 .byte   W12
 .byte   PEND 
@  #07 @030   ----------------------------------------
 .byte   TIE ,Gn4
 .byte   W96
@  #07 @031   ----------------------------------------
 .byte   W96
@  #07 @032   ----------------------------------------
 .byte   W96
@  #07 @033   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
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
Label_94201E:
 .byte   W48
 .byte   N23 ,As4 ,v112
 .byte   W24
 .byte   N24 ,Ds4
 .byte   W24
 .byte   PEND 
@  #07 @042   ----------------------------------------
Label_942027:
 .byte   N24 ,Gn4 ,v112
 .byte   W24
 .byte   N92 ,Fn4
 .byte   W72
 .byte   PEND 
@  #07 @043   ----------------------------------------
 .byte   PATT
  .word Label_94201E
@  #07 @044   ----------------------------------------
Label_942034:
 .byte   N24 ,Gn4 ,v112
 .byte   W24
 .byte   N32 ,Fn4
 .byte   W36
 .byte   N56 ,Gn4
 .byte   W36
 .byte   PEND 
@  #07 @045   ----------------------------------------
Label_94203F:
 .byte   W48
 .byte   N23 ,Ds4 ,v112
 .byte   W24
 .byte   N24 ,Fn4
 .byte   W24
 .byte   PEND 
@  #07 @046   ----------------------------------------
Label_942048:
 .byte   N24 ,Dn4 ,v112
 .byte   W24
 .byte   N92 ,Ds4
 .byte   W72
 .byte   PEND 
@  #07 @047   ----------------------------------------
 .byte   PATT
  .word Label_94203F
@  #07 @048   ----------------------------------------
Label_942055:
 .byte   N24 ,Dn4 ,v112
 .byte   W24
 .byte   N32
 .byte   W36
 .byte   TIE ,Cn4
 .byte   W36
 .byte   PEND 
@  #07 @049   ----------------------------------------
 .byte   W96
@  #07 @050   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
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
 .byte   W24
 .byte   N68 ,Fn3
 .byte   W72
@  #07 @059   ----------------------------------------
Label_942070:
 .byte   N11 ,Gn3 ,v112
 .byte   W12
 .byte   N56 ,Ds3
 .byte   W60
 .byte   N11 ,As3
 .byte   W12
 .byte   N12 ,Gs3
 .byte   W12
 .byte   PEND 
@  #07 @060   ----------------------------------------
Label_94207E:
 .byte   N12 ,Gn3 ,v112
 .byte   W12
 .byte   N23 ,Fn3
 .byte   W24
 .byte   N80 ,Ds3
 .byte   W60
 .byte   PEND 
@  #07 @061   ----------------------------------------
Label_942089:
 .byte   W24
 .byte   N44 ,As3 ,v112
 .byte   W48
 .byte   N48 ,Gn3
 .byte   W24
 .byte   PEND 
@  #07 @062   ----------------------------------------
Label_942092:
 .byte   W24
 .byte   N23 ,Fn3 ,v112
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N56 ,Ds3
 .byte   W36
 .byte   PEND 
@  #07 @063   ----------------------------------------
Label_94209E:
 .byte   W24
 .byte   N23 ,Dn3 ,v112
 .byte   W24
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N23 ,Cn3
 .byte   W24
 .byte   N24 ,Gn3
 .byte   W12
 .byte   PEND 
@  #07 @064   ----------------------------------------
Label_9420AD:
 .byte   W12
 .byte   N32 ,Fn3 ,v112
 .byte   W36
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N11 ,Dn3
 .byte   W12
 .byte   PEND 
@  #07 @065   ----------------------------------------
 .byte   N92 ,As2
 .byte   W96
@  #07 @066   ----------------------------------------
 .byte   W96
@  #07 @067   ----------------------------------------
 .byte   W96
@  #07 @068   ----------------------------------------
 .byte   W96
@  #07 @069   ----------------------------------------
 .byte   W96
@  #07 @070   ----------------------------------------
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
 .byte   PATT
  .word Label_941FF5
@  #07 @079   ----------------------------------------
 .byte   PATT
  .word Label_941FFD
@  #07 @080   ----------------------------------------
 .byte   TIE ,Gn4 ,v096
 .byte   W96
@  #07 @081   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W24
 .byte   W01
 .byte   N23 ,As4 ,v112
 .byte   W24
 .byte   N24 ,Ds4
 .byte   W24
@  #07 @082   ----------------------------------------
 .byte   PATT
  .word Label_942027
@  #07 @083   ----------------------------------------
 .byte   PATT
  .word Label_94201E
@  #07 @084   ----------------------------------------
 .byte   PATT
  .word Label_942034
@  #07 @085   ----------------------------------------
 .byte   PATT
  .word Label_94203F
@  #07 @086   ----------------------------------------
Label_9420F9:
 .byte   N24 ,Dn4 ,v112
 .byte   W24
 .byte   N44 ,Ds4
 .byte   W48
 .byte   N48 ,As4
 .byte   W24
 .byte   PEND 
@  #07 @087   ----------------------------------------
Label_942104:
 .byte   W24
 .byte   N23 ,As4 ,v112
 .byte   W24
 .byte   N24 ,Gs4
 .byte   W24
 .byte   Gn4
 .byte   W24
 .byte   PEND 
@  #07 @088   ----------------------------------------
Label_94210F:
 .byte   N11 ,Fn4 ,v112
 .byte   W12
 .byte   TIE ,Gn4
 .byte   W84
 .byte   PEND 
@  #07 @089   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #07 @090   ----------------------------------------
 .byte   W96
@  #07 @091   ----------------------------------------
 .byte   W96
@  #07 @092   ----------------------------------------
 .byte   W96
@  #07 @093   ----------------------------------------
 .byte   PATT
  .word Label_94203F
@  #07 @094   ----------------------------------------
 .byte   PATT
  .word Label_942048
@  #07 @095   ----------------------------------------
 .byte   PATT
  .word Label_94203F
@  #07 @096   ----------------------------------------
 .byte   PATT
  .word Label_942055
@  #07 @097   ----------------------------------------
 .byte   W96
@  #07 @098   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn4
 .byte   N01 ,Cn4 ,v112
 .byte   W72
 .byte   W01
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
 .byte   W60
 .byte   GOTO
  .word Label_941FE0
@  #07 @122   ----------------------------------------
 .byte   W36
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
 .byte   PATT
  .word Label_941FF5
@  #07 @143   ----------------------------------------
 .byte   PATT
  .word Label_941FFD
@  #07 @144   ----------------------------------------
 .byte   TIE ,Gn4 ,v096
 .byte   W96
@  #07 @145   ----------------------------------------
 .byte   W96
@  #07 @146   ----------------------------------------
 .byte   W96
@  #07 @147   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
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
 .byte   PATT
  .word Label_94201E
@  #07 @156   ----------------------------------------
 .byte   PATT
  .word Label_942027
@  #07 @157   ----------------------------------------
 .byte   PATT
  .word Label_94201E
@  #07 @158   ----------------------------------------
 .byte   PATT
  .word Label_942034
@  #07 @159   ----------------------------------------
 .byte   PATT
  .word Label_94203F
@  #07 @160   ----------------------------------------
 .byte   PATT
  .word Label_942048
@  #07 @161   ----------------------------------------
 .byte   PATT
  .word Label_94203F
@  #07 @162   ----------------------------------------
 .byte   PATT
  .word Label_942055
@  #07 @163   ----------------------------------------
 .byte   W96
@  #07 @164   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn4
 .byte   N01 ,Cn4 ,v112
 .byte   W72
 .byte   W01
@  #07 @165   ----------------------------------------
 .byte   W96
@  #07 @166   ----------------------------------------
 .byte   W96
@  #07 @167   ----------------------------------------
 .byte   W96
@  #07 @168   ----------------------------------------
 .byte   W96
@  #07 @169   ----------------------------------------
 .byte   W96
@  #07 @170   ----------------------------------------
 .byte   W96
@  #07 @171   ----------------------------------------
 .byte   W96
@  #07 @172   ----------------------------------------
 .byte   W24
 .byte   N68 ,Fn3
 .byte   W72
@  #07 @173   ----------------------------------------
 .byte   PATT
  .word Label_942070
@  #07 @174   ----------------------------------------
 .byte   PATT
  .word Label_94207E
@  #07 @175   ----------------------------------------
 .byte   PATT
  .word Label_942089
@  #07 @176   ----------------------------------------
 .byte   PATT
  .word Label_942092
@  #07 @177   ----------------------------------------
 .byte   PATT
  .word Label_94209E
@  #07 @178   ----------------------------------------
 .byte   PATT
  .word Label_9420AD
@  #07 @179   ----------------------------------------
 .byte   N24 ,As2 ,v112
 .byte   W96
@  #07 @180   ----------------------------------------
 .byte   W96
@  #07 @181   ----------------------------------------
 .byte   W96
@  #07 @182   ----------------------------------------
 .byte   W96
@  #07 @183   ----------------------------------------
 .byte   W96
@  #07 @184   ----------------------------------------
 .byte   W96
@  #07 @185   ----------------------------------------
 .byte   W96
@  #07 @186   ----------------------------------------
 .byte   W96
@  #07 @187   ----------------------------------------
 .byte   W96
@  #07 @188   ----------------------------------------
 .byte   W96
@  #07 @189   ----------------------------------------
 .byte   W96
@  #07 @190   ----------------------------------------
 .byte   W96
@  #07 @191   ----------------------------------------
 .byte   W96
@  #07 @192   ----------------------------------------
 .byte   PATT
  .word Label_941FF5
@  #07 @193   ----------------------------------------
 .byte   PATT
  .word Label_941FFD
@  #07 @194   ----------------------------------------
 .byte   TIE ,Gn4 ,v096
 .byte   W96
@  #07 @195   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W24
 .byte   W01
 .byte   N23 ,As4 ,v112
 .byte   W24
 .byte   N24 ,Ds4
 .byte   W24
@  #07 @196   ----------------------------------------
 .byte   PATT
  .word Label_942027
@  #07 @197   ----------------------------------------
 .byte   PATT
  .word Label_94201E
@  #07 @198   ----------------------------------------
 .byte   PATT
  .word Label_942034
@  #07 @199   ----------------------------------------
 .byte   PATT
  .word Label_94203F
@  #07 @200   ----------------------------------------
 .byte   PATT
  .word Label_9420F9
@  #07 @201   ----------------------------------------
 .byte   PATT
  .word Label_942104
@  #07 @202   ----------------------------------------
 .byte   PATT
  .word Label_94210F
@  #07 @203   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gn4
 .byte   N01 ,Gn4 ,v112
 .byte   W72
 .byte   W01
@  #07 @204   ----------------------------------------
 .byte   W96
@  #07 @205   ----------------------------------------
 .byte   W96
@  #07 @206   ----------------------------------------
 .byte   W96
@  #07 @207   ----------------------------------------
 .byte   PATT
  .word Label_94203F
@  #07 @208   ----------------------------------------
 .byte   PATT
  .word Label_942048
@  #07 @209   ----------------------------------------
 .byte   PATT
  .word Label_94203F
@  #07 @210   ----------------------------------------
 .byte   PATT
  .word Label_942055
@  #07 @211   ----------------------------------------
 .byte   W96
@  #07 @212   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Cn4
 .byte   N01 ,Cn4 ,v112
 .byte   W72
 .byte   W01
@  #07 @213   ----------------------------------------
 .byte   W96
@  #07 @214   ----------------------------------------
 .byte   W96
@  #07 @215   ----------------------------------------
 .byte   W96
@  #07 @216   ----------------------------------------
 .byte   W96
@  #07 @217   ----------------------------------------
 .byte   W96
@  #07 @218   ----------------------------------------
 .byte   W96
@  #07 @219   ----------------------------------------
 .byte   W96
@  #07 @220   ----------------------------------------
 .byte   W96
@  #07 @221   ----------------------------------------
 .byte   W96
@  #07 @222   ----------------------------------------
 .byte   W96
@  #07 @223   ----------------------------------------
 .byte   W96
@  #07 @224   ----------------------------------------
 .byte   W96
@  #07 @225   ----------------------------------------
 .byte   W96
@  #07 @226   ----------------------------------------
 .byte   W96
@  #07 @227   ----------------------------------------
 .byte   W96
@  #07 @228   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

song0A_008:
@  #08 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   VOICE , 68
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   PAN , c_v+0
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
 .byte   W60
Label_942280:
 .byte   W36
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
 .byte   W96
@  #08 @023   ----------------------------------------
 .byte   W84
 .byte   N11 ,Dn4 ,v096
 .byte   W12
@  #08 @024   ----------------------------------------
Label_942295:
 .byte   N12 ,Ds4 ,v096
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N32 ,Gn4
 .byte   W36
 .byte   N36 ,Fn4
 .byte   W36
 .byte   PEND 
@  #08 @025   ----------------------------------------
Label_9422A2:
 .byte   N44 ,Cn4 ,v096
 .byte   W48
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N24 ,Ds4
 .byte   W24
 .byte   PEND 
@  #08 @026   ----------------------------------------
Label_9422AD:
 .byte   N24 ,As4 ,v096
 .byte   W24
 .byte   N32
 .byte   W36
 .byte   N36 ,Gs4
 .byte   W36
 .byte   PEND 
@  #08 @027   ----------------------------------------
Label_9422B7:
 .byte   N44 ,Gn4 ,v096
 .byte   W48
 .byte   N23 ,Fn4
 .byte   W24
 .byte   N24 ,Ds4
 .byte   W24
 .byte   PEND 
@  #08 @028   ----------------------------------------
Label_9422C2:
 .byte   N24 ,Dn4 ,v096
 .byte   W24
 .byte   N56 ,Cn4
 .byte   W60
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #08 @029   ----------------------------------------
Label_9422CC:
 .byte   N12 ,Dn4 ,v096
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N44 ,Fn4
 .byte   W48
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N12 ,Fn4
 .byte   W12
 .byte   PEND 
@  #08 @030   ----------------------------------------
 .byte   TIE ,Gn4
 .byte   W96
@  #08 @031   ----------------------------------------
 .byte   W96
@  #08 @032   ----------------------------------------
 .byte   W96
@  #08 @033   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
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
 .byte   W84
 .byte   N11 ,Dn4 ,v080
 .byte   W12
@  #08 @074   ----------------------------------------
Label_942312:
 .byte   N12 ,Ds4 ,v080
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N32 ,Gn4
 .byte   W36
 .byte   N36 ,Fn4
 .byte   W36
 .byte   PEND 
@  #08 @075   ----------------------------------------
Label_94231F:
 .byte   N44 ,Cn4 ,v080
 .byte   W48
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N24 ,Ds4
 .byte   W24
 .byte   PEND 
@  #08 @076   ----------------------------------------
Label_94232A:
 .byte   N24 ,As4 ,v080
 .byte   W24
 .byte   N32
 .byte   W36
 .byte   N36 ,Gs4
 .byte   W36
 .byte   PEND 
@  #08 @077   ----------------------------------------
Label_942334:
 .byte   N44 ,Gn4 ,v080
 .byte   W48
 .byte   N23 ,Fn4
 .byte   W24
 .byte   N24 ,Ds4
 .byte   W24
 .byte   PEND 
@  #08 @078   ----------------------------------------
Label_94233F:
 .byte   N24 ,Dn4 ,v080
 .byte   W24
 .byte   N56 ,Cn4
 .byte   W60
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #08 @079   ----------------------------------------
Label_942349:
 .byte   N12 ,Dn4 ,v080
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N44 ,Fn4
 .byte   W48
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N12 ,Fn4
 .byte   W12
 .byte   PEND 
@  #08 @080   ----------------------------------------
 .byte   TIE ,Gn4
 .byte   W96
@  #08 @081   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
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
 .byte   W96
@  #08 @112   ----------------------------------------
 .byte   W96
@  #08 @113   ----------------------------------------
 .byte   W96
@  #08 @114   ----------------------------------------
 .byte   W96
@  #08 @115   ----------------------------------------
 .byte   W96
@  #08 @116   ----------------------------------------
 .byte   W96
@  #08 @117   ----------------------------------------
 .byte   W96
@  #08 @118   ----------------------------------------
 .byte   W96
@  #08 @119   ----------------------------------------
 .byte   W96
@  #08 @120   ----------------------------------------
 .byte   W96
@  #08 @121   ----------------------------------------
 .byte   W60
 .byte   GOTO
  .word Label_942280
@  #08 @122   ----------------------------------------
 .byte   W36
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
 .byte   W96
@  #08 @137   ----------------------------------------
 .byte   W84
 .byte   N11 ,Dn4 ,v096
 .byte   W12
@  #08 @138   ----------------------------------------
 .byte   PATT
  .word Label_942295
@  #08 @139   ----------------------------------------
 .byte   PATT
  .word Label_9422A2
@  #08 @140   ----------------------------------------
 .byte   PATT
  .word Label_9422AD
@  #08 @141   ----------------------------------------
 .byte   PATT
  .word Label_9422B7
@  #08 @142   ----------------------------------------
 .byte   PATT
  .word Label_9422C2
@  #08 @143   ----------------------------------------
 .byte   PATT
  .word Label_9422CC
@  #08 @144   ----------------------------------------
 .byte   TIE ,Gn4 ,v096
 .byte   W96
@  #08 @145   ----------------------------------------
 .byte   W96
@  #08 @146   ----------------------------------------
 .byte   W96
@  #08 @147   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #08 @148   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #08 @156   ----------------------------------------
 .byte   W96
@  #08 @157   ----------------------------------------
 .byte   W96
@  #08 @158   ----------------------------------------
 .byte   W96
@  #08 @159   ----------------------------------------
 .byte   W96
@  #08 @160   ----------------------------------------
 .byte   W96
@  #08 @161   ----------------------------------------
 .byte   W96
@  #08 @162   ----------------------------------------
 .byte   W96
@  #08 @163   ----------------------------------------
 .byte   W96
@  #08 @164   ----------------------------------------
 .byte   W96
@  #08 @165   ----------------------------------------
 .byte   W96
@  #08 @166   ----------------------------------------
 .byte   W96
@  #08 @167   ----------------------------------------
 .byte   W96
@  #08 @168   ----------------------------------------
 .byte   W96
@  #08 @169   ----------------------------------------
 .byte   W96
@  #08 @170   ----------------------------------------
 .byte   W96
@  #08 @171   ----------------------------------------
 .byte   W96
@  #08 @172   ----------------------------------------
 .byte   W96
@  #08 @173   ----------------------------------------
 .byte   W96
@  #08 @174   ----------------------------------------
 .byte   W96
@  #08 @175   ----------------------------------------
 .byte   W96
@  #08 @176   ----------------------------------------
 .byte   W96
@  #08 @177   ----------------------------------------
 .byte   W96
@  #08 @178   ----------------------------------------
 .byte   W96
@  #08 @179   ----------------------------------------
 .byte   W96
@  #08 @180   ----------------------------------------
 .byte   W96
@  #08 @181   ----------------------------------------
 .byte   W96
@  #08 @182   ----------------------------------------
 .byte   W96
@  #08 @183   ----------------------------------------
 .byte   W96
@  #08 @184   ----------------------------------------
 .byte   W96
@  #08 @185   ----------------------------------------
 .byte   W96
@  #08 @186   ----------------------------------------
 .byte   W96
@  #08 @187   ----------------------------------------
 .byte   W84
 .byte   N11 ,Dn4 ,v080
 .byte   W12
@  #08 @188   ----------------------------------------
 .byte   PATT
  .word Label_942312
@  #08 @189   ----------------------------------------
 .byte   PATT
  .word Label_94231F
@  #08 @190   ----------------------------------------
 .byte   PATT
  .word Label_94232A
@  #08 @191   ----------------------------------------
 .byte   PATT
  .word Label_942334
@  #08 @192   ----------------------------------------
 .byte   PATT
  .word Label_94233F
@  #08 @193   ----------------------------------------
 .byte   PATT
  .word Label_942349
@  #08 @194   ----------------------------------------
 .byte   TIE ,Gn4 ,v080
 .byte   W96
@  #08 @195   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   N01
 .byte   W72
 .byte   W01
@  #08 @196   ----------------------------------------
 .byte   W96
@  #08 @197   ----------------------------------------
 .byte   W96
@  #08 @198   ----------------------------------------
 .byte   W96
@  #08 @199   ----------------------------------------
 .byte   W96
@  #08 @200   ----------------------------------------
 .byte   W96
@  #08 @201   ----------------------------------------
 .byte   W96
@  #08 @202   ----------------------------------------
 .byte   W96
@  #08 @203   ----------------------------------------
 .byte   W96
@  #08 @204   ----------------------------------------
 .byte   W96
@  #08 @205   ----------------------------------------
 .byte   W96
@  #08 @206   ----------------------------------------
 .byte   W96
@  #08 @207   ----------------------------------------
 .byte   W96
@  #08 @208   ----------------------------------------
 .byte   W96
@  #08 @209   ----------------------------------------
 .byte   W96
@  #08 @210   ----------------------------------------
 .byte   W96
@  #08 @211   ----------------------------------------
 .byte   W96
@  #08 @212   ----------------------------------------
 .byte   W96
@  #08 @213   ----------------------------------------
 .byte   W96
@  #08 @214   ----------------------------------------
 .byte   W96
@  #08 @215   ----------------------------------------
 .byte   W96
@  #08 @216   ----------------------------------------
 .byte   W96
@  #08 @217   ----------------------------------------
 .byte   W96
@  #08 @218   ----------------------------------------
 .byte   W96
@  #08 @219   ----------------------------------------
 .byte   W96
@  #08 @220   ----------------------------------------
 .byte   W96
@  #08 @221   ----------------------------------------
 .byte   W96
@  #08 @222   ----------------------------------------
 .byte   W96
@  #08 @223   ----------------------------------------
 .byte   W96
@  #08 @224   ----------------------------------------
 .byte   W96
@  #08 @225   ----------------------------------------
 .byte   W96
@  #08 @226   ----------------------------------------
 .byte   W96
@  #08 @227   ----------------------------------------
 .byte   W96
@  #08 @228   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   FINE

@**************** Track 9 (Midi-Chn.8) ****************@

song0A_009:
@  #09 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   VOICE , 73
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 38*song0A_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W24
 .byte   N11 ,Cn2 ,v080
 .byte   W36
 .byte   N36 ,Gn2
 .byte   W36
@  #09 @001   ----------------------------------------
Label_942458:
 .byte   N24 ,Dn3 ,v080
 .byte   W36
 .byte   N11 ,Ds3
 .byte   W36
 .byte   N36 ,Dn3
 .byte   W24
 .byte   PEND 
@  #09 @002   ----------------------------------------
Label_942463:
 .byte   W12
 .byte   N12 ,Ds2 ,v080
 .byte   W48
 .byte   N11 ,Cn3
 .byte   W36
 .byte   PEND 
@  #09 @003   ----------------------------------------
Label_94246C:
 .byte   N24 ,Fn2 ,v080
 .byte   W60
 .byte   N11 ,As2
 .byte   W36
 .byte   PEND 
@  #09 @004   ----------------------------------------
Label_942474:
 .byte   N24 ,Fn2 ,v080
 .byte   W24
 .byte   N11 ,Cn2
 .byte   W36
 .byte   N36 ,Gn2
 .byte   W36
 .byte   PEND 
@  #09 @005   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @006   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @007   ----------------------------------------
 .byte   N24 ,Fn2 ,v080
 .byte   W60
Label_94248D:
 .byte   N11 ,As2 ,v080
 .byte   W36
@  #09 @008   ----------------------------------------
 .byte   PATT
  .word Label_942474
@  #09 @009   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @010   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @011   ----------------------------------------
 .byte   PATT
  .word Label_94246C
@  #09 @012   ----------------------------------------
 .byte   PATT
  .word Label_942474
@  #09 @013   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @014   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @015   ----------------------------------------
 .byte   PATT
  .word Label_94246C
@  #09 @016   ----------------------------------------
 .byte   PATT
  .word Label_942474
@  #09 @017   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @018   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @019   ----------------------------------------
 .byte   PATT
  .word Label_94246C
@  #09 @020   ----------------------------------------
 .byte   PATT
  .word Label_942474
@  #09 @021   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @022   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @023   ----------------------------------------
Label_9424DC:
 .byte   N24 ,Fn2 ,v080
 .byte   W60
 .byte   N11 ,As2
 .byte   W24
 .byte   N12 ,Dn5 ,v096
 .byte   W12
 .byte   PEND 
@  #09 @024   ----------------------------------------
Label_9424E8:
 .byte   N11 ,Fn2 ,v080
 .byte   N11 ,Ds5 ,v096
 .byte   W12
 .byte   N12 ,Fn5
 .byte   W12
 .byte   N68 ,Gs2 ,v080
 .byte   N32 ,Gn5 ,v096
 .byte   W36
 .byte   Fn5
 .byte   W36
 .byte   PEND 
@  #09 @025   ----------------------------------------
Label_9424FC:
 .byte   TIE ,As2 ,v080
 .byte   N44 ,Cn5 ,v096
 .byte   W48
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N24 ,Ds5
 .byte   W24
 .byte   PEND 
@  #09 @026   ----------------------------------------
 .byte   N23 ,As5
 .byte   W23
 .byte   EOT
 .byte   As2
 .byte   N01
 .byte   W01
 .byte   N23 ,Dn3 ,v080
 .byte   N32 ,As5 ,v096
 .byte   W24
 .byte   N92 ,Cn3 ,v080
 .byte   W12
 .byte   N32 ,Gs5 ,v096
 .byte   W36
@  #09 @027   ----------------------------------------
Label_942520:
 .byte   N44 ,Gn5 ,v096
 .byte   W48
 .byte   N68 ,Gs2 ,v080
 .byte   N23 ,Fn5 ,v096
 .byte   W24
 .byte   N24 ,Ds5
 .byte   W24
 .byte   PEND 
@  #09 @028   ----------------------------------------
Label_94252F:
 .byte   N20 ,Dn5 ,v096
 .byte   W24
 .byte   N44 ,Cn3 ,v080
 .byte   N56 ,Cn5 ,v096
 .byte   W48
 .byte   N44 ,Gs2 ,v080
 .byte   W12
 .byte   N11 ,Cn5 ,v096
 .byte   W12
 .byte   PEND 
@  #09 @029   ----------------------------------------
Label_942543:
 .byte   N12 ,Dn5 ,v096
 .byte   W12
 .byte   N08 ,Ds5
 .byte   W12
 .byte   N68 ,As2 ,v080
 .byte   N44 ,Fn5 ,v096
 .byte   W48
 .byte   N11 ,Ds5
 .byte   W12
 .byte   N08 ,Fn5
 .byte   W12
 .byte   PEND 
@  #09 @030   ----------------------------------------
Label_942558:
 .byte   TIE ,Gs2 ,v080
 .byte   TIE ,Gn5 ,v096
 .byte   W96
 .byte   PEND 
@  #09 @031   ----------------------------------------
 .byte   W96
@  #09 @032   ----------------------------------------
 .byte   W96
@  #09 @033   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs2 ,v091
 .byte   N01 ,Gs2 ,v092
 .byte   W72
 .byte   W01
@  #09 @034   ----------------------------------------
Label_94256B:
 .byte   W24
 .byte   N11 ,Ds2 ,v096
 .byte   W12
 .byte   N12 ,As2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   PEND 
@  #09 @035   ----------------------------------------
Label_94257C:
 .byte   N12 ,Dn3 ,v096
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #09 @036   ----------------------------------------
Label_942591:
 .byte   N12 ,Fn2 ,v096
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   N11 ,As2
 .byte   W12
 .byte   N12 ,Dn3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   PEND 
@  #09 @037   ----------------------------------------
Label_9425A6:
 .byte   N12 ,As2 ,v096
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #09 @038   ----------------------------------------
Label_9425BB:
 .byte   N12 ,As2 ,v096
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
 .byte   N12 ,Gs3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #09 @039   ----------------------------------------
Label_9425D0:
 .byte   N12 ,Gn2 ,v096
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #09 @040   ----------------------------------------
Label_9425E5:
 .byte   N12 ,Fn3 ,v096
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N32 ,Fn2
 .byte   W36
 .byte   N36 ,Gn2
 .byte   W36
 .byte   PEND 
@  #09 @041   ----------------------------------------
Label_9425F2:
 .byte   N44 ,Ds3 ,v096
 .byte   W48
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #09 @042   ----------------------------------------
Label_942601:
 .byte   N12 ,Gn2 ,v096
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N12 ,As2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   PEND 
@  #09 @043   ----------------------------------------
 .byte   PATT
  .word Label_94257C
@  #09 @044   ----------------------------------------
 .byte   PATT
  .word Label_942591
@  #09 @045   ----------------------------------------
 .byte   PATT
  .word Label_9425A6
@  #09 @046   ----------------------------------------
Label_942624:
 .byte   N12 ,As2 ,v096
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N11 ,Ds2
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   PEND 
@  #09 @047   ----------------------------------------
Label_942639:
 .byte   N12 ,Ds2 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
@  #09 @048   ----------------------------------------
Label_94264D:
 .byte   N12 ,Fn2 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N12 ,Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #09 @049   ----------------------------------------
Label_942661:
 .byte   N12 ,Gn2 ,v096
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N12 ,Ds3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   PEND 
@  #09 @050   ----------------------------------------
Label_942676:
 .byte   N12 ,As2 ,v096
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #09 @051   ----------------------------------------
Label_94268B:
 .byte   N12 ,Fn3 ,v096
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N12 ,Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #09 @052   ----------------------------------------
Label_9426A0:
 .byte   N12 ,Cn4 ,v096
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N12 ,Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   PEND 
@  #09 @053   ----------------------------------------
Label_9426B5:
 .byte   N12 ,Gn3 ,v096
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N24 ,Dn4
 .byte   W24
 .byte   N12 ,Ds4
 .byte   W12
 .byte   PEND 
@  #09 @054   ----------------------------------------
Label_9426CA:
 .byte   N12 ,Dn4 ,v096
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #09 @055   ----------------------------------------
 .byte   PATT
  .word Label_94268B
@  #09 @056   ----------------------------------------
 .byte   PATT
  .word Label_9426A0
@  #09 @057   ----------------------------------------
 .byte   PATT
  .word Label_9426B5
@  #09 @058   ----------------------------------------
Label_9426EE:
 .byte   N12 ,Dn4 ,v096
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Cn3
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #09 @059   ----------------------------------------
Label_9426FC:
 .byte   N23 ,Cn3 ,v096
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #09 @060   ----------------------------------------
Label_942707:
 .byte   N11 ,Cn3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #09 @061   ----------------------------------------
 .byte   PATT
  .word Label_9426FC
@  #09 @062   ----------------------------------------
 .byte   PATT
  .word Label_9426FC
@  #09 @063   ----------------------------------------
 .byte   PATT
  .word Label_9426FC
@  #09 @064   ----------------------------------------
 .byte   PATT
  .word Label_942707
@  #09 @065   ----------------------------------------
 .byte   PATT
  .word Label_9426FC
@  #09 @066   ----------------------------------------
Label_94272D:
 .byte   N23 ,Cn3 ,v096
 .byte   W24
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #09 @067   ----------------------------------------
 .byte   PATT
  .word Label_94268B
@  #09 @068   ----------------------------------------
 .byte   PATT
  .word Label_9426A0
@  #09 @069   ----------------------------------------
Label_94274A:
 .byte   N12 ,Gn3 ,v096
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N24 ,Dn4
 .byte   W24
 .byte   N12 ,Ds4
 .byte   W12
 .byte   PEND 
@  #09 @070   ----------------------------------------
 .byte   PATT
  .word Label_9426CA
@  #09 @071   ----------------------------------------
 .byte   PATT
  .word Label_94268B
@  #09 @072   ----------------------------------------
 .byte   PATT
  .word Label_9426A0
@  #09 @073   ----------------------------------------
Label_94276E:
 .byte   N12 ,Gn3 ,v096
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N12 ,Gn3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N24 ,Dn4
 .byte   W24
 .byte   N11 ,Ds4
 .byte   N11 ,Dn5 ,v080
 .byte   W12
 .byte   PEND 
@  #09 @074   ----------------------------------------
Label_942786:
 .byte   N11 ,Dn4 ,v096
 .byte   N11 ,Ds5 ,v080
 .byte   W12
 .byte   As3 ,v096
 .byte   N11 ,Fn5 ,v080
 .byte   W12
 .byte   N23 ,As2
 .byte   N23 ,Gn3
 .byte   N32 ,Gn5
 .byte   W36
 .byte   N23 ,As2
 .byte   N23 ,Gn3
 .byte   N32 ,Fn5
 .byte   W36
 .byte   PEND 
@  #09 @075   ----------------------------------------
Label_9427A2:
 .byte   N23 ,As2 ,v080
 .byte   N23 ,Gn3
 .byte   N44 ,Cn5
 .byte   W24
 .byte   N23 ,As2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   As2
 .byte   N23 ,Gn3
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N12 ,Ds5
 .byte   W12
 .byte   As2
 .byte   N23 ,Gn3
 .byte   W12
 .byte   PEND 
@  #09 @076   ----------------------------------------
Label_9427BD:
 .byte   N11 ,As5 ,v080
 .byte   W24
 .byte   N23 ,As2
 .byte   N23 ,Gn3
 .byte   N32 ,As5
 .byte   W36
 .byte   N23 ,As2
 .byte   N23 ,Gn3
 .byte   N32 ,Gs5
 .byte   W36
 .byte   PEND 
@  #09 @077   ----------------------------------------
Label_9427D0:
 .byte   N23 ,As2 ,v080
 .byte   N23 ,Gn3
 .byte   N44 ,Gn5
 .byte   W24
 .byte   N23 ,As2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   As2
 .byte   N23 ,Gn3
 .byte   N23 ,Fn5
 .byte   W24
 .byte   N12 ,Ds5
 .byte   W12
 .byte   As2
 .byte   N23 ,Gn3
 .byte   W12
 .byte   PEND 
@  #09 @078   ----------------------------------------
Label_9427EB:
 .byte   N11 ,Dn5 ,v080
 .byte   W24
 .byte   N23 ,Gs2
 .byte   N23 ,Fn3
 .byte   N56 ,Cn5
 .byte   W36
 .byte   N23 ,Gs2
 .byte   N23 ,Fn3
 .byte   W24
 .byte   N11 ,Cn5
 .byte   W12
 .byte   PEND 
@  #09 @079   ----------------------------------------
Label_9427FF:
 .byte   N23 ,Gs2 ,v080
 .byte   N23 ,Fn3
 .byte   N11 ,Dn5
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   N44 ,Fn5
 .byte   W24
 .byte   N23 ,Gs2
 .byte   N23 ,Fn3
 .byte   W24
 .byte   N11 ,Ds5
 .byte   W12
 .byte   N23 ,Gs2
 .byte   N23 ,Fn3
 .byte   N11 ,Fn5
 .byte   W12
 .byte   PEND 
@  #09 @080   ----------------------------------------
Label_94281C:
 .byte   TIE ,Gn5 ,v080
 .byte   W24
 .byte   N23 ,Bn2
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Bn2
 .byte   N23 ,Ds3
 .byte   W24
 .byte   Bn2
 .byte   N23 ,Ds3
 .byte   W24
 .byte   PEND 
@  #09 @081   ----------------------------------------
 .byte   Bn2
 .byte   N23 ,Ds3
 .byte   W23
 .byte   EOT
 .byte   Gn5
 .byte   N01
 .byte   W72
 .byte   W01
@  #09 @082   ----------------------------------------
 .byte   PATT
  .word Label_94256B
@  #09 @083   ----------------------------------------
 .byte   PATT
  .word Label_94257C
@  #09 @084   ----------------------------------------
 .byte   PATT
  .word Label_942591
@  #09 @085   ----------------------------------------
 .byte   PATT
  .word Label_9425A6
@  #09 @086   ----------------------------------------
 .byte   PATT
  .word Label_9425BB
@  #09 @087   ----------------------------------------
 .byte   PATT
  .word Label_9425D0
@  #09 @088   ----------------------------------------
Label_942855:
 .byte   N12 ,Fn3 ,v096
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N11 ,Fn2
 .byte   W12
 .byte   N12 ,As2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   PEND 
@  #09 @089   ----------------------------------------
Label_94286A:
 .byte   N12 ,Dn3 ,v096
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N12 ,Ds2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #09 @090   ----------------------------------------
 .byte   PATT
  .word Label_942601
@  #09 @091   ----------------------------------------
 .byte   PATT
  .word Label_94257C
@  #09 @092   ----------------------------------------
 .byte   PATT
  .word Label_942591
@  #09 @093   ----------------------------------------
 .byte   PATT
  .word Label_9425A6
@  #09 @094   ----------------------------------------
 .byte   PATT
  .word Label_942624
@  #09 @095   ----------------------------------------
 .byte   PATT
  .word Label_942639
@  #09 @096   ----------------------------------------
 .byte   PATT
  .word Label_94264D
@  #09 @097   ----------------------------------------
 .byte   PATT
  .word Label_942661
@  #09 @098   ----------------------------------------
Label_9428A6:
 .byte   N12 ,As2 ,v096
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   TIE ,Gs3 ,v064
 .byte   W72
 .byte   PEND 
@  #09 @099   ----------------------------------------
 .byte   W96
@  #09 @100   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Gn3
 .byte   W84
@  #09 @101   ----------------------------------------
 .byte   W96
@  #09 @102   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N13
 .byte   W13
 .byte   TIE ,Fn3
 .byte   W72
@  #09 @103   ----------------------------------------
 .byte   W96
@  #09 @104   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Cn3
 .byte   W84
@  #09 @105   ----------------------------------------
 .byte   W96
@  #09 @106   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N13
 .byte   W13
 .byte   N11 ,Ds2 ,v080
 .byte   W36
 .byte   N11
 .byte   W36
@  #09 @107   ----------------------------------------
Label_9428D4:
 .byte   N24 ,Cn3 ,v080
 .byte   W36
 .byte   N11 ,As2
 .byte   W36
 .byte   N36 ,Ds2
 .byte   W24
 .byte   PEND 
@  #09 @108   ----------------------------------------
Label_9428DF:
 .byte   W12
 .byte   N12 ,Dn2 ,v080
 .byte   W48
 .byte   N11 ,Gn2
 .byte   W36
 .byte   PEND 
@  #09 @109   ----------------------------------------
Label_9428E8:
 .byte   N24 ,Cn2 ,v080
 .byte   W24
 .byte   N11 ,Dn2
 .byte   W12
 .byte   N12 ,Gn2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   N24 ,Dn3
 .byte   W24
 .byte   N12 ,Ds3
 .byte   W12
 .byte   PEND 
@  #09 @110   ----------------------------------------
Label_9428FB:
 .byte   N11 ,Dn3 ,v080
 .byte   N11 ,Cn5
 .byte   W12
 .byte   As2
 .byte   N11 ,Dn5
 .byte   W12
 .byte   Cn2
 .byte   N23 ,Ds5
 .byte   W24
 .byte   N11 ,Dn5
 .byte   W12
 .byte   Cn2
 .byte   N11 ,Cn5
 .byte   W24
 .byte   N12 ,As4
 .byte   W12
 .byte   PEND 
@  #09 @111   ----------------------------------------
Label_942914:
 .byte   N12 ,Cn3 ,v080
 .byte   W12
 .byte   N32 ,Cn5
 .byte   W24
 .byte   N11 ,Cn2
 .byte   W12
 .byte   N12 ,As4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   N24 ,Gn4
 .byte   W12
 .byte   PEND 
@  #09 @112   ----------------------------------------
Label_942929:
 .byte   W12
 .byte   N12 ,Gs2 ,v080
 .byte   N32 ,Gs4
 .byte   W36
 .byte   N11 ,Gn4
 .byte   W12
 .byte   N23 ,Gs2
 .byte   N23 ,Gs4
 .byte   W24
 .byte   N11 ,Fn4
 .byte   W12
 .byte   PEND 
@  #09 @113   ----------------------------------------
Label_94293C:
 .byte   N24 ,Gn2 ,v080
 .byte   TIE ,Gn4
 .byte   W48
 .byte   N11 ,Gn2
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #09 @114   ----------------------------------------
 .byte   N11
 .byte   W23
 .byte   EOT
 .byte   Gn4
 .byte   N01
 .byte   W01
 .byte   N11 ,Cn2
 .byte   W36
 .byte   N36 ,Gn2
 .byte   W36
@  #09 @115   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @116   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @117   ----------------------------------------
 .byte   PATT
  .word Label_94246C
@  #09 @118   ----------------------------------------
 .byte   PATT
  .word Label_942474
@  #09 @119   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @120   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @121   ----------------------------------------
 .byte   N24 ,Fn2 ,v080
 .byte   W60
 .byte   GOTO
  .word Label_94248D
@  #09 @122   ----------------------------------------
 .byte   N11 ,As2 ,v080
 .byte   W36
@  #09 @123   ----------------------------------------
 .byte   PATT
  .word Label_942474
@  #09 @124   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @125   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @126   ----------------------------------------
 .byte   PATT
  .word Label_94246C
@  #09 @127   ----------------------------------------
 .byte   PATT
  .word Label_942474
@  #09 @128   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @129   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @130   ----------------------------------------
 .byte   PATT
  .word Label_94246C
@  #09 @131   ----------------------------------------
 .byte   PATT
  .word Label_942474
@  #09 @132   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @133   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @134   ----------------------------------------
 .byte   PATT
  .word Label_94246C
@  #09 @135   ----------------------------------------
 .byte   PATT
  .word Label_942474
@  #09 @136   ----------------------------------------
 .byte   PATT
  .word Label_942458
@  #09 @137   ----------------------------------------
 .byte   PATT
  .word Label_942463
@  #09 @138   ----------------------------------------
 .byte   PATT
  .word Label_9424DC
@  #09 @139   ----------------------------------------
 .byte   PATT
  .word Label_9424E8
@  #09 @140   ----------------------------------------
 .byte   PATT
  .word Label_9424FC
@  #09 @141   ----------------------------------------
 .byte   N23 ,As5 ,v096
 .byte   W23
 .byte   EOT
 .byte   As2
 .byte   N01
 .byte   W01
 .byte   N23 ,Dn3 ,v080
 .byte   N32 ,As5 ,v096
 .byte   W24
 .byte   N92 ,Cn3 ,v080
 .byte   W12
 .byte   N32 ,Gs5 ,v096
 .byte   W36
@  #09 @142   ----------------------------------------
 .byte   PATT
  .word Label_942520
@  #09 @143   ----------------------------------------
 .byte   PATT
  .word Label_94252F
@  #09 @144   ----------------------------------------
 .byte   PATT
  .word Label_942543
@  #09 @145   ----------------------------------------
 .byte   PATT
  .word Label_942558
@  #09 @146   ----------------------------------------
 .byte   W96
@  #09 @147   ----------------------------------------
 .byte   W96
@  #09 @148   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Gs2 ,v091
 .byte   N01 ,Gs2 ,v092
 .byte   W72
 .byte   W01
@  #09 @149   ----------------------------------------
 .byte   PATT
  .word Label_94256B
@  #09 @150   ----------------------------------------
 .byte   PATT
  .word Label_94257C
@  #09 @151   ----------------------------------------
 .byte   PATT
  .word Label_942591
@  #09 @152   ----------------------------------------
 .byte   PATT
  .word Label_9425A6
@  #09 @153   ----------------------------------------
 .byte   PATT
  .word Label_9425BB
@  #09 @154   ----------------------------------------
 .byte   PATT
  .word Label_9425D0
@  #09 @155   ----------------------------------------
 .byte   PATT
  .word Label_9425E5
@  #09 @156   ----------------------------------------
 .byte   PATT
  .word Label_9425F2
@  #09 @157   ----------------------------------------
 .byte   PATT
  .word Label_942601
@  #09 @158   ----------------------------------------
 .byte   PATT
  .word Label_94257C
@  #09 @159   ----------------------------------------
 .byte   PATT
  .word Label_942591
@  #09 @160   ----------------------------------------
 .byte   PATT
  .word Label_9425A6
@  #09 @161   ----------------------------------------
 .byte   PATT
  .word Label_942624
@  #09 @162   ----------------------------------------
 .byte   PATT
  .word Label_942639
@  #09 @163   ----------------------------------------
 .byte   PATT
  .word Label_94264D
@  #09 @164   ----------------------------------------
 .byte   PATT
  .word Label_942661
@  #09 @165   ----------------------------------------
 .byte   PATT
  .word Label_942676
@  #09 @166   ----------------------------------------
 .byte   PATT
  .word Label_94268B
@  #09 @167   ----------------------------------------
 .byte   PATT
  .word Label_9426A0
@  #09 @168   ----------------------------------------
 .byte   PATT
  .word Label_9426B5
@  #09 @169   ----------------------------------------
 .byte   PATT
  .word Label_9426CA
@  #09 @170   ----------------------------------------
 .byte   PATT
  .word Label_94268B
@  #09 @171   ----------------------------------------
 .byte   PATT
  .word Label_9426A0
@  #09 @172   ----------------------------------------
 .byte   PATT
  .word Label_9426B5
@  #09 @173   ----------------------------------------
 .byte   PATT
  .word Label_9426EE
@  #09 @174   ----------------------------------------
 .byte   PATT
  .word Label_9426FC
@  #09 @175   ----------------------------------------
 .byte   PATT
  .word Label_942707
@  #09 @176   ----------------------------------------
 .byte   PATT
  .word Label_9426FC
@  #09 @177   ----------------------------------------
 .byte   PATT
  .word Label_9426FC
@  #09 @178   ----------------------------------------
 .byte   PATT
  .word Label_9426FC
@  #09 @179   ----------------------------------------
 .byte   PATT
  .word Label_942707
@  #09 @180   ----------------------------------------
 .byte   PATT
  .word Label_9426FC
@  #09 @181   ----------------------------------------
 .byte   PATT
  .word Label_94272D
@  #09 @182   ----------------------------------------
 .byte   PATT
  .word Label_94268B
@  #09 @183   ----------------------------------------
 .byte   PATT
  .word Label_9426A0
@  #09 @184   ----------------------------------------
 .byte   PATT
  .word Label_94274A
@  #09 @185   ----------------------------------------
 .byte   PATT
  .word Label_9426CA
@  #09 @186   ----------------------------------------
 .byte   PATT
  .word Label_94268B
@  #09 @187   ----------------------------------------
 .byte   PATT
  .word Label_9426A0
@  #09 @188   ----------------------------------------
 .byte   PATT
  .word Label_94276E
@  #09 @189   ----------------------------------------
 .byte   PATT
  .word Label_942786
@  #09 @190   ----------------------------------------
 .byte   PATT
  .word Label_9427A2
@  #09 @191   ----------------------------------------
 .byte   PATT
  .word Label_9427BD
@  #09 @192   ----------------------------------------
 .byte   PATT
  .word Label_9427D0
@  #09 @193   ----------------------------------------
 .byte   PATT
  .word Label_9427EB
@  #09 @194   ----------------------------------------
 .byte   PATT
  .word Label_9427FF
@  #09 @195   ----------------------------------------
 .byte   PATT
  .word Label_94281C
@  #09 @196   ----------------------------------------
 .byte   N23 ,Bn2 ,v080
 .byte   N23 ,Ds3
 .byte   W23
 .byte   EOT
 .byte   Gn5
 .byte   N01
 .byte   W72
 .byte   W01
@  #09 @197   ----------------------------------------
 .byte   PATT
  .word Label_94256B
@  #09 @198   ----------------------------------------
 .byte   PATT
  .word Label_94257C
@  #09 @199   ----------------------------------------
 .byte   PATT
  .word Label_942591
@  #09 @200   ----------------------------------------
 .byte   PATT
  .word Label_9425A6
@  #09 @201   ----------------------------------------
 .byte   PATT
  .word Label_9425BB
@  #09 @202   ----------------------------------------
 .byte   PATT
  .word Label_9425D0
@  #09 @203   ----------------------------------------
 .byte   PATT
  .word Label_942855
@  #09 @204   ----------------------------------------
 .byte   PATT
  .word Label_94286A
@  #09 @205   ----------------------------------------
 .byte   PATT
  .word Label_942601
@  #09 @206   ----------------------------------------
 .byte   PATT
  .word Label_94257C
@  #09 @207   ----------------------------------------
 .byte   PATT
  .word Label_942591
@  #09 @208   ----------------------------------------
 .byte   PATT
  .word Label_9425A6
@  #09 @209   ----------------------------------------
 .byte   PATT
  .word Label_942624
@  #09 @210   ----------------------------------------
 .byte   PATT
  .word Label_942639
@  #09 @211   ----------------------------------------
 .byte   PATT
  .word Label_94264D
@  #09 @212   ----------------------------------------
 .byte   PATT
  .word Label_942661
@  #09 @213   ----------------------------------------
 .byte   PATT
  .word Label_9428A6
@  #09 @214   ----------------------------------------
 .byte   W96
@  #09 @215   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Gs3
 .byte   N01 ,Gs3 ,v064
 .byte   W01
 .byte   TIE ,Gn3
 .byte   W84
@  #09 @216   ----------------------------------------
 .byte   W96
@  #09 @217   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N13
 .byte   W13
 .byte   TIE ,Fn3
 .byte   W72
@  #09 @218   ----------------------------------------
 .byte   W96
@  #09 @219   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N01
 .byte   W01
 .byte   TIE ,Cn3
 .byte   W84
@  #09 @220   ----------------------------------------
 .byte   W96
@  #09 @221   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   N13
 .byte   W13
 .byte   N11 ,Ds2 ,v080
 .byte   W36
 .byte   N11
 .byte   W36
@  #09 @222   ----------------------------------------
 .byte   PATT
  .word Label_9428D4
@  #09 @223   ----------------------------------------
 .byte   PATT
  .word Label_9428DF
@  #09 @224   ----------------------------------------
 .byte   PATT
  .word Label_9428E8
@  #09 @225   ----------------------------------------
 .byte   PATT
  .word Label_9428FB
@  #09 @226   ----------------------------------------
 .byte   PATT
  .word Label_942914
@  #09 @227   ----------------------------------------
 .byte   PATT
  .word Label_942929
@  #09 @228   ----------------------------------------
 .byte   PATT
  .word Label_94293C
@  #09 @229   ----------------------------------------
 .byte   N11 ,Gn2 ,v080
 .byte   W23
 .byte   EOT
 .byte   Gn4
 .byte   N01
 .byte   W01
 .byte   N11 ,Cn3
 .byte   W11
 .byte   FINE

@**************** Track 10 (Midi-Chn.9) ****************@

song0A_010:
@  #10 @000   ----------------------------------------
 .byte   KEYSH , song0A_key+0
 .byte   VOICE , 121
 .byte   PAN , c_v-7
 .byte   VOL , 58*song0A_mvl/mxv
 .byte   N03 ,An2 ,v064
 .byte   N03 ,Dn3
 .byte   W03
 .byte   An2 ,v068
 .byte   W03
 .byte   An2 ,v072
 .byte   W03
 .byte   An2 ,v076
 .byte   W03
 .byte   An2 ,v080
 .byte   W03
 .byte   An2 ,v084
 .byte   W03
 .byte   An2 ,v088
 .byte   W03
 .byte   An2 ,v092
 .byte   W03
 .byte   TIE ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   TIE ,An2 ,v096
 .byte   W36
 .byte   N60 ,Dn1 ,v080
 .byte   W36
@  #10 @001   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Cn1 ,v057
 .byte   N24 ,Dn1
 .byte   W24
@  #10 @002   ----------------------------------------
Label_942BE8:
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N72 ,Dn1 ,v080
 .byte   W72
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
@  #10 @003   ----------------------------------------
Label_942BFA:
 .byte   TIE ,Cn1 ,v096
 .byte   TIE ,Dn1 ,v080
 .byte   W96
 .byte   PEND 
@  #10 @004   ----------------------------------------
 .byte   W24
 .byte   EOT
 .byte   Cn1 ,v038
 .byte   N36 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   TIE
 .byte   W36
@  #10 @005   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   N24
 .byte   W24
@  #10 @006   ----------------------------------------
 .byte   PATT
  .word Label_942BE8
@  #10 @007   ----------------------------------------
Label_942C18:
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W60
 .byte   PEND 
Label_942C20:
 .byte   W12
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02 ,An2 ,v072
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v076
 .byte   W03
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   N02 ,An2 ,v084
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v088
 .byte   W01
@  #10 @008   ----------------------------------------
Label_942C41:
 .byte   W02
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02 ,An2 ,v096
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v100
 .byte   W03
 .byte   N03 ,An2 ,v104
 .byte   W03
 .byte   N02 ,An2 ,v108
 .byte   W03
 .byte   N04
 .byte   W04
 .byte   N36 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   TIE ,Cn1 ,v096
 .byte   TIE ,Dn1 ,v080
 .byte   W36
 .byte   PEND 
@  #10 @009   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Cn1 ,v038
 .byte   N24
 .byte   W24
@  #10 @010   ----------------------------------------
Label_942C6F:
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N78 ,Cn1 ,v096
 .byte   N72 ,Dn1 ,v080
 .byte   W72
 .byte   N06
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   PEND 
@  #10 @011   ----------------------------------------
 .byte   PATT
  .word Label_942BFA
@  #10 @012   ----------------------------------------
 .byte   W24
 .byte   EOT
 .byte   Cn1 ,v038
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   TIE
 .byte   W36
@  #10 @013   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   N24
 .byte   W24
@  #10 @014   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @015   ----------------------------------------
Label_942CA1:
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W68
 .byte   W03
 .byte   N01 ,An2
 .byte   W01
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02 ,An2 ,v072
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v076
 .byte   W03
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   N02 ,An2 ,v084
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v088
 .byte   W01
 .byte   PEND 
@  #10 @016   ----------------------------------------
Label_942CCD:
 .byte   W02
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02 ,An2 ,v096
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v100
 .byte   W03
 .byte   N03 ,An2 ,v104
 .byte   W03
 .byte   N02 ,An2 ,v108
 .byte   W03
 .byte   N04
 .byte   W04
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   TIE
 .byte   W36
 .byte   PEND 
@  #10 @017   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   N24
 .byte   W24
@  #10 @018   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @019   ----------------------------------------
Label_942CF6:
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W96
 .byte   PEND 
@  #10 @020   ----------------------------------------
Label_942CFE:
 .byte   W24
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   TIE
 .byte   W36
 .byte   PEND 
@  #10 @021   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   N24
 .byte   W24
@  #10 @022   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @023   ----------------------------------------
 .byte   PATT
  .word Label_942CA1
@  #10 @024   ----------------------------------------
 .byte   W02
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02 ,An2 ,v096
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v100
 .byte   W03
 .byte   N03 ,An2 ,v104
 .byte   W03
 .byte   N02 ,An2 ,v108
 .byte   W03
 .byte   TIE
 .byte   W04
 .byte   N24 ,Cs1 ,v080
 .byte   W24
 .byte   N24
 .byte   W24
 .byte   N24
 .byte   W24
@  #10 @025   ----------------------------------------
Label_942D35:
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N03 ,Fs1 ,v036
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N24 ,Cs1 ,v080
 .byte   N12 ,Fs1 ,v036
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24 ,Cs1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N42
 .byte   W06
 .byte   N24 ,Cs1 ,v080
 .byte   W24
 .byte   PEND 
@  #10 @026   ----------------------------------------
Label_942D60:
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24 ,Cs1 ,v080
 .byte   N12 ,Fs1 ,v036
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24 ,Cs1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N42
 .byte   W06
 .byte   N24 ,Cs1 ,v080
 .byte   W24
 .byte   PEND 
@  #10 @027   ----------------------------------------
 .byte   PATT
  .word Label_942D35
@  #10 @028   ----------------------------------------
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18
 .byte   W06
 .byte   EOT
 .byte   An2
 .byte   N12 ,Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
@  #10 @029   ----------------------------------------
Label_942DAB:
 .byte   N12 ,Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
 .byte   N24 ,Dn1 ,v096
 .byte   W12
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
 .byte   PEND 
@  #10 @030   ----------------------------------------
 .byte   PATT
  .word Label_942DAB
@  #10 @031   ----------------------------------------
 .byte   PATT
  .word Label_942DAB
@  #10 @032   ----------------------------------------
Label_942DD1:
 .byte   N12 ,Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N06 ,Dn1 ,v096
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v096
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v096
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v096
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   PEND 
@  #10 @033   ----------------------------------------
Label_942E0A:
 .byte   N06 ,Dn1 ,v096
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v096
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v096
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   N76 ,Dn1 ,v096
 .byte   N76 ,Fs1 ,v052
 .byte   W76
 .byte   W01
 .byte   N01 ,An2
 .byte   W01
 .byte   PEND 
@  #10 @034   ----------------------------------------
Label_942E29:
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v072
 .byte   W03
 .byte   An2 ,v076
 .byte   W03
 .byte   An2 ,v084
 .byte   W03
 .byte   An2 ,v088
 .byte   W03
 .byte   An2 ,v096
 .byte   W03
 .byte   An2 ,v100
 .byte   W03
 .byte   An2 ,v108
 .byte   W03
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   TIE ,An2 ,v096
 .byte   W24
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
@  #10 @035   ----------------------------------------
Label_942E5E:
 .byte   N48 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W12
 .byte   PEND 
@  #10 @036   ----------------------------------------
 .byte   W24
 .byte   EOT
 .byte   An2
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   N24 ,An2 ,v096
 .byte   W24
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @037   ----------------------------------------
Label_942E9A:
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W36
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W12
 .byte   PEND 
@  #10 @038   ----------------------------------------
Label_942EB8:
 .byte   W12
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N96 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   N12 ,An2 ,v096
 .byte   W12
 .byte   Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @039   ----------------------------------------
Label_942ED5:
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N96 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   N96 ,An2 ,v096
 .byte   W12
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @040   ----------------------------------------
Label_942EF4:
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   TIE ,An2 ,v096
 .byte   W24
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
@  #10 @041   ----------------------------------------
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W36
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02 ,An2 ,v072
 .byte   W01
 .byte   N06 ,Dn1 ,v080
 .byte   W02
 .byte   N03 ,An2 ,v072
 .byte   W03
 .byte   N02 ,An2 ,v076
 .byte   W01
 .byte   N36 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W02
 .byte   N03 ,An2
 .byte   W03
 .byte   N02 ,An2 ,v084
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v088
 .byte   W01
@  #10 @042   ----------------------------------------
Label_942F5A:
 .byte   W02
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02 ,An2 ,v096
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v100
 .byte   W03
 .byte   N03 ,An2 ,v104
 .byte   W03
 .byte   N02 ,An2 ,v108
 .byte   W03
 .byte   N03
 .byte   W04
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   TIE ,An2 ,v096
 .byte   W24
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
@  #10 @043   ----------------------------------------
 .byte   PATT
  .word Label_942E5E
@  #10 @044   ----------------------------------------
 .byte   W24
 .byte   EOT
 .byte   An2
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   N24 ,An2 ,v096
 .byte   W24
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @045   ----------------------------------------
 .byte   PATT
  .word Label_942E9A
@  #10 @046   ----------------------------------------
 .byte   PATT
  .word Label_942EB8
@  #10 @047   ----------------------------------------
Label_942FBC:
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N96 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @048   ----------------------------------------
Label_942FD6:
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   N12 ,An2 ,v096
 .byte   W12
 .byte   Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @049   ----------------------------------------
Label_942FF9:
 .byte   N72 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36
 .byte   W36
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   PEND 
@  #10 @050   ----------------------------------------
Label_943018:
 .byte   N12 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   TIE ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   TIE
 .byte   W72
 .byte   PEND 
@  #10 @051   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Cn1 ,v038
 .byte   N24
 .byte   W24
@  #10 @052   ----------------------------------------
Label_94302F:
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N72
 .byte   W72
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
@  #10 @053   ----------------------------------------
 .byte   TIE
 .byte   W96
@  #10 @054   ----------------------------------------
 .byte   W24
 .byte   EOT
 .byte   N36
 .byte   N36 ,An2
 .byte   W36
 .byte   N60 ,Dn1
 .byte   W36
@  #10 @055   ----------------------------------------
 .byte   W72
 .byte   N24
 .byte   W24
@  #10 @056   ----------------------------------------
 .byte   PATT
  .word Label_94302F
@  #10 @057   ----------------------------------------
Label_94304F:
 .byte   N24 ,Dn1 ,v080
 .byte   W72
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02 ,An2 ,v072
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v076
 .byte   W03
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   N02 ,An2 ,v084
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v088
 .byte   W01
 .byte   PEND 
@  #10 @058   ----------------------------------------
Label_943074:
 .byte   W02
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02 ,An2 ,v096
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v100
 .byte   W03
 .byte   N03 ,An2 ,v104
 .byte   W03
 .byte   N02 ,An2 ,v108
 .byte   W03
 .byte   N03
 .byte   W04
 .byte   N36 ,Dn1 ,v096
 .byte   TIE ,An2 ,v112
 .byte   W36
 .byte   N60 ,Dn1 ,v096
 .byte   W36
 .byte   PEND 
@  #10 @059   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   An2
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @060   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @061   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @062   ----------------------------------------
 .byte   PATT
  .word Label_942CFE
@  #10 @063   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @064   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @065   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @066   ----------------------------------------
Label_9430C0:
 .byte   W24
 .byte   N36 ,Dn1 ,v096
 .byte   W36
 .byte   TIE
 .byte   W36
 .byte   PEND 
@  #10 @067   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @068   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @069   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @070   ----------------------------------------
 .byte   PATT
  .word Label_942CFE
@  #10 @071   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @072   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @073   ----------------------------------------
Label_9430E9:
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W72
 .byte   N02 ,Fs1 ,v036
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02
 .byte   W01
 .byte   PEND 
@  #10 @074   ----------------------------------------
 .byte   W02
 .byte   N03
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N84
 .byte   W04
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Cs1 ,v080
 .byte   N24 ,An2
 .byte   W24
 .byte   Cs1
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   W12
 .byte   N24 ,Cs1 ,v080
 .byte   W24
@  #10 @075   ----------------------------------------
 .byte   N08 ,Cn1 ,v096
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N03 ,Fs1 ,v036
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Cs1 ,v080
 .byte   N12 ,Fs1 ,v036
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Cs1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N42
 .byte   W06
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   W12
@  #10 @076   ----------------------------------------
Label_94315E:
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Cs1 ,v080
 .byte   N12 ,Fs1 ,v036
 .byte   N12 ,An2 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24 ,Cs1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N42
 .byte   W06
 .byte   N24 ,Cs1 ,v080
 .byte   W24
 .byte   PEND 
@  #10 @077   ----------------------------------------
Label_943192:
 .byte   N12 ,Cn1 ,v096
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N03 ,Fs1 ,v036
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Cs1 ,v080
 .byte   N12 ,Fs1 ,v036
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Cs1 ,v080
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N42
 .byte   W06
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   W12
 .byte   PEND 
@  #10 @078   ----------------------------------------
Label_9431CA:
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N24 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N60 ,Cn1 ,v096
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N24 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @079   ----------------------------------------
Label_9431F8:
 .byte   N24 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N24 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N60 ,Cn1 ,v096
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N24 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @080   ----------------------------------------
Label_943225:
 .byte   N24 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N48 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v080
 .byte   N12 ,Fs1 ,v052
 .byte   W12
 .byte   N24 ,Cn1 ,v096
 .byte   N06 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   PEND 
@  #10 @081   ----------------------------------------
 .byte   TIE ,Cn1 ,v096
 .byte   N06 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   TIE ,Dn1 ,v080
 .byte   TIE ,Fs1 ,v052
 .byte   W78
@  #10 @082   ----------------------------------------
 .byte   W24
 .byte   EOT
 .byte   Cn1 ,v038
 .byte   Fs1
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   N24 ,An2 ,v096
 .byte   W24
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N24 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N06 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W06
 .byte   N06 ,Cn1 ,v096
 .byte   W06
@  #10 @083   ----------------------------------------
Label_9432AB:
 .byte   N48 ,Cn1 ,v096
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   N24 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W12
 .byte   PEND 
@  #10 @084   ----------------------------------------
Label_9432C9:
 .byte   W12
 .byte   N06 ,Cn1 ,v096
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36
 .byte   N24 ,Dn1 ,v080
 .byte   N24 ,An2 ,v096
 .byte   W24
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @085   ----------------------------------------
Label_9432E8:
 .byte   N48 ,Cn1 ,v096
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W12
 .byte   PEND 
@  #10 @086   ----------------------------------------
Label_943306:
 .byte   W12
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N96 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @087   ----------------------------------------
 .byte   PATT
  .word Label_942FBC
@  #10 @088   ----------------------------------------
Label_943324:
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   PEND 
@  #10 @089   ----------------------------------------
Label_943343:
 .byte   N72 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W24
 .byte   N06
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02 ,An2 ,v072
 .byte   W01
 .byte   N06 ,Dn1 ,v080
 .byte   W02
 .byte   N03 ,An2 ,v072
 .byte   W03
 .byte   N02 ,An2 ,v076
 .byte   W01
 .byte   N36 ,Dn1 ,v080
 .byte   W02
 .byte   N03 ,An2
 .byte   W03
 .byte   N02 ,An2 ,v084
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v088
 .byte   W01
 .byte   PEND 
@  #10 @090   ----------------------------------------
Label_94337B:
 .byte   W02
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02 ,An2 ,v096
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v100
 .byte   W03
 .byte   N03 ,An2 ,v104
 .byte   W03
 .byte   N02 ,An2 ,v108
 .byte   W03
 .byte   N04
 .byte   W04
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N12
 .byte   W12
 .byte   N24 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N06 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W06
 .byte   N06 ,Cn1 ,v096
 .byte   W06
 .byte   PEND 
@  #10 @091   ----------------------------------------
 .byte   PATT
  .word Label_9432AB
@  #10 @092   ----------------------------------------
Label_9433B7:
 .byte   W12
 .byte   N06 ,Cn1 ,v096
 .byte   W06
 .byte   N06
 .byte   W30
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @093   ----------------------------------------
 .byte   PATT
  .word Label_9432E8
@  #10 @094   ----------------------------------------
 .byte   PATT
  .word Label_943306
@  #10 @095   ----------------------------------------
 .byte   PATT
  .word Label_942FBC
@  #10 @096   ----------------------------------------
Label_9433DD:
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W18
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@  #10 @097   ----------------------------------------
 .byte   PATT
  .word Label_942FF9
@  #10 @098   ----------------------------------------
Label_9433FA:
 .byte   N12 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   N12 ,Cs1
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W12
 .byte   N36 ,Cs1 ,v080
 .byte   W12
 .byte   PEND 
@  #10 @099   ----------------------------------------
Label_943418:
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W12
 .byte   N36 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W12
 .byte   N36 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W12
 .byte   PEND 
@  #10 @100   ----------------------------------------
Label_943439:
 .byte   N48 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36
 .byte   W24
 .byte   N12 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W12
 .byte   N36 ,Cs1 ,v080
 .byte   W12
 .byte   PEND 
@  #10 @101   ----------------------------------------
 .byte   PATT
  .word Label_943418
@  #10 @102   ----------------------------------------
 .byte   PATT
  .word Label_943439
@  #10 @103   ----------------------------------------
 .byte   PATT
  .word Label_943418
@  #10 @104   ----------------------------------------
 .byte   PATT
  .word Label_943439
@  #10 @105   ----------------------------------------
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12
 .byte   W12
 .byte   N36 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W12
 .byte   N36 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W11
 .byte   N01 ,An2
 .byte   W01
@  #10 @106   ----------------------------------------
 .byte   N24 ,Cs1 ,v080
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v068
 .byte   W03
 .byte   An2 ,v072
 .byte   W03
 .byte   An2 ,v076
 .byte   W03
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   An2 ,v084
 .byte   W03
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   An2 ,v092
 .byte   W03
 .byte   N36 ,Dn1 ,v096
 .byte   TIE ,An2
 .byte   W36
 .byte   N60 ,Dn1
 .byte   W36
@  #10 @107   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   An2
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @108   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @109   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @110   ----------------------------------------
 .byte   PATT
  .word Label_9430C0
@  #10 @111   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @112   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @113   ----------------------------------------
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W72
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v072
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   N02
 .byte   W01
@  #10 @114   ----------------------------------------
 .byte   W02
 .byte   N03 ,An2 ,v084
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v096
 .byte   W04
 .byte   N36 ,Cn1
 .byte   N36 ,Dn1 ,v080
 .byte   TIE ,An2 ,v096
 .byte   W36
 .byte   N60 ,Dn1 ,v080
 .byte   W36
@  #10 @115   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   An2
 .byte   N24 ,Dn1
 .byte   W24
@  #10 @116   ----------------------------------------
 .byte   PATT
  .word Label_942BE8
@  #10 @117   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @118   ----------------------------------------
 .byte   W24
 .byte   N36 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W36
 .byte   TIE
 .byte   W36
@  #10 @119   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   N24
 .byte   W24
@  #10 @120   ----------------------------------------
 .byte   PATT
  .word Label_942BE8
@  #10 @121   ----------------------------------------
 .byte   PATT
  .word Label_942C18
@  #10 @122   ----------------------------------------
 .byte   GOTO
  .word Label_942C20
@  #10 @123   ----------------------------------------
 .byte   W12
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02 ,An2 ,v072
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v076
 .byte   W03
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   N02 ,An2 ,v084
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v088
 .byte   W01
@  #10 @124   ----------------------------------------
 .byte   PATT
  .word Label_942C41
@  #10 @125   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Cn1 ,v038
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @126   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @127   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @128   ----------------------------------------
 .byte   PATT
  .word Label_942CFE
@  #10 @129   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @130   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @131   ----------------------------------------
 .byte   PATT
  .word Label_942CA1
@  #10 @132   ----------------------------------------
 .byte   PATT
  .word Label_942CCD
@  #10 @133   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @134   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @135   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @136   ----------------------------------------
 .byte   PATT
  .word Label_942CFE
@  #10 @137   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @138   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @139   ----------------------------------------
 .byte   PATT
  .word Label_942CA1
@  #10 @140   ----------------------------------------
 .byte   W02
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02 ,An2 ,v096
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v100
 .byte   W03
 .byte   N03 ,An2 ,v104
 .byte   W03
 .byte   N02 ,An2 ,v108
 .byte   W03
 .byte   N04
 .byte   W04
 .byte   N24 ,Cs1 ,v080
 .byte   W24
 .byte   N24
 .byte   W24
 .byte   N24
 .byte   W24
@  #10 @141   ----------------------------------------
 .byte   PATT
  .word Label_942D35
@  #10 @142   ----------------------------------------
 .byte   PATT
  .word Label_942D60
@  #10 @143   ----------------------------------------
 .byte   PATT
  .word Label_942D35
@  #10 @144   ----------------------------------------
 .byte   N24 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N18
 .byte   W06
 .byte   N12 ,Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
 .byte   Dn1 ,v096
 .byte   W12
 .byte   Fs1 ,v052
 .byte   W12
@  #10 @145   ----------------------------------------
 .byte   PATT
  .word Label_942DAB
@  #10 @146   ----------------------------------------
 .byte   PATT
  .word Label_942DAB
@  #10 @147   ----------------------------------------
 .byte   PATT
  .word Label_942DAB
@  #10 @148   ----------------------------------------
 .byte   PATT
  .word Label_942DD1
@  #10 @149   ----------------------------------------
 .byte   PATT
  .word Label_942E0A
@  #10 @150   ----------------------------------------
 .byte   PATT
  .word Label_942E29
@  #10 @151   ----------------------------------------
 .byte   PATT
  .word Label_942E5E
@  #10 @152   ----------------------------------------
 .byte   W24
 .byte   EOT
 .byte   An2
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   N24 ,An2 ,v096
 .byte   W24
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @153   ----------------------------------------
 .byte   PATT
  .word Label_942E9A
@  #10 @154   ----------------------------------------
 .byte   PATT
  .word Label_942EB8
@  #10 @155   ----------------------------------------
 .byte   PATT
  .word Label_942ED5
@  #10 @156   ----------------------------------------
 .byte   PATT
  .word Label_942EF4
@  #10 @157   ----------------------------------------
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W36
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   EOT
 .byte   An2
 .byte   N06 ,Dn1
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02 ,An2 ,v072
 .byte   W01
 .byte   N06 ,Dn1 ,v080
 .byte   W02
 .byte   N03 ,An2 ,v072
 .byte   W03
 .byte   N02 ,An2 ,v076
 .byte   W01
 .byte   N36 ,Cn1 ,v096
 .byte   N36 ,Dn1 ,v080
 .byte   W02
 .byte   N03 ,An2
 .byte   W03
 .byte   N02 ,An2 ,v084
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02 ,An2 ,v088
 .byte   W01
@  #10 @158   ----------------------------------------
 .byte   PATT
  .word Label_942F5A
@  #10 @159   ----------------------------------------
 .byte   PATT
  .word Label_942E5E
@  #10 @160   ----------------------------------------
 .byte   W24
 .byte   EOT
 .byte   An2
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   N24 ,An2 ,v096
 .byte   W24
 .byte   N06 ,Dn1 ,v080
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N36 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   W24
 .byte   N06
 .byte   W06
 .byte   N06
 .byte   W06
@  #10 @161   ----------------------------------------
 .byte   PATT
  .word Label_942E9A
@  #10 @162   ----------------------------------------
 .byte   PATT
  .word Label_942EB8
@  #10 @163   ----------------------------------------
 .byte   PATT
  .word Label_942FBC
@  #10 @164   ----------------------------------------
 .byte   PATT
  .word Label_942FD6
@  #10 @165   ----------------------------------------
 .byte   PATT
  .word Label_942FF9
@  #10 @166   ----------------------------------------
 .byte   PATT
  .word Label_943018
@  #10 @167   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Cn1 ,v038
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @168   ----------------------------------------
 .byte   PATT
  .word Label_94302F
@  #10 @169   ----------------------------------------
 .byte   N24 ,Dn1 ,v080
 .byte   W96
@  #10 @170   ----------------------------------------
 .byte   W24
 .byte   N36
 .byte   TIE ,An2
 .byte   W36
 .byte   N60 ,Dn1
 .byte   W36
@  #10 @171   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   An2
 .byte   N24 ,Dn1
 .byte   W24
@  #10 @172   ----------------------------------------
 .byte   PATT
  .word Label_94302F
@  #10 @173   ----------------------------------------
 .byte   PATT
  .word Label_94304F
@  #10 @174   ----------------------------------------
 .byte   PATT
  .word Label_943074
@  #10 @175   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   An2
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @176   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @177   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @178   ----------------------------------------
 .byte   PATT
  .word Label_942CFE
@  #10 @179   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @180   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @181   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @182   ----------------------------------------
 .byte   PATT
  .word Label_9430C0
@  #10 @183   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @184   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @185   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @186   ----------------------------------------
 .byte   PATT
  .word Label_942CFE
@  #10 @187   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @188   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @189   ----------------------------------------
 .byte   PATT
  .word Label_9430E9
@  #10 @190   ----------------------------------------
 .byte   W02
 .byte   N03 ,Fs1 ,v036
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N88
 .byte   W04
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Cs1 ,v080
 .byte   N24 ,An2
 .byte   W24
 .byte   Cs1
 .byte   W12
 .byte   N36 ,Cn1 ,v096
 .byte   W12
 .byte   N24 ,Cs1 ,v080
 .byte   W24
@  #10 @191   ----------------------------------------
 .byte   PATT
  .word Label_943192
@  #10 @192   ----------------------------------------
 .byte   PATT
  .word Label_94315E
@  #10 @193   ----------------------------------------
 .byte   PATT
  .word Label_943192
@  #10 @194   ----------------------------------------
 .byte   PATT
  .word Label_9431CA
@  #10 @195   ----------------------------------------
 .byte   PATT
  .word Label_9431F8
@  #10 @196   ----------------------------------------
 .byte   PATT
  .word Label_943225
@  #10 @197   ----------------------------------------
 .byte   TIE ,Cn1 ,v096
 .byte   N06 ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W06
 .byte   TIE ,Dn1 ,v080
 .byte   N06 ,Fs1 ,v052
 .byte   W78
@  #10 @198   ----------------------------------------
 .byte   W24
 .byte   EOT
 .byte   Cn1 ,v038
 .byte   N24 ,Cn1 ,v096
 .byte   N24 ,Dn1 ,v080
 .byte   N24 ,An2 ,v096
 .byte   W24
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N24 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N06 ,Cn1 ,v096
 .byte   N12 ,Dn1 ,v080
 .byte   W06
 .byte   N06 ,Cn1 ,v096
 .byte   W06
@  #10 @199   ----------------------------------------
 .byte   PATT
  .word Label_9432AB
@  #10 @200   ----------------------------------------
 .byte   PATT
  .word Label_9432C9
@  #10 @201   ----------------------------------------
 .byte   PATT
  .word Label_9432E8
@  #10 @202   ----------------------------------------
 .byte   PATT
  .word Label_943306
@  #10 @203   ----------------------------------------
 .byte   PATT
  .word Label_942FBC
@  #10 @204   ----------------------------------------
 .byte   PATT
  .word Label_943324
@  #10 @205   ----------------------------------------
 .byte   PATT
  .word Label_943343
@  #10 @206   ----------------------------------------
 .byte   PATT
  .word Label_94337B
@  #10 @207   ----------------------------------------
 .byte   PATT
  .word Label_9432AB
@  #10 @208   ----------------------------------------
 .byte   PATT
  .word Label_9433B7
@  #10 @209   ----------------------------------------
 .byte   PATT
  .word Label_9432E8
@  #10 @210   ----------------------------------------
 .byte   PATT
  .word Label_943306
@  #10 @211   ----------------------------------------
 .byte   PATT
  .word Label_942FBC
@  #10 @212   ----------------------------------------
 .byte   PATT
  .word Label_9433DD
@  #10 @213   ----------------------------------------
 .byte   PATT
  .word Label_942FF9
@  #10 @214   ----------------------------------------
 .byte   PATT
  .word Label_9433FA
@  #10 @215   ----------------------------------------
 .byte   PATT
  .word Label_943418
@  #10 @216   ----------------------------------------
 .byte   PATT
  .word Label_943439
@  #10 @217   ----------------------------------------
 .byte   PATT
  .word Label_943418
@  #10 @218   ----------------------------------------
 .byte   PATT
  .word Label_943439
@  #10 @219   ----------------------------------------
 .byte   PATT
  .word Label_943418
@  #10 @220   ----------------------------------------
 .byte   PATT
  .word Label_943439
@  #10 @221   ----------------------------------------
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N12
 .byte   W12
 .byte   N36 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N24
 .byte   W12
 .byte   N32 ,Cs1 ,v080
 .byte   W12
 .byte   N06 ,Fs1 ,v036
 .byte   W06
 .byte   N06
 .byte   W06
 .byte   N11
 .byte   W12
@  #10 @222   ----------------------------------------
 .byte   N03 ,An2 ,v064
 .byte   W03
 .byte   An2 ,v068
 .byte   W03
 .byte   An2 ,v072
 .byte   W03
 .byte   An2 ,v076
 .byte   W03
 .byte   N06 ,Fs1 ,v036
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   An2 ,v084
 .byte   W03
 .byte   An2 ,v088
 .byte   W03
 .byte   An2 ,v092
 .byte   W03
 .byte   N36 ,Dn1 ,v096
 .byte   TIE ,An2
 .byte   W36
 .byte   N60 ,Dn1
 .byte   W36
@  #10 @223   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   An2
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @224   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @225   ----------------------------------------
 .byte   PATT
  .word Label_942CF6
@  #10 @226   ----------------------------------------
 .byte   PATT
  .word Label_9430C0
@  #10 @227   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Dn1
 .byte   N24 ,Dn1 ,v080
 .byte   W24
@  #10 @228   ----------------------------------------
 .byte   PATT
  .word Label_942C6F
@  #10 @229   ----------------------------------------
 .byte   N72 ,Cn1 ,v096
 .byte   W72
 .byte   N02 ,An2 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v068
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v072
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v076
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v080
 .byte   W03
 .byte   N02
 .byte   W01
@  #10 @230   ----------------------------------------
 .byte   W02
 .byte   N03 ,An2 ,v084
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v088
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,An2 ,v092
 .byte   W03
 .byte   N02
 .byte   W07
 .byte   N11 ,Cn1
 .byte   W11
 .byte   FINE

@******************************************************@
	.align	2

Song_FodlanWinds:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0A_pri	@ Priority
	.byte	song0A_rev	@ Reverb.
    
	.word	song0A_grp
    
	.word	song0A_001
	.word	song0A_002
	.word	song0A_003
	.word	song0A_004
	.word	song0A_005
	.word	song0A_006
	.word	song0A_007
	.word	song0A_008
	.word	song0A_009
	.word	song0A_010

	.end
