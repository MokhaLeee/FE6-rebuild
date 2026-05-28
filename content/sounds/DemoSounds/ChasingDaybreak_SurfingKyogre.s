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
	.global	Song_ChasingDaybreak
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

.align 2, 0
song06_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   TEMPO , 126*song06_tbs/2
 .byte   VOICE , 49
 .byte   PAN , c_v+3
 .byte   VOL , 47*song06_mvl/mxv
 .byte   VOL , 47*song06_mvl/mxv
 .byte   W24
Label_0111FB30:
 .byte   N05 ,Gn2 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,An2
 .byte   W24
 .byte   N05 ,As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #01 @001   ----------------------------------------
 .byte   N23 ,Gn2
 .byte   W24
 .byte   PEND 
Label_0111FB4A:
 .byte   N05 ,An2 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Fn2
 .byte   W24
 .byte   N05 ,Gn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #01 @002   ----------------------------------------
 .byte   N23 ,Dn2
 .byte   W24
 .byte   PEND 
Label_0111FB64:
 .byte   N05 ,Gn2 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,An2
 .byte   W24
 .byte   N05 ,As2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #01 @003   ----------------------------------------
 .byte   N23 ,Cn3
 .byte   W24
 .byte   PEND 
Label_0111FB7E:
 .byte   N05 ,Cn3 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn2
 .byte   W24
 .byte   N05 ,Fn2
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #01 @004   ----------------------------------------
 .byte   N23 ,Gn2
 .byte   W24
 .byte   PEND 
@  #01 @005   ----------------------------------------
 .byte   PATT
  .word Label_0111FB30
@  #01 @006   ----------------------------------------
 .byte   PATT
  .word Label_0111FB4A
@  #01 @007   ----------------------------------------
 .byte   PATT
  .word Label_0111FB64
@  #01 @008   ----------------------------------------
 .byte   PATT
  .word Label_0111FB7E
@  #01 @009   ----------------------------------------
Label_0111FBAC:
 .byte   N23 ,An2 ,v096
 .byte   W24
 .byte   N11 ,As2
 .byte   W12
 .byte   N23 ,Gn2
 .byte   W12
 .byte   W12
 .byte   N11 ,An2
 .byte   W12
 .byte   N23 ,Dn2
 .byte   W24
 .byte   PEND 
@  #01 @010   ----------------------------------------
Label_0111FBBE:
 .byte   N23 ,As2 ,v096
 .byte   W24
 .byte   Gn2
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   N11 ,Dn3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
@  #01 @011   ----------------------------------------
Label_0111FBCC:
 .byte   N23 ,Dn3 ,v096
 .byte   W24
 .byte   N11 ,As2
 .byte   W12
 .byte   N23 ,Cn3
 .byte   W12
 .byte   W12
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N23 ,As2
 .byte   W24
 .byte   PEND 
@  #01 @012   ----------------------------------------
Label_0111FBDE:
 .byte   N23 ,Fn3 ,v096
 .byte   W24
 .byte   As2
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   Fn2
 .byte   W24
 .byte   PEND 
@  #01 @013   ----------------------------------------
Label_0111FBE9:
 .byte   N23 ,Dn3 ,v096
 .byte   W24
 .byte   N11 ,As2
 .byte   W12
 .byte   N23 ,Cn3
 .byte   W12
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,An2
 .byte   W24
 .byte   PEND 
@  #01 @014   ----------------------------------------
Label_0111FBFA:
 .byte   N23 ,As2 ,v096
 .byte   W24
 .byte   Gn2
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   As2
 .byte   W24
 .byte   PEND 
@  #01 @015   ----------------------------------------
Label_0111FC05:
 .byte   N23 ,Dn3 ,v096
 .byte   W24
 .byte   As2
 .byte   W24
 .byte   Cn3
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   PEND 
@  #01 @016   ----------------------------------------
Label_0111FC10:
 .byte   N23 ,As2 ,v096
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   As2
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   PEND 
@  #01 @017   ----------------------------------------
Label_0111FC1B:
 .byte   N68 ,Dn3 ,v096
 .byte   W72
 .byte   TIE ,An2
 .byte   W24
 .byte   PEND 
@  #01 @018   ----------------------------------------
Label_0111FC23:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   An2
 .byte   W01
@  #01 @019   ----------------------------------------
Label_0111FC29:
 .byte   N32 ,Dn3 ,v096
 .byte   W36
 .byte   An2
 .byte   W36
 .byte   N44 ,As2
 .byte   W24
 .byte   PEND 
@  #01 @020   ----------------------------------------
Label_0111FC33:
 .byte   W24
 .byte   N23 ,Cn3 ,v096
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   PEND 
@  #01 @021   ----------------------------------------
Label_0111FC3D:
 .byte   N68 ,Gn2 ,v096
 .byte   W72
 .byte   As2
 .byte   W24
 .byte   PEND 
@  #01 @022   ----------------------------------------
Label_0111FC44:
 .byte   W48
 .byte   N44 ,An2 ,v096
 .byte   W48
 .byte   PEND 
@  #01 @023   ----------------------------------------
Label_0111FC4A:
 .byte   TIE ,Dn3 ,v096
 .byte   W96
 .byte   PEND 
@  #01 @024   ----------------------------------------
 .byte   PATT
  .word Label_0111FC23
@  #01 @025   ----------------------------------------
 .byte   EOT
 .byte   Dn3
 .byte   W01
Label_0111FC57:
 .byte   TIE ,As2 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @026   ----------------------------------------
Label_0111FC5C:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   As2
 .byte   W01
@  #01 @027   ----------------------------------------
Label_0111FC62:
 .byte   N92 ,As2 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @028   ----------------------------------------
Label_0111FC67:
 .byte   N92 ,Fs2 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @029   ----------------------------------------
 .byte   PATT
  .word Label_0111FC62
@  #01 @030   ----------------------------------------
Label_0111FC71:
 .byte   N44 ,Fs2 ,v080
 .byte   W48
 .byte   Gs2
 .byte   W48
 .byte   PEND 
@  #01 @031   ----------------------------------------
 .byte   PATT
  .word Label_0111FC67
@  #01 @032   ----------------------------------------
Label_0111FC7D:
 .byte   N68 ,As2 ,v080
 .byte   W72
 .byte   N23 ,Ds3
 .byte   W24
 .byte   PEND 
@  #01 @033   ----------------------------------------
Label_0111FC85:
 .byte   N44 ,Ds3 ,v080
 .byte   W48
 .byte   As2
 .byte   W48
 .byte   PEND 
@  #01 @034   ----------------------------------------
Label_0111FC8C:
 .byte   N92 ,Cn3 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @035   ----------------------------------------
 .byte   En3
 .byte   W96
@  #01 @036   ----------------------------------------
Label_0111FC93:
 .byte   N92 ,Ds3 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @037   ----------------------------------------
 .byte   PATT
  .word Label_0111FC93
@  #01 @038   ----------------------------------------
Label_0111FC9D:
 .byte   N92 ,Cs3 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @039   ----------------------------------------
 .byte   En3
 .byte   W96
@  #01 @040   ----------------------------------------
Label_0111FCA4:
 .byte   N92 ,Gs2 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @041   ----------------------------------------
Label_0111FCA9:
 .byte   TIE ,Gn2 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @042   ----------------------------------------
 .byte   PATT
  .word Label_0111FC5C
@  #01 @043   ----------------------------------------
 .byte   EOT
 .byte   Gn2
 .byte   W01
Label_0111FCB6:
 .byte   N68 ,Dn3 ,v080
 .byte   N56 ,Fs3 ,v096
 .byte   W48
 .byte   W12
 .byte   N11 ,Bn3
 .byte   W12
 .byte   N23 ,Bn2 ,v080
 .byte   N11 ,Cs4 ,v096
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #01 @044   ----------------------------------------
Label_0111FCCB:
 .byte   N23 ,Gn3 ,v080
 .byte   N56 ,Cs4 ,v096
 .byte   W24
 .byte   N23 ,Fs3 ,v080
 .byte   W24
 .byte   En3
 .byte   W12
 .byte   N11 ,Fs3 ,v096
 .byte   W12
 .byte   N23 ,Dn3 ,v080
 .byte   N11 ,Dn4 ,v096
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #01 @045   ----------------------------------------
Label_0111FCE6:
 .byte   N23 ,Cs3 ,v080
 .byte   N56 ,Dn4 ,v096
 .byte   W24
 .byte   N23 ,Dn3 ,v080
 .byte   W24
 .byte   Bn2
 .byte   W12
 .byte   N11 ,Bn3 ,v096
 .byte   W12
 .byte   Cs3 ,v080
 .byte   N11 ,Cs4 ,v096
 .byte   W12
 .byte   Dn3 ,v080
 .byte   N11 ,Dn4 ,v096
 .byte   W12
 .byte   PEND 
@  #01 @046   ----------------------------------------
Label_0111FD04:
 .byte   N23 ,En3 ,v080
 .byte   N23 ,An4 ,v096
 .byte   W24
 .byte   Dn3 ,v080
 .byte   N23 ,Bn4 ,v096
 .byte   W24
 .byte   En3 ,v080
 .byte   N23 ,Gn4 ,v096
 .byte   W24
 .byte   Fs3 ,v080
 .byte   N23 ,Fs4 ,v096
 .byte   W24
 .byte   PEND 
@  #01 @047   ----------------------------------------
Label_0111FD1E:
 .byte   N23 ,Gn3 ,v080
 .byte   N56 ,Gn4 ,v096
 .byte   W24
 .byte   N23 ,Fs3 ,v080
 .byte   W24
 .byte   Gn3
 .byte   W12
 .byte   N11 ,En4 ,v096
 .byte   W12
 .byte   N23 ,Dn4 ,v080
 .byte   N11 ,Fs4 ,v096
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
@  #01 @048   ----------------------------------------
Label_0111FD39:
 .byte   N23 ,Cs4 ,v080
 .byte   N23 ,Fs4 ,v096
 .byte   W24
 .byte   Bn3 ,v080
 .byte   W24
 .byte   As3
 .byte   N23 ,Cs4 ,v096
 .byte   W24
 .byte   Bn3 ,v080
 .byte   N23 ,Dn4 ,v096
 .byte   W24
 .byte   PEND 
@  #01 @049   ----------------------------------------
Label_0111FD4F:
 .byte   N23 ,Cs4 ,v080
 .byte   N11 ,Fs4 ,v096
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N32 ,An3 ,v080
 .byte   N44 ,En4 ,v096
 .byte   W24
 .byte   W12
 .byte   N11 ,Gn3 ,v080
 .byte   W12
 .byte   Fs3
 .byte   N11 ,Dn4 ,v096
 .byte   W12
 .byte   Gn3 ,v080
 .byte   N11 ,En4 ,v096
 .byte   W12
 .byte   PEND 
@  #01 @050   ----------------------------------------
Label_0111FD70:
 .byte   N92 ,Fs3 ,v080
 .byte   N92 ,Fs4 ,v096
 .byte   W96
 .byte   PEND 
@  #01 @051   ----------------------------------------
Label_0111FD78:
 .byte   TIE ,Gn3 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @052   ----------------------------------------
 .byte   PATT
  .word Label_0111FC5C
@  #01 @053   ----------------------------------------
 .byte   EOT
 .byte   Gn3
 .byte   W01
Label_0111FD85:
 .byte   N92 ,Fs3 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @054   ----------------------------------------
Label_0111FD8A:
 .byte   N44 ,Bn2 ,v080
 .byte   W48
 .byte   Dn3
 .byte   W48
 .byte   PEND 
@  #01 @055   ----------------------------------------
Label_0111FD91:
 .byte   TIE ,An2 ,v080
 .byte   W96
 .byte   PEND 
@  #01 @056   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N23 ,Gn2
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   Bn2
 .byte   W24
@  #01 @057   ----------------------------------------
Label_0111FDA0:
 .byte   N44 ,En3 ,v080
 .byte   W48
 .byte   TIE ,Dn3
 .byte   W48
 .byte   PEND 
@  #01 @058   ----------------------------------------
 .byte   PATT
  .word Label_0111FC5C
@  #01 @059   ----------------------------------------
 .byte   EOT
 .byte   Dn3
 .byte   W01
Label_0111FDB0:
 .byte   N11 ,Bn3 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_0111FDB9:
 .byte   N23 ,Bn3 ,v080
 .byte   W24
@  #01 @060   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   N11 ,Dn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
Label_0111FDC5:
 .byte   N23 ,Bn3 ,v080
 .byte   W24
 .byte   N23
 .byte   W24
@  #01 @061   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #01 @062   ----------------------------------------
 .byte   PATT
  .word Label_0111FDB9
@  #01 @063   ----------------------------------------
Label_0111FDD3:
 .byte   N32 ,Fs4 ,v080
 .byte   W36
 .byte   N11
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
Label_0111FDDE:
 .byte   N23 ,Gn4 ,v080
 .byte   W24
@  #01 @064   ----------------------------------------
 .byte   Fs4
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   PEND 
Label_0111FDE7:
 .byte   N32 ,En4 ,v080
 .byte   W36
 .byte   N23
 .byte   W24
@  #01 @065   ----------------------------------------
 .byte   N11 ,Dn4
 .byte   W12
 .byte   PEND 
Label_0111FDF1:
 .byte   N23 ,Cs4 ,v080
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   En4
 .byte   W24
 .byte   PEND 
Label_0111FDFA:
 .byte   N44 ,As3 ,v080
 .byte   W48
@  #01 @066   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_0111FE01:
 .byte   N32 ,Cn4 ,v080
 .byte   W36
 .byte   An3
 .byte   W36
 .byte   PEND 
@  #01 @067   ----------------------------------------
Label_0111FE08:
 .byte   N32 ,An3 ,v080
 .byte   W36
 .byte   As3
 .byte   W36
 .byte   PEND 
Label_0111FE0F:
 .byte   N44 ,An3 ,v080
 .byte   W48
@  #01 @068   ----------------------------------------
 .byte   N23 ,Fn3
 .byte   W24
 .byte   PEND 
Label_0111FE17:
 .byte   N44 ,Dn4 ,v080
 .byte   W48
 .byte   N23 ,Cn4
 .byte   W24
 .byte   PEND 
@  #01 @069   ----------------------------------------
Label_0111FE1F:
 .byte   N32 ,As3 ,v080
 .byte   W36
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_0111FE26:
 .byte   N32 ,An3 ,v080
 .byte   W36
@  #01 @070   ----------------------------------------
 .byte   Cn4
 .byte   W36
 .byte   PEND 
Label_0111FE2D:
 .byte   N32 ,En4 ,v080
 .byte   W36
 .byte   Dn4
 .byte   W36
 .byte   PEND 
@  #01 @071   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @072   ----------------------------------------
Label_0111FE36:
 .byte   N11 ,Fn3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #01 @073   ----------------------------------------
Label_0111FE49:
 .byte   N11 ,Cn3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #01 @074   ----------------------------------------
Label_0111FE5C:
 .byte   N11 ,Cn3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #01 @075   ----------------------------------------
Label_0111FE6F:
 .byte   N11 ,Gn3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #01 @076   ----------------------------------------
 .byte   GOTO
  .word Label_0111FB30
@  #01 @077   ----------------------------------------
 .byte   PATT
  .word Label_0111FB30
@  #01 @078   ----------------------------------------
 .byte   PATT
  .word Label_0111FB4A
@  #01 @079   ----------------------------------------
 .byte   PATT
  .word Label_0111FB64
@  #01 @080   ----------------------------------------
 .byte   PATT
  .word Label_0111FB7E
@  #01 @081   ----------------------------------------
 .byte   PATT
  .word Label_0111FB30
@  #01 @082   ----------------------------------------
 .byte   PATT
  .word Label_0111FB4A
@  #01 @083   ----------------------------------------
 .byte   PATT
  .word Label_0111FB64
@  #01 @084   ----------------------------------------
 .byte   PATT
  .word Label_0111FB7E
@  #01 @085   ----------------------------------------
 .byte   PATT
  .word Label_0111FBAC
@  #01 @086   ----------------------------------------
 .byte   PATT
  .word Label_0111FBBE
@  #01 @087   ----------------------------------------
 .byte   PATT
  .word Label_0111FBCC
@  #01 @088   ----------------------------------------
 .byte   PATT
  .word Label_0111FBDE
@  #01 @089   ----------------------------------------
 .byte   PATT
  .word Label_0111FBE9
@  #01 @090   ----------------------------------------
 .byte   PATT
  .word Label_0111FBFA
@  #01 @091   ----------------------------------------
 .byte   PATT
  .word Label_0111FC05
@  #01 @092   ----------------------------------------
 .byte   PATT
  .word Label_0111FC10
@  #01 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111FC1B
@  #01 @094   ----------------------------------------
 .byte   PATT
  .word Label_0111FC23
@  #01 @095   ----------------------------------------
 .byte   EOT
 .byte   An2
 .byte   W01
@  #01 @096   ----------------------------------------
 .byte   PATT
  .word Label_0111FC29
@  #01 @097   ----------------------------------------
 .byte   PATT
  .word Label_0111FC33
@  #01 @098   ----------------------------------------
 .byte   PATT
  .word Label_0111FC3D
@  #01 @099   ----------------------------------------
 .byte   PATT
  .word Label_0111FC44
@  #01 @100   ----------------------------------------
 .byte   PATT
  .word Label_0111FC4A
@  #01 @101   ----------------------------------------
 .byte   PATT
  .word Label_0111FC23
@  #01 @102   ----------------------------------------
 .byte   EOT
 .byte   Dn3
 .byte   W01
@  #01 @103   ----------------------------------------
 .byte   PATT
  .word Label_0111FC57
@  #01 @104   ----------------------------------------
 .byte   PATT
  .word Label_0111FC5C
@  #01 @105   ----------------------------------------
 .byte   EOT
 .byte   As2
 .byte   W01
@  #01 @106   ----------------------------------------
 .byte   PATT
  .word Label_0111FC62
@  #01 @107   ----------------------------------------
 .byte   PATT
  .word Label_0111FC67
@  #01 @108   ----------------------------------------
 .byte   PATT
  .word Label_0111FC62
@  #01 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111FC71
@  #01 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111FC67
@  #01 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111FC7D
@  #01 @112   ----------------------------------------
 .byte   PATT
  .word Label_0111FC85
@  #01 @113   ----------------------------------------
 .byte   PATT
  .word Label_0111FC8C
@  #01 @114   ----------------------------------------
 .byte   N92 ,En3 ,v080
 .byte   W96
@  #01 @115   ----------------------------------------
 .byte   PATT
  .word Label_0111FC93
@  #01 @116   ----------------------------------------
 .byte   PATT
  .word Label_0111FC93
@  #01 @117   ----------------------------------------
 .byte   PATT
  .word Label_0111FC9D
@  #01 @118   ----------------------------------------
 .byte   N92 ,En3 ,v080
 .byte   W96
@  #01 @119   ----------------------------------------
 .byte   PATT
  .word Label_0111FCA4
@  #01 @120   ----------------------------------------
 .byte   PATT
  .word Label_0111FCA9
@  #01 @121   ----------------------------------------
 .byte   PATT
  .word Label_0111FC5C
@  #01 @122   ----------------------------------------
 .byte   EOT
 .byte   Gn2
 .byte   W01
@  #01 @123   ----------------------------------------
 .byte   PATT
  .word Label_0111FCB6
@  #01 @124   ----------------------------------------
 .byte   PATT
  .word Label_0111FCCB
@  #01 @125   ----------------------------------------
 .byte   PATT
  .word Label_0111FCE6
@  #01 @126   ----------------------------------------
 .byte   PATT
  .word Label_0111FD04
@  #01 @127   ----------------------------------------
 .byte   PATT
  .word Label_0111FD1E
@  #01 @128   ----------------------------------------
 .byte   PATT
  .word Label_0111FD39
@  #01 @129   ----------------------------------------
 .byte   PATT
  .word Label_0111FD4F
@  #01 @130   ----------------------------------------
 .byte   PATT
  .word Label_0111FD70
@  #01 @131   ----------------------------------------
 .byte   PATT
  .word Label_0111FD78
@  #01 @132   ----------------------------------------
 .byte   PATT
  .word Label_0111FC5C
@  #01 @133   ----------------------------------------
 .byte   EOT
 .byte   Gn3
 .byte   W01
@  #01 @134   ----------------------------------------
 .byte   PATT
  .word Label_0111FD85
@  #01 @135   ----------------------------------------
 .byte   PATT
  .word Label_0111FD8A
@  #01 @136   ----------------------------------------
 .byte   PATT
  .word Label_0111FD91
@  #01 @137   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   An2
 .byte   W01
 .byte   N23 ,Gn2 ,v080
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   Bn2
 .byte   W24
@  #01 @138   ----------------------------------------
 .byte   PATT
  .word Label_0111FDA0
@  #01 @139   ----------------------------------------
 .byte   PATT
  .word Label_0111FC5C
@  #01 @140   ----------------------------------------
 .byte   EOT
 .byte   Dn3
 .byte   W01
@  #01 @141   ----------------------------------------
 .byte   PATT
  .word Label_0111FDB0
@  #01 @142   ----------------------------------------
 .byte   PATT
  .word Label_0111FDB9
@  #01 @143   ----------------------------------------
 .byte   PATT
  .word Label_0111FDC5
@  #01 @144   ----------------------------------------
 .byte   PATT
  .word Label_0111FDB9
@  #01 @145   ----------------------------------------
 .byte   PATT
  .word Label_0111FDD3
@  #01 @146   ----------------------------------------
 .byte   PATT
  .word Label_0111FDDE
@  #01 @147   ----------------------------------------
 .byte   PATT
  .word Label_0111FDE7
@  #01 @148   ----------------------------------------
 .byte   PATT
  .word Label_0111FDF1
@  #01 @149   ----------------------------------------
 .byte   PATT
  .word Label_0111FDFA
@  #01 @150   ----------------------------------------
 .byte   PATT
  .word Label_0111FE01
@  #01 @151   ----------------------------------------
 .byte   PATT
  .word Label_0111FE08
@  #01 @152   ----------------------------------------
 .byte   PATT
  .word Label_0111FE0F
@  #01 @153   ----------------------------------------
 .byte   PATT
  .word Label_0111FE17
@  #01 @154   ----------------------------------------
 .byte   PATT
  .word Label_0111FE1F
@  #01 @155   ----------------------------------------
 .byte   PATT
  .word Label_0111FE26
@  #01 @156   ----------------------------------------
 .byte   PATT
  .word Label_0111FE2D
@  #01 @157   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @158   ----------------------------------------
 .byte   PATT
  .word Label_0111FE36
@  #01 @159   ----------------------------------------
 .byte   PATT
  .word Label_0111FE49
@  #01 @160   ----------------------------------------
 .byte   PATT
  .word Label_0111FE5C
@  #01 @161   ----------------------------------------
 .byte   PATT
  .word Label_0111FE6F
@  #01 @162   ----------------------------------------
 .byte   N11 ,Fn3 ,v080
 .byte   W23
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

.align 2, 0
song06_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 61
 .byte   PAN , c_v-4
 .byte   VOL , 47*song06_mvl/mxv
 .byte   VOL , 47*song06_mvl/mxv
 .byte   W24
Label_01120046:
 .byte   W96
@  #02 @001   ----------------------------------------
 .byte   W96
@  #02 @002   ----------------------------------------
 .byte   W96
@  #02 @003   ----------------------------------------
 .byte   W96
@  #02 @004   ----------------------------------------
Label_0112004A:
 .byte   N92 ,Dn2 ,v080
 .byte   N92 ,Gn2
 .byte   W96
 .byte   PEND 
@  #02 @005   ----------------------------------------
Label_01120051:
 .byte   N92 ,Fn2 ,v080
 .byte   N92 ,As2
 .byte   W96
 .byte   PEND 
@  #02 @006   ----------------------------------------
Label_01120058:
 .byte   N92 ,As2 ,v080
 .byte   N92 ,Ds3
 .byte   W96
 .byte   PEND 
@  #02 @007   ----------------------------------------
Label_0112005F:
 .byte   N92 ,Gn2 ,v080
 .byte   N92 ,Cn3
 .byte   W96
 .byte   PEND 
@  #02 @008   ----------------------------------------
Label_01120066:
 .byte   N32 ,Gn2 ,v080
 .byte   W36
 .byte   As2
 .byte   W36
 .byte   TIE ,Fn2
 .byte   W24
 .byte   PEND 
@  #02 @009   ----------------------------------------
Label_01120070:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #02 @010   ----------------------------------------
Label_01120076:
 .byte   N32 ,Gn2 ,v080
 .byte   W36
 .byte   Cn3
 .byte   W36
 .byte   TIE ,As2
 .byte   W24
 .byte   PEND 
@  #02 @011   ----------------------------------------
 .byte   PATT
  .word Label_01120070
@  #02 @012   ----------------------------------------
 .byte   EOT
 .byte   As2
 .byte   W01
Label_01120088:
 .byte   N32 ,As2 ,v080
 .byte   W36
 .byte   N32
 .byte   W36
 .byte   N92 ,An2
 .byte   W24
 .byte   PEND 
@  #02 @013   ----------------------------------------
Label_01120092:
 .byte   W72
 .byte   N23 ,Cn3 ,v080
 .byte   W24
 .byte   PEND 
@  #02 @014   ----------------------------------------
Label_01120098:
 .byte   TIE ,Ds2 ,v080
 .byte   W96
 .byte   PEND 
@  #02 @015   ----------------------------------------
 .byte   PATT
  .word Label_01120070
@  #02 @016   ----------------------------------------
 .byte   EOT
 .byte   Ds2
 .byte   W01
 .byte   W96
@  #02 @017   ----------------------------------------
Label_011200A6:
 .byte   N23 ,As3 ,v096
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   N44 ,Fn3
 .byte   W48
 .byte   PEND 
@  #02 @018   ----------------------------------------
Label_011200B0:
 .byte   N23 ,Fn3 ,v096
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N23 ,Ds3
 .byte   W12
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N44 ,As3
 .byte   W24
 .byte   PEND 
@  #02 @019   ----------------------------------------
Label_011200C2:
 .byte   W24
 .byte   N23 ,An3 ,v096
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   PEND 
@  #02 @020   ----------------------------------------
Label_011200CC:
 .byte   N11 ,Ds4 ,v096
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N92 ,As3
 .byte   W24
 .byte   W48
 .byte   PEND 
@  #02 @021   ----------------------------------------
Label_011200D7:
 .byte   W24
 .byte   N23 ,As3 ,v096
 .byte   W24
 .byte   N44 ,An3
 .byte   W48
 .byte   PEND 
@  #02 @022   ----------------------------------------
Label_011200E0:
 .byte   N11 ,An3 ,v096
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   TIE ,Cn4 ,v080
 .byte   TIE ,Dn4
 .byte   W24
 .byte   W48
 .byte   PEND 
@  #02 @023   ----------------------------------------
 .byte   PATT
  .word Label_01120070
@  #02 @024   ----------------------------------------
 .byte   EOT
 .byte   Cn4 ,v074
 .byte   W01
 .byte   W96
@  #02 @025   ----------------------------------------
 .byte   W96
@  #02 @026   ----------------------------------------
 .byte   W96
@  #02 @027   ----------------------------------------
 .byte   W96
@  #02 @028   ----------------------------------------
 .byte   W96
@  #02 @029   ----------------------------------------
 .byte   W96
@  #02 @030   ----------------------------------------
 .byte   W96
@  #02 @031   ----------------------------------------
 .byte   W96
@  #02 @032   ----------------------------------------
 .byte   W96
@  #02 @033   ----------------------------------------
 .byte   W96
@  #02 @034   ----------------------------------------
Label_01120101:
 .byte   N92 ,Cs3 ,v080
 .byte   N92 ,En3
 .byte   W96
 .byte   PEND 
@  #02 @035   ----------------------------------------
Label_01120108:
 .byte   N92 ,Cn3 ,v080
 .byte   N92 ,Ds3
 .byte   W96
 .byte   PEND 
@  #02 @036   ----------------------------------------
Label_0112010F:
 .byte   N92 ,Bn2 ,v080
 .byte   N92 ,Ds3
 .byte   W96
 .byte   PEND 
@  #02 @037   ----------------------------------------
Label_01120116:
 .byte   N92 ,As2 ,v080
 .byte   N92 ,Cs3
 .byte   W96
 .byte   PEND 
@  #02 @038   ----------------------------------------
Label_0112011D:
 .byte   N92 ,An2 ,v080
 .byte   N92 ,En3
 .byte   W96
 .byte   PEND 
@  #02 @039   ----------------------------------------
Label_01120124:
 .byte   W24
 .byte   N23 ,Gs3 ,v096
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   Cn4
 .byte   W24
 .byte   PEND 
@  #02 @040   ----------------------------------------
 .byte   TIE ,Bn3
 .byte   W96
@  #02 @041   ----------------------------------------
Label_01120131:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Bn3
 .byte   W01
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
 .byte   W96
@  #02 @049   ----------------------------------------
 .byte   W96
@  #02 @050   ----------------------------------------
 .byte   W96
@  #02 @051   ----------------------------------------
 .byte   W96
@  #02 @052   ----------------------------------------
 .byte   W96
@  #02 @053   ----------------------------------------
Label_01120142:
 .byte   W48
 .byte   N23 ,Cs3 ,v112
 .byte   W24
 .byte   N11 ,Dn3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #02 @054   ----------------------------------------
Label_0112014D:
 .byte   N56 ,Fs3 ,v112
 .byte   W48
 .byte   W12
 .byte   N23 ,En3
 .byte   W24
 .byte   N11 ,An3
 .byte   W12
 .byte   PEND 
@  #02 @055   ----------------------------------------
Label_01120159:
 .byte   N44 ,Bn3 ,v112
 .byte   W48
 .byte   N23 ,An3
 .byte   W24
 .byte   Fs3
 .byte   W24
 .byte   PEND 
@  #02 @056   ----------------------------------------
Label_01120163:
 .byte   N11 ,En3 ,v112
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   Cs3
 .byte   W24
 .byte   PEND 
@  #02 @057   ----------------------------------------
 .byte   N92 ,Dn3
 .byte   W96
@  #02 @058   ----------------------------------------
 .byte   W72
Label_01120174:
 .byte   N92 ,Fs3 ,v112
 .byte   W72
 .byte   PEND 
@  #02 @059   ----------------------------------------
Label_01120179:
 .byte   W24
 .byte   N23 ,En3 ,v112
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   PEND 
Label_01120181:
 .byte   N23 ,Fs3 ,v112
 .byte   W24
@  #02 @060   ----------------------------------------
 .byte   N44 ,En3
 .byte   W48
 .byte   PEND 
Label_01120189:
 .byte   W48
@  #02 @061   ----------------------------------------
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
Label_01120191:
 .byte   N44 ,Bn2 ,v096
 .byte   W48
 .byte   N23 ,An2
 .byte   W24
 .byte   PEND 
@  #02 @062   ----------------------------------------
Label_01120199:
 .byte   N23 ,Bn2 ,v096
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   PEND 
Label_011201A2:
 .byte   N23 ,Cs3 ,v096
 .byte   W24
@  #02 @063   ----------------------------------------
 .byte   Dn3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   PEND 
Label_011201AB:
 .byte   W48
@  #02 @064   ----------------------------------------
 .byte   N23 ,Dn3 ,v112
 .byte   W24
 .byte   PEND 
Label_011201B1:
 .byte   N32 ,Fn3 ,v112
 .byte   W36
 .byte   En3
 .byte   W36
 .byte   PEND 
@  #02 @065   ----------------------------------------
Label_011201B8:
 .byte   N32 ,En3 ,v112
 .byte   W36
 .byte   Dn3
 .byte   W36
 .byte   PEND 
Label_011201BF:
 .byte   N44 ,An3 ,v112
 .byte   W48
@  #02 @066   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_011201C7:
 .byte   N44 ,An3 ,v112
 .byte   W48
 .byte   N23 ,Fn3
 .byte   W24
 .byte   PEND 
@  #02 @067   ----------------------------------------
Label_011201CF:
 .byte   N44 ,Cn4 ,v112
 .byte   W48
 .byte   N11 ,As3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
Label_011201D9:
 .byte   N32 ,Gn3 ,v112
 .byte   W36
@  #02 @068   ----------------------------------------
 .byte   N32
 .byte   W36
 .byte   PEND 
Label_011201E0:
 .byte   N68 ,An3 ,v112
 .byte   W72
 .byte   PEND 
@  #02 @069   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @070   ----------------------------------------
 .byte   W96
@  #02 @071   ----------------------------------------
 .byte   W96
@  #02 @072   ----------------------------------------
 .byte   W96
@  #02 @073   ----------------------------------------
 .byte   W96
@  #02 @074   ----------------------------------------
 .byte   GOTO
  .word Label_01120046
@  #02 @075   ----------------------------------------
 .byte   W96
@  #02 @076   ----------------------------------------
 .byte   W96
@  #02 @077   ----------------------------------------
 .byte   W96
@  #02 @078   ----------------------------------------
 .byte   W96
@  #02 @079   ----------------------------------------
 .byte   PATT
  .word Label_0112004A
@  #02 @080   ----------------------------------------
 .byte   PATT
  .word Label_01120051
@  #02 @081   ----------------------------------------
 .byte   PATT
  .word Label_01120058
@  #02 @082   ----------------------------------------
 .byte   PATT
  .word Label_0112005F
@  #02 @083   ----------------------------------------
 .byte   PATT
  .word Label_01120066
@  #02 @084   ----------------------------------------
 .byte   PATT
  .word Label_01120070
@  #02 @085   ----------------------------------------
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #02 @086   ----------------------------------------
 .byte   PATT
  .word Label_01120076
@  #02 @087   ----------------------------------------
 .byte   PATT
  .word Label_01120070
@  #02 @088   ----------------------------------------
 .byte   EOT
 .byte   As2
 .byte   W01
@  #02 @089   ----------------------------------------
 .byte   PATT
  .word Label_01120088
@  #02 @090   ----------------------------------------
 .byte   PATT
  .word Label_01120092
@  #02 @091   ----------------------------------------
 .byte   PATT
  .word Label_01120098
@  #02 @092   ----------------------------------------
 .byte   PATT
  .word Label_01120070
@  #02 @093   ----------------------------------------
 .byte   EOT
 .byte   Ds2
 .byte   W01
 .byte   W96
@  #02 @094   ----------------------------------------
 .byte   PATT
  .word Label_011200A6
@  #02 @095   ----------------------------------------
 .byte   PATT
  .word Label_011200B0
@  #02 @096   ----------------------------------------
 .byte   PATT
  .word Label_011200C2
@  #02 @097   ----------------------------------------
 .byte   PATT
  .word Label_011200CC
@  #02 @098   ----------------------------------------
 .byte   PATT
  .word Label_011200D7
@  #02 @099   ----------------------------------------
 .byte   PATT
  .word Label_011200E0
@  #02 @100   ----------------------------------------
 .byte   PATT
  .word Label_01120070
@  #02 @101   ----------------------------------------
 .byte   EOT
 .byte   Cn4 ,v074
 .byte   W01
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
 .byte   PATT
  .word Label_01120101
@  #02 @112   ----------------------------------------
 .byte   PATT
  .word Label_01120108
@  #02 @113   ----------------------------------------
 .byte   PATT
  .word Label_0112010F
@  #02 @114   ----------------------------------------
 .byte   PATT
  .word Label_01120116
@  #02 @115   ----------------------------------------
 .byte   PATT
  .word Label_0112011D
@  #02 @116   ----------------------------------------
 .byte   PATT
  .word Label_01120124
@  #02 @117   ----------------------------------------
 .byte   TIE ,Bn3 ,v096
 .byte   W96
@  #02 @118   ----------------------------------------
 .byte   PATT
  .word Label_01120131
@  #02 @119   ----------------------------------------
 .byte   EOT
 .byte   Bn3
 .byte   W01
 .byte   W96
@  #02 @120   ----------------------------------------
 .byte   W96
@  #02 @121   ----------------------------------------
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
 .byte   W96
@  #02 @128   ----------------------------------------
 .byte   W96
@  #02 @129   ----------------------------------------
 .byte   W96
@  #02 @130   ----------------------------------------
 .byte   PATT
  .word Label_01120142
@  #02 @131   ----------------------------------------
 .byte   PATT
  .word Label_0112014D
@  #02 @132   ----------------------------------------
 .byte   PATT
  .word Label_01120159
@  #02 @133   ----------------------------------------
 .byte   PATT
  .word Label_01120163
@  #02 @134   ----------------------------------------
 .byte   N92 ,Dn3 ,v112
 .byte   W96
@  #02 @135   ----------------------------------------
 .byte   W72
@  #02 @136   ----------------------------------------
 .byte   PATT
  .word Label_01120174
@  #02 @137   ----------------------------------------
 .byte   PATT
  .word Label_01120179
@  #02 @138   ----------------------------------------
 .byte   PATT
  .word Label_01120181
@  #02 @139   ----------------------------------------
 .byte   PATT
  .word Label_01120189
@  #02 @140   ----------------------------------------
 .byte   PATT
  .word Label_01120191
@  #02 @141   ----------------------------------------
 .byte   PATT
  .word Label_01120199
@  #02 @142   ----------------------------------------
 .byte   PATT
  .word Label_011201A2
@  #02 @143   ----------------------------------------
 .byte   PATT
  .word Label_011201AB
@  #02 @144   ----------------------------------------
 .byte   PATT
  .word Label_011201B1
@  #02 @145   ----------------------------------------
 .byte   PATT
  .word Label_011201B8
@  #02 @146   ----------------------------------------
 .byte   PATT
  .word Label_011201BF
@  #02 @147   ----------------------------------------
 .byte   PATT
  .word Label_011201C7
@  #02 @148   ----------------------------------------
 .byte   PATT
  .word Label_011201CF
@  #02 @149   ----------------------------------------
 .byte   PATT
  .word Label_011201D9
@  #02 @150   ----------------------------------------
 .byte   PATT
  .word Label_011201E0
@  #02 @151   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @152   ----------------------------------------
 .byte   W96
@  #02 @153   ----------------------------------------
 .byte   W96
@  #02 @154   ----------------------------------------
 .byte   W96
@  #02 @155   ----------------------------------------
 .byte   W96
@  #02 @156   ----------------------------------------
 .byte   W23
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

.align 2, 0
song06_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 121
 .byte   PAN , c_v-5
 .byte   VOL , 47*song06_mvl/mxv
 .byte   Dn3 ,v062
 .byte   Dn3 ,v062
 .byte   Dn3 ,v062
 .byte   Dn3 ,v062
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
Label_01125007:
 .byte   N23 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
@  #03 @001   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_01125025:
 .byte   N23 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #03 @002   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N02 ,Dn1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #03 @003   ----------------------------------------
 .byte   PATT
  .word Label_01125007
@  #03 @004   ----------------------------------------
Label_01125050:
 .byte   N23 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05 ,Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @005   ----------------------------------------
 .byte   PATT
  .word Label_01125007
@  #03 @006   ----------------------------------------
 .byte   PATT
  .word Label_01125025
@  #03 @007   ----------------------------------------
 .byte   PATT
  .word Label_01125007
@  #03 @008   ----------------------------------------
Label_01125084:
 .byte   N23 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #03 @009   ----------------------------------------
Label_011250A5:
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N92 ,An2 ,v096
 .byte   W12
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   PEND 
@  #03 @010   ----------------------------------------
Label_011250D3:
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N32 ,Cn1 ,v080
 .byte   N23 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N11 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N23 ,Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N05
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @011   ----------------------------------------
Label_01125117:
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v080
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   PEND 
@  #03 @012   ----------------------------------------
 .byte   PATT
  .word Label_011250D3
@  #03 @013   ----------------------------------------
 .byte   PATT
  .word Label_01125117
@  #03 @014   ----------------------------------------
 .byte   PATT
  .word Label_011250D3
@  #03 @015   ----------------------------------------
 .byte   PATT
  .word Label_01125117
@  #03 @016   ----------------------------------------
Label_01125154:
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N32 ,Cn1 ,v080
 .byte   N23 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   N23 ,Bn4 ,v080
 .byte   W12
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N03 ,An2 ,v064
 .byte   W04
 .byte   An2 ,v068
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N11 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N03 ,An2 ,v068
 .byte   W04
 .byte   An2 ,v072
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N23 ,Cn1 ,v080
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N03 ,An2 ,v072
 .byte   W04
 .byte   An2 ,v076
 .byte   W02
 .byte   N05 ,Dn1 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v076
 .byte   W04
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N03 ,An2 ,v076
 .byte   W04
 .byte   An2 ,v080
 .byte   W02
 .byte   N05 ,Dn1 ,v064
 .byte   W02
 .byte   N03 ,An2 ,v080
 .byte   W04
 .byte   PEND 
@  #03 @017   ----------------------------------------
Label_011251C1:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N04 ,En2 ,v096
 .byte   N92 ,An2 ,v080
 .byte   W12
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   PEND 
@  #03 @018   ----------------------------------------
Label_011251F2:
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N32 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N23 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N11 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N05
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @019   ----------------------------------------
Label_01125236:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   PEND 
@  #03 @020   ----------------------------------------
 .byte   PATT
  .word Label_011251F2
@  #03 @021   ----------------------------------------
Label_01125264:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N68 ,An2 ,v096
 .byte   W12
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N23 ,An2 ,v096
 .byte   W12
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   PEND 
@  #03 @022   ----------------------------------------
Label_01125297:
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N15 ,Cn1 ,v096
 .byte   N15 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W04
 .byte   N15 ,Cn1 ,v096
 .byte   N15 ,Dn1 ,v064
 .byte   W08
 .byte   N04 ,Fs1 ,v016
 .byte   W08
 .byte   N15 ,Cn1 ,v096
 .byte   N15 ,Dn1 ,v064
 .byte   W04
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   PEND 
@  #03 @023   ----------------------------------------
 .byte   PATT
  .word Label_01125264
@  #03 @024   ----------------------------------------
 .byte   PATT
  .word Label_01125297
@  #03 @025   ----------------------------------------
Label_011252E5:
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W96
 .byte   PEND 
@  #03 @026   ----------------------------------------
Label_011252ED:
 .byte   W24
 .byte   N02 ,En2 ,v080
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   En2 ,v084
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2 ,v088
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2 ,v096
 .byte   W03
 .byte   N02
 .byte   W28
 .byte   PEND 
@  #03 @027   ----------------------------------------
Label_01125315:
 .byte   N23 ,Cn1 ,v096
 .byte   N44 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N92 ,An2 ,v096
 .byte   W12
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N23 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @028   ----------------------------------------
Label_01125347:
 .byte   N23 ,Cn1 ,v096
 .byte   N44 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N23 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @029   ----------------------------------------
Label_0112537B:
 .byte   N23 ,Cn1 ,v096
 .byte   N44 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N44 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   PEND 
@  #03 @030   ----------------------------------------
Label_011253A2:
 .byte   N23 ,Cn1 ,v096
 .byte   N44 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N23 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   N03 ,Cs5 ,v096
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N23 ,Cs5 ,v096
 .byte   W06
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @031   ----------------------------------------
Label_011253E1:
 .byte   N23 ,Cn1 ,v096
 .byte   N44 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N23 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @032   ----------------------------------------
 .byte   PATT
  .word Label_01125347
@  #03 @033   ----------------------------------------
 .byte   PATT
  .word Label_011253E1
@  #03 @034   ----------------------------------------
Label_01125418:
 .byte   N23 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N11 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W12
 .byte   N04
 .byte   W12
 .byte   N11 ,Cn1 ,v096
 .byte   N04 ,Fs1 ,v016
 .byte   N03 ,Cs5 ,v096
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N05 ,Cn1
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   N23 ,Cs5 ,v096
 .byte   W06
 .byte   N05 ,Cn1
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   N04 ,Fs1 ,v016
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @035   ----------------------------------------
Label_01125460:
 .byte   N11 ,Cn1 ,v096
 .byte   N04 ,En2
 .byte   N92 ,An2
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W36
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #03 @036   ----------------------------------------
Label_01125474:
 .byte   N11 ,Cn1 ,v096
 .byte   W12
 .byte   N11
 .byte   W36
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #03 @037   ----------------------------------------
 .byte   PATT
  .word Label_01125474
@  #03 @038   ----------------------------------------
 .byte   PATT
  .word Label_01125474
@  #03 @039   ----------------------------------------
 .byte   PATT
  .word Label_01125474
@  #03 @040   ----------------------------------------
 .byte   PATT
  .word Label_01125474
@  #03 @041   ----------------------------------------
Label_01125497:
 .byte   N32 ,Cn1 ,v096
 .byte   W36
 .byte   N32
 .byte   W36
 .byte   N32
 .byte   W24
 .byte   PEND 
@  #03 @042   ----------------------------------------
Label_011254A0:
 .byte   W12
 .byte   N32 ,Cn1 ,v096
 .byte   W36
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #03 @043   ----------------------------------------
Label_011254AE:
 .byte   N23 ,Cn1 ,v096
 .byte   N01 ,Fs1 ,v052
 .byte   W06
 .byte   Fs1 ,v048
 .byte   W06
 .byte   Fs1 ,v040
 .byte   W06
 .byte   Fs1 ,v036
 .byte   W06
 .byte   Fs1 ,v032
 .byte   W06
 .byte   Fs1 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   W06
 .byte   Fs1 ,v016
 .byte   W54
 .byte   PEND 
@  #03 @044   ----------------------------------------
Label_011254CB:
 .byte   N23 ,Cn1 ,v096
 .byte   W84
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #03 @045   ----------------------------------------
 .byte   N23
 .byte   W96
@  #03 @046   ----------------------------------------
 .byte   N23
 .byte   W96
@  #03 @047   ----------------------------------------
 .byte   PATT
  .word Label_011254AE
@  #03 @048   ----------------------------------------
Label_011254DD:
 .byte   N23 ,Cn1 ,v096
 .byte   W60
 .byte   N23
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #03 @049   ----------------------------------------
 .byte   N23
 .byte   W96
@  #03 @050   ----------------------------------------
Label_011254EA:
 .byte   N23 ,Cn1 ,v096
 .byte   N02 ,En2 ,v080
 .byte   W02
 .byte   En2 ,v084
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2 ,v088
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2 ,v096
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2 ,v100
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   En2 ,v108
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03 ,En2 ,v112
 .byte   W28
 .byte   W01
 .byte   PEND 
@  #03 @051   ----------------------------------------
Label_0112552A:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   N92 ,An2 ,v096
 .byte   W36
 .byte   N23 ,Cn1
 .byte   N23 ,Dn1 ,v064
 .byte   W12
 .byte   N44 ,Bn4 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @052   ----------------------------------------
Label_01125553:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   N03 ,Cs5 ,v096
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N23
 .byte   W12
 .byte   N11 ,Cn1
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @053   ----------------------------------------
Label_01125577:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @054   ----------------------------------------
Label_01125599:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   N03 ,Cs5 ,v096
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N11 ,Cn1
 .byte   N11 ,Dn1 ,v064
 .byte   N23 ,Cs5 ,v096
 .byte   W12
 .byte   N05 ,Cn1
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @055   ----------------------------------------
Label_011255CB:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W12
 .byte   N44 ,Bn4 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @056   ----------------------------------------
Label_011255EC:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   N03 ,Cs5 ,v096
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N05 ,Cn1
 .byte   N05 ,Dn1 ,v064
 .byte   N23 ,Cs5 ,v096
 .byte   W06
 .byte   N05 ,Cn1
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @057   ----------------------------------------
Label_01125624:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W24
 .byte   PEND 
@  #03 @058   ----------------------------------------
Label_01125638:
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   N03 ,Cs5 ,v096
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N05 ,Cn1
 .byte   N05 ,Dn1 ,v064
 .byte   N23 ,Cs5 ,v096
 .byte   W06
 .byte   N05 ,Cn1
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @059   ----------------------------------------
Label_01125679:
 .byte   N32 ,Cn1 ,v112
 .byte   N32 ,Dn1 ,v064
 .byte   N68 ,An2 ,v096
 .byte   W36
 .byte   N23 ,Cn1 ,v112
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
Label_01125692:
 .byte   N32 ,Cn1 ,v112
 .byte   N32 ,Dn1 ,v064
 .byte   N03 ,En2 ,v096
 .byte   W36
@  #03 @060   ----------------------------------------
 .byte   N23 ,Cn1 ,v112
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
Label_011256AB:
 .byte   N32 ,Cn1 ,v112
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   N23 ,Cn1 ,v112
 .byte   N23 ,Dn1 ,v064
 .byte   W24
@  #03 @061   ----------------------------------------
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
Label_011256C1:
 .byte   N32 ,Cn1 ,v112
 .byte   N32 ,Dn1 ,v064
 .byte   N03 ,En2 ,v096
 .byte   W36
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @062   ----------------------------------------
 .byte   PATT
  .word Label_011256AB
@  #03 @063   ----------------------------------------
 .byte   PATT
  .word Label_01125692
@  #03 @064   ----------------------------------------
 .byte   PATT
  .word Label_011256AB
@  #03 @065   ----------------------------------------
Label_011256EE:
 .byte   N23 ,Cn1 ,v112
 .byte   N23 ,Dn1 ,v064
 .byte   N03 ,En2 ,v096
 .byte   W24
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
Label_01125712:
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   N02 ,En2 ,v096
 .byte   N68 ,An2
 .byte   W12
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
@  #03 @066   ----------------------------------------
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
Label_01125746:
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
@  #03 @067   ----------------------------------------
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
Label_01125780:
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @068   ----------------------------------------
 .byte   PATT
  .word Label_01125780
@  #03 @069   ----------------------------------------
Label_011257AB:
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
Label_011257D9:
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
@  #03 @070   ----------------------------------------
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
Label_01125806:
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
@  #03 @071   ----------------------------------------
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
Label_0112583B:
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v080
 .byte   N11 ,An2 ,v096
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v080
 .byte   N11 ,An2 ,v096
 .byte   W12
 .byte   Cn1 ,v112
 .byte   N11 ,Dn1 ,v080
 .byte   N11 ,An2 ,v096
 .byte   W12
 .byte   PEND 
@  #03 @072   ----------------------------------------
Label_01125871:
 .byte   N23 ,Cn1 ,v112
 .byte   N23 ,Dn1 ,v080
 .byte   W72
 .byte   PEND 
 .byte   W72
@  #03 @073   ----------------------------------------
Label_0112587A:
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   N23 ,An2 ,v080
 .byte   W12
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   N44 ,Bn4 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @074   ----------------------------------------
Label_011258CA:
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W30
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W30
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @075   ----------------------------------------
Label_011258F1:
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W24
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N44 ,Bn4 ,v080
 .byte   W42
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @076   ----------------------------------------
Label_01125911:
 .byte   N32 ,Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   Cn1 ,v096
 .byte   N32 ,Dn1 ,v064
 .byte   W36
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1 ,v064
 .byte   W06
 .byte   PEND 
@  #03 @077   ----------------------------------------
 .byte   GOTO
  .word Label_01125007
@  #03 @078   ----------------------------------------
 .byte   PATT
  .word Label_01125007
@  #03 @079   ----------------------------------------
 .byte   PATT
  .word Label_01125025
@  #03 @080   ----------------------------------------
 .byte   PATT
  .word Label_01125007
@  #03 @081   ----------------------------------------
 .byte   PATT
  .word Label_01125050
@  #03 @082   ----------------------------------------
 .byte   PATT
  .word Label_01125007
@  #03 @083   ----------------------------------------
 .byte   PATT
  .word Label_01125025
@  #03 @084   ----------------------------------------
 .byte   PATT
  .word Label_01125007
@  #03 @085   ----------------------------------------
 .byte   PATT
  .word Label_01125084
@  #03 @086   ----------------------------------------
 .byte   PATT
  .word Label_011250A5
@  #03 @087   ----------------------------------------
 .byte   PATT
  .word Label_011250D3
@  #03 @088   ----------------------------------------
 .byte   PATT
  .word Label_01125117
@  #03 @089   ----------------------------------------
 .byte   PATT
  .word Label_011250D3
@  #03 @090   ----------------------------------------
 .byte   PATT
  .word Label_01125117
@  #03 @091   ----------------------------------------
 .byte   PATT
  .word Label_011250D3
@  #03 @092   ----------------------------------------
 .byte   PATT
  .word Label_01125117
@  #03 @093   ----------------------------------------
 .byte   PATT
  .word Label_01125154
@  #03 @094   ----------------------------------------
 .byte   PATT
  .word Label_011251C1
@  #03 @095   ----------------------------------------
 .byte   PATT
  .word Label_011251F2
@  #03 @096   ----------------------------------------
 .byte   PATT
  .word Label_01125236
@  #03 @097   ----------------------------------------
 .byte   PATT
  .word Label_011251F2
@  #03 @098   ----------------------------------------
 .byte   PATT
  .word Label_01125264
@  #03 @099   ----------------------------------------
 .byte   PATT
  .word Label_01125297
@  #03 @100   ----------------------------------------
 .byte   PATT
  .word Label_01125264
@  #03 @101   ----------------------------------------
 .byte   PATT
  .word Label_01125297
@  #03 @102   ----------------------------------------
 .byte   PATT
  .word Label_011252E5
@  #03 @103   ----------------------------------------
 .byte   PATT
  .word Label_011252ED
@  #03 @104   ----------------------------------------
 .byte   PATT
  .word Label_01125315
@  #03 @105   ----------------------------------------
 .byte   PATT
  .word Label_01125347
@  #03 @106   ----------------------------------------
 .byte   PATT
  .word Label_0112537B
@  #03 @107   ----------------------------------------
 .byte   PATT
  .word Label_011253A2
@  #03 @108   ----------------------------------------
 .byte   PATT
  .word Label_011253E1
@  #03 @109   ----------------------------------------
 .byte   PATT
  .word Label_01125347
@  #03 @110   ----------------------------------------
 .byte   PATT
  .word Label_011253E1
@  #03 @111   ----------------------------------------
 .byte   PATT
  .word Label_01125418
@  #03 @112   ----------------------------------------
 .byte   PATT
  .word Label_01125460
@  #03 @113   ----------------------------------------
 .byte   PATT
  .word Label_01125474
@  #03 @114   ----------------------------------------
 .byte   PATT
  .word Label_01125474
@  #03 @115   ----------------------------------------
 .byte   PATT
  .word Label_01125474
@  #03 @116   ----------------------------------------
 .byte   PATT
  .word Label_01125474
@  #03 @117   ----------------------------------------
 .byte   PATT
  .word Label_01125474
@  #03 @118   ----------------------------------------
 .byte   PATT
  .word Label_01125497
@  #03 @119   ----------------------------------------
 .byte   PATT
  .word Label_011254A0
@  #03 @120   ----------------------------------------
 .byte   PATT
  .word Label_011254AE
@  #03 @121   ----------------------------------------
 .byte   PATT
  .word Label_011254CB
@  #03 @122   ----------------------------------------
 .byte   N23 ,Cn1 ,v096
 .byte   W96
@  #03 @123   ----------------------------------------
 .byte   N23
 .byte   W96
@  #03 @124   ----------------------------------------
 .byte   PATT
  .word Label_011254AE
@  #03 @125   ----------------------------------------
 .byte   PATT
  .word Label_011254DD
@  #03 @126   ----------------------------------------
 .byte   N23 ,Cn1 ,v096
 .byte   W96
@  #03 @127   ----------------------------------------
 .byte   PATT
  .word Label_011254EA
@  #03 @128   ----------------------------------------
 .byte   PATT
  .word Label_0112552A
@  #03 @129   ----------------------------------------
 .byte   PATT
  .word Label_01125553
@  #03 @130   ----------------------------------------
 .byte   PATT
  .word Label_01125577
@  #03 @131   ----------------------------------------
 .byte   PATT
  .word Label_01125599
@  #03 @132   ----------------------------------------
 .byte   PATT
  .word Label_011255CB
@  #03 @133   ----------------------------------------
 .byte   PATT
  .word Label_011255EC
@  #03 @134   ----------------------------------------
 .byte   PATT
  .word Label_01125624
@  #03 @135   ----------------------------------------
 .byte   PATT
  .word Label_01125638
@  #03 @136   ----------------------------------------
 .byte   PATT
  .word Label_01125679
@  #03 @137   ----------------------------------------
 .byte   PATT
  .word Label_01125692
@  #03 @138   ----------------------------------------
 .byte   PATT
  .word Label_011256AB
@  #03 @139   ----------------------------------------
 .byte   PATT
  .word Label_011256C1
@  #03 @140   ----------------------------------------
 .byte   PATT
  .word Label_011256AB
@  #03 @141   ----------------------------------------
 .byte   PATT
  .word Label_01125692
@  #03 @142   ----------------------------------------
 .byte   PATT
  .word Label_011256AB
@  #03 @143   ----------------------------------------
 .byte   PATT
  .word Label_011256EE
@  #03 @144   ----------------------------------------
 .byte   PATT
  .word Label_01125712
@  #03 @145   ----------------------------------------
 .byte   PATT
  .word Label_01125746
@  #03 @146   ----------------------------------------
 .byte   PATT
  .word Label_01125780
@  #03 @147   ----------------------------------------
 .byte   PATT
  .word Label_01125780
@  #03 @148   ----------------------------------------
 .byte   PATT
  .word Label_011257AB
@  #03 @149   ----------------------------------------
 .byte   PATT
  .word Label_011257D9
@  #03 @150   ----------------------------------------
 .byte   PATT
  .word Label_01125806
@  #03 @151   ----------------------------------------
 .byte   PATT
  .word Label_0112583B
@  #03 @152   ----------------------------------------
 .byte   PATT
  .word Label_01125871
@  #03 @153   ----------------------------------------
 .byte   W72
@  #03 @154   ----------------------------------------
 .byte   PATT
  .word Label_0112587A
@  #03 @155   ----------------------------------------
 .byte   PATT
  .word Label_011258CA
@  #03 @156   ----------------------------------------
 .byte   PATT
  .word Label_011258F1
@  #03 @157   ----------------------------------------
 .byte   PATT
  .word Label_01125911
@  #03 @158   ----------------------------------------
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1 ,v064
 .byte   W23
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

.align 2, 0
song06_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 56
 .byte   PAN , c_v+3
 .byte   VOL , 47*song06_mvl/mxv
 .byte   VOL , 47*song06_mvl/mxv
 .byte   W12
 .byte   N05 ,Gn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
Label_0112032C:
 .byte   N11 ,Gn1 ,v096
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
@  #04 @001   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_0112033F:
 .byte   N11 ,As1 ,v096
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
@  #04 @002   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_01120352:
 .byte   N11 ,Ds2 ,v096
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
@  #04 @003   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_01120365:
 .byte   N11 ,Cn2 ,v096
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
@  #04 @004   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @005   ----------------------------------------
 .byte   PATT
  .word Label_0112032C
@  #04 @006   ----------------------------------------
 .byte   PATT
  .word Label_0112033F
@  #04 @007   ----------------------------------------
 .byte   PATT
  .word Label_01120352
@  #04 @008   ----------------------------------------
 .byte   PATT
  .word Label_01120365
@  #04 @009   ----------------------------------------
Label_0112038C:
 .byte   N68 ,Gn2 ,v080
 .byte   W48
 .byte   W24
 .byte   TIE ,Fn2
 .byte   W24
 .byte   PEND 
@  #04 @010   ----------------------------------------
Label_01120395:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #04 @011   ----------------------------------------
Label_0112039B:
 .byte   N68 ,Ds2 ,v080
 .byte   W48
 .byte   W24
 .byte   TIE ,Dn2
 .byte   W24
 .byte   PEND 
@  #04 @012   ----------------------------------------
 .byte   PATT
  .word Label_01120395
@  #04 @013   ----------------------------------------
 .byte   EOT
 .byte   Dn2
 .byte   W01
Label_011203AC:
 .byte   N68 ,Cn2 ,v080
 .byte   W48
 .byte   W24
 .byte   TIE ,Dn2
 .byte   W24
 .byte   PEND 
@  #04 @014   ----------------------------------------
 .byte   PATT
  .word Label_01120395
@  #04 @015   ----------------------------------------
 .byte   EOT
 .byte   Dn2
 .byte   W01
Label_011203BD:
 .byte   N68 ,Ds2 ,v080
 .byte   W48
 .byte   W24
 .byte   TIE ,Fn2
 .byte   W24
 .byte   PEND 
@  #04 @016   ----------------------------------------
Label_011203C6:
 .byte   W60
 .byte   N11 ,Dn3 ,v112
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #04 @017   ----------------------------------------
Label_011203D3:
 .byte   N68 ,Gn2 ,v096
 .byte   N23 ,An3 ,v112
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Gn3
 .byte   W12
 .byte   W12
 .byte   N11 ,An3
 .byte   W12
 .byte   TIE ,Fn2 ,v096
 .byte   N80 ,Dn3 ,v112
 .byte   W24
 .byte   PEND 
@  #04 @018   ----------------------------------------
Label_011203EC:
 .byte   W48
 .byte   W12
 .byte   N11 ,Dn3 ,v112
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #04 @019   ----------------------------------------
Label_011203FA:
 .byte   N68 ,Ds2 ,v096
 .byte   N23 ,An3 ,v112
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Cn4
 .byte   W12
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   TIE ,As2 ,v096
 .byte   N44 ,Dn4 ,v112
 .byte   W24
 .byte   PEND 
@  #04 @020   ----------------------------------------
Label_01120413:
 .byte   W24
 .byte   N23 ,Cn4 ,v112
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   Fn4
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   As2
 .byte   W01
@  #04 @021   ----------------------------------------
Label_01120420:
 .byte   N68 ,Ds2 ,v096
 .byte   N11 ,An4 ,v112
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   N92 ,Gn4
 .byte   W24
 .byte   W24
 .byte   TIE ,Fn2 ,v096
 .byte   W24
 .byte   PEND 
@  #04 @022   ----------------------------------------
Label_01120432:
 .byte   W24
 .byte   N23 ,Fn4 ,v112
 .byte   W24
 .byte   Cn5
 .byte   W24
 .byte   As4
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #04 @023   ----------------------------------------
Label_0112043F:
 .byte   TIE ,Gn2 ,v096
 .byte   N11 ,An4 ,v112
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   TIE ,Gn4
 .byte   W24
 .byte   W48
 .byte   PEND 
@  #04 @024   ----------------------------------------
Label_0112044D:
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W05
 .byte   PEND 
 .byte   EOT
 .byte   Gn2 ,v079
 .byte   W01
@  #04 @025   ----------------------------------------
Label_01120462:
 .byte   TIE ,Fn1 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @026   ----------------------------------------
 .byte   PATT
  .word Label_01120395
@  #04 @027   ----------------------------------------
 .byte   EOT
 .byte   Fn1
 .byte   W01
Label_0112046F:
 .byte   N11 ,As1 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @028   ----------------------------------------
 .byte   PATT
  .word Label_0112046F
@  #04 @029   ----------------------------------------
Label_01120487:
 .byte   N11 ,Gn1 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @030   ----------------------------------------
Label_0112049A:
 .byte   N11 ,Fs1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @031   ----------------------------------------
 .byte   PATT
  .word Label_0112046F
@  #04 @032   ----------------------------------------
Label_011204B2:
 .byte   N11 ,Cs2 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @033   ----------------------------------------
Label_011204C5:
 .byte   N11 ,Gs1 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @034   ----------------------------------------
Label_011204D8:
 .byte   N11 ,Fs1 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @035   ----------------------------------------
Label_011204EB:
 .byte   N11 ,Cs2 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @036   ----------------------------------------
Label_011204FE:
 .byte   N11 ,Cn2 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @037   ----------------------------------------
Label_01120511:
 .byte   N11 ,Bn1 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @038   ----------------------------------------
Label_01120524:
 .byte   N11 ,As1 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @039   ----------------------------------------
Label_01120537:
 .byte   N11 ,Fs1 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @040   ----------------------------------------
Label_0112054A:
 .byte   N11 ,Fn1 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @041   ----------------------------------------
Label_0112055D:
 .byte   N11 ,En1 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   N05 ,Bn3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   Bn3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   PEND 
@  #04 @042   ----------------------------------------
Label_01120578:
 .byte   N11 ,En1 ,v096
 .byte   N11 ,Bn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   N44 ,Bn3 ,v080
 .byte   N44 ,Dn4
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   N11 ,En1 ,v096
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   N11
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   N11
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   W01
 .byte   W02
 .byte   PEND 
@  #04 @043   ----------------------------------------
Label_011205B2:
 .byte   N92 ,Bn2 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @044   ----------------------------------------
Label_011205B7:
 .byte   N92 ,An2 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @045   ----------------------------------------
Label_011205BC:
 .byte   N92 ,Gn2 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @046   ----------------------------------------
Label_011205C1:
 .byte   N92 ,Fs2 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @047   ----------------------------------------
Label_011205C6:
 .byte   N92 ,En2 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @048   ----------------------------------------
Label_011205CB:
 .byte   N23 ,En3 ,v080
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   Cs3
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   PEND 
@  #04 @049   ----------------------------------------
Label_011205D6:
 .byte   N23 ,En3 ,v080
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   Cs3
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   PEND 
@  #04 @050   ----------------------------------------
Label_011205E1:
 .byte   N23 ,Bn2 ,v080
 .byte   W24
 .byte   Cs3
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   En3
 .byte   W24
 .byte   PEND 
@  #04 @051   ----------------------------------------
Label_011205EC:
 .byte   N23 ,Dn3 ,v080
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   PEND 
@  #04 @052   ----------------------------------------
Label_011205FD:
 .byte   N11 ,Dn3 ,v080
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   PEND 
@  #04 @053   ----------------------------------------
Label_01120610:
 .byte   N44 ,An2 ,v080
 .byte   W48
 .byte   TIE ,Bn2
 .byte   W48
 .byte   PEND 
@  #04 @054   ----------------------------------------
 .byte   PATT
  .word Label_01120395
@  #04 @055   ----------------------------------------
 .byte   EOT
 .byte   Bn2
 .byte   W01
Label_01120620:
 .byte   N92 ,Gn1 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @056   ----------------------------------------
Label_01120625:
 .byte   N92 ,An1 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @057   ----------------------------------------
Label_0112062A:
 .byte   N92 ,Bn1 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @058   ----------------------------------------
Label_0112062F:
 .byte   N32 ,Bn1 ,v080
 .byte   W36
 .byte   N11 ,An2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #04 @059   ----------------------------------------
Label_0112063F:
 .byte   N11 ,Bn3 ,v080
 .byte   W24
 .byte   N44 ,Bn1
 .byte   W48
 .byte   PEND 
Label_01120647:
 .byte   N68 ,Cs2 ,v080
 .byte   W72
 .byte   PEND 
@  #04 @060   ----------------------------------------
Label_0112064C:
 .byte   N68 ,Dn2 ,v080
 .byte   W72
 .byte   PEND 
Label_01120651:
 .byte   N68 ,En2 ,v080
 .byte   W72
 .byte   PEND 
@  #04 @061   ----------------------------------------
Label_01120656:
 .byte   N68 ,Fs2 ,v080
 .byte   W72
 .byte   PEND 
@  #04 @062   ----------------------------------------
 .byte   PATT
  .word Label_01120656
@  #04 @063   ----------------------------------------
Label_01120660:
 .byte   N68 ,An2 ,v080
 .byte   W72
 .byte   PEND 
@  #04 @064   ----------------------------------------
 .byte   PATT
  .word Label_01120660
@  #04 @065   ----------------------------------------
Label_0112066A:
 .byte   N68 ,Dn1 ,v080
 .byte   W72
 .byte   PEND 
Label_0112066F:
 .byte   N68 ,En1 ,v080
 .byte   W72
 .byte   PEND 
@  #04 @066   ----------------------------------------
Label_01120674:
 .byte   N68 ,Fn1 ,v080
 .byte   W72
 .byte   PEND 
Label_01120679:
 .byte   N68 ,Gn1 ,v080
 .byte   W72
 .byte   PEND 
@  #04 @067   ----------------------------------------
Label_0112067E:
 .byte   N68 ,An1 ,v080
 .byte   W72
 .byte   PEND 
Label_01120683:
 .byte   N68 ,As1 ,v080
 .byte   W72
 .byte   PEND 
@  #04 @068   ----------------------------------------
Label_01120688:
 .byte   N68 ,Cn2 ,v080
 .byte   W72
 .byte   PEND 
@  #04 @069   ----------------------------------------
 .byte   PATT
  .word Label_0112067E
@  #04 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @071   ----------------------------------------
Label_01120694:
 .byte   N92 ,Dn2 ,v080
 .byte   W96
 .byte   PEND 
@  #04 @072   ----------------------------------------
 .byte   PATT
  .word Label_01120694
@  #04 @073   ----------------------------------------
 .byte   PATT
  .word Label_01120694
@  #04 @074   ----------------------------------------
 .byte   PATT
  .word Label_01120694
@  #04 @075   ----------------------------------------
 .byte   GOTO
  .word Label_0112032C
@  #04 @076   ----------------------------------------
 .byte   PATT
  .word Label_0112032C
@  #04 @077   ----------------------------------------
 .byte   PATT
  .word Label_0112033F
@  #04 @078   ----------------------------------------
 .byte   PATT
  .word Label_01120352
@  #04 @079   ----------------------------------------
 .byte   PATT
  .word Label_01120365
@  #04 @080   ----------------------------------------
 .byte   PATT
  .word Label_0112032C
@  #04 @081   ----------------------------------------
 .byte   PATT
  .word Label_0112033F
@  #04 @082   ----------------------------------------
 .byte   PATT
  .word Label_01120352
@  #04 @083   ----------------------------------------
 .byte   PATT
  .word Label_01120365
@  #04 @084   ----------------------------------------
 .byte   PATT
  .word Label_0112038C
@  #04 @085   ----------------------------------------
 .byte   PATT
  .word Label_01120395
@  #04 @086   ----------------------------------------
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #04 @087   ----------------------------------------
 .byte   PATT
  .word Label_0112039B
@  #04 @088   ----------------------------------------
 .byte   PATT
  .word Label_01120395
@  #04 @089   ----------------------------------------
 .byte   EOT
 .byte   Dn2
 .byte   W01
@  #04 @090   ----------------------------------------
 .byte   PATT
  .word Label_011203AC
@  #04 @091   ----------------------------------------
 .byte   PATT
  .word Label_01120395
@  #04 @092   ----------------------------------------
 .byte   EOT
 .byte   Dn2
 .byte   W01
@  #04 @093   ----------------------------------------
 .byte   PATT
  .word Label_011203BD
@  #04 @094   ----------------------------------------
 .byte   PATT
  .word Label_011203C6
@  #04 @095   ----------------------------------------
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #04 @096   ----------------------------------------
 .byte   PATT
  .word Label_011203D3
@  #04 @097   ----------------------------------------
 .byte   PATT
  .word Label_011203EC
@  #04 @098   ----------------------------------------
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #04 @099   ----------------------------------------
 .byte   PATT
  .word Label_011203FA
@  #04 @100   ----------------------------------------
 .byte   PATT
  .word Label_01120413
@  #04 @101   ----------------------------------------
 .byte   EOT
 .byte   As2
 .byte   W01
@  #04 @102   ----------------------------------------
 .byte   PATT
  .word Label_01120420
@  #04 @103   ----------------------------------------
 .byte   PATT
  .word Label_01120432
@  #04 @104   ----------------------------------------
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #04 @105   ----------------------------------------
 .byte   PATT
  .word Label_0112043F
@  #04 @106   ----------------------------------------
 .byte   PATT
  .word Label_0112044D
@  #04 @107   ----------------------------------------
 .byte   EOT
 .byte   Gn2 ,v079
 .byte   W01
@  #04 @108   ----------------------------------------
 .byte   PATT
  .word Label_01120462
@  #04 @109   ----------------------------------------
 .byte   PATT
  .word Label_01120395
@  #04 @110   ----------------------------------------
 .byte   EOT
 .byte   Fn1
 .byte   W01
@  #04 @111   ----------------------------------------
 .byte   PATT
  .word Label_0112046F
@  #04 @112   ----------------------------------------
 .byte   PATT
  .word Label_0112046F
@  #04 @113   ----------------------------------------
 .byte   PATT
  .word Label_01120487
@  #04 @114   ----------------------------------------
 .byte   PATT
  .word Label_0112049A
@  #04 @115   ----------------------------------------
 .byte   PATT
  .word Label_0112046F
@  #04 @116   ----------------------------------------
 .byte   PATT
  .word Label_011204B2
@  #04 @117   ----------------------------------------
 .byte   PATT
  .word Label_011204C5
@  #04 @118   ----------------------------------------
 .byte   PATT
  .word Label_011204D8
@  #04 @119   ----------------------------------------
 .byte   PATT
  .word Label_011204EB
@  #04 @120   ----------------------------------------
 .byte   PATT
  .word Label_011204FE
@  #04 @121   ----------------------------------------
 .byte   PATT
  .word Label_01120511
@  #04 @122   ----------------------------------------
 .byte   PATT
  .word Label_01120524
@  #04 @123   ----------------------------------------
 .byte   PATT
  .word Label_01120537
@  #04 @124   ----------------------------------------
 .byte   PATT
  .word Label_0112054A
@  #04 @125   ----------------------------------------
 .byte   PATT
  .word Label_0112055D
@  #04 @126   ----------------------------------------
 .byte   PATT
  .word Label_01120578
@  #04 @127   ----------------------------------------
 .byte   PATT
  .word Label_011205B2
@  #04 @128   ----------------------------------------
 .byte   PATT
  .word Label_011205B7
@  #04 @129   ----------------------------------------
 .byte   PATT
  .word Label_011205BC
@  #04 @130   ----------------------------------------
 .byte   PATT
  .word Label_011205C1
@  #04 @131   ----------------------------------------
 .byte   PATT
  .word Label_011205C6
@  #04 @132   ----------------------------------------
 .byte   PATT
  .word Label_011205CB
@  #04 @133   ----------------------------------------
 .byte   PATT
  .word Label_011205D6
@  #04 @134   ----------------------------------------
 .byte   PATT
  .word Label_011205E1
@  #04 @135   ----------------------------------------
 .byte   PATT
  .word Label_011205EC
@  #04 @136   ----------------------------------------
 .byte   PATT
  .word Label_011205FD
@  #04 @137   ----------------------------------------
 .byte   PATT
  .word Label_01120610
@  #04 @138   ----------------------------------------
 .byte   PATT
  .word Label_01120395
@  #04 @139   ----------------------------------------
 .byte   EOT
 .byte   Bn2
 .byte   W01
@  #04 @140   ----------------------------------------
 .byte   PATT
  .word Label_01120620
@  #04 @141   ----------------------------------------
 .byte   PATT
  .word Label_01120625
@  #04 @142   ----------------------------------------
 .byte   PATT
  .word Label_0112062A
@  #04 @143   ----------------------------------------
 .byte   PATT
  .word Label_0112062F
@  #04 @144   ----------------------------------------
 .byte   PATT
  .word Label_0112063F
@  #04 @145   ----------------------------------------
 .byte   PATT
  .word Label_01120647
@  #04 @146   ----------------------------------------
 .byte   PATT
  .word Label_0112064C
@  #04 @147   ----------------------------------------
 .byte   PATT
  .word Label_01120651
@  #04 @148   ----------------------------------------
 .byte   PATT
  .word Label_01120656
@  #04 @149   ----------------------------------------
 .byte   PATT
  .word Label_01120656
@  #04 @150   ----------------------------------------
 .byte   PATT
  .word Label_01120660
@  #04 @151   ----------------------------------------
 .byte   PATT
  .word Label_01120660
@  #04 @152   ----------------------------------------
 .byte   PATT
  .word Label_0112066A
@  #04 @153   ----------------------------------------
 .byte   PATT
  .word Label_0112066F
@  #04 @154   ----------------------------------------
 .byte   PATT
  .word Label_01120674
@  #04 @155   ----------------------------------------
 .byte   PATT
  .word Label_01120679
@  #04 @156   ----------------------------------------
 .byte   PATT
  .word Label_0112067E
@  #04 @157   ----------------------------------------
 .byte   PATT
  .word Label_01120683
@  #04 @158   ----------------------------------------
 .byte   PATT
  .word Label_01120688
@  #04 @159   ----------------------------------------
 .byte   PATT
  .word Label_0112067E
@  #04 @160   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @161   ----------------------------------------
 .byte   PATT
  .word Label_01120694
@  #04 @162   ----------------------------------------
 .byte   PATT
  .word Label_01120694
@  #04 @163   ----------------------------------------
 .byte   PATT
  .word Label_01120694
@  #04 @164   ----------------------------------------
 .byte   PATT
  .word Label_01120694
@  #04 @165   ----------------------------------------
 .byte   N11 ,Dn2 ,v080
 .byte   W23
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

.align 2, 0
song06_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 57
 .byte   PAN , c_v+3
 .byte   VOL , 47*song06_mvl/mxv
 .byte   VOL , 47*song06_mvl/mxv
 .byte   W24
Label_01120876:
 .byte   W96
@  #05 @001   ----------------------------------------
 .byte   W96
@  #05 @002   ----------------------------------------
 .byte   W96
@  #05 @003   ----------------------------------------
 .byte   W96
@  #05 @004   ----------------------------------------
Label_0112087A:
 .byte   N92 ,Gn1 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @005   ----------------------------------------
Label_0112087F:
 .byte   N92 ,As1 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @006   ----------------------------------------
Label_01120884:
 .byte   N92 ,Ds2 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @007   ----------------------------------------
Label_01120889:
 .byte   N92 ,Cn2 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @008   ----------------------------------------
Label_0112088E:
 .byte   N32 ,Dn2 ,v080
 .byte   W36
 .byte   N32
 .byte   W36
 .byte   TIE ,An1
 .byte   W24
 .byte   PEND 
@  #05 @009   ----------------------------------------
Label_01120898:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   An1
 .byte   W01
@  #05 @010   ----------------------------------------
Label_0112089E:
 .byte   N32 ,Ds2 ,v080
 .byte   W36
 .byte   Dn2
 .byte   W36
 .byte   TIE ,Fn2
 .byte   W24
 .byte   PEND 
@  #05 @011   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @012   ----------------------------------------
 .byte   EOT
 .byte   Fn2
 .byte   W01
Label_011208B0:
 .byte   N32 ,Ds2 ,v080
 .byte   W36
 .byte   N32
 .byte   W36
 .byte   N92 ,Fn2
 .byte   W24
 .byte   PEND 
@  #05 @013   ----------------------------------------
Label_011208BA:
 .byte   W72
 .byte   N23 ,As1 ,v080
 .byte   W24
 .byte   PEND 
@  #05 @014   ----------------------------------------
Label_011208C0:
 .byte   TIE ,As1 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @015   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @016   ----------------------------------------
 .byte   EOT
 .byte   As1
 .byte   W01
Label_011208CD:
 .byte   N32 ,Dn2 ,v080
 .byte   N32 ,An2
 .byte   W36
 .byte   Dn2
 .byte   N32 ,An2
 .byte   W36
 .byte   TIE ,Fn2
 .byte   TIE ,An2
 .byte   W24
 .byte   PEND 
@  #05 @017   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @018   ----------------------------------------
 .byte   EOT
 .byte   Fn2 ,v057
 .byte   W01
Label_011208E6:
 .byte   N32 ,Ds2 ,v080
 .byte   N32 ,Fn2
 .byte   W36
 .byte   Ds2
 .byte   N32 ,Fn2
 .byte   W36
 .byte   N68
 .byte   N68 ,As2
 .byte   W24
 .byte   PEND 
@  #05 @019   ----------------------------------------
Label_011208F5:
 .byte   W48
 .byte   N44 ,Dn2 ,v080
 .byte   N44 ,As2
 .byte   W48
 .byte   PEND 
@  #05 @020   ----------------------------------------
Label_011208FD:
 .byte   N68 ,As1 ,v080
 .byte   N68 ,Ds2
 .byte   W72
 .byte   As1
 .byte   TIE ,Fn2
 .byte   W24
 .byte   PEND 
@  #05 @021   ----------------------------------------
Label_01120908:
 .byte   W48
 .byte   N44 ,An1 ,v080
 .byte   W44
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #05 @022   ----------------------------------------
Label_01120912:
 .byte   TIE ,Cn3 ,v080
 .byte   TIE ,Dn3
 .byte   W96
 .byte   PEND 
@  #05 @023   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @024   ----------------------------------------
 .byte   EOT
 .byte   Cn3 ,v062
 .byte   W01
Label_01120922:
 .byte   TIE ,Gn1 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @025   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @026   ----------------------------------------
 .byte   EOT
 .byte   Gn1
 .byte   W01
Label_0112092F:
 .byte   N92 ,As2 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @027   ----------------------------------------
 .byte   PATT
  .word Label_0112092F
@  #05 @028   ----------------------------------------
Label_01120939:
 .byte   N92 ,Gn2 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @029   ----------------------------------------
Label_0112093E:
 .byte   N44 ,Fs2 ,v080
 .byte   W48
 .byte   Gs2
 .byte   W48
 .byte   PEND 
@  #05 @030   ----------------------------------------
 .byte   PATT
  .word Label_0112092F
@  #05 @031   ----------------------------------------
Label_0112094A:
 .byte   N92 ,Cs3 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @032   ----------------------------------------
Label_0112094F:
 .byte   N92 ,Gs2 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @033   ----------------------------------------
Label_01120954:
 .byte   N92 ,Fs2 ,v080
 .byte   W96
 .byte   PEND 
@  #05 @034   ----------------------------------------
Label_01120959:
 .byte   N92 ,Cs2 ,v080
 .byte   N92 ,An2
 .byte   W96
 .byte   PEND 
@  #05 @035   ----------------------------------------
Label_01120960:
 .byte   N92 ,Cn2 ,v080
 .byte   N92 ,Gs2
 .byte   W96
 .byte   PEND 
@  #05 @036   ----------------------------------------
Label_01120967:
 .byte   N92 ,Bn1 ,v080
 .byte   N92 ,Gs2
 .byte   W96
 .byte   PEND 
@  #05 @037   ----------------------------------------
Label_0112096E:
 .byte   N92 ,As1 ,v080
 .byte   N92 ,Fn2
 .byte   W96
 .byte   PEND 
@  #05 @038   ----------------------------------------
Label_01120975:
 .byte   N92 ,Fs1 ,v080
 .byte   N92 ,An2
 .byte   W96
 .byte   PEND 
@  #05 @039   ----------------------------------------
Label_0112097C:
 .byte   N92 ,Fn1 ,v080
 .byte   N92 ,Cn2
 .byte   W96
 .byte   PEND 
@  #05 @040   ----------------------------------------
Label_01120983:
 .byte   TIE ,En1 ,v080
 .byte   TIE ,Dn2
 .byte   W96
 .byte   PEND 
@  #05 @041   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @042   ----------------------------------------
 .byte   EOT
 .byte   En1 ,v050
 .byte   W01
 .byte   W96
@  #05 @043   ----------------------------------------
 .byte   W96
@  #05 @044   ----------------------------------------
 .byte   W96
@  #05 @045   ----------------------------------------
 .byte   W96
@  #05 @046   ----------------------------------------
 .byte   W96
@  #05 @047   ----------------------------------------
 .byte   W96
@  #05 @048   ----------------------------------------
 .byte   W96
@  #05 @049   ----------------------------------------
 .byte   W96
@  #05 @050   ----------------------------------------
Label_0112099B:
 .byte   TIE ,Dn3 ,v096
 .byte   W96
 .byte   PEND 
@  #05 @051   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N44 ,Cs3
 .byte   W48
 .byte   N23 ,An2
 .byte   W24
@  #05 @052   ----------------------------------------
Label_011209A9:
 .byte   N44 ,An2 ,v096
 .byte   W48
 .byte   TIE ,Bn2
 .byte   W48
 .byte   PEND 
@  #05 @053   ----------------------------------------
 .byte   W48
 .byte   W23
 .byte   EOT
 .byte   W24
 .byte   W01
@  #05 @054   ----------------------------------------
 .byte   W96
@  #05 @055   ----------------------------------------
 .byte   W96
@  #05 @056   ----------------------------------------
 .byte   W96
@  #05 @057   ----------------------------------------
Label_011209B9:
 .byte   W36
 .byte   N11 ,An2 ,v080
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #05 @058   ----------------------------------------
Label_011209C7:
 .byte   N11 ,Bn3 ,v080
 .byte   W72
 .byte   PEND 
 .byte   W72
@  #05 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @064   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @065   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @067   ----------------------------------------
 .byte   W96
@  #05 @068   ----------------------------------------
 .byte   W96
@  #05 @069   ----------------------------------------
 .byte   W96
@  #05 @070   ----------------------------------------
 .byte   W96
@  #05 @071   ----------------------------------------
 .byte   GOTO
  .word Label_01120876
@  #05 @072   ----------------------------------------
 .byte   W96
@  #05 @073   ----------------------------------------
 .byte   W96
@  #05 @074   ----------------------------------------
 .byte   W96
@  #05 @075   ----------------------------------------
 .byte   W96
@  #05 @076   ----------------------------------------
 .byte   PATT
  .word Label_0112087A
@  #05 @077   ----------------------------------------
 .byte   PATT
  .word Label_0112087F
@  #05 @078   ----------------------------------------
 .byte   PATT
  .word Label_01120884
@  #05 @079   ----------------------------------------
 .byte   PATT
  .word Label_01120889
@  #05 @080   ----------------------------------------
 .byte   PATT
  .word Label_0112088E
@  #05 @081   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @082   ----------------------------------------
 .byte   EOT
 .byte   An1
 .byte   W01
@  #05 @083   ----------------------------------------
 .byte   PATT
  .word Label_0112089E
@  #05 @084   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @085   ----------------------------------------
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #05 @086   ----------------------------------------
 .byte   PATT
  .word Label_011208B0
@  #05 @087   ----------------------------------------
 .byte   PATT
  .word Label_011208BA
@  #05 @088   ----------------------------------------
 .byte   PATT
  .word Label_011208C0
@  #05 @089   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @090   ----------------------------------------
 .byte   EOT
 .byte   As1
 .byte   W01
@  #05 @091   ----------------------------------------
 .byte   PATT
  .word Label_011208CD
@  #05 @092   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @093   ----------------------------------------
 .byte   EOT
 .byte   Fn2 ,v057
 .byte   W01
@  #05 @094   ----------------------------------------
 .byte   PATT
  .word Label_011208E6
@  #05 @095   ----------------------------------------
 .byte   PATT
  .word Label_011208F5
@  #05 @096   ----------------------------------------
 .byte   PATT
  .word Label_011208FD
@  #05 @097   ----------------------------------------
 .byte   PATT
  .word Label_01120908
@  #05 @098   ----------------------------------------
 .byte   EOT
 .byte   Fn2
 .byte   W01
@  #05 @099   ----------------------------------------
 .byte   PATT
  .word Label_01120912
@  #05 @100   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @101   ----------------------------------------
 .byte   EOT
 .byte   Cn3 ,v062
 .byte   W01
@  #05 @102   ----------------------------------------
 .byte   PATT
  .word Label_01120922
@  #05 @103   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @104   ----------------------------------------
 .byte   EOT
 .byte   Gn1
 .byte   W01
@  #05 @105   ----------------------------------------
 .byte   PATT
  .word Label_0112092F
@  #05 @106   ----------------------------------------
 .byte   PATT
  .word Label_0112092F
@  #05 @107   ----------------------------------------
 .byte   PATT
  .word Label_01120939
@  #05 @108   ----------------------------------------
 .byte   PATT
  .word Label_0112093E
@  #05 @109   ----------------------------------------
 .byte   PATT
  .word Label_0112092F
@  #05 @110   ----------------------------------------
 .byte   PATT
  .word Label_0112094A
@  #05 @111   ----------------------------------------
 .byte   PATT
  .word Label_0112094F
@  #05 @112   ----------------------------------------
 .byte   PATT
  .word Label_01120954
@  #05 @113   ----------------------------------------
 .byte   PATT
  .word Label_01120959
@  #05 @114   ----------------------------------------
 .byte   PATT
  .word Label_01120960
@  #05 @115   ----------------------------------------
 .byte   PATT
  .word Label_01120967
@  #05 @116   ----------------------------------------
 .byte   PATT
  .word Label_0112096E
@  #05 @117   ----------------------------------------
 .byte   PATT
  .word Label_01120975
@  #05 @118   ----------------------------------------
 .byte   PATT
  .word Label_0112097C
@  #05 @119   ----------------------------------------
 .byte   PATT
  .word Label_01120983
@  #05 @120   ----------------------------------------
 .byte   PATT
  .word Label_01120898
@  #05 @121   ----------------------------------------
 .byte   EOT
 .byte   En1 ,v050
 .byte   W01
 .byte   W96
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
 .byte   PATT
  .word Label_0112099B
@  #05 @130   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Dn3
 .byte   W01
 .byte   N44 ,Cs3 ,v096
 .byte   W48
 .byte   N23 ,An2
 .byte   W24
@  #05 @131   ----------------------------------------
 .byte   PATT
  .word Label_011209A9
@  #05 @132   ----------------------------------------
 .byte   W48
 .byte   W23
 .byte   EOT
 .byte   Bn2
 .byte   W24
 .byte   W01
@  #05 @133   ----------------------------------------
 .byte   W96
@  #05 @134   ----------------------------------------
 .byte   W96
@  #05 @135   ----------------------------------------
 .byte   W96
@  #05 @136   ----------------------------------------
 .byte   PATT
  .word Label_011209B9
@  #05 @137   ----------------------------------------
 .byte   PATT
  .word Label_011209C7
@  #05 @138   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @139   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @140   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @141   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @142   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @143   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @144   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @145   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @146   ----------------------------------------
 .byte   W72
 .byte   W96
@  #05 @147   ----------------------------------------
 .byte   W96
@  #05 @148   ----------------------------------------
 .byte   W96
@  #05 @149   ----------------------------------------
 .byte   W96
@  #05 @150   ----------------------------------------
 .byte   W23
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

.align 2, 0
song06_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 56
 .byte   PAN , c_v-2
 .byte   VOL , 47*song06_mvl/mxv
 .byte   VOL , 47*song06_mvl/mxv
 .byte   W12
 .byte   N05 ,Gn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
Label_01120B2C:
 .byte   N11 ,Gn0 ,v096
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
@  #06 @001   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_01120B3F:
 .byte   N11 ,As0 ,v096
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
@  #06 @002   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_01120B52:
 .byte   N11 ,Ds1 ,v096
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
@  #06 @003   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
Label_01120B65:
 .byte   N11 ,Cn1 ,v096
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
@  #06 @004   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @005   ----------------------------------------
 .byte   PATT
  .word Label_01120B2C
@  #06 @006   ----------------------------------------
 .byte   PATT
  .word Label_01120B3F
@  #06 @007   ----------------------------------------
 .byte   PATT
  .word Label_01120B52
@  #06 @008   ----------------------------------------
 .byte   PATT
  .word Label_01120B65
@  #06 @009   ----------------------------------------
Label_01120B8C:
 .byte   N68 ,Gn1 ,v080
 .byte   W48
 .byte   W24
 .byte   TIE ,Fn1
 .byte   W24
 .byte   PEND 
@  #06 @010   ----------------------------------------
Label_01120B95:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fn1
 .byte   W01
@  #06 @011   ----------------------------------------
Label_01120B9B:
 .byte   N68 ,Ds1 ,v080
 .byte   W48
 .byte   W24
 .byte   TIE ,Dn1
 .byte   W24
 .byte   PEND 
@  #06 @012   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @013   ----------------------------------------
 .byte   EOT
 .byte   Dn1
 .byte   W01
Label_01120BAC:
 .byte   N68 ,Cn1 ,v080
 .byte   W48
 .byte   W24
 .byte   TIE ,Dn1
 .byte   W24
 .byte   PEND 
@  #06 @014   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @015   ----------------------------------------
 .byte   EOT
 .byte   Dn1
 .byte   W01
Label_01120BBD:
 .byte   N68 ,Ds1 ,v080
 .byte   W48
 .byte   W24
 .byte   TIE ,Fn1
 .byte   W24
 .byte   PEND 
@  #06 @016   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @017   ----------------------------------------
 .byte   EOT
 .byte   Fn1
 .byte   W01
Label_01120BCE:
 .byte   N68 ,Gn1 ,v096
 .byte   W72
 .byte   TIE ,Fn1
 .byte   W24
 .byte   PEND 
@  #06 @018   ----------------------------------------
Label_01120BD6:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Fn1
 .byte   W01
@  #06 @019   ----------------------------------------
Label_01120BDC:
 .byte   N68 ,Ds1 ,v096
 .byte   W72
 .byte   TIE ,As1
 .byte   W24
 .byte   PEND 
@  #06 @020   ----------------------------------------
 .byte   PATT
  .word Label_01120BD6
@  #06 @021   ----------------------------------------
 .byte   EOT
 .byte   As1
 .byte   W01
Label_01120BEC:
 .byte   N68 ,Ds1 ,v096
 .byte   W72
 .byte   TIE ,Fn1
 .byte   W24
 .byte   PEND 
@  #06 @022   ----------------------------------------
 .byte   PATT
  .word Label_01120BD6
@  #06 @023   ----------------------------------------
 .byte   EOT
 .byte   Fn1
 .byte   W01
Label_01120BFC:
 .byte   TIE ,Gn1 ,v096
 .byte   W96
 .byte   PEND 
@  #06 @024   ----------------------------------------
 .byte   PATT
  .word Label_01120BD6
@  #06 @025   ----------------------------------------
 .byte   EOT
 .byte   Gn1
 .byte   W01
Label_01120C09:
 .byte   TIE ,Gn0 ,v080
 .byte   W96
 .byte   PEND 
@  #06 @026   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @027   ----------------------------------------
 .byte   EOT
 .byte   Gn0
 .byte   W01
Label_01120C16:
 .byte   N11 ,As0 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @028   ----------------------------------------
 .byte   PATT
  .word Label_01120C16
@  #06 @029   ----------------------------------------
Label_01120C2E:
 .byte   N11 ,Gn0 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @030   ----------------------------------------
Label_01120C41:
 .byte   N11 ,Fs0 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @031   ----------------------------------------
 .byte   PATT
  .word Label_01120C16
@  #06 @032   ----------------------------------------
Label_01120C59:
 .byte   N11 ,Cs1 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @033   ----------------------------------------
Label_01120C6C:
 .byte   N11 ,Gs0 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @034   ----------------------------------------
Label_01120C7F:
 .byte   N11 ,Fs0 ,v080
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @035   ----------------------------------------
Label_01120C92:
 .byte   N11 ,Cs1 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @036   ----------------------------------------
Label_01120CA5:
 .byte   N11 ,Cn1 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @037   ----------------------------------------
Label_01120CB8:
 .byte   N11 ,Bn0 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @038   ----------------------------------------
Label_01120CCB:
 .byte   N11 ,As0 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @039   ----------------------------------------
Label_01120CDE:
 .byte   N11 ,Fs0 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @040   ----------------------------------------
Label_01120CF1:
 .byte   N11 ,Fn0 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @041   ----------------------------------------
Label_01120D04:
 .byte   N11 ,En0 ,v096
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
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @042   ----------------------------------------
 .byte   PATT
  .word Label_01120D04
@  #06 @043   ----------------------------------------
Label_01120D1C:
 .byte   N92 ,Bn0 ,v080
 .byte   W96
 .byte   PEND 
@  #06 @044   ----------------------------------------
Label_01120D21:
 .byte   N92 ,An0 ,v080
 .byte   W96
 .byte   PEND 
@  #06 @045   ----------------------------------------
Label_01120D26:
 .byte   N92 ,Gn0 ,v080
 .byte   W96
 .byte   PEND 
@  #06 @046   ----------------------------------------
Label_01120D2B:
 .byte   N92 ,Fs0 ,v080
 .byte   W96
 .byte   PEND 
@  #06 @047   ----------------------------------------
Label_01120D30:
 .byte   N92 ,En0 ,v080
 .byte   W96
 .byte   PEND 
@  #06 @048   ----------------------------------------
Label_01120D35:
 .byte   N92 ,Dn1 ,v080
 .byte   W96
 .byte   PEND 
@  #06 @049   ----------------------------------------
 .byte   PATT
  .word Label_01120D26
@  #06 @050   ----------------------------------------
 .byte   PATT
  .word Label_01120D2B
@  #06 @051   ----------------------------------------
 .byte   PATT
  .word Label_01120D26
@  #06 @052   ----------------------------------------
 .byte   PATT
  .word Label_01120D21
@  #06 @053   ----------------------------------------
Label_01120D4E:
 .byte   TIE ,Bn0 ,v080
 .byte   W96
 .byte   PEND 
@  #06 @054   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @055   ----------------------------------------
 .byte   EOT
 .byte   Bn0
 .byte   W01
@  #06 @056   ----------------------------------------
 .byte   PATT
  .word Label_01120D26
@  #06 @057   ----------------------------------------
 .byte   PATT
  .word Label_01120D21
@  #06 @058   ----------------------------------------
 .byte   PATT
  .word Label_01120D4E
@  #06 @059   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @060   ----------------------------------------
 .byte   EOT
 .byte   Bn0
 .byte   W01
Label_01120D72:
 .byte   N68 ,Bn0 ,v080
 .byte   W72
 .byte   PEND 
Label_01120D77:
 .byte   N68 ,Cs1 ,v080
 .byte   W72
 .byte   PEND 
@  #06 @061   ----------------------------------------
Label_01120D7C:
 .byte   N68 ,Dn1 ,v080
 .byte   W72
 .byte   PEND 
Label_01120D81:
 .byte   N68 ,En1 ,v080
 .byte   W72
 .byte   PEND 
@  #06 @062   ----------------------------------------
Label_01120D86:
 .byte   N68 ,Fs1 ,v080
 .byte   W72
 .byte   PEND 
@  #06 @063   ----------------------------------------
 .byte   PATT
  .word Label_01120D86
@  #06 @064   ----------------------------------------
Label_01120D90:
 .byte   N68 ,An1 ,v080
 .byte   W72
 .byte   PEND 
@  #06 @065   ----------------------------------------
 .byte   PATT
  .word Label_01120D90
@  #06 @066   ----------------------------------------
Label_01120D9A:
 .byte   N68 ,Dn0 ,v080
 .byte   W72
 .byte   PEND 
Label_01120D9F:
 .byte   N68 ,En0 ,v080
 .byte   W72
 .byte   PEND 
@  #06 @067   ----------------------------------------
Label_01120DA4:
 .byte   N68 ,Fn0 ,v080
 .byte   W72
 .byte   PEND 
Label_01120DA9:
 .byte   N68 ,Gn0 ,v080
 .byte   W72
 .byte   PEND 
@  #06 @068   ----------------------------------------
Label_01120DAE:
 .byte   N68 ,An0 ,v080
 .byte   W72
 .byte   PEND 
Label_01120DB3:
 .byte   N68 ,As0 ,v080
 .byte   W72
 .byte   PEND 
@  #06 @069   ----------------------------------------
Label_01120DB8:
 .byte   N68 ,Cn1 ,v080
 .byte   W72
 .byte   PEND 
@  #06 @070   ----------------------------------------
 .byte   PATT
  .word Label_01120DAE
@  #06 @071   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @072   ----------------------------------------
 .byte   PATT
  .word Label_01120D35
@  #06 @073   ----------------------------------------
 .byte   PATT
  .word Label_01120D35
@  #06 @074   ----------------------------------------
 .byte   PATT
  .word Label_01120D35
@  #06 @075   ----------------------------------------
 .byte   PATT
  .word Label_01120D35
@  #06 @076   ----------------------------------------
 .byte   GOTO
  .word Label_01120B2C
@  #06 @077   ----------------------------------------
 .byte   PATT
  .word Label_01120B2C
@  #06 @078   ----------------------------------------
 .byte   PATT
  .word Label_01120B3F
@  #06 @079   ----------------------------------------
 .byte   PATT
  .word Label_01120B52
@  #06 @080   ----------------------------------------
 .byte   PATT
  .word Label_01120B65
@  #06 @081   ----------------------------------------
 .byte   PATT
  .word Label_01120B2C
@  #06 @082   ----------------------------------------
 .byte   PATT
  .word Label_01120B3F
@  #06 @083   ----------------------------------------
 .byte   PATT
  .word Label_01120B52
@  #06 @084   ----------------------------------------
 .byte   PATT
  .word Label_01120B65
@  #06 @085   ----------------------------------------
 .byte   PATT
  .word Label_01120B8C
@  #06 @086   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @087   ----------------------------------------
 .byte   EOT
 .byte   Fn1
 .byte   W01
@  #06 @088   ----------------------------------------
 .byte   PATT
  .word Label_01120B9B
@  #06 @089   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @090   ----------------------------------------
 .byte   EOT
 .byte   Dn1
 .byte   W01
@  #06 @091   ----------------------------------------
 .byte   PATT
  .word Label_01120BAC
@  #06 @092   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @093   ----------------------------------------
 .byte   EOT
 .byte   Dn1
 .byte   W01
@  #06 @094   ----------------------------------------
 .byte   PATT
  .word Label_01120BBD
@  #06 @095   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @096   ----------------------------------------
 .byte   EOT
 .byte   Fn1
 .byte   W01
@  #06 @097   ----------------------------------------
 .byte   PATT
  .word Label_01120BCE
@  #06 @098   ----------------------------------------
 .byte   PATT
  .word Label_01120BD6
@  #06 @099   ----------------------------------------
 .byte   EOT
 .byte   Fn1
 .byte   W01
@  #06 @100   ----------------------------------------
 .byte   PATT
  .word Label_01120BDC
@  #06 @101   ----------------------------------------
 .byte   PATT
  .word Label_01120BD6
@  #06 @102   ----------------------------------------
 .byte   EOT
 .byte   As1
 .byte   W01
@  #06 @103   ----------------------------------------
 .byte   PATT
  .word Label_01120BEC
@  #06 @104   ----------------------------------------
 .byte   PATT
  .word Label_01120BD6
@  #06 @105   ----------------------------------------
 .byte   EOT
 .byte   Fn1
 .byte   W01
@  #06 @106   ----------------------------------------
 .byte   PATT
  .word Label_01120BFC
@  #06 @107   ----------------------------------------
 .byte   PATT
  .word Label_01120BD6
@  #06 @108   ----------------------------------------
 .byte   EOT
 .byte   Gn1
 .byte   W01
@  #06 @109   ----------------------------------------
 .byte   PATT
  .word Label_01120C09
@  #06 @110   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @111   ----------------------------------------
 .byte   EOT
 .byte   Gn0
 .byte   W01
@  #06 @112   ----------------------------------------
 .byte   PATT
  .word Label_01120C16
@  #06 @113   ----------------------------------------
 .byte   PATT
  .word Label_01120C16
@  #06 @114   ----------------------------------------
 .byte   PATT
  .word Label_01120C2E
@  #06 @115   ----------------------------------------
 .byte   PATT
  .word Label_01120C41
@  #06 @116   ----------------------------------------
 .byte   PATT
  .word Label_01120C16
@  #06 @117   ----------------------------------------
 .byte   PATT
  .word Label_01120C59
@  #06 @118   ----------------------------------------
 .byte   PATT
  .word Label_01120C6C
@  #06 @119   ----------------------------------------
 .byte   PATT
  .word Label_01120C7F
@  #06 @120   ----------------------------------------
 .byte   PATT
  .word Label_01120C92
@  #06 @121   ----------------------------------------
 .byte   PATT
  .word Label_01120CA5
@  #06 @122   ----------------------------------------
 .byte   PATT
  .word Label_01120CB8
@  #06 @123   ----------------------------------------
 .byte   PATT
  .word Label_01120CCB
@  #06 @124   ----------------------------------------
 .byte   PATT
  .word Label_01120CDE
@  #06 @125   ----------------------------------------
 .byte   PATT
  .word Label_01120CF1
@  #06 @126   ----------------------------------------
 .byte   PATT
  .word Label_01120D04
@  #06 @127   ----------------------------------------
 .byte   PATT
  .word Label_01120D04
@  #06 @128   ----------------------------------------
 .byte   PATT
  .word Label_01120D1C
@  #06 @129   ----------------------------------------
 .byte   PATT
  .word Label_01120D21
@  #06 @130   ----------------------------------------
 .byte   PATT
  .word Label_01120D26
@  #06 @131   ----------------------------------------
 .byte   PATT
  .word Label_01120D2B
@  #06 @132   ----------------------------------------
 .byte   PATT
  .word Label_01120D30
@  #06 @133   ----------------------------------------
 .byte   PATT
  .word Label_01120D35
@  #06 @134   ----------------------------------------
 .byte   PATT
  .word Label_01120D26
@  #06 @135   ----------------------------------------
 .byte   PATT
  .word Label_01120D2B
@  #06 @136   ----------------------------------------
 .byte   PATT
  .word Label_01120D26
@  #06 @137   ----------------------------------------
 .byte   PATT
  .word Label_01120D21
@  #06 @138   ----------------------------------------
 .byte   PATT
  .word Label_01120D4E
@  #06 @139   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @140   ----------------------------------------
 .byte   EOT
 .byte   Bn0
 .byte   W01
@  #06 @141   ----------------------------------------
 .byte   PATT
  .word Label_01120D26
@  #06 @142   ----------------------------------------
 .byte   PATT
  .word Label_01120D21
@  #06 @143   ----------------------------------------
 .byte   PATT
  .word Label_01120D4E
@  #06 @144   ----------------------------------------
 .byte   PATT
  .word Label_01120B95
@  #06 @145   ----------------------------------------
 .byte   EOT
 .byte   Bn0
 .byte   W01
@  #06 @146   ----------------------------------------
 .byte   PATT
  .word Label_01120D72
@  #06 @147   ----------------------------------------
 .byte   PATT
  .word Label_01120D77
@  #06 @148   ----------------------------------------
 .byte   PATT
  .word Label_01120D7C
@  #06 @149   ----------------------------------------
 .byte   PATT
  .word Label_01120D81
@  #06 @150   ----------------------------------------
 .byte   PATT
  .word Label_01120D86
@  #06 @151   ----------------------------------------
 .byte   PATT
  .word Label_01120D86
@  #06 @152   ----------------------------------------
 .byte   PATT
  .word Label_01120D90
@  #06 @153   ----------------------------------------
 .byte   PATT
  .word Label_01120D90
@  #06 @154   ----------------------------------------
 .byte   PATT
  .word Label_01120D9A
@  #06 @155   ----------------------------------------
 .byte   PATT
  .word Label_01120D9F
@  #06 @156   ----------------------------------------
 .byte   PATT
  .word Label_01120DA4
@  #06 @157   ----------------------------------------
 .byte   PATT
  .word Label_01120DA9
@  #06 @158   ----------------------------------------
 .byte   PATT
  .word Label_01120DAE
@  #06 @159   ----------------------------------------
 .byte   PATT
  .word Label_01120DB3
@  #06 @160   ----------------------------------------
 .byte   PATT
  .word Label_01120DB8
@  #06 @161   ----------------------------------------
 .byte   PATT
  .word Label_01120DAE
@  #06 @162   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @163   ----------------------------------------
 .byte   PATT
  .word Label_01120D35
@  #06 @164   ----------------------------------------
 .byte   PATT
  .word Label_01120D35
@  #06 @165   ----------------------------------------
 .byte   PATT
  .word Label_01120D35
@  #06 @166   ----------------------------------------
 .byte   PATT
  .word Label_01120D35
@  #06 @167   ----------------------------------------
 .byte   N11 ,Dn1 ,v080
 .byte   W23
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

.align 2, 0
song06_007:
@  #07 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 58
 .byte   PAN , c_v-4
 .byte   VOL , 47*song06_mvl/mxv
 .byte   VOL , 47*song06_mvl/mxv
 .byte   W24
Label_54A292:
 .byte   W96
@  #07 @001   ----------------------------------------
 .byte   W96
@  #07 @002   ----------------------------------------
 .byte   W96
@  #07 @003   ----------------------------------------
 .byte   W96
@  #07 @004   ----------------------------------------
Label_54A296:
 .byte   N92 ,Gn0 ,v096
 .byte   W96
 .byte   PEND 
@  #07 @005   ----------------------------------------
Label_54A29B:
 .byte   N92 ,As0 ,v096
 .byte   W96
 .byte   PEND 
@  #07 @006   ----------------------------------------
Label_54A2A0:
 .byte   N92 ,Ds1 ,v096
 .byte   W96
 .byte   PEND 
@  #07 @007   ----------------------------------------
Label_54A2A5:
 .byte   N92 ,Cn1 ,v096
 .byte   W96
 .byte   PEND 
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
Label_54A2BA:
 .byte   TIE ,Gn0 ,v096
 .byte   W96
 .byte   PEND 
@  #07 @025   ----------------------------------------
Label_54A2BF:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Gn0
 .byte   W01
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
Label_54A2DD:
 .byte   N92 ,Gn0 ,v080
 .byte   W96
 .byte   PEND 
@  #07 @051   ----------------------------------------
Label_54A2E2:
 .byte   N92 ,An0 ,v080
 .byte   W96
 .byte   PEND 
@  #07 @052   ----------------------------------------
Label_54A2E7:
 .byte   TIE ,Bn0 ,v080
 .byte   W96
 .byte   PEND 
@  #07 @053   ----------------------------------------
Label_54A2EC:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Bn0
 .byte   W01
@  #07 @054   ----------------------------------------
 .byte   PATT
  .word Label_54A2DD
@  #07 @055   ----------------------------------------
 .byte   PATT
  .word Label_54A2E2
@  #07 @056   ----------------------------------------
 .byte   PATT
  .word Label_54A2E7
@  #07 @057   ----------------------------------------
 .byte   PATT
  .word Label_54A2EC
@  #07 @058   ----------------------------------------
 .byte   EOT
 .byte   Bn0
 .byte   W01
Label_54A309:
 .byte   N68 ,Bn0 ,v080
 .byte   W72
 .byte   PEND 
Label_54A30E:
 .byte   N68 ,Cs1 ,v080
 .byte   W72
 .byte   PEND 
@  #07 @059   ----------------------------------------
Label_54A313:
 .byte   N68 ,Dn1 ,v080
 .byte   W72
 .byte   PEND 
Label_54A318:
 .byte   N68 ,En1 ,v080
 .byte   W72
 .byte   PEND 
@  #07 @060   ----------------------------------------
Label_54A31D:
 .byte   N68 ,Fs1 ,v080
 .byte   W72
 .byte   PEND 
@  #07 @061   ----------------------------------------
 .byte   PATT
  .word Label_54A31D
@  #07 @062   ----------------------------------------
Label_54A327:
 .byte   N68 ,An1 ,v080
 .byte   W72
 .byte   PEND 
@  #07 @063   ----------------------------------------
 .byte   PATT
  .word Label_54A327
@  #07 @064   ----------------------------------------
 .byte   PATT
  .word Label_54A313
@  #07 @065   ----------------------------------------
 .byte   PATT
  .word Label_54A318
@  #07 @066   ----------------------------------------
Label_54A33B:
 .byte   N68 ,Fn1 ,v080
 .byte   W72
 .byte   PEND 
Label_54A340:
 .byte   N68 ,Gn1 ,v080
 .byte   W72
 .byte   PEND 
@  #07 @067   ----------------------------------------
Label_54A345:
 .byte   N68 ,An0 ,v080
 .byte   W72
 .byte   PEND 
Label_54A34A:
 .byte   N68 ,As0 ,v080
 .byte   W72
 .byte   PEND 
@  #07 @068   ----------------------------------------
Label_54A34F:
 .byte   N68 ,Cn1 ,v080
 .byte   W72
 .byte   PEND 
@  #07 @069   ----------------------------------------
 .byte   PATT
  .word Label_54A345
@  #07 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @071   ----------------------------------------
 .byte   W96
@  #07 @072   ----------------------------------------
 .byte   W96
@  #07 @073   ----------------------------------------
 .byte   W96
@  #07 @074   ----------------------------------------
 .byte   W96
@  #07 @075   ----------------------------------------
 .byte   GOTO
  .word Label_54A292
@  #07 @076   ----------------------------------------
 .byte   W96
@  #07 @077   ----------------------------------------
 .byte   W96
@  #07 @078   ----------------------------------------
 .byte   W96
@  #07 @079   ----------------------------------------
 .byte   W96
@  #07 @080   ----------------------------------------
 .byte   PATT
  .word Label_54A296
@  #07 @081   ----------------------------------------
 .byte   PATT
  .word Label_54A29B
@  #07 @082   ----------------------------------------
 .byte   PATT
  .word Label_54A2A0
@  #07 @083   ----------------------------------------
 .byte   PATT
  .word Label_54A2A5
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
 .byte   PATT
  .word Label_54A2BA
@  #07 @101   ----------------------------------------
 .byte   PATT
  .word Label_54A2BF
@  #07 @102   ----------------------------------------
 .byte   EOT
 .byte   Gn0
 .byte   W01
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
 .byte   PATT
  .word Label_54A2DD
@  #07 @127   ----------------------------------------
 .byte   PATT
  .word Label_54A2E2
@  #07 @128   ----------------------------------------
 .byte   PATT
  .word Label_54A2E7
@  #07 @129   ----------------------------------------
 .byte   PATT
  .word Label_54A2EC
@  #07 @130   ----------------------------------------
 .byte   EOT
 .byte   Bn0
 .byte   W01
@  #07 @131   ----------------------------------------
 .byte   PATT
  .word Label_54A2DD
@  #07 @132   ----------------------------------------
 .byte   PATT
  .word Label_54A2E2
@  #07 @133   ----------------------------------------
 .byte   PATT
  .word Label_54A2E7
@  #07 @134   ----------------------------------------
 .byte   PATT
  .word Label_54A2EC
@  #07 @135   ----------------------------------------
 .byte   EOT
 .byte   Bn0
 .byte   W01
@  #07 @136   ----------------------------------------
 .byte   PATT
  .word Label_54A309
@  #07 @137   ----------------------------------------
 .byte   PATT
  .word Label_54A30E
@  #07 @138   ----------------------------------------
 .byte   PATT
  .word Label_54A313
@  #07 @139   ----------------------------------------
 .byte   PATT
  .word Label_54A318
@  #07 @140   ----------------------------------------
 .byte   PATT
  .word Label_54A31D
@  #07 @141   ----------------------------------------
 .byte   PATT
  .word Label_54A31D
@  #07 @142   ----------------------------------------
 .byte   PATT
  .word Label_54A327
@  #07 @143   ----------------------------------------
 .byte   PATT
  .word Label_54A327
@  #07 @144   ----------------------------------------
 .byte   PATT
  .word Label_54A313
@  #07 @145   ----------------------------------------
 .byte   PATT
  .word Label_54A318
@  #07 @146   ----------------------------------------
 .byte   PATT
  .word Label_54A33B
@  #07 @147   ----------------------------------------
 .byte   PATT
  .word Label_54A340
@  #07 @148   ----------------------------------------
 .byte   PATT
  .word Label_54A345
@  #07 @149   ----------------------------------------
 .byte   PATT
  .word Label_54A34A
@  #07 @150   ----------------------------------------
 .byte   PATT
  .word Label_54A34F
@  #07 @151   ----------------------------------------
 .byte   PATT
  .word Label_54A345
@  #07 @152   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @153   ----------------------------------------
 .byte   W96
@  #07 @154   ----------------------------------------
 .byte   W96
@  #07 @155   ----------------------------------------
 .byte   W96
@  #07 @156   ----------------------------------------
 .byte   W96
@  #07 @157   ----------------------------------------
 .byte   W23
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

.align 2, 0
song06_008:
@  #08 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 45
 .byte   PAN , c_v+3
 .byte   VOL , 47*song06_mvl/mxv
 .byte   VOL , 47*song06_mvl/mxv
 .byte   W24
Label_01120FA6:
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
 .byte   W96
@  #08 @023   ----------------------------------------
 .byte   W96
@  #08 @024   ----------------------------------------
Label_01120FBE:
 .byte   W24
 .byte   N23 ,An4 ,v080
 .byte   W24
 .byte   As4
 .byte   W24
 .byte   Fn5
 .byte   W24
 .byte   PEND 
@  #08 @025   ----------------------------------------
Label_01120FC8:
 .byte   N23 ,An5 ,v080
 .byte   W24
 .byte   As5
 .byte   W24
 .byte   Cn6
 .byte   W24
 .byte   Fn6
 .byte   W24
 .byte   PEND 
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
Label_01120FDB:
 .byte   W24
 .byte   N23 ,En5 ,v096
 .byte   W24
 .byte   An5
 .byte   W24
 .byte   En6
 .byte   W24
 .byte   PEND 
@  #08 @035   ----------------------------------------
Label_01120FE5:
 .byte   N44 ,Ds6 ,v096
 .byte   W48
 .byte   N23 ,Gs5
 .byte   W24
 .byte   As5
 .byte   W24
 .byte   PEND 
@  #08 @036   ----------------------------------------
Label_01120FEF:
 .byte   N23 ,Bn5 ,v096
 .byte   W24
 .byte   As5
 .byte   W24
 .byte   Gs5
 .byte   W24
 .byte   Bn5
 .byte   W24
 .byte   PEND 
@  #08 @037   ----------------------------------------
Label_01120FFA:
 .byte   N44 ,As5 ,v096
 .byte   W48
 .byte   N23 ,Fn5
 .byte   W24
 .byte   Gn5
 .byte   W24
 .byte   PEND 
@  #08 @038   ----------------------------------------
Label_01121004:
 .byte   N44 ,Gs5 ,v096
 .byte   W48
 .byte   En5
 .byte   W48
 .byte   PEND 
@  #08 @039   ----------------------------------------
Label_0112100B:
 .byte   N23 ,Ds5 ,v096
 .byte   W24
 .byte   Gs4
 .byte   W24
 .byte   As4
 .byte   W24
 .byte   Cn5
 .byte   W24
 .byte   PEND 
@  #08 @040   ----------------------------------------
 .byte   Bn4
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
 .byte   W72
 .byte   W72
@  #08 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @064   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @065   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @067   ----------------------------------------
 .byte   W96
@  #08 @068   ----------------------------------------
 .byte   W96
@  #08 @069   ----------------------------------------
 .byte   W96
@  #08 @070   ----------------------------------------
 .byte   W96
@  #08 @071   ----------------------------------------
 .byte   GOTO
  .word Label_01120FA6
@  #08 @072   ----------------------------------------
 .byte   W96
@  #08 @073   ----------------------------------------
 .byte   W96
@  #08 @074   ----------------------------------------
 .byte   W96
@  #08 @075   ----------------------------------------
 .byte   W96
@  #08 @076   ----------------------------------------
 .byte   W96
@  #08 @077   ----------------------------------------
 .byte   W96
@  #08 @078   ----------------------------------------
 .byte   W96
@  #08 @079   ----------------------------------------
 .byte   W96
@  #08 @080   ----------------------------------------
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
 .byte   PATT
  .word Label_01120FBE
@  #08 @097   ----------------------------------------
 .byte   PATT
  .word Label_01120FC8
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
 .byte   PATT
  .word Label_01120FDB
@  #08 @107   ----------------------------------------
 .byte   PATT
  .word Label_01120FE5
@  #08 @108   ----------------------------------------
 .byte   PATT
  .word Label_01120FEF
@  #08 @109   ----------------------------------------
 .byte   PATT
  .word Label_01120FFA
@  #08 @110   ----------------------------------------
 .byte   PATT
  .word Label_01121004
@  #08 @111   ----------------------------------------
 .byte   PATT
  .word Label_0112100B
@  #08 @112   ----------------------------------------
 .byte   N23 ,Bn4 ,v096
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
 .byte   W96
@  #08 @130   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @131   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @132   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @133   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @134   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @135   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @136   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @137   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @138   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @139   ----------------------------------------
 .byte   W96
@  #08 @140   ----------------------------------------
 .byte   W96
@  #08 @141   ----------------------------------------
 .byte   W96
@  #08 @142   ----------------------------------------
 .byte   W96
@  #08 @143   ----------------------------------------
 .byte   W23
 .byte   FINE

@**************** Track 9 (Midi-Chn.8) ****************@

.align 2, 0
song06_009:
@  #09 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 0
 .byte   PAN , c_v-4
 .byte   VOL , 57*song06_mvl/mxv
 .byte   VOL , 57*song06_mvl/mxv
 .byte   W12
 .byte   N05 ,Gn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
Label_011210DC:
 .byte   N23 ,Gn1 ,v096
 .byte   N11 ,Gn3 ,v080
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Gn3
 .byte   N11 ,Gn4
 .byte   W12
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N11 ,Ds3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Ds3
 .byte   N11 ,Ds4
 .byte   W12
@  #09 @001   ----------------------------------------
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_011210FD:
 .byte   N23 ,As1 ,v096
 .byte   N11 ,Dn3 ,v080
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N23 ,An2
 .byte   N23 ,An3
 .byte   W24
 .byte   N11 ,Cn3
 .byte   N11 ,Cn4
 .byte   W12
 .byte   Cn3
 .byte   N11 ,Cn4
 .byte   W12
@  #09 @002   ----------------------------------------
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_0112111E:
 .byte   N23 ,Ds2 ,v096
 .byte   N11 ,Dn3 ,v080
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N23 ,Fn2
 .byte   N23 ,Fn3
 .byte   W24
 .byte   N11 ,As2
 .byte   N11 ,As3
 .byte   W12
 .byte   As2
 .byte   N11 ,As3
 .byte   W12
@  #09 @003   ----------------------------------------
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_0112113F:
 .byte   N23 ,Cn2 ,v096
 .byte   N11 ,An2 ,v080
 .byte   N11 ,An3
 .byte   W12
 .byte   An2
 .byte   N11 ,An3
 .byte   W12
 .byte   N23 ,Dn2
 .byte   N23 ,Dn3
 .byte   W24
 .byte   N11 ,As2
 .byte   N11 ,As3
 .byte   W12
 .byte   As2
 .byte   N11 ,As3
 .byte   W12
@  #09 @004   ----------------------------------------
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
@  #09 @005   ----------------------------------------
 .byte   PATT
  .word Label_011210DC
@  #09 @006   ----------------------------------------
Label_01121165:
 .byte   N23 ,As1 ,v096
 .byte   N11 ,Dn3 ,v080
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N11 ,Cn3
 .byte   N11 ,Cn4
 .byte   W12
 .byte   Cn3
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
@  #09 @007   ----------------------------------------
Label_01121186:
 .byte   N23 ,Ds2 ,v096
 .byte   N11 ,Dn3 ,v080
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N11 ,As2
 .byte   N11 ,As3
 .byte   W12
 .byte   As2
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
@  #09 @008   ----------------------------------------
Label_011211A7:
 .byte   N23 ,Cn2 ,v096
 .byte   N11 ,An2 ,v080
 .byte   N11 ,An3
 .byte   W12
 .byte   An2
 .byte   N11 ,An3
 .byte   W12
 .byte   N23 ,Gn2
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N11 ,As2
 .byte   N11 ,As3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
@  #09 @009   ----------------------------------------
Label_011211C5:
 .byte   N23 ,An3 ,v096
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N11 ,An3
 .byte   W12
 .byte   N80 ,Dn3
 .byte   W24
 .byte   PEND 
@  #09 @010   ----------------------------------------
Label_011211D6:
 .byte   W60
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
@  #09 @011   ----------------------------------------
Label_011211E0:
 .byte   N23 ,An3 ,v096
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Cn4
 .byte   W24
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N80 ,Dn4
 .byte   W24
 .byte   PEND 
@  #09 @012   ----------------------------------------
Label_011211F1:
 .byte   W60
 .byte   N11 ,As3 ,v096
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
@  #09 @013   ----------------------------------------
Label_011211FB:
 .byte   N23 ,Dn4 ,v096
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N23 ,As3
 .byte   W24
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N44 ,Cn4
 .byte   W24
 .byte   PEND 
@  #09 @014   ----------------------------------------
Label_0112120C:
 .byte   W24
 .byte   N23 ,As3 ,v096
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   PEND 
@  #09 @015   ----------------------------------------
Label_01121216:
 .byte   N32 ,Fn3 ,v096
 .byte   W36
 .byte   N56 ,Gn3
 .byte   W60
 .byte   PEND 
@  #09 @016   ----------------------------------------
 .byte   W96
@  #09 @017   ----------------------------------------
 .byte   W96
@  #09 @018   ----------------------------------------
 .byte   W96
@  #09 @019   ----------------------------------------
 .byte   W96
@  #09 @020   ----------------------------------------
 .byte   W96
@  #09 @021   ----------------------------------------
 .byte   W96
@  #09 @022   ----------------------------------------
 .byte   W96
@  #09 @023   ----------------------------------------
 .byte   W96
@  #09 @024   ----------------------------------------
 .byte   W96
@  #09 @025   ----------------------------------------
Label_01121227:
 .byte   W24
 .byte   N23 ,An3 ,v080
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   Fn4
 .byte   W24
 .byte   PEND 
@  #09 @026   ----------------------------------------
Label_01121231:
 .byte   N02 ,Gn1 ,v080
 .byte   N23 ,An4
 .byte   W02
 .byte   N02 ,Gn1
 .byte   W03
 .byte   Gn1 ,v084
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Gn1 ,v088
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W01
 .byte   N23 ,As4 ,v080
 .byte   W02
 .byte   N02 ,Gn1 ,v088
 .byte   W03
 .byte   Gn1 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Gn1 ,v096
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W01
 .byte   N23 ,Cn5 ,v080
 .byte   W02
 .byte   N02 ,Gn1 ,v096
 .byte   W03
 .byte   Gn1 ,v100
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Gn1 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W01
 .byte   N23 ,Fn5 ,v080
 .byte   W02
 .byte   N02 ,Gn1 ,v104
 .byte   W03
 .byte   Gn1 ,v108
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   Gn1 ,v112
 .byte   W03
 .byte   N02
 .byte   W04
 .byte   PEND 
@  #09 @027   ----------------------------------------
 .byte   N92 ,As1
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
 .byte   W96
@  #09 @037   ----------------------------------------
 .byte   W96
@  #09 @038   ----------------------------------------
 .byte   W96
@  #09 @039   ----------------------------------------
 .byte   W96
@  #09 @040   ----------------------------------------
 .byte   W96
@  #09 @041   ----------------------------------------
 .byte   W96
@  #09 @042   ----------------------------------------
 .byte   W96
@  #09 @043   ----------------------------------------
Label_011212A3:
 .byte   N56 ,Fs3 ,v080
 .byte   W60
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #09 @044   ----------------------------------------
Label_011212AF:
 .byte   N56 ,Cs4 ,v080
 .byte   W60
 .byte   N11 ,Fs3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #09 @045   ----------------------------------------
Label_011212BB:
 .byte   N56 ,Dn4 ,v080
 .byte   W60
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #09 @046   ----------------------------------------
Label_011212C7:
 .byte   N23 ,An4 ,v080
 .byte   N23 ,An5
 .byte   W24
 .byte   Bn4
 .byte   N23 ,Bn5
 .byte   W24
 .byte   Gn4
 .byte   N23 ,Gn5
 .byte   W24
 .byte   Fs4
 .byte   N23 ,Fs5
 .byte   W24
 .byte   PEND 
@  #09 @047   ----------------------------------------
Label_011212DA:
 .byte   N56 ,Gn4 ,v080
 .byte   N56 ,Gn5
 .byte   W60
 .byte   N11 ,En4
 .byte   N11 ,En5
 .byte   W12
 .byte   Fs4
 .byte   N11 ,Fs5
 .byte   W12
 .byte   Gn4
 .byte   N11 ,Gn5
 .byte   W12
 .byte   PEND 
@  #09 @048   ----------------------------------------
Label_011212EE:
 .byte   N23 ,Fs4 ,v080
 .byte   N23 ,Cs5
 .byte   N23 ,Fs5
 .byte   W24
 .byte   Bn3
 .byte   N23 ,Fs4
 .byte   N23 ,Bn4
 .byte   W24
 .byte   Cs4
 .byte   N23 ,As4
 .byte   N23 ,Cs5
 .byte   W24
 .byte   Dn4
 .byte   N23 ,Bn4
 .byte   N23 ,Dn5
 .byte   W24
 .byte   PEND 
@  #09 @049   ----------------------------------------
Label_01121309:
 .byte   N11 ,Fs4 ,v080
 .byte   N11 ,Dn5
 .byte   N11 ,Fs5
 .byte   W12
 .byte   Gn4
 .byte   N11 ,Dn5
 .byte   N11 ,Gn5
 .byte   W12
 .byte   N44 ,En4
 .byte   N44 ,Gn4
 .byte   N44 ,Cs5
 .byte   N44 ,En5
 .byte   W48
 .byte   N11 ,Dn4
 .byte   N11 ,Dn5
 .byte   W12
 .byte   En4
 .byte   N11 ,En5
 .byte   W12
 .byte   PEND 
@  #09 @050   ----------------------------------------
 .byte   N92 ,Fs4
 .byte   N92 ,Fs5
 .byte   W96
@  #09 @051   ----------------------------------------
 .byte   W96
@  #09 @052   ----------------------------------------
 .byte   W96
@  #09 @053   ----------------------------------------
 .byte   W96
@  #09 @054   ----------------------------------------
 .byte   W96
@  #09 @055   ----------------------------------------
 .byte   W96
@  #09 @056   ----------------------------------------
 .byte   W96
@  #09 @057   ----------------------------------------
 .byte   W96
@  #09 @058   ----------------------------------------
 .byte   W96
@  #09 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @064   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @065   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @067   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @068   ----------------------------------------
 .byte   W96
@  #09 @069   ----------------------------------------
 .byte   W96
@  #09 @070   ----------------------------------------
 .byte   W96
@  #09 @071   ----------------------------------------
 .byte   W96
@  #09 @072   ----------------------------------------
 .byte   GOTO
  .word Label_011210DC
@  #09 @073   ----------------------------------------
 .byte   PATT
  .word Label_011210DC
@  #09 @074   ----------------------------------------
 .byte   PATT
  .word Label_011210FD
@  #09 @075   ----------------------------------------
 .byte   PATT
  .word Label_0112111E
@  #09 @076   ----------------------------------------
 .byte   PATT
  .word Label_0112113F
@  #09 @077   ----------------------------------------
 .byte   PATT
  .word Label_011210DC
@  #09 @078   ----------------------------------------
 .byte   PATT
  .word Label_01121165
@  #09 @079   ----------------------------------------
 .byte   PATT
  .word Label_01121186
@  #09 @080   ----------------------------------------
 .byte   PATT
  .word Label_011211A7
@  #09 @081   ----------------------------------------
 .byte   PATT
  .word Label_011211C5
@  #09 @082   ----------------------------------------
 .byte   PATT
  .word Label_011211D6
@  #09 @083   ----------------------------------------
 .byte   PATT
  .word Label_011211E0
@  #09 @084   ----------------------------------------
 .byte   PATT
  .word Label_011211F1
@  #09 @085   ----------------------------------------
 .byte   PATT
  .word Label_011211FB
@  #09 @086   ----------------------------------------
 .byte   PATT
  .word Label_0112120C
@  #09 @087   ----------------------------------------
 .byte   PATT
  .word Label_01121216
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
 .byte   PATT
  .word Label_01121227
@  #09 @098   ----------------------------------------
 .byte   PATT
  .word Label_01121231
@  #09 @099   ----------------------------------------
 .byte   N92 ,As1 ,v112
 .byte   W96
@  #09 @100   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #09 @114   ----------------------------------------
 .byte   W96
@  #09 @115   ----------------------------------------
 .byte   PATT
  .word Label_011212A3
@  #09 @116   ----------------------------------------
 .byte   PATT
  .word Label_011212AF
@  #09 @117   ----------------------------------------
 .byte   PATT
  .word Label_011212BB
@  #09 @118   ----------------------------------------
 .byte   PATT
  .word Label_011212C7
@  #09 @119   ----------------------------------------
 .byte   PATT
  .word Label_011212DA
@  #09 @120   ----------------------------------------
 .byte   PATT
  .word Label_011212EE
@  #09 @121   ----------------------------------------
 .byte   PATT
  .word Label_01121309
@  #09 @122   ----------------------------------------
 .byte   N92 ,Fs4 ,v080
 .byte   N92 ,Fs5
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
 .byte   W96
@  #09 @128   ----------------------------------------
 .byte   W96
@  #09 @129   ----------------------------------------
 .byte   W96
@  #09 @130   ----------------------------------------
 .byte   W96
@  #09 @131   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @132   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @133   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @134   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @135   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @136   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @137   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @138   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @139   ----------------------------------------
 .byte   W72
 .byte   W72
@  #09 @140   ----------------------------------------
 .byte   W96
@  #09 @141   ----------------------------------------
 .byte   W96
@  #09 @142   ----------------------------------------
 .byte   W96
@  #09 @143   ----------------------------------------
 .byte   W96
@  #09 @144   ----------------------------------------
 .byte   W23
 .byte   FINE

@**************** Track 10 (Midi-Chn.9) ****************@

.align 2, 0
song06_010:
@  #10 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 49
 .byte   PAN , c_v+3
 .byte   VOL , 32*song06_mvl/mxv
 .byte   VOL , 32*song06_mvl/mxv
 .byte   W24
Label_01125AD6:
 .byte   N05 ,Gn4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N05 ,Ds4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @001   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_01125AF0:
 .byte   N05 ,Dn4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,An3
 .byte   W24
 .byte   N05 ,Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @002   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_01125B0A:
 .byte   N05 ,Dn4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Fn3
 .byte   W24
 .byte   N05 ,As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @003   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_01125B24:
 .byte   N05 ,An3 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Dn3
 .byte   W24
 .byte   N05 ,As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @004   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_01125B3E:
 .byte   N05 ,Gn4 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N05 ,Ds4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @005   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_01125B58:
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N05 ,Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @006   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_01125B72:
 .byte   N05 ,Dn4 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N05 ,As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #10 @007   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_01125B8C:
 .byte   N05 ,An3 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   Dn3
 .byte   W12
@  #10 @008   ----------------------------------------
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_01125BA3:
 .byte   N23 ,An3 ,v096
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Gn3
 .byte   W12
 .byte   W12
 .byte   N11 ,An3
 .byte   W12
@  #10 @009   ----------------------------------------
 .byte   N80 ,Dn3
 .byte   W24
 .byte   PEND 
Label_01125BB5:
 .byte   W48
 .byte   W12
 .byte   N11 ,Dn3 ,v096
 .byte   W12
@  #10 @010   ----------------------------------------
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_01125BC0:
 .byte   N23 ,An3 ,v096
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Cn4
 .byte   W12
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
@  #10 @011   ----------------------------------------
 .byte   N80 ,Dn4
 .byte   W24
 .byte   PEND 
Label_01125BD2:
 .byte   W48
 .byte   W12
 .byte   N11 ,As3 ,v096
 .byte   W12
@  #10 @012   ----------------------------------------
 .byte   Fn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
Label_01125BDD:
 .byte   N23 ,Dn4 ,v096
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N23 ,As3
 .byte   W12
 .byte   W12
 .byte   N11 ,Dn4
 .byte   W12
@  #10 @013   ----------------------------------------
 .byte   N44 ,Cn4
 .byte   W24
 .byte   PEND 
Label_01125BEF:
 .byte   W24
 .byte   N23 ,As3 ,v096
 .byte   W24
 .byte   An3
 .byte   W24
@  #10 @014   ----------------------------------------
 .byte   Fn3
 .byte   W24
 .byte   PEND 
Label_01125BF9:
 .byte   N32 ,Fn3 ,v096
 .byte   W36
 .byte   TIE ,Gn3
 .byte   W12
 .byte   W48
 .byte   PEND 
@  #10 @015   ----------------------------------------
 .byte   W48
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
@  #10 @016   ----------------------------------------
 .byte   PATT
  .word Label_01125BA3
@  #10 @017   ----------------------------------------
 .byte   PATT
  .word Label_01125BB5
@  #10 @018   ----------------------------------------
Label_01125C17:
 .byte   N23 ,An3 ,v096
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Cn4
 .byte   W12
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N44 ,Dn4
 .byte   W24
 .byte   PEND 
@  #10 @019   ----------------------------------------
Label_01125C29:
 .byte   W24
 .byte   N23 ,Cn4 ,v096
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   Fn4
 .byte   W24
 .byte   PEND 
@  #10 @020   ----------------------------------------
Label_01125C33:
 .byte   N11 ,An4 ,v096
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   N92 ,Gn4
 .byte   W24
 .byte   W48
 .byte   PEND 
@  #10 @021   ----------------------------------------
Label_01125C3E:
 .byte   W24
 .byte   N23 ,Fn4 ,v096
 .byte   W24
 .byte   Cn5
 .byte   W24
 .byte   As4
 .byte   W24
 .byte   PEND 
@  #10 @022   ----------------------------------------
Label_01125C48:
 .byte   N11 ,An4 ,v096
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   TIE ,Gn4
 .byte   W24
 .byte   W48
 .byte   PEND 
@  #10 @023   ----------------------------------------
Label_01125C53:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Gn4
 .byte   W01
@  #10 @024   ----------------------------------------
 .byte   W96
@  #10 @025   ----------------------------------------
Label_01125C5A:
 .byte   W72
 .byte   N11 ,As3 ,v112
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #10 @026   ----------------------------------------
Label_01125C62:
 .byte   N17 ,Fn3 ,v080
 .byte   N17 ,Cs4 ,v112
 .byte   W18
 .byte   Fn3
 .byte   N17 ,Cn4
 .byte   W18
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N17
 .byte   N17 ,Cs4
 .byte   W18
 .byte   Fn3
 .byte   N17 ,Cn4
 .byte   W18
 .byte   N11 ,Fn3
 .byte   W12
 .byte   PEND 
@  #10 @027   ----------------------------------------
Label_01125C7C:
 .byte   N68 ,Cs3 ,v080
 .byte   N68 ,As3 ,v112
 .byte   W72
 .byte   N11 ,Cs3
 .byte   N11 ,Cn4
 .byte   W12
 .byte   Cs3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   PEND 
@  #10 @028   ----------------------------------------
Label_01125C8D:
 .byte   N92 ,Ds3 ,v080
 .byte   N23 ,Gn3 ,v112
 .byte   N23 ,Ds4
 .byte   W24
 .byte   N44 ,Gn3
 .byte   N44 ,Fn4
 .byte   W48
 .byte   N23 ,Gn3
 .byte   N23 ,Ds4
 .byte   W24
 .byte   PEND 
@  #10 @029   ----------------------------------------
Label_01125CA1:
 .byte   N80 ,Cs3 ,v080
 .byte   N80 ,As3 ,v112
 .byte   W72
 .byte   W12
 .byte   N05 ,Cs3
 .byte   N05 ,As3
 .byte   W06
 .byte   Cs3
 .byte   N05 ,Cn4
 .byte   W06
 .byte   PEND 
@  #10 @030   ----------------------------------------
Label_01125CB3:
 .byte   N17 ,As3 ,v080
 .byte   N17 ,Cs4 ,v112
 .byte   W18
 .byte   As3
 .byte   N17 ,Cn4
 .byte   W18
 .byte   N11 ,Fn3
 .byte   N11 ,As3
 .byte   W12
 .byte   N17
 .byte   N17 ,Cs4
 .byte   W18
 .byte   As3
 .byte   N17 ,Cn4
 .byte   W18
 .byte   N11 ,As3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   PEND 
@  #10 @031   ----------------------------------------
Label_01125CD1:
 .byte   N23 ,Cs4 ,v080
 .byte   N23 ,Ds4 ,v112
 .byte   W24
 .byte   N44 ,Cs4
 .byte   N44 ,Fn4
 .byte   W48
 .byte   N23 ,Fn4 ,v080
 .byte   N68 ,Gs4 ,v112
 .byte   W24
 .byte   PEND 
@  #10 @032   ----------------------------------------
Label_01125CE5:
 .byte   N44 ,Ds4 ,v080
 .byte   W48
 .byte   N23 ,Cn4
 .byte   N23 ,Ds4 ,v112
 .byte   W24
 .byte   N11 ,Cn4
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Cn4
 .byte   N11 ,Ds4
 .byte   W12
 .byte   PEND 
@  #10 @033   ----------------------------------------
Label_01125CF9:
 .byte   N32 ,As3 ,v080
 .byte   N32 ,Ds4 ,v112
 .byte   W36
 .byte   N11 ,As3
 .byte   N11 ,Fn4
 .byte   W12
 .byte   N44 ,As3
 .byte   W48
 .byte   PEND 
@  #10 @034   ----------------------------------------
Label_01125D09:
 .byte   N48 ,An3 ,v064
 .byte   N92 ,Cs4
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   N23 ,En3 ,v096
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   PEND 
@  #10 @035   ----------------------------------------
Label_01125D24:
 .byte   N48 ,Gs3 ,v080
 .byte   N92 ,Cn4
 .byte   N44 ,Ds4 ,v096
 .byte   W48
 .byte   N23 ,Gs3
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   PEND 
@  #10 @036   ----------------------------------------
Label_01125D33:
 .byte   N48 ,Gs3 ,v080
 .byte   N23 ,Bn3 ,v096
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   Gs3
 .byte   W24
 .byte   Bn3
 .byte   W24
 .byte   PEND 
@  #10 @037   ----------------------------------------
Label_01125D41:
 .byte   N48 ,Fn3 ,v080
 .byte   N44 ,As3 ,v096
 .byte   W48
 .byte   N23 ,Fn3
 .byte   W24
 .byte   Gn3
 .byte   W24
 .byte   PEND 
@  #10 @038   ----------------------------------------
Label_01125D4E:
 .byte   N48 ,En3 ,v080
 .byte   N44 ,Gs3 ,v096
 .byte   N92 ,Cs4 ,v080
 .byte   W48
 .byte   N44 ,En3 ,v096
 .byte   W48
 .byte   PEND 
@  #10 @039   ----------------------------------------
Label_01125D5D:
 .byte   N23 ,Ds3 ,v096
 .byte   N92 ,Fn3 ,v080
 .byte   N92 ,Cn4
 .byte   W24
 .byte   N68 ,Gs3 ,v096
 .byte   W72
 .byte   PEND 
@  #10 @040   ----------------------------------------
Label_01125D6B:
 .byte   N92 ,Gn3 ,v096
 .byte   TIE ,Bn3 ,v080
 .byte   TIE ,Dn4
 .byte   W96
 .byte   PEND 
@  #10 @041   ----------------------------------------
Label_01125D75:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Bn3 ,v074
 .byte   W01
@  #10 @042   ----------------------------------------
Label_01125D7C:
 .byte   N56 ,Fs3 ,v080
 .byte   W48
 .byte   W12
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #10 @043   ----------------------------------------
Label_01125D89:
 .byte   N56 ,Cs4 ,v080
 .byte   W48
 .byte   W12
 .byte   N11 ,Fs3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #10 @044   ----------------------------------------
Label_01125D96:
 .byte   N56 ,Dn4 ,v080
 .byte   W48
 .byte   W12
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #10 @045   ----------------------------------------
Label_01125DA3:
 .byte   N23 ,An4 ,v080
 .byte   W24
 .byte   Bn4
 .byte   W24
 .byte   Gn4
 .byte   W24
 .byte   Fs4
 .byte   W24
 .byte   PEND 
@  #10 @046   ----------------------------------------
Label_01125DAE:
 .byte   N56 ,Gn4 ,v080
 .byte   W48
 .byte   W12
 .byte   N11 ,En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
@  #10 @047   ----------------------------------------
Label_01125DBB:
 .byte   N23 ,Fs4 ,v080
 .byte   W24
 .byte   Bn3
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   PEND 
@  #10 @048   ----------------------------------------
Label_01125DC6:
 .byte   N11 ,Fs4 ,v080
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N44 ,En4
 .byte   W48
 .byte   N11 ,Dn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #10 @049   ----------------------------------------
Label_01125DD5:
 .byte   N92 ,Fs4 ,v080
 .byte   W96
 .byte   PEND 
@  #10 @050   ----------------------------------------
Label_01125DDA:
 .byte   TIE ,Bn3 ,v080
 .byte   W96
 .byte   PEND 
@  #10 @051   ----------------------------------------
Label_01125DDF:
 .byte   W44
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Bn3
 .byte   W01
 .byte   N44 ,Dn4 ,v080
 .byte   W48
@  #10 @052   ----------------------------------------
Label_01125DE9:
 .byte   N92 ,Cs4 ,v080
 .byte   W96
 .byte   PEND 
@  #10 @053   ----------------------------------------
Label_01125DEE:
 .byte   N44 ,An3 ,v080
 .byte   W48
 .byte   Fs3
 .byte   W48
 .byte   PEND 
@  #10 @054   ----------------------------------------
Label_01125DF5:
 .byte   TIE ,En3 ,v080
 .byte   W96
 .byte   PEND 
@  #10 @055   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N23 ,Fs3
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   Cs3
 .byte   W24
@  #10 @056   ----------------------------------------
Label_01125E04:
 .byte   N44 ,Cs3 ,v080
 .byte   W48
 .byte   TIE ,Bn2
 .byte   W48
 .byte   PEND 
@  #10 @057   ----------------------------------------
 .byte   PATT
  .word Label_01125D75
@  #10 @058   ----------------------------------------
 .byte   EOT
 .byte   Bn2
 .byte   W01
Label_01125E14:
 .byte   N23 ,Dn3 ,v112
 .byte   N23 ,Bn3
 .byte   TIE ,Dn4 ,v080
 .byte   W24
 .byte   N23 ,Fs3 ,v112
 .byte   N23 ,Bn3
 .byte   W24
 .byte   Dn3
 .byte   N23 ,Bn3
 .byte   W24
 .byte   PEND 
Label_01125E28:
 .byte   N23 ,Cs3 ,v112
 .byte   N23 ,Bn3
 .byte   W24
@  #10 @059   ----------------------------------------
 .byte   En3
 .byte   N23 ,Bn3
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Dn4
 .byte   W01
 .byte   N24 ,Cs4 ,v080
 .byte   W12
 .byte   N11 ,An3 ,v112
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Cs4
 .byte   N11 ,En4
 .byte   W12
Label_01125E44:
 .byte   N23 ,Dn3 ,v112
 .byte   N23 ,Bn3
 .byte   N32 ,Cs4 ,v080
 .byte   W24
 .byte   N23 ,En3 ,v112
 .byte   N12 ,Bn3
 .byte   W12
 .byte   N11 ,Bn3 ,v080
 .byte   W12
@  #10 @060   ----------------------------------------
 .byte   N23 ,Fs3 ,v112
 .byte   N23 ,Bn3
 .byte   W24
 .byte   PEND 
Label_01125E5E:
 .byte   N23 ,En3 ,v112
 .byte   N23 ,Bn3 ,v080
 .byte   W24
 .byte   Fs3 ,v112
 .byte   N23 ,Bn3
 .byte   W24
 .byte   Fs3 ,v080
 .byte   N11 ,Bn3 ,v112
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Bn3
 .byte   N11 ,En4
 .byte   W12
 .byte   PEND 
@  #10 @061   ----------------------------------------
Label_01125E77:
 .byte   N32 ,Bn3 ,v112
 .byte   N60 ,Dn4 ,v080
 .byte   N32 ,Fs4 ,v112
 .byte   W36
 .byte   N11 ,Bn3
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Cs4
 .byte   N11 ,En4
 .byte   W12
 .byte   Dn4
 .byte   N11 ,Fs4
 .byte   W12
 .byte   PEND 
Label_01125E8F:
 .byte   N23 ,Bn3 ,v112
 .byte   N23 ,Gn4
 .byte   W24
@  #10 @062   ----------------------------------------
 .byte   Bn3
 .byte   N23 ,Fs4
 .byte   W12
 .byte   N32 ,Cs4 ,v080
 .byte   W12
 .byte   N23 ,Bn3 ,v112
 .byte   N23 ,Dn4
 .byte   W24
 .byte   PEND 
Label_01125EA4:
 .byte   N32 ,An3 ,v112
 .byte   N32 ,Cs4 ,v080
 .byte   N32 ,En4 ,v112
 .byte   W36
 .byte   N23 ,An3
 .byte   N23 ,En4 ,v080
 .byte   W24
@  #10 @063   ----------------------------------------
 .byte   N11 ,An3 ,v112
 .byte   N11 ,Dn4
 .byte   W12
 .byte   PEND 
Label_01125EBB:
 .byte   N23 ,An3 ,v112
 .byte   N23 ,Cs4
 .byte   N32 ,En4 ,v080
 .byte   W24
 .byte   N23 ,Bn3 ,v112
 .byte   N23 ,Dn4
 .byte   W12
 .byte   N32 ,Fs4 ,v080
 .byte   W12
 .byte   N23 ,Bn3 ,v112
 .byte   N23 ,En4
 .byte   W24
 .byte   PEND 
Label_01125ED5:
 .byte   N44 ,As3 ,v112
 .byte   N44 ,Fn4
 .byte   N68 ,Fn5 ,v080
 .byte   W48
@  #10 @064   ----------------------------------------
 .byte   N23 ,As3 ,v112
 .byte   N23 ,Dn4
 .byte   W24
 .byte   PEND 
Label_01125EE5:
 .byte   N32 ,Cn4 ,v112
 .byte   N32 ,Fn4
 .byte   N32 ,Fn5 ,v080
 .byte   W36
 .byte   An3 ,v112
 .byte   N32 ,En4
 .byte   N32 ,En5 ,v080
 .byte   W36
 .byte   PEND 
@  #10 @065   ----------------------------------------
Label_01125EF7:
 .byte   N32 ,An3 ,v112
 .byte   N32 ,En4
 .byte   N32 ,En5 ,v080
 .byte   W36
 .byte   As3 ,v112
 .byte   N32 ,Dn4
 .byte   N32 ,Dn5 ,v080
 .byte   W36
 .byte   PEND 
Label_01125F09:
 .byte   N44 ,An3 ,v112
 .byte   N44 ,Dn4
 .byte   N44 ,Dn5 ,v080
 .byte   W48
@  #10 @066   ----------------------------------------
 .byte   N23 ,Fn3 ,v112
 .byte   N23 ,An3
 .byte   N23 ,An4 ,v080
 .byte   W24
 .byte   PEND 
Label_01125F1C:
 .byte   N44 ,Dn4 ,v112
 .byte   N68 ,Fn4
 .byte   N68 ,Fn5 ,v080
 .byte   W48
 .byte   N23 ,Cn4 ,v112
 .byte   W24
 .byte   PEND 
@  #10 @067   ----------------------------------------
Label_01125F2A:
 .byte   N32 ,As3 ,v112
 .byte   N32 ,Fn4
 .byte   N32 ,Fn5 ,v080
 .byte   W36
 .byte   As3 ,v112
 .byte   N32 ,En4
 .byte   N32 ,En5 ,v080
 .byte   W36
 .byte   PEND 
Label_01125F3C:
 .byte   N32 ,An3 ,v112
 .byte   N32 ,En4
 .byte   N32 ,En5 ,v080
 .byte   W36
@  #10 @068   ----------------------------------------
 .byte   Cn4 ,v112
 .byte   N32 ,Gn4
 .byte   N32 ,Gn5 ,v080
 .byte   W36
 .byte   PEND 
Label_01125F4E:
 .byte   N32 ,En4 ,v112
 .byte   N32 ,Gn4
 .byte   N32 ,Gn5 ,v080
 .byte   W36
 .byte   Dn4 ,v112
 .byte   N32 ,An4
 .byte   N32 ,An5 ,v080
 .byte   W36
 .byte   PEND 
@  #10 @069   ----------------------------------------
Label_01125F60:
 .byte   TIE ,En3 ,v080
 .byte   TIE ,Gn3
 .byte   TIE ,An3
 .byte   TIE ,An5
 .byte   W72
 .byte   PEND 
Label_01125F6B:
 .byte   W68
@  #10 @070   ----------------------------------------
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   En3 ,v067
 .byte   An3 ,v093
 .byte   W01
Label_01125F74:
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #10 @071   ----------------------------------------
Label_01125F87:
 .byte   N11 ,An3 ,v080
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
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #10 @072   ----------------------------------------
Label_01125F9A:
 .byte   N11 ,An3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #10 @073   ----------------------------------------
Label_01125FAD:
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #10 @074   ----------------------------------------
 .byte   GOTO
  .word Label_01125AD6
@  #10 @075   ----------------------------------------
 .byte   PATT
  .word Label_01125AD6
@  #10 @076   ----------------------------------------
 .byte   PATT
  .word Label_01125AF0
@  #10 @077   ----------------------------------------
 .byte   PATT
  .word Label_01125B0A
@  #10 @078   ----------------------------------------
 .byte   PATT
  .word Label_01125B24
@  #10 @079   ----------------------------------------
 .byte   PATT
  .word Label_01125B3E
@  #10 @080   ----------------------------------------
 .byte   PATT
  .word Label_01125B58
@  #10 @081   ----------------------------------------
 .byte   PATT
  .word Label_01125B72
@  #10 @082   ----------------------------------------
 .byte   PATT
  .word Label_01125B8C
@  #10 @083   ----------------------------------------
 .byte   PATT
  .word Label_01125BA3
@  #10 @084   ----------------------------------------
 .byte   PATT
  .word Label_01125BB5
@  #10 @085   ----------------------------------------
 .byte   PATT
  .word Label_01125BC0
@  #10 @086   ----------------------------------------
 .byte   PATT
  .word Label_01125BD2
@  #10 @087   ----------------------------------------
 .byte   PATT
  .word Label_01125BDD
@  #10 @088   ----------------------------------------
 .byte   PATT
  .word Label_01125BEF
@  #10 @089   ----------------------------------------
 .byte   PATT
  .word Label_01125BF9
@  #10 @090   ----------------------------------------
 .byte   W48
 .byte   W11
 .byte   EOT
 .byte   Gn3
 .byte   W01
 .byte   N11 ,Dn3 ,v096
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
@  #10 @091   ----------------------------------------
 .byte   PATT
  .word Label_01125BA3
@  #10 @092   ----------------------------------------
 .byte   PATT
  .word Label_01125BB5
@  #10 @093   ----------------------------------------
 .byte   PATT
  .word Label_01125C17
@  #10 @094   ----------------------------------------
 .byte   PATT
  .word Label_01125C29
@  #10 @095   ----------------------------------------
 .byte   PATT
  .word Label_01125C33
@  #10 @096   ----------------------------------------
 .byte   PATT
  .word Label_01125C3E
@  #10 @097   ----------------------------------------
 .byte   PATT
  .word Label_01125C48
@  #10 @098   ----------------------------------------
 .byte   PATT
  .word Label_01125C53
@  #10 @099   ----------------------------------------
 .byte   EOT
 .byte   Gn4
 .byte   W01
 .byte   W96
@  #10 @100   ----------------------------------------
 .byte   PATT
  .word Label_01125C5A
@  #10 @101   ----------------------------------------
 .byte   PATT
  .word Label_01125C62
@  #10 @102   ----------------------------------------
 .byte   PATT
  .word Label_01125C7C
@  #10 @103   ----------------------------------------
 .byte   PATT
  .word Label_01125C8D
@  #10 @104   ----------------------------------------
 .byte   PATT
  .word Label_01125CA1
@  #10 @105   ----------------------------------------
 .byte   PATT
  .word Label_01125CB3
@  #10 @106   ----------------------------------------
 .byte   PATT
  .word Label_01125CD1
@  #10 @107   ----------------------------------------
 .byte   PATT
  .word Label_01125CE5
@  #10 @108   ----------------------------------------
 .byte   PATT
  .word Label_01125CF9
@  #10 @109   ----------------------------------------
 .byte   PATT
  .word Label_01125D09
@  #10 @110   ----------------------------------------
 .byte   PATT
  .word Label_01125D24
@  #10 @111   ----------------------------------------
 .byte   PATT
  .word Label_01125D33
@  #10 @112   ----------------------------------------
 .byte   PATT
  .word Label_01125D41
@  #10 @113   ----------------------------------------
 .byte   PATT
  .word Label_01125D4E
@  #10 @114   ----------------------------------------
 .byte   PATT
  .word Label_01125D5D
@  #10 @115   ----------------------------------------
 .byte   PATT
  .word Label_01125D6B
@  #10 @116   ----------------------------------------
 .byte   PATT
  .word Label_01125D75
@  #10 @117   ----------------------------------------
 .byte   EOT
 .byte   Bn3 ,v074
 .byte   W01
@  #10 @118   ----------------------------------------
 .byte   PATT
  .word Label_01125D7C
@  #10 @119   ----------------------------------------
 .byte   PATT
  .word Label_01125D89
@  #10 @120   ----------------------------------------
 .byte   PATT
  .word Label_01125D96
@  #10 @121   ----------------------------------------
 .byte   PATT
  .word Label_01125DA3
@  #10 @122   ----------------------------------------
 .byte   PATT
  .word Label_01125DAE
@  #10 @123   ----------------------------------------
 .byte   PATT
  .word Label_01125DBB
@  #10 @124   ----------------------------------------
 .byte   PATT
  .word Label_01125DC6
@  #10 @125   ----------------------------------------
 .byte   PATT
  .word Label_01125DD5
@  #10 @126   ----------------------------------------
 .byte   PATT
  .word Label_01125DDA
@  #10 @127   ----------------------------------------
 .byte   PATT
  .word Label_01125DDF
@  #10 @128   ----------------------------------------
 .byte   EOT
 .byte   Bn3
 .byte   W01
 .byte   N44 ,Dn4 ,v080
 .byte   W48
@  #10 @129   ----------------------------------------
 .byte   PATT
  .word Label_01125DE9
@  #10 @130   ----------------------------------------
 .byte   PATT
  .word Label_01125DEE
@  #10 @131   ----------------------------------------
 .byte   PATT
  .word Label_01125DF5
@  #10 @132   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   En3
 .byte   W01
 .byte   N23 ,Fs3 ,v080
 .byte   W24
 .byte   Dn3
 .byte   W24
 .byte   Cs3
 .byte   W24
@  #10 @133   ----------------------------------------
 .byte   PATT
  .word Label_01125E04
@  #10 @134   ----------------------------------------
 .byte   PATT
  .word Label_01125D75
@  #10 @135   ----------------------------------------
 .byte   EOT
 .byte   Bn2
 .byte   W01
@  #10 @136   ----------------------------------------
 .byte   PATT
  .word Label_01125E14
@  #10 @137   ----------------------------------------
 .byte   PATT
  .word Label_01125E28
@  #10 @138   ----------------------------------------
 .byte   EOT
 .byte   Dn4
 .byte   W01
 .byte   N24 ,Cs4 ,v080
 .byte   W12
 .byte   N11 ,An3 ,v112
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Cs4
 .byte   N11 ,En4
 .byte   W12
@  #10 @139   ----------------------------------------
 .byte   PATT
  .word Label_01125E44
@  #10 @140   ----------------------------------------
 .byte   PATT
  .word Label_01125E5E
@  #10 @141   ----------------------------------------
 .byte   PATT
  .word Label_01125E77
@  #10 @142   ----------------------------------------
 .byte   PATT
  .word Label_01125E8F
@  #10 @143   ----------------------------------------
 .byte   PATT
  .word Label_01125EA4
@  #10 @144   ----------------------------------------
 .byte   PATT
  .word Label_01125EBB
@  #10 @145   ----------------------------------------
 .byte   PATT
  .word Label_01125ED5
@  #10 @146   ----------------------------------------
 .byte   PATT
  .word Label_01125EE5
@  #10 @147   ----------------------------------------
 .byte   PATT
  .word Label_01125EF7
@  #10 @148   ----------------------------------------
 .byte   PATT
  .word Label_01125F09
@  #10 @149   ----------------------------------------
 .byte   PATT
  .word Label_01125F1C
@  #10 @150   ----------------------------------------
 .byte   PATT
  .word Label_01125F2A
@  #10 @151   ----------------------------------------
 .byte   PATT
  .word Label_01125F3C
@  #10 @152   ----------------------------------------
 .byte   PATT
  .word Label_01125F4E
@  #10 @153   ----------------------------------------
 .byte   PATT
  .word Label_01125F60
@  #10 @154   ----------------------------------------
 .byte   PATT
  .word Label_01125F6B
@  #10 @155   ----------------------------------------
 .byte   EOT
 .byte   En3 ,v067
 .byte   An3 ,v093
 .byte   W01
@  #10 @156   ----------------------------------------
 .byte   PATT
  .word Label_01125F74
@  #10 @157   ----------------------------------------
 .byte   PATT
  .word Label_01125F87
@  #10 @158   ----------------------------------------
 .byte   PATT
  .word Label_01125F9A
@  #10 @159   ----------------------------------------
 .byte   PATT
  .word Label_01125FAD
@  #10 @160   ----------------------------------------
 .byte   N11 ,Dn3 ,v080
 .byte   W23
 .byte   FINE

@**************** Track 11 (Midi-Chn.10) ****************@

.align 2, 0
song06_011:
@  #11 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 40
 .byte   PAN , c_v-5
 .byte   VOL , 47*song06_mvl/mxv
 .byte   VOL , 47*song06_mvl/mxv
 .byte   W24
Label_01121426:
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
Label_0112143F:
 .byte   W72
 .byte   N11 ,As2 ,v096
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   PEND 
@  #11 @026   ----------------------------------------
Label_01121447:
 .byte   N17 ,As2 ,v096
 .byte   N17 ,Cs3
 .byte   W18
 .byte   As2
 .byte   N17 ,Cn3
 .byte   W18
 .byte   N11 ,Fn2
 .byte   N11 ,As2
 .byte   W12
 .byte   N17
 .byte   N17 ,Cs3
 .byte   W18
 .byte   As2
 .byte   N17 ,Cn3
 .byte   W18
 .byte   N11 ,Fn2
 .byte   N11 ,As2
 .byte   W12
 .byte   PEND 
@  #11 @027   ----------------------------------------
Label_01121464:
 .byte   N68 ,Fs2 ,v096
 .byte   N68 ,As2
 .byte   W72
 .byte   N11 ,Fs2
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #11 @028   ----------------------------------------
Label_01121474:
 .byte   N23 ,As2 ,v096
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N44 ,As2
 .byte   N44 ,Fn3
 .byte   W48
 .byte   N23 ,As2
 .byte   N23 ,Ds3
 .byte   W24
 .byte   PEND 
@  #11 @029   ----------------------------------------
Label_01121485:
 .byte   N44 ,Fs2 ,v096
 .byte   N80 ,As2
 .byte   W48
 .byte   N32 ,Gs2
 .byte   W24
 .byte   W12
 .byte   N05
 .byte   N05 ,As2
 .byte   W06
 .byte   Gs2
 .byte   N05 ,Cn3
 .byte   W06
 .byte   PEND 
@  #11 @030   ----------------------------------------
Label_01121498:
 .byte   N17 ,Fn2 ,v096
 .byte   N17 ,Cs3
 .byte   W18
 .byte   Fn2
 .byte   N17 ,Cn3
 .byte   W18
 .byte   N11 ,Fn2
 .byte   W12
 .byte   N17
 .byte   N17 ,Cs3
 .byte   W18
 .byte   Fn2
 .byte   N17 ,Cn3
 .byte   W18
 .byte   N11 ,Fn2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #11 @031   ----------------------------------------
Label_011214B3:
 .byte   N23 ,Gs2 ,v096
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N44 ,Gs2
 .byte   N44 ,Fn3
 .byte   W48
 .byte   N68 ,Cs3
 .byte   N68 ,Gs3
 .byte   W24
 .byte   PEND 
@  #11 @032   ----------------------------------------
Label_011214C4:
 .byte   W48
 .byte   N23 ,Gs2 ,v096
 .byte   N23 ,Ds3
 .byte   W24
 .byte   N11 ,Gs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Gs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #11 @033   ----------------------------------------
Label_011214D5:
 .byte   N32 ,As2 ,v096
 .byte   N32 ,Ds3
 .byte   W36
 .byte   N11 ,As2
 .byte   N11 ,Fn3
 .byte   W12
 .byte   N44 ,As2
 .byte   W48
 .byte   PEND 
@  #11 @034   ----------------------------------------
Label_011214E4:
 .byte   N92 ,Cs3 ,v064
 .byte   N92 ,En3
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   W06
 .byte   PEND 
@  #11 @035   ----------------------------------------
Label_011214FA:
 .byte   N92 ,Cn3 ,v080
 .byte   N92 ,Ds3
 .byte   W96
 .byte   PEND 
@  #11 @036   ----------------------------------------
Label_01121501:
 .byte   N92 ,Bn2 ,v080
 .byte   N92 ,Ds3
 .byte   W96
 .byte   PEND 
@  #11 @037   ----------------------------------------
Label_01121508:
 .byte   N92 ,As2 ,v080
 .byte   N92 ,Cs3
 .byte   W96
 .byte   PEND 
@  #11 @038   ----------------------------------------
Label_0112150F:
 .byte   N92 ,An2 ,v080
 .byte   N92 ,En3
 .byte   W96
 .byte   PEND 
@  #11 @039   ----------------------------------------
Label_01121516:
 .byte   N92 ,Fn2 ,v080
 .byte   N92 ,Gs2
 .byte   W96
 .byte   PEND 
@  #11 @040   ----------------------------------------
Label_0112151D:
 .byte   TIE ,Gn2 ,v080
 .byte   TIE ,Dn3
 .byte   W96
 .byte   PEND 
@  #11 @041   ----------------------------------------
Label_01121524:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Gn2 ,v062
 .byte   W01
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
 .byte   W96
@  #11 @054   ----------------------------------------
 .byte   W96
@  #11 @055   ----------------------------------------
 .byte   W96
@  #11 @056   ----------------------------------------
 .byte   W96
@  #11 @057   ----------------------------------------
 .byte   W96
@  #11 @058   ----------------------------------------
Label_0112153B:
 .byte   N23 ,Bn1 ,v112
 .byte   N23 ,Bn2
 .byte   W24
 .byte   Bn1
 .byte   N23 ,Bn2
 .byte   W24
 .byte   Bn1
 .byte   N23 ,Bn2
 .byte   W24
 .byte   PEND 
Label_0112154A:
 .byte   N23 ,Cs2 ,v112
 .byte   N23 ,Bn2
 .byte   W24
@  #11 @059   ----------------------------------------
 .byte   Cs2
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N11 ,Cs2
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Cs2
 .byte   N11 ,En3
 .byte   W12
 .byte   PEND 
Label_0112155E:
 .byte   N23 ,Dn2 ,v112
 .byte   N23 ,Bn2
 .byte   W24
 .byte   Dn2
 .byte   N23 ,Bn2
 .byte   W24
@  #11 @060   ----------------------------------------
 .byte   Dn2
 .byte   N23 ,Bn2
 .byte   W24
 .byte   PEND 
Label_0112156D:
 .byte   N23 ,En2 ,v112
 .byte   N23 ,Bn2
 .byte   W24
 .byte   En2
 .byte   N23 ,Bn2
 .byte   W24
 .byte   N11 ,En2
 .byte   N11 ,Dn3
 .byte   W12
 .byte   En2
 .byte   N11 ,En3
 .byte   W12
 .byte   PEND 
@  #11 @061   ----------------------------------------
Label_01121581:
 .byte   N32 ,Fs2 ,v112
 .byte   N32 ,Fs3
 .byte   W36
 .byte   N11 ,Fs2
 .byte   N11 ,Fs3
 .byte   W12
 .byte   En2
 .byte   N11 ,En3
 .byte   W12
 .byte   Fs2
 .byte   N11 ,Fs3
 .byte   W12
 .byte   PEND 
Label_01121595:
 .byte   N23 ,Gn2 ,v112
 .byte   N23 ,Gn3
 .byte   W24
@  #11 @062   ----------------------------------------
 .byte   Gn2
 .byte   N23 ,Fs3
 .byte   W24
 .byte   Gn2
 .byte   N23 ,Dn3
 .byte   W24
 .byte   PEND 
Label_011215A4:
 .byte   N32 ,An2 ,v112
 .byte   N32 ,En3
 .byte   W36
 .byte   N23 ,An2
 .byte   N23 ,En3
 .byte   W24
@  #11 @063   ----------------------------------------
 .byte   N11 ,An2
 .byte   N11 ,Dn3
 .byte   W12
 .byte   PEND 
Label_011215B5:
 .byte   N23 ,An2 ,v112
 .byte   N23 ,Cs3
 .byte   W24
 .byte   An2
 .byte   N23 ,Dn3
 .byte   W24
 .byte   An2
 .byte   N23 ,En3
 .byte   W24
 .byte   PEND 
Label_011215C4:
 .byte   N44 ,Dn3 ,v112
 .byte   N44 ,Fn3
 .byte   W48
@  #11 @064   ----------------------------------------
 .byte   N23 ,Dn2
 .byte   N23 ,Dn3
 .byte   W24
 .byte   PEND 
Label_011215D0:
 .byte   N32 ,En2 ,v112
 .byte   N32 ,Fn3
 .byte   W36
 .byte   En2
 .byte   N32 ,En3
 .byte   W36
 .byte   PEND 
@  #11 @065   ----------------------------------------
Label_011215DB:
 .byte   N32 ,Fn2 ,v112
 .byte   N32 ,En3
 .byte   W36
 .byte   Fn2
 .byte   N32 ,Dn3
 .byte   W36
 .byte   PEND 
Label_011215E6:
 .byte   N44 ,Gn2 ,v112
 .byte   N44 ,Dn3
 .byte   W48
@  #11 @066   ----------------------------------------
 .byte   N23 ,Gn2
 .byte   N23 ,An2
 .byte   W24
 .byte   PEND 
Label_011215F2:
 .byte   N68 ,An2 ,v112
 .byte   N68 ,Fn3
 .byte   W72
 .byte   PEND 
@  #11 @067   ----------------------------------------
Label_011215F9:
 .byte   N32 ,As2 ,v112
 .byte   N32 ,Fn3
 .byte   W36
 .byte   As2
 .byte   N32 ,En3
 .byte   W36
 .byte   PEND 
Label_01121604:
 .byte   N32 ,Cn3 ,v112
 .byte   N32 ,En3
 .byte   W36
@  #11 @068   ----------------------------------------
 .byte   Cn3
 .byte   N32 ,Gn3
 .byte   W36
 .byte   PEND 
Label_0112160F:
 .byte   N32 ,An2 ,v112
 .byte   N32 ,Gn3
 .byte   W36
 .byte   An2
 .byte   N32 ,An3
 .byte   W36
 .byte   PEND 
@  #11 @069   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @070   ----------------------------------------
 .byte   W96
@  #11 @071   ----------------------------------------
 .byte   W96
@  #11 @072   ----------------------------------------
 .byte   W96
@  #11 @073   ----------------------------------------
 .byte   W96
@  #11 @074   ----------------------------------------
 .byte   GOTO
  .word Label_01121426
@  #11 @075   ----------------------------------------
 .byte   W96
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
 .byte   PATT
  .word Label_0112143F
@  #11 @101   ----------------------------------------
 .byte   PATT
  .word Label_01121447
@  #11 @102   ----------------------------------------
 .byte   PATT
  .word Label_01121464
@  #11 @103   ----------------------------------------
 .byte   PATT
  .word Label_01121474
@  #11 @104   ----------------------------------------
 .byte   PATT
  .word Label_01121485
@  #11 @105   ----------------------------------------
 .byte   PATT
  .word Label_01121498
@  #11 @106   ----------------------------------------
 .byte   PATT
  .word Label_011214B3
@  #11 @107   ----------------------------------------
 .byte   PATT
  .word Label_011214C4
@  #11 @108   ----------------------------------------
 .byte   PATT
  .word Label_011214D5
@  #11 @109   ----------------------------------------
 .byte   PATT
  .word Label_011214E4
@  #11 @110   ----------------------------------------
 .byte   PATT
  .word Label_011214FA
@  #11 @111   ----------------------------------------
 .byte   PATT
  .word Label_01121501
@  #11 @112   ----------------------------------------
 .byte   PATT
  .word Label_01121508
@  #11 @113   ----------------------------------------
 .byte   PATT
  .word Label_0112150F
@  #11 @114   ----------------------------------------
 .byte   PATT
  .word Label_01121516
@  #11 @115   ----------------------------------------
 .byte   PATT
  .word Label_0112151D
@  #11 @116   ----------------------------------------
 .byte   PATT
  .word Label_01121524
@  #11 @117   ----------------------------------------
 .byte   EOT
 .byte   Gn2 ,v062
 .byte   W01
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
 .byte   PATT
  .word Label_0112153B
@  #11 @134   ----------------------------------------
 .byte   PATT
  .word Label_0112154A
@  #11 @135   ----------------------------------------
 .byte   PATT
  .word Label_0112155E
@  #11 @136   ----------------------------------------
 .byte   PATT
  .word Label_0112156D
@  #11 @137   ----------------------------------------
 .byte   PATT
  .word Label_01121581
@  #11 @138   ----------------------------------------
 .byte   PATT
  .word Label_01121595
@  #11 @139   ----------------------------------------
 .byte   PATT
  .word Label_011215A4
@  #11 @140   ----------------------------------------
 .byte   PATT
  .word Label_011215B5
@  #11 @141   ----------------------------------------
 .byte   PATT
  .word Label_011215C4
@  #11 @142   ----------------------------------------
 .byte   PATT
  .word Label_011215D0
@  #11 @143   ----------------------------------------
 .byte   PATT
  .word Label_011215DB
@  #11 @144   ----------------------------------------
 .byte   PATT
  .word Label_011215E6
@  #11 @145   ----------------------------------------
 .byte   PATT
  .word Label_011215F2
@  #11 @146   ----------------------------------------
 .byte   PATT
  .word Label_011215F9
@  #11 @147   ----------------------------------------
 .byte   PATT
  .word Label_01121604
@  #11 @148   ----------------------------------------
 .byte   PATT
  .word Label_0112160F
@  #11 @149   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @150   ----------------------------------------
 .byte   W96
@  #11 @151   ----------------------------------------
 .byte   W96
@  #11 @152   ----------------------------------------
 .byte   W96
@  #11 @153   ----------------------------------------
 .byte   W96
@  #11 @154   ----------------------------------------
 .byte   W23
 .byte   FINE

@**************** Track 12 (Midi-Chn.11) ****************@

.align 2, 0
song06_012:
@  #12 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 48
 .byte   PAN , c_v+6
 .byte   VOL , 17*song06_mvl/mxv
 .byte   VOL , 17*song06_mvl/mxv
 .byte   W24
Label_0112619A:
 .byte   N11 ,Gn4 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N11
 .byte   W12
@  #12 @001   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_011261AC:
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,An3
 .byte   W24
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N11
 .byte   W12
@  #12 @002   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_011261BE:
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Fn3
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N11
 .byte   W12
@  #12 @003   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_011261D0:
 .byte   N11 ,An3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn3
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N11
 .byte   W12
@  #12 @004   ----------------------------------------
 .byte   N23 ,Gn3
 .byte   W24
 .byte   PEND 
Label_011261E2:
 .byte   N05 ,Gn5 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn4
 .byte   W24
 .byte   N05 ,Ds5
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #12 @005   ----------------------------------------
 .byte   N23 ,Gn4
 .byte   W24
 .byte   PEND 
Label_011261FC:
 .byte   N05 ,Dn5 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn4
 .byte   W24
 .byte   N05 ,Cn5
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #12 @006   ----------------------------------------
 .byte   N23 ,Gn4
 .byte   W24
 .byte   PEND 
Label_01126216:
 .byte   N05 ,Dn5 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn4
 .byte   W24
 .byte   N05 ,As4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #12 @007   ----------------------------------------
 .byte   N23 ,Gn4
 .byte   W24
 .byte   PEND 
Label_01126230:
 .byte   N05 ,An4 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Gn4
 .byte   W24
 .byte   N11 ,As4
 .byte   W12
 .byte   Dn3
 .byte   W12
@  #12 @008   ----------------------------------------
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_01126247:
 .byte   N23 ,An3 ,v096
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Gn3
 .byte   W12
 .byte   W12
 .byte   N11 ,An3
 .byte   W12
@  #12 @009   ----------------------------------------
 .byte   N80 ,Dn3
 .byte   W24
 .byte   PEND 
Label_01126259:
 .byte   W48
 .byte   W12
 .byte   N11 ,Dn3 ,v096
 .byte   W12
@  #12 @010   ----------------------------------------
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_01126264:
 .byte   N23 ,An3 ,v096
 .byte   W24
 .byte   N11 ,As3
 .byte   W12
 .byte   N23 ,Cn4
 .byte   W12
 .byte   W12
 .byte   N11 ,Fn3
 .byte   W12
@  #12 @011   ----------------------------------------
 .byte   N80 ,Dn4
 .byte   W24
 .byte   PEND 
Label_01126276:
 .byte   W48
 .byte   W12
 .byte   N11 ,As3 ,v096
 .byte   W12
@  #12 @012   ----------------------------------------
 .byte   Fn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
Label_01126281:
 .byte   N23 ,Dn4 ,v096
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N23 ,As3
 .byte   W12
 .byte   W12
 .byte   N11 ,Dn4
 .byte   W12
@  #12 @013   ----------------------------------------
 .byte   N44 ,Cn4
 .byte   W24
 .byte   PEND 
Label_01126293:
 .byte   W24
 .byte   N23 ,As3 ,v096
 .byte   W24
 .byte   An3
 .byte   W24
@  #12 @014   ----------------------------------------
 .byte   Fn3
 .byte   W24
 .byte   PEND 
Label_0112629D:
 .byte   N32 ,Fn3 ,v096
 .byte   W36
 .byte   TIE ,Gn3
 .byte   W12
 .byte   W48
 .byte   PEND 
@  #12 @015   ----------------------------------------
Label_011262A6:
 .byte   W44
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Gn3
 .byte   W48
 .byte   W01
@  #12 @016   ----------------------------------------
Label_011262AD:
 .byte   N05 ,Gn4 ,v080
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
@  #12 @017   ----------------------------------------
Label_011262D0:
 .byte   N05 ,Gn4 ,v080
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
@  #12 @018   ----------------------------------------
 .byte   PATT
  .word Label_011262AD
@  #12 @019   ----------------------------------------
Label_011262F8:
 .byte   N05 ,Gn4 ,v080
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
@  #12 @020   ----------------------------------------
 .byte   W96
@  #12 @021   ----------------------------------------
 .byte   W96
@  #12 @022   ----------------------------------------
 .byte   W96
@  #12 @023   ----------------------------------------
Label_0112631E:
 .byte   N05 ,Gn5 ,v080
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   PEND 
@  #12 @024   ----------------------------------------
Label_01126341:
 .byte   TIE ,Gn2 ,v080
 .byte   W96
 .byte   PEND 
@  #12 @025   ----------------------------------------
Label_01126346:
 .byte   W92
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Gn2
 .byte   W01
@  #12 @026   ----------------------------------------
Label_0112634C:
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #12 @027   ----------------------------------------
Label_0112636F:
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #12 @028   ----------------------------------------
Label_01126392:
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #12 @029   ----------------------------------------
Label_011263B5:
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #12 @030   ----------------------------------------
 .byte   PATT
  .word Label_0112634C
@  #12 @031   ----------------------------------------
Label_011263DD:
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #12 @032   ----------------------------------------
Label_01126400:
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #12 @033   ----------------------------------------
Label_01126423:
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #12 @034   ----------------------------------------
Label_01126446:
 .byte   W24
 .byte   N23 ,En4 ,v096
 .byte   W24
 .byte   An4
 .byte   W24
 .byte   En5
 .byte   W24
 .byte   PEND 
@  #12 @035   ----------------------------------------
Label_01126450:
 .byte   N44 ,Ds5 ,v096
 .byte   W48
 .byte   N23 ,Gs4
 .byte   W24
 .byte   As4
 .byte   W24
 .byte   PEND 
@  #12 @036   ----------------------------------------
Label_0112645A:
 .byte   N23 ,Bn4 ,v096
 .byte   W24
 .byte   As4
 .byte   W24
 .byte   Gs4
 .byte   W24
 .byte   Bn4
 .byte   W24
 .byte   PEND 
@  #12 @037   ----------------------------------------
Label_01126465:
 .byte   N44 ,As4 ,v096
 .byte   W48
 .byte   N23 ,Fn4
 .byte   W24
 .byte   Gn4
 .byte   W24
 .byte   PEND 
@  #12 @038   ----------------------------------------
Label_0112646F:
 .byte   N44 ,Gs4 ,v096
 .byte   W48
 .byte   En4
 .byte   W48
 .byte   PEND 
@  #12 @039   ----------------------------------------
Label_01126476:
 .byte   N23 ,Ds4 ,v096
 .byte   W24
 .byte   N68 ,Gs3
 .byte   W72
 .byte   PEND 
@  #12 @040   ----------------------------------------
Label_0112647E:
 .byte   N92 ,Gn3 ,v096
 .byte   W96
 .byte   PEND 
@  #12 @041   ----------------------------------------
 .byte   W96
@  #12 @042   ----------------------------------------
Label_01126484:
 .byte   N56 ,Fs4 ,v064
 .byte   W48
 .byte   W12
 .byte   N11 ,Bn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   PEND 
@  #12 @043   ----------------------------------------
Label_01126491:
 .byte   N56 ,Cs5 ,v064
 .byte   W48
 .byte   W12
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   PEND 
@  #12 @044   ----------------------------------------
Label_0112649E:
 .byte   N56 ,Dn5 ,v064
 .byte   W48
 .byte   W12
 .byte   N11 ,Bn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   PEND 
@  #12 @045   ----------------------------------------
Label_011264AB:
 .byte   N23 ,An5 ,v064
 .byte   W24
 .byte   Bn5
 .byte   W24
 .byte   Gn5
 .byte   W24
 .byte   Fs5
 .byte   W24
 .byte   PEND 
@  #12 @046   ----------------------------------------
Label_011264B6:
 .byte   N56 ,Gn5 ,v064
 .byte   W48
 .byte   W12
 .byte   N11 ,En5
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   PEND 
@  #12 @047   ----------------------------------------
Label_011264C3:
 .byte   N23 ,Fs5 ,v064
 .byte   W24
 .byte   Bn4
 .byte   W24
 .byte   Cs5
 .byte   W24
 .byte   Dn5
 .byte   W24
 .byte   PEND 
@  #12 @048   ----------------------------------------
Label_011264CE:
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   N44 ,En5
 .byte   W48
 .byte   N11 ,Dn5
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   PEND 
@  #12 @049   ----------------------------------------
Label_011264DD:
 .byte   N92 ,Fs4 ,v064
 .byte   W96
 .byte   PEND 
@  #12 @050   ----------------------------------------
Label_011264E2:
 .byte   TIE ,Bn4 ,v064
 .byte   W96
 .byte   PEND 
@  #12 @051   ----------------------------------------
Label_011264E7:
 .byte   W44
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Bn4
 .byte   W01
 .byte   N44 ,Dn5 ,v064
 .byte   W48
@  #12 @052   ----------------------------------------
Label_011264F1:
 .byte   N92 ,Cs5 ,v064
 .byte   W96
 .byte   PEND 
@  #12 @053   ----------------------------------------
Label_011264F6:
 .byte   N44 ,An4 ,v064
 .byte   W48
 .byte   Fs4
 .byte   W48
 .byte   PEND 
@  #12 @054   ----------------------------------------
Label_011264FD:
 .byte   TIE ,En4 ,v064
 .byte   W96
 .byte   PEND 
@  #12 @055   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W01
 .byte   N23 ,Fs4
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   Cs4
 .byte   W24
@  #12 @056   ----------------------------------------
Label_0112650C:
 .byte   N44 ,Cs4 ,v064
 .byte   W48
 .byte   TIE ,Bn3
 .byte   W48
 .byte   PEND 
@  #12 @057   ----------------------------------------
Label_01126514:
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W01
 .byte   PEND 
 .byte   EOT
 .byte   Bn3
 .byte   W01
@  #12 @058   ----------------------------------------
Label_01126548:
 .byte   TIE ,Dn5 ,v112
 .byte   W72
 .byte   PEND 
Label_0112654D:
 .byte   W32
@  #12 @059   ----------------------------------------
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   Dn5
 .byte   W01
 .byte   N32 ,Cs5 ,v112
 .byte   W36
Label_01126557:
 .byte   N32 ,Cs5 ,v112
 .byte   W36
 .byte   Bn4
 .byte   W36
 .byte   PEND 
@  #12 @060   ----------------------------------------
Label_0112655E:
 .byte   N44 ,Bn4 ,v112
 .byte   W48
 .byte   N23 ,Fs4
 .byte   W24
 .byte   PEND 
@  #12 @061   ----------------------------------------
 .byte   PATT
  .word Label_01126548
@  #12 @062   ----------------------------------------
 .byte   PATT
  .word Label_0112654D
@  #12 @063   ----------------------------------------
 .byte   EOT
 .byte   Dn5
 .byte   W01
 .byte   N32 ,Cs5 ,v112
 .byte   W36
Label_01126577:
 .byte   N32 ,Cs5 ,v112
 .byte   W36
 .byte   En5
 .byte   W36
 .byte   PEND 
@  #12 @064   ----------------------------------------
Label_0112657E:
 .byte   N32 ,En5 ,v112
 .byte   W36
 .byte   Fs5
 .byte   W36
 .byte   PEND 
Label_01126585:
 .byte   N11 ,An4 ,v112
 .byte   W12
 .byte   As4
 .byte   W12
@  #12 @065   ----------------------------------------
 .byte   An4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Dn4
 .byte   W24
 .byte   PEND 
Label_01126592:
 .byte   N11 ,An4 ,v112
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Fn4
 .byte   W12
@  #12 @066   ----------------------------------------
 .byte   Dn4
 .byte   W24
 .byte   PEND 
@  #12 @067   ----------------------------------------
 .byte   PATT
  .word Label_01126592
@  #12 @068   ----------------------------------------
 .byte   PATT
  .word Label_01126585
@  #12 @069   ----------------------------------------
 .byte   PATT
  .word Label_01126585
@  #12 @070   ----------------------------------------
 .byte   PATT
  .word Label_01126592
@  #12 @071   ----------------------------------------
 .byte   PATT
  .word Label_01126592
@  #12 @072   ----------------------------------------
 .byte   PATT
  .word Label_01126592
@  #12 @073   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @074   ----------------------------------------
Label_011265BF:
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #12 @075   ----------------------------------------
Label_011265D2:
 .byte   N11 ,An3 ,v080
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
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #12 @076   ----------------------------------------
Label_011265E5:
 .byte   N11 ,An3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #12 @077   ----------------------------------------
Label_011265F8:
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #12 @078   ----------------------------------------
 .byte   GOTO
  .word Label_0112619A
@  #12 @079   ----------------------------------------
 .byte   PATT
  .word Label_0112619A
@  #12 @080   ----------------------------------------
 .byte   PATT
  .word Label_011261AC
@  #12 @081   ----------------------------------------
 .byte   PATT
  .word Label_011261BE
@  #12 @082   ----------------------------------------
 .byte   PATT
  .word Label_011261D0
@  #12 @083   ----------------------------------------
 .byte   PATT
  .word Label_011261E2
@  #12 @084   ----------------------------------------
 .byte   PATT
  .word Label_011261FC
@  #12 @085   ----------------------------------------
 .byte   PATT
  .word Label_01126216
@  #12 @086   ----------------------------------------
 .byte   PATT
  .word Label_01126230
@  #12 @087   ----------------------------------------
 .byte   PATT
  .word Label_01126247
@  #12 @088   ----------------------------------------
 .byte   PATT
  .word Label_01126259
@  #12 @089   ----------------------------------------
 .byte   PATT
  .word Label_01126264
@  #12 @090   ----------------------------------------
 .byte   PATT
  .word Label_01126276
@  #12 @091   ----------------------------------------
 .byte   PATT
  .word Label_01126281
@  #12 @092   ----------------------------------------
 .byte   PATT
  .word Label_01126293
@  #12 @093   ----------------------------------------
 .byte   PATT
  .word Label_0112629D
@  #12 @094   ----------------------------------------
 .byte   PATT
  .word Label_011262A6
@  #12 @095   ----------------------------------------
 .byte   EOT
 .byte   Gn3
 .byte   W48
 .byte   W01
@  #12 @096   ----------------------------------------
 .byte   PATT
  .word Label_011262AD
@  #12 @097   ----------------------------------------
 .byte   PATT
  .word Label_011262D0
@  #12 @098   ----------------------------------------
 .byte   PATT
  .word Label_011262AD
@  #12 @099   ----------------------------------------
 .byte   PATT
  .word Label_011262F8
@  #12 @100   ----------------------------------------
 .byte   W96
@  #12 @101   ----------------------------------------
 .byte   W96
@  #12 @102   ----------------------------------------
 .byte   W96
@  #12 @103   ----------------------------------------
 .byte   PATT
  .word Label_0112631E
@  #12 @104   ----------------------------------------
 .byte   PATT
  .word Label_01126341
@  #12 @105   ----------------------------------------
 .byte   PATT
  .word Label_01126346
@  #12 @106   ----------------------------------------
 .byte   EOT
 .byte   Gn2
 .byte   W01
@  #12 @107   ----------------------------------------
 .byte   PATT
  .word Label_0112634C
@  #12 @108   ----------------------------------------
 .byte   PATT
  .word Label_0112636F
@  #12 @109   ----------------------------------------
 .byte   PATT
  .word Label_01126392
@  #12 @110   ----------------------------------------
 .byte   PATT
  .word Label_011263B5
@  #12 @111   ----------------------------------------
 .byte   PATT
  .word Label_0112634C
@  #12 @112   ----------------------------------------
 .byte   PATT
  .word Label_011263DD
@  #12 @113   ----------------------------------------
 .byte   PATT
  .word Label_01126400
@  #12 @114   ----------------------------------------
 .byte   PATT
  .word Label_01126423
@  #12 @115   ----------------------------------------
 .byte   PATT
  .word Label_01126446
@  #12 @116   ----------------------------------------
 .byte   PATT
  .word Label_01126450
@  #12 @117   ----------------------------------------
 .byte   PATT
  .word Label_0112645A
@  #12 @118   ----------------------------------------
 .byte   PATT
  .word Label_01126465
@  #12 @119   ----------------------------------------
 .byte   PATT
  .word Label_0112646F
@  #12 @120   ----------------------------------------
 .byte   PATT
  .word Label_01126476
@  #12 @121   ----------------------------------------
 .byte   PATT
  .word Label_0112647E
@  #12 @122   ----------------------------------------
 .byte   W96
@  #12 @123   ----------------------------------------
 .byte   PATT
  .word Label_01126484
@  #12 @124   ----------------------------------------
 .byte   PATT
  .word Label_01126491
@  #12 @125   ----------------------------------------
 .byte   PATT
  .word Label_0112649E
@  #12 @126   ----------------------------------------
 .byte   PATT
  .word Label_011264AB
@  #12 @127   ----------------------------------------
 .byte   PATT
  .word Label_011264B6
@  #12 @128   ----------------------------------------
 .byte   PATT
  .word Label_011264C3
@  #12 @129   ----------------------------------------
 .byte   PATT
  .word Label_011264CE
@  #12 @130   ----------------------------------------
 .byte   PATT
  .word Label_011264DD
@  #12 @131   ----------------------------------------
 .byte   PATT
  .word Label_011264E2
@  #12 @132   ----------------------------------------
 .byte   PATT
  .word Label_011264E7
@  #12 @133   ----------------------------------------
 .byte   EOT
 .byte   Bn4
 .byte   W01
 .byte   N44 ,Dn5 ,v064
 .byte   W48
@  #12 @134   ----------------------------------------
 .byte   PATT
  .word Label_011264F1
@  #12 @135   ----------------------------------------
 .byte   PATT
  .word Label_011264F6
@  #12 @136   ----------------------------------------
 .byte   PATT
  .word Label_011264FD
@  #12 @137   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   En4
 .byte   W01
 .byte   N23 ,Fs4 ,v064
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   Cs4
 .byte   W24
@  #12 @138   ----------------------------------------
 .byte   PATT
  .word Label_0112650C
@  #12 @139   ----------------------------------------
 .byte   PATT
  .word Label_01126514
@  #12 @140   ----------------------------------------
 .byte   EOT
 .byte   Bn3
 .byte   W01
@  #12 @141   ----------------------------------------
 .byte   PATT
  .word Label_01126548
@  #12 @142   ----------------------------------------
 .byte   PATT
  .word Label_0112654D
@  #12 @143   ----------------------------------------
 .byte   EOT
 .byte   Dn5
 .byte   W01
 .byte   N32 ,Cs5 ,v112
 .byte   W36
@  #12 @144   ----------------------------------------
 .byte   PATT
  .word Label_01126557
@  #12 @145   ----------------------------------------
 .byte   PATT
  .word Label_0112655E
@  #12 @146   ----------------------------------------
 .byte   PATT
  .word Label_01126548
@  #12 @147   ----------------------------------------
 .byte   PATT
  .word Label_0112654D
@  #12 @148   ----------------------------------------
 .byte   EOT
 .byte   Dn5
 .byte   W01
 .byte   N32 ,Cs5 ,v112
 .byte   W36
@  #12 @149   ----------------------------------------
 .byte   PATT
  .word Label_01126577
@  #12 @150   ----------------------------------------
 .byte   PATT
  .word Label_0112657E
@  #12 @151   ----------------------------------------
 .byte   PATT
  .word Label_01126585
@  #12 @152   ----------------------------------------
 .byte   PATT
  .word Label_01126592
@  #12 @153   ----------------------------------------
 .byte   PATT
  .word Label_01126592
@  #12 @154   ----------------------------------------
 .byte   PATT
  .word Label_01126585
@  #12 @155   ----------------------------------------
 .byte   PATT
  .word Label_01126585
@  #12 @156   ----------------------------------------
 .byte   PATT
  .word Label_01126592
@  #12 @157   ----------------------------------------
 .byte   PATT
  .word Label_01126592
@  #12 @158   ----------------------------------------
 .byte   PATT
  .word Label_01126592
@  #12 @159   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @160   ----------------------------------------
 .byte   PATT
  .word Label_011265BF
@  #12 @161   ----------------------------------------
 .byte   PATT
  .word Label_011265D2
@  #12 @162   ----------------------------------------
 .byte   PATT
  .word Label_011265E5
@  #12 @163   ----------------------------------------
 .byte   PATT
  .word Label_011265F8
@  #12 @164   ----------------------------------------
 .byte   N11 ,Dn3 ,v080
 .byte   W23
 .byte   FINE

@**************** Track 13 (Midi-Chn.12) ****************@

.align 2, 0
song06_013:
@  #13 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 73
 .byte   PAN , c_v+3
 .byte   VOL , 47*song06_mvl/mxv
 .byte   VOL , 47*song06_mvl/mxv
 .byte   W24
Label_0112171A:
 .byte   W96
@  #13 @001   ----------------------------------------
 .byte   W96
@  #13 @002   ----------------------------------------
 .byte   W96
@  #13 @003   ----------------------------------------
 .byte   W96
@  #13 @004   ----------------------------------------
 .byte   W96
@  #13 @005   ----------------------------------------
 .byte   W96
@  #13 @006   ----------------------------------------
 .byte   W96
@  #13 @007   ----------------------------------------
 .byte   W96
@  #13 @008   ----------------------------------------
 .byte   W96
@  #13 @009   ----------------------------------------
 .byte   W96
@  #13 @010   ----------------------------------------
 .byte   W96
@  #13 @011   ----------------------------------------
 .byte   W96
@  #13 @012   ----------------------------------------
 .byte   W96
@  #13 @013   ----------------------------------------
 .byte   W96
@  #13 @014   ----------------------------------------
 .byte   W96
@  #13 @015   ----------------------------------------
 .byte   W96
@  #13 @016   ----------------------------------------
 .byte   W96
@  #13 @017   ----------------------------------------
 .byte   W96
@  #13 @018   ----------------------------------------
 .byte   W96
@  #13 @019   ----------------------------------------
 .byte   W96
@  #13 @020   ----------------------------------------
 .byte   W96
@  #13 @021   ----------------------------------------
 .byte   W96
@  #13 @022   ----------------------------------------
 .byte   W96
@  #13 @023   ----------------------------------------
 .byte   W96
@  #13 @024   ----------------------------------------
 .byte   W96
@  #13 @025   ----------------------------------------
 .byte   W96
@  #13 @026   ----------------------------------------
 .byte   W96
@  #13 @027   ----------------------------------------
 .byte   W96
@  #13 @028   ----------------------------------------
 .byte   W96
@  #13 @029   ----------------------------------------
 .byte   W96
@  #13 @030   ----------------------------------------
 .byte   W96
@  #13 @031   ----------------------------------------
Label_01121739:
 .byte   W72
 .byte   N80 ,Gs5 ,v096
 .byte   W24
 .byte   PEND 
@  #13 @032   ----------------------------------------
Label_0112173F:
 .byte   W48
 .byte   W12
 .byte   N11 ,As5 ,v096
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   PEND 
@  #13 @033   ----------------------------------------
Label_0112174A:
 .byte   N32 ,Ds5 ,v096
 .byte   W36
 .byte   N11 ,Fn5
 .byte   W12
 .byte   N44 ,As4
 .byte   W48
 .byte   PEND 
@  #13 @034   ----------------------------------------
 .byte   W96
@  #13 @035   ----------------------------------------
 .byte   W96
@  #13 @036   ----------------------------------------
 .byte   W96
@  #13 @037   ----------------------------------------
 .byte   W96
@  #13 @038   ----------------------------------------
 .byte   W96
@  #13 @039   ----------------------------------------
 .byte   W96
@  #13 @040   ----------------------------------------
 .byte   W96
@  #13 @041   ----------------------------------------
 .byte   W96
@  #13 @042   ----------------------------------------
 .byte   W96
@  #13 @043   ----------------------------------------
 .byte   W96
@  #13 @044   ----------------------------------------
 .byte   W96
@  #13 @045   ----------------------------------------
 .byte   W96
@  #13 @046   ----------------------------------------
 .byte   W96
@  #13 @047   ----------------------------------------
 .byte   W96
@  #13 @048   ----------------------------------------
 .byte   W96
@  #13 @049   ----------------------------------------
 .byte   W96
@  #13 @050   ----------------------------------------
 .byte   W96
@  #13 @051   ----------------------------------------
 .byte   W96
@  #13 @052   ----------------------------------------
 .byte   W96
@  #13 @053   ----------------------------------------
 .byte   W96
@  #13 @054   ----------------------------------------
 .byte   W96
@  #13 @055   ----------------------------------------
 .byte   W96
@  #13 @056   ----------------------------------------
 .byte   W96
@  #13 @057   ----------------------------------------
 .byte   W96
@  #13 @058   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @064   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @065   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @067   ----------------------------------------
 .byte   W96
@  #13 @068   ----------------------------------------
 .byte   W96
@  #13 @069   ----------------------------------------
 .byte   W96
@  #13 @070   ----------------------------------------
 .byte   W96
@  #13 @071   ----------------------------------------
 .byte   GOTO
  .word Label_0112171A
@  #13 @072   ----------------------------------------
 .byte   W96
@  #13 @073   ----------------------------------------
 .byte   W96
@  #13 @074   ----------------------------------------
 .byte   W96
@  #13 @075   ----------------------------------------
 .byte   W96
@  #13 @076   ----------------------------------------
 .byte   W96
@  #13 @077   ----------------------------------------
 .byte   W96
@  #13 @078   ----------------------------------------
 .byte   W96
@  #13 @079   ----------------------------------------
 .byte   W96
@  #13 @080   ----------------------------------------
 .byte   W96
@  #13 @081   ----------------------------------------
 .byte   W96
@  #13 @082   ----------------------------------------
 .byte   W96
@  #13 @083   ----------------------------------------
 .byte   W96
@  #13 @084   ----------------------------------------
 .byte   W96
@  #13 @085   ----------------------------------------
 .byte   W96
@  #13 @086   ----------------------------------------
 .byte   W96
@  #13 @087   ----------------------------------------
 .byte   W96
@  #13 @088   ----------------------------------------
 .byte   W96
@  #13 @089   ----------------------------------------
 .byte   W96
@  #13 @090   ----------------------------------------
 .byte   W96
@  #13 @091   ----------------------------------------
 .byte   W96
@  #13 @092   ----------------------------------------
 .byte   W96
@  #13 @093   ----------------------------------------
 .byte   W96
@  #13 @094   ----------------------------------------
 .byte   W96
@  #13 @095   ----------------------------------------
 .byte   W96
@  #13 @096   ----------------------------------------
 .byte   W96
@  #13 @097   ----------------------------------------
 .byte   W96
@  #13 @098   ----------------------------------------
 .byte   W96
@  #13 @099   ----------------------------------------
 .byte   W96
@  #13 @100   ----------------------------------------
 .byte   W96
@  #13 @101   ----------------------------------------
 .byte   W96
@  #13 @102   ----------------------------------------
 .byte   W96
@  #13 @103   ----------------------------------------
 .byte   PATT
  .word Label_01121739
@  #13 @104   ----------------------------------------
 .byte   PATT
  .word Label_0112173F
@  #13 @105   ----------------------------------------
 .byte   PATT
  .word Label_0112174A
@  #13 @106   ----------------------------------------
 .byte   W96
@  #13 @107   ----------------------------------------
 .byte   W96
@  #13 @108   ----------------------------------------
 .byte   W96
@  #13 @109   ----------------------------------------
 .byte   W96
@  #13 @110   ----------------------------------------
 .byte   W96
@  #13 @111   ----------------------------------------
 .byte   W96
@  #13 @112   ----------------------------------------
 .byte   W96
@  #13 @113   ----------------------------------------
 .byte   W96
@  #13 @114   ----------------------------------------
 .byte   W96
@  #13 @115   ----------------------------------------
 .byte   W96
@  #13 @116   ----------------------------------------
 .byte   W96
@  #13 @117   ----------------------------------------
 .byte   W96
@  #13 @118   ----------------------------------------
 .byte   W96
@  #13 @119   ----------------------------------------
 .byte   W96
@  #13 @120   ----------------------------------------
 .byte   W96
@  #13 @121   ----------------------------------------
 .byte   W96
@  #13 @122   ----------------------------------------
 .byte   W96
@  #13 @123   ----------------------------------------
 .byte   W96
@  #13 @124   ----------------------------------------
 .byte   W96
@  #13 @125   ----------------------------------------
 .byte   W96
@  #13 @126   ----------------------------------------
 .byte   W96
@  #13 @127   ----------------------------------------
 .byte   W96
@  #13 @128   ----------------------------------------
 .byte   W96
@  #13 @129   ----------------------------------------
 .byte   W96
@  #13 @130   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @131   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @132   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @133   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @134   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @135   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @136   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @137   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @138   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @139   ----------------------------------------
 .byte   W96
@  #13 @140   ----------------------------------------
 .byte   W96
@  #13 @141   ----------------------------------------
 .byte   W96
@  #13 @142   ----------------------------------------
 .byte   W96
@  #13 @143   ----------------------------------------
 .byte   W23
 .byte   FINE

@**************** Track 14 (Midi-Chn.13) ****************@

.align 2, 0
song06_014:
@  #14 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 14
 .byte   VOL , 47*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 47*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W24
Label_0110BAD1:
 .byte   W96
@  #14 @001   ----------------------------------------
 .byte   W96
@  #14 @002   ----------------------------------------
 .byte   W96
@  #14 @003   ----------------------------------------
 .byte   W96
@  #14 @004   ----------------------------------------
 .byte   W96
@  #14 @005   ----------------------------------------
 .byte   W96
@  #14 @006   ----------------------------------------
 .byte   W96
@  #14 @007   ----------------------------------------
 .byte   W96
@  #14 @008   ----------------------------------------
 .byte   W96
@  #14 @009   ----------------------------------------
 .byte   W96
@  #14 @010   ----------------------------------------
 .byte   W96
@  #14 @011   ----------------------------------------
 .byte   W96
@  #14 @012   ----------------------------------------
 .byte   W96
@  #14 @013   ----------------------------------------
 .byte   W96
@  #14 @014   ----------------------------------------
 .byte   W96
@  #14 @015   ----------------------------------------
 .byte   W96
@  #14 @016   ----------------------------------------
 .byte   W96
@  #14 @017   ----------------------------------------
 .byte   W96
@  #14 @018   ----------------------------------------
 .byte   W96
@  #14 @019   ----------------------------------------
 .byte   W96
@  #14 @020   ----------------------------------------
 .byte   W96
@  #14 @021   ----------------------------------------
 .byte   W96
@  #14 @022   ----------------------------------------
 .byte   W96
@  #14 @023   ----------------------------------------
 .byte   W96
@  #14 @024   ----------------------------------------
 .byte   W96
@  #14 @025   ----------------------------------------
 .byte   W96
@  #14 @026   ----------------------------------------
 .byte   W96
@  #14 @027   ----------------------------------------
 .byte   W96
@  #14 @028   ----------------------------------------
 .byte   W96
@  #14 @029   ----------------------------------------
 .byte   W96
@  #14 @030   ----------------------------------------
 .byte   W96
@  #14 @031   ----------------------------------------
 .byte   W96
@  #14 @032   ----------------------------------------
 .byte   W96
@  #14 @033   ----------------------------------------
 .byte   W96
@  #14 @034   ----------------------------------------
 .byte   W96
@  #14 @035   ----------------------------------------
 .byte   W96
@  #14 @036   ----------------------------------------
 .byte   W96
@  #14 @037   ----------------------------------------
 .byte   W96
@  #14 @038   ----------------------------------------
 .byte   W96
@  #14 @039   ----------------------------------------
 .byte   W96
@  #14 @040   ----------------------------------------
 .byte   W96
@  #14 @041   ----------------------------------------
 .byte   W96
@  #14 @042   ----------------------------------------
 .byte   W96
@  #14 @043   ----------------------------------------
 .byte   W96
@  #14 @044   ----------------------------------------
 .byte   W96
@  #14 @045   ----------------------------------------
 .byte   W96
@  #14 @046   ----------------------------------------
 .byte   W96
@  #14 @047   ----------------------------------------
 .byte   W96
@  #14 @048   ----------------------------------------
 .byte   W96
@  #14 @049   ----------------------------------------
 .byte   W96
@  #14 @050   ----------------------------------------
 .byte   W96
@  #14 @051   ----------------------------------------
 .byte   W96
@  #14 @052   ----------------------------------------
 .byte   W96
@  #14 @053   ----------------------------------------
 .byte   W96
@  #14 @054   ----------------------------------------
 .byte   W96
@  #14 @055   ----------------------------------------
 .byte   W96
@  #14 @056   ----------------------------------------
 .byte   W96
@  #14 @057   ----------------------------------------
 .byte   W96
@  #14 @058   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @064   ----------------------------------------
 .byte   N68 ,An3 ,v096
 .byte   W72
 .byte   W72
@  #14 @065   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @067   ----------------------------------------
 .byte   N92 ,Dn3 ,v080
 .byte   W96
@  #14 @068   ----------------------------------------
 .byte   W96
@  #14 @069   ----------------------------------------
 .byte   W96
@  #14 @070   ----------------------------------------
 .byte   W96
@  #14 @071   ----------------------------------------
 .byte   GOTO
  .word Label_0110BAD1
@  #14 @072   ----------------------------------------
 .byte   W96
@  #14 @073   ----------------------------------------
 .byte   W96
@  #14 @074   ----------------------------------------
 .byte   W96
@  #14 @075   ----------------------------------------
 .byte   W96
@  #14 @076   ----------------------------------------
 .byte   W96
@  #14 @077   ----------------------------------------
 .byte   W96
@  #14 @078   ----------------------------------------
 .byte   W96
@  #14 @079   ----------------------------------------
 .byte   W96
@  #14 @080   ----------------------------------------
 .byte   W96
@  #14 @081   ----------------------------------------
 .byte   W96
@  #14 @082   ----------------------------------------
 .byte   W96
@  #14 @083   ----------------------------------------
 .byte   W96
@  #14 @084   ----------------------------------------
 .byte   W96
@  #14 @085   ----------------------------------------
 .byte   W96
@  #14 @086   ----------------------------------------
 .byte   W96
@  #14 @087   ----------------------------------------
 .byte   W96
@  #14 @088   ----------------------------------------
 .byte   W96
@  #14 @089   ----------------------------------------
 .byte   W96
@  #14 @090   ----------------------------------------
 .byte   W96
@  #14 @091   ----------------------------------------
 .byte   W96
@  #14 @092   ----------------------------------------
 .byte   W96
@  #14 @093   ----------------------------------------
 .byte   W96
@  #14 @094   ----------------------------------------
 .byte   W96
@  #14 @095   ----------------------------------------
 .byte   W96
@  #14 @096   ----------------------------------------
 .byte   W96
@  #14 @097   ----------------------------------------
 .byte   W96
@  #14 @098   ----------------------------------------
 .byte   W96
@  #14 @099   ----------------------------------------
 .byte   W96
@  #14 @100   ----------------------------------------
 .byte   W96
@  #14 @101   ----------------------------------------
 .byte   W96
@  #14 @102   ----------------------------------------
 .byte   W96
@  #14 @103   ----------------------------------------
 .byte   W96
@  #14 @104   ----------------------------------------
 .byte   W96
@  #14 @105   ----------------------------------------
 .byte   W96
@  #14 @106   ----------------------------------------
 .byte   W96
@  #14 @107   ----------------------------------------
 .byte   W96
@  #14 @108   ----------------------------------------
 .byte   W96
@  #14 @109   ----------------------------------------
 .byte   W96
@  #14 @110   ----------------------------------------
 .byte   W96
@  #14 @111   ----------------------------------------
 .byte   W96
@  #14 @112   ----------------------------------------
 .byte   W96
@  #14 @113   ----------------------------------------
 .byte   W96
@  #14 @114   ----------------------------------------
 .byte   W96
@  #14 @115   ----------------------------------------
 .byte   W96
@  #14 @116   ----------------------------------------
 .byte   W96
@  #14 @117   ----------------------------------------
 .byte   W96
@  #14 @118   ----------------------------------------
 .byte   W96
@  #14 @119   ----------------------------------------
 .byte   W96
@  #14 @120   ----------------------------------------
 .byte   W96
@  #14 @121   ----------------------------------------
 .byte   W96
@  #14 @122   ----------------------------------------
 .byte   W96
@  #14 @123   ----------------------------------------
 .byte   W96
@  #14 @124   ----------------------------------------
 .byte   W96
@  #14 @125   ----------------------------------------
 .byte   W96
@  #14 @126   ----------------------------------------
 .byte   W96
@  #14 @127   ----------------------------------------
 .byte   W96
@  #14 @128   ----------------------------------------
 .byte   W96
@  #14 @129   ----------------------------------------
 .byte   W96
@  #14 @130   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @131   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @132   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @133   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @134   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @135   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @136   ----------------------------------------
 .byte   N68 ,An3 ,v096
 .byte   W72
 .byte   W72
@  #14 @137   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @138   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @139   ----------------------------------------
 .byte   N92 ,Dn3 ,v080
 .byte   W96
@  #14 @140   ----------------------------------------
 .byte   W96
@  #14 @141   ----------------------------------------
 .byte   W96
@  #14 @142   ----------------------------------------
 .byte   W96
@  #14 @143   ----------------------------------------
 .byte   W23
 .byte   FINE

@******************************************************@
	.align	2

Song_ChasingDaybreak:
	.byte	14	@ NumTrks
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
	.word	song06_013
	.word	song06_014

	.end
