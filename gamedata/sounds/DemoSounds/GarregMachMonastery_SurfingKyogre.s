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
	.global	Song_GarregMachMonastery_SurfingKyogre
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

.align 2, 0
song06_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   TEMPO , 112*song06_tbs/2
 .byte   VOICE , 73
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111DBCB:
 .byte   W12
 .byte   W72
@  #01 @001   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @002   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @003   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @004   ----------------------------------------
Label_0111DBD3:
 .byte   W48
 .byte   N11 ,Gs4 ,v080
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   PEND 
Label_0111DBDB:
 .byte   N32 ,Bn4 ,v080
 .byte   W36
@  #01 @005   ----------------------------------------
 .byte   N11 ,An4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   PEND 
Label_0111DBE7:
 .byte   N22 ,Gs4 ,v080
 .byte   W24
 .byte   N44 ,Fs4
 .byte   W48
 .byte   PEND 
@  #01 @006   ----------------------------------------
Label_0111DBEF:
 .byte   N32 ,An4 ,v080
 .byte   W36
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
Label_0111DBFB:
 .byte   N22 ,Fs4 ,v080
 .byte   W24
@  #01 @007   ----------------------------------------
 .byte   N44 ,En4
 .byte   W48
 .byte   PEND 
Label_0111DC03:
 .byte   W48
@  #01 @008   ----------------------------------------
 .byte   N05 ,Fs5 ,v080
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   PEND 
Label_0111DC0B:
 .byte   N32 ,An5 ,v080
 .byte   W36
 .byte   N05 ,Gs5
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   PEND 
@  #01 @009   ----------------------------------------
 .byte   N68 ,Fs5
 .byte   W72
 .byte   W72
@  #01 @010   ----------------------------------------
Label_0111DC1B:
 .byte   W12
 .byte   N05 ,Cs5 ,v080
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   N11 ,En5
 .byte   W48
 .byte   PEND 
Label_0111DC26:
 .byte   W12
 .byte   N05 ,Ds5 ,v080
 .byte   W06
 .byte   En5
 .byte   W06
@  #01 @011   ----------------------------------------
 .byte   N11 ,Fs5
 .byte   W48
 .byte   PEND 
Label_0111DC31:
 .byte   W12
 .byte   N05 ,Cs5 ,v080
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   En5
 .byte   W12
 .byte   Ds5
 .byte   W06
 .byte   En5
 .byte   W06
@  #01 @012   ----------------------------------------
 .byte   Fs5
 .byte   W12
 .byte   En5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   PEND 
Label_0111DC45:
 .byte   N05 ,Gs5 ,v080
 .byte   W12
 .byte   N11 ,Cs5
 .byte   W60
 .byte   PEND 
@  #01 @013   ----------------------------------------
 .byte   PATT
  .word Label_0111DC1B
@  #01 @014   ----------------------------------------
 .byte   PATT
  .word Label_0111DC26
@  #01 @015   ----------------------------------------
 .byte   PATT
  .word Label_0111DC31
@  #01 @016   ----------------------------------------
 .byte   PATT
  .word Label_0111DC45
@  #01 @017   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @018   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @019   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @020   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @021   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @022   ----------------------------------------
 .byte   W72
@  #01 @023   ----------------------------------------
 .byte   PATT
  .word Label_0111DBD3
@  #01 @024   ----------------------------------------
Label_0111DC71:
 .byte   N32 ,Bn4 ,v080
 .byte   W36
 .byte   N11 ,An4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
Label_0111DC7D:
 .byte   N32 ,Gs4 ,v080
 .byte   W36
@  #01 @025   ----------------------------------------
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
Label_0111DC89:
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N44 ,Bn3
 .byte   W48
 .byte   PEND 
@  #01 @026   ----------------------------------------
Label_0111DC93:
 .byte   W48
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   PEND 
Label_0111DC9F:
 .byte   N32 ,An4 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
@  #01 @027   ----------------------------------------
 .byte   W01
 .byte   N11 ,Gn4 ,v080
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_0111DCB0:
 .byte   N22 ,Fn4 ,v080
 .byte   W24
 .byte   N32 ,En4
 .byte   W36
@  #01 @028   ----------------------------------------
 .byte   N11 ,Fn4
 .byte   W12
 .byte   PEND 
Label_0111DCBB:
 .byte   N32 ,Gn4 ,v080
 .byte   W36
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111DCC7:
 .byte   N22 ,Ds4 ,v080
 .byte   W24
@  #01 @029   ----------------------------------------
 .byte   Dn4
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   PEND 
 .byte   TIE ,An4
 .byte   W72
@  #01 @030   ----------------------------------------
 .byte   W64
 .byte   EOT
 .byte   W08
 .byte   N78 ,Cs6
 .byte   W72
@  #01 @031   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @032   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @033   ----------------------------------------
Label_0111DCE3:
 .byte   W48
 .byte   N11 ,Dn5 ,v080
 .byte   W12
 .byte   En5
 .byte   W12
 .byte   PEND 
Label_0111DCEB:
 .byte   N32 ,Fn5 ,v080
 .byte   W36
@  #01 @034   ----------------------------------------
 .byte   N11 ,En5
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   PEND 
Label_0111DCF7:
 .byte   N32 ,Dn5 ,v080
 .byte   W36
 .byte   N11 ,Cn5
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Dn5
 .byte   W06
@  #01 @035   ----------------------------------------
 .byte   En5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   PEND 
Label_0111DD07:
 .byte   N11 ,Gn5 ,v080
 .byte   W12
 .byte   An5
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
Label_0111DD10:
 .byte   N11 ,Fn5 ,v080
 .byte   W12
@  #01 @036   ----------------------------------------
 .byte   Gn5
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
Label_0111DD19:
 .byte   N11 ,En5 ,v080
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   N32 ,Cn5
 .byte   W36
@  #01 @037   ----------------------------------------
 .byte   N11 ,Fn5
 .byte   W12
 .byte   PEND 
Label_0111DD26:
 .byte   N11 ,En5 ,v080
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   N22
 .byte   W24
 .byte   N11 ,Dn5
 .byte   W12
 .byte   N22 ,En5
 .byte   W12
 .byte   PEND 
Label_0111DD35:
 .byte   W12
@  #01 @038   ----------------------------------------
 .byte   N11 ,Fn5 ,v080
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
Label_0111DD3D:
 .byte   N11 ,Gn5 ,v080
 .byte   W12
 .byte   An5
 .byte   W12
 .byte   N32 ,Fn5
 .byte   W36
@  #01 @039   ----------------------------------------
 .byte   N11 ,Ds5
 .byte   W12
 .byte   PEND 
 .byte   TIE ,Dn5
 .byte   W72
 .byte   W72
@  #01 @040   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   W72
@  #01 @041   ----------------------------------------
Label_0111DD51:
 .byte   W12
 .byte   N05 ,Gs4 ,v080
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Ds5
 .byte   W42
 .byte   PEND 
Label_0111DD5D:
 .byte   W12
 .byte   N05 ,En4 ,v080
 .byte   W06
 .byte   Gs4
 .byte   W06
@  #01 @042   ----------------------------------------
 .byte   An4
 .byte   W06
 .byte   Cs5
 .byte   W42
 .byte   PEND 
Label_0111DD69:
 .byte   W12
 .byte   N05 ,Cs4 ,v080
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W12
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
@  #01 @043   ----------------------------------------
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   PEND 
Label_0111DD7D:
 .byte   N05 ,Gs4 ,v080
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W60
 .byte   PEND 
@  #01 @044   ----------------------------------------
 .byte   PATT
  .word Label_0111DD51
@  #01 @045   ----------------------------------------
 .byte   PATT
  .word Label_0111DD5D
@  #01 @046   ----------------------------------------
 .byte   PATT
  .word Label_0111DD69
@  #01 @047   ----------------------------------------
 .byte   PATT
  .word Label_0111DD7D
@  #01 @048   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @049   ----------------------------------------
 .byte   W72
Label_0111DD9C:
 .byte   W48
@  #01 @050   ----------------------------------------
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
Label_0111DDA4:
 .byte   TIE ,An3 ,v080
 .byte   W48
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #01 @051   ----------------------------------------
Label_0111DDAE:
 .byte   N32 ,An4 ,v080
 .byte   W36
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W04
 .byte   PEND 
 .byte   EOT
 .byte   An3
 .byte   W08
 .byte   N68 ,Fs4
 .byte   W72
@  #01 @052   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @053   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @054   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @055   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @056   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @057   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @058   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @064   ----------------------------------------
 .byte   W60
 .byte   GOTO
  .word Label_0111DBCB
@  #01 @065   ----------------------------------------
 .byte   W12
 .byte   W72
 .byte   W72
@  #01 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @067   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @068   ----------------------------------------
 .byte   W72
@  #01 @069   ----------------------------------------
 .byte   PATT
  .word Label_0111DBD3
@  #01 @070   ----------------------------------------
 .byte   PATT
  .word Label_0111DBDB
@  #01 @071   ----------------------------------------
 .byte   PATT
  .word Label_0111DBE7
@  #01 @072   ----------------------------------------
 .byte   PATT
  .word Label_0111DBEF
@  #01 @073   ----------------------------------------
 .byte   PATT
  .word Label_0111DBFB
@  #01 @074   ----------------------------------------
 .byte   PATT
  .word Label_0111DC03
@  #01 @075   ----------------------------------------
 .byte   PATT
  .word Label_0111DC0B
@  #01 @076   ----------------------------------------
 .byte   N68 ,Fs5 ,v080
 .byte   W72
 .byte   W72
@  #01 @077   ----------------------------------------
 .byte   PATT
  .word Label_0111DC1B
@  #01 @078   ----------------------------------------
 .byte   PATT
  .word Label_0111DC26
@  #01 @079   ----------------------------------------
 .byte   PATT
  .word Label_0111DC31
@  #01 @080   ----------------------------------------
 .byte   PATT
  .word Label_0111DC45
@  #01 @081   ----------------------------------------
 .byte   PATT
  .word Label_0111DC1B
@  #01 @082   ----------------------------------------
 .byte   PATT
  .word Label_0111DC26
@  #01 @083   ----------------------------------------
 .byte   PATT
  .word Label_0111DC31
@  #01 @084   ----------------------------------------
 .byte   PATT
  .word Label_0111DC45
@  #01 @085   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @086   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @087   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @088   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @089   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @090   ----------------------------------------
 .byte   W72
@  #01 @091   ----------------------------------------
 .byte   PATT
  .word Label_0111DBD3
@  #01 @092   ----------------------------------------
 .byte   PATT
  .word Label_0111DC71
@  #01 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111DC7D
@  #01 @094   ----------------------------------------
 .byte   PATT
  .word Label_0111DC89
@  #01 @095   ----------------------------------------
 .byte   PATT
  .word Label_0111DC93
@  #01 @096   ----------------------------------------
 .byte   PATT
  .word Label_0111DC9F
@  #01 @097   ----------------------------------------
 .byte   PATT
  .word Label_0111DCB0
@  #01 @098   ----------------------------------------
 .byte   PATT
  .word Label_0111DCBB
@  #01 @099   ----------------------------------------
 .byte   PATT
  .word Label_0111DCC7
@  #01 @100   ----------------------------------------
 .byte   TIE ,An4 ,v080
 .byte   W72
 .byte   W64
@  #01 @101   ----------------------------------------
 .byte   EOT
 .byte   W08
 .byte   N78 ,Cs6
 .byte   W72
 .byte   W72
@  #01 @102   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @103   ----------------------------------------
 .byte   W72
@  #01 @104   ----------------------------------------
 .byte   PATT
  .word Label_0111DCE3
@  #01 @105   ----------------------------------------
 .byte   PATT
  .word Label_0111DCEB
@  #01 @106   ----------------------------------------
 .byte   PATT
  .word Label_0111DCF7
@  #01 @107   ----------------------------------------
 .byte   PATT
  .word Label_0111DD07
@  #01 @108   ----------------------------------------
 .byte   PATT
  .word Label_0111DD10
@  #01 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111DD19
@  #01 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111DD26
@  #01 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111DD35
@  #01 @112   ----------------------------------------
 .byte   PATT
  .word Label_0111DD3D
@  #01 @113   ----------------------------------------
 .byte   TIE ,Dn5 ,v080
 .byte   W72
 .byte   W72
@  #01 @114   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   W72
@  #01 @115   ----------------------------------------
 .byte   PATT
  .word Label_0111DD51
@  #01 @116   ----------------------------------------
 .byte   PATT
  .word Label_0111DD5D
@  #01 @117   ----------------------------------------
 .byte   PATT
  .word Label_0111DD69
@  #01 @118   ----------------------------------------
 .byte   PATT
  .word Label_0111DD7D
@  #01 @119   ----------------------------------------
 .byte   PATT
  .word Label_0111DD51
@  #01 @120   ----------------------------------------
 .byte   PATT
  .word Label_0111DD5D
@  #01 @121   ----------------------------------------
 .byte   PATT
  .word Label_0111DD69
@  #01 @122   ----------------------------------------
 .byte   PATT
  .word Label_0111DD7D
@  #01 @123   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @124   ----------------------------------------
 .byte   W72
@  #01 @125   ----------------------------------------
 .byte   PATT
  .word Label_0111DD9C
@  #01 @126   ----------------------------------------
 .byte   PATT
  .word Label_0111DDA4
@  #01 @127   ----------------------------------------
 .byte   PATT
  .word Label_0111DDAE
@  #01 @128   ----------------------------------------
 .byte   EOT
 .byte   An3
 .byte   W08
 .byte   N68 ,Fs4 ,v080
 .byte   W72
 .byte   W72
@  #01 @129   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @130   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @131   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @132   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @133   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @134   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @135   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @136   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @137   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @138   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @139   ----------------------------------------
 .byte   W72
 .byte   W72
@  #01 @140   ----------------------------------------
 .byte   W72
 .byte   W64
@  #01 @141   ----------------------------------------
 .byte   W01
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

.align 2, 0
song06_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 68
 .byte   VOL , 41*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111E8B9:
 .byte   W12
Label_0111E8BA:
 .byte   N11 ,An1 ,v080
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   An2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W48
 .byte   PEND 
@  #02 @001   ----------------------------------------
Label_0111E8C7:
 .byte   N11 ,An1 ,v080
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   An2
 .byte   N11 ,Cs3
 .byte   W48
 .byte   PEND 
Label_0111E8D2:
 .byte   N11 ,En1 ,v080
 .byte   W12
 .byte   Bn1
 .byte   W24
@  #02 @002   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
 .byte   W72
@  #02 @003   ----------------------------------------
 .byte   PATT
  .word Label_0111E8BA
@  #02 @004   ----------------------------------------
 .byte   PATT
  .word Label_0111E8C7
@  #02 @005   ----------------------------------------
 .byte   PATT
  .word Label_0111E8D2
@  #02 @006   ----------------------------------------
 .byte   W72
 .byte   N68 ,Fs2 ,v080
 .byte   W72
@  #02 @007   ----------------------------------------
Label_0111E8F2:
 .byte   N44 ,Bn2 ,v080
 .byte   W48
 .byte   N11 ,Fs2
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   PEND 
 .byte   N68 ,En2
 .byte   W72
@  #02 @008   ----------------------------------------
Label_0111E8FF:
 .byte   N44 ,An2 ,v080
 .byte   W48
 .byte   N11 ,En1
 .byte   W12
 .byte   Ds1
 .byte   W12
 .byte   PEND 
Label_0111E909:
 .byte   N11 ,Dn1 ,v080
 .byte   W12
 .byte   An1
 .byte   W12
@  #02 @009   ----------------------------------------
 .byte   Fs2
 .byte   W36
 .byte   An1
 .byte   W12
 .byte   PEND 
Label_0111E914:
 .byte   N11 ,Dn1 ,v080
 .byte   W12
 .byte   An1
 .byte   W12
 .byte   Dn2
 .byte   W36
@  #02 @010   ----------------------------------------
 .byte   An1
 .byte   W12
 .byte   PEND 
@  #02 @011   ----------------------------------------
 .byte   PATT
  .word Label_0111E909
@  #02 @012   ----------------------------------------
Label_0111E924:
 .byte   N11 ,Dn1 ,v080
 .byte   W48
 .byte   N05 ,Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
Label_0111E92E:
 .byte   N11 ,An1 ,v080
 .byte   N32 ,En4
 .byte   W12
 .byte   N11 ,En2
 .byte   W12
@  #02 @013   ----------------------------------------
 .byte   An2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N05 ,Ds4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
Label_0111E945:
 .byte   N11 ,An1 ,v080
 .byte   N32 ,Cs4
 .byte   W12
 .byte   N11 ,En2
 .byte   W12
 .byte   An2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   N05 ,Bn3
 .byte   W12
@  #02 @014   ----------------------------------------
 .byte   An3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111E95A:
 .byte   N11 ,En1 ,v080
 .byte   N11 ,Fs3
 .byte   W12
 .byte   Bn1
 .byte   N05 ,Gs3
 .byte   W12
 .byte   N68
 .byte   W12
 .byte   N11 ,Bn1
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #02 @015   ----------------------------------------
Label_0111E96C:
 .byte   W48
 .byte   N05 ,Cs4 ,v080
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
@  #02 @016   ----------------------------------------
 .byte   PATT
  .word Label_0111E92E
@  #02 @017   ----------------------------------------
 .byte   PATT
  .word Label_0111E945
@  #02 @018   ----------------------------------------
 .byte   PATT
  .word Label_0111E95A
@  #02 @019   ----------------------------------------
 .byte   W72
 .byte   N68 ,Fs2 ,v080
 .byte   W72
@  #02 @020   ----------------------------------------
 .byte   PATT
  .word Label_0111E8F2
@  #02 @021   ----------------------------------------
 .byte   N68 ,En2 ,v080
 .byte   W72
Label_0111E991:
 .byte   N44 ,An2 ,v080
 .byte   W48
@  #02 @022   ----------------------------------------
 .byte   N11 ,Gs2
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   PEND 
 .byte   TIE ,As2
 .byte   W72
@  #02 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @024   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   W60
 .byte   W01
 .byte   W72
@  #02 @025   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @026   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @027   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @028   ----------------------------------------
Label_0111E9AB:
 .byte   W48
 .byte   N05 ,Ds4 ,v080
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   PEND 
Label_0111E9B7:
 .byte   N68 ,Gn1 ,v080
 .byte   N32 ,An4 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
@  #02 @029   ----------------------------------------
 .byte   W01
 .byte   N11 ,Gn4 ,v080
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_0111E9CB:
 .byte   N44 ,Cn2 ,v080
 .byte   N23 ,Fn4
 .byte   W24
 .byte   N32 ,En4
 .byte   W24
 .byte   N11 ,Gn1
 .byte   W12
@  #02 @030   ----------------------------------------
 .byte   Fs1
 .byte   N11 ,Fn4
 .byte   W12
 .byte   PEND 
Label_0111E9DC:
 .byte   N68 ,Fn1 ,v080
 .byte   N32 ,Gn4
 .byte   W36
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111E9EA:
 .byte   N68 ,As1 ,v080
 .byte   N23 ,Ds4
 .byte   W24
@  #02 @031   ----------------------------------------
 .byte   Dn4
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   PEND 
Label_0111E9FB:
 .byte   TIE ,Bn1 ,v080
 .byte   TIE ,An4
 .byte   W72
 .byte   PEND 
@  #02 @032   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N80
 .byte   W72
@  #02 @033   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Bn1
 .byte   W60
 .byte   W01
 .byte   W72
@  #02 @034   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @035   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @036   ----------------------------------------
Label_0111EA12:
 .byte   W48
 .byte   N05 ,Cn4 ,v080
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
Label_0111EA1E:
 .byte   N68 ,Bn1 ,v080
 .byte   N11 ,Gn4
 .byte   W12
 .byte   An4
 .byte   W12
@  #02 @037   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   PEND 
Label_0111EA29:
 .byte   N68 ,As1 ,v080
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
@  #02 @038   ----------------------------------------
Label_0111EA34:
 .byte   N68 ,An1 ,v080
 .byte   N11 ,En4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N32 ,Cn4
 .byte   W36
 .byte   N11 ,Fn4
 .byte   W12
 .byte   PEND 
Label_0111EA43:
 .byte   N68 ,Dn1 ,v080
 .byte   N11 ,En4
 .byte   W12
 .byte   Fn4
 .byte   W12
@  #02 @039   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N23 ,En4
 .byte   W12
 .byte   PEND 
Label_0111EA54:
 .byte   N68 ,Gn1 ,v080
 .byte   W12
 .byte   N11 ,Fn4
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
@  #02 @040   ----------------------------------------
Label_0111EA5E:
 .byte   N68 ,Ds2 ,v080
 .byte   N11 ,Gn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N32 ,Fn4
 .byte   W36
 .byte   N11 ,Ds4
 .byte   W12
 .byte   PEND 
Label_0111EA6D:
 .byte   TIE ,Dn2 ,v080
 .byte   TIE ,Dn4
 .byte   W72
 .byte   PEND 
@  #02 @041   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   EOT
 .byte   W24
@  #02 @042   ----------------------------------------
 .byte   EOT
 .byte   Dn2
 .byte   W24
 .byte   W01
 .byte   W72
@  #02 @043   ----------------------------------------
 .byte   PATT
  .word Label_0111E8BA
@  #02 @044   ----------------------------------------
 .byte   PATT
  .word Label_0111E8C7
@  #02 @045   ----------------------------------------
 .byte   PATT
  .word Label_0111E8D2
@  #02 @046   ----------------------------------------
 .byte   W72
@  #02 @047   ----------------------------------------
 .byte   PATT
  .word Label_0111E8BA
@  #02 @048   ----------------------------------------
 .byte   PATT
  .word Label_0111E8C7
@  #02 @049   ----------------------------------------
 .byte   PATT
  .word Label_0111E8D2
@  #02 @050   ----------------------------------------
 .byte   W72
 .byte   N68 ,Fs2 ,v080
 .byte   W72
@  #02 @051   ----------------------------------------
 .byte   PATT
  .word Label_0111E8F2
@  #02 @052   ----------------------------------------
 .byte   N68 ,En2 ,v080
 .byte   W72
@  #02 @053   ----------------------------------------
 .byte   PATT
  .word Label_0111E8FF
@  #02 @054   ----------------------------------------
 .byte   PATT
  .word Label_0111E909
@  #02 @055   ----------------------------------------
 .byte   PATT
  .word Label_0111E914
@  #02 @056   ----------------------------------------
 .byte   PATT
  .word Label_0111E909
@  #02 @057   ----------------------------------------
 .byte   N11 ,Dn1 ,v080
 .byte   W72
 .byte   W72
@  #02 @058   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @059   ----------------------------------------
 .byte   W72
 .byte   N68 ,Cn3
 .byte   W72
@  #02 @060   ----------------------------------------
 .byte   Fn2
 .byte   W72
 .byte   Fs2
 .byte   W72
@  #02 @061   ----------------------------------------
 .byte   Bn2
 .byte   W72
Label_0111EACF:
 .byte   N11 ,Fs1 ,v080
 .byte   W36
@  #02 @062   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   Cs2
 .byte   W24
 .byte   PEND 
Label_0111EAD8:
 .byte   N11 ,Bn1 ,v080
 .byte   W36
 .byte   N11
 .byte   W12
 .byte   Fs2
 .byte   W24
 .byte   PEND 
@  #02 @063   ----------------------------------------
Label_0111EAE1:
 .byte   N11 ,Gs1 ,v080
 .byte   W36
 .byte   N11
 .byte   W12
 .byte   Ds2
 .byte   W24
 .byte   PEND 
Label_0111EAEA:
 .byte   N11 ,Cs2 ,v080
 .byte   W36
@  #02 @064   ----------------------------------------
 .byte   Gs1
 .byte   W12
 .byte   Fn2
 .byte   W24
 .byte   PEND 
@  #02 @065   ----------------------------------------
 .byte   PATT
  .word Label_0111EACF
@  #02 @066   ----------------------------------------
 .byte   PATT
  .word Label_0111EAD8
@  #02 @067   ----------------------------------------
 .byte   PATT
  .word Label_0111EAE1
@  #02 @068   ----------------------------------------
 .byte   PATT
  .word Label_0111EAEA
@  #02 @069   ----------------------------------------
Label_0111EB07:
 .byte   N11 ,An1 ,v080
 .byte   W12
 .byte   En2
 .byte   W60
 .byte   PEND 
Label_0111EB0E:
 .byte   N11 ,Gs1 ,v080
 .byte   W12
 .byte   Fs2
 .byte   W60
 .byte   PEND 
@  #02 @070   ----------------------------------------
Label_0111EB15:
 .byte   N11 ,Fs1 ,v080
 .byte   W12
 .byte   En2
 .byte   W60
 .byte   PEND 
Label_0111EB1C:
 .byte   N11 ,En1 ,v080
 .byte   W12
 .byte   Ds2
 .byte   W60
 .byte   PEND 
@  #02 @071   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @072   ----------------------------------------
 .byte   W72
 .byte   W60
@  #02 @073   ----------------------------------------
 .byte   GOTO
  .word Label_0111E8B9
@  #02 @074   ----------------------------------------
 .byte   W12
@  #02 @075   ----------------------------------------
 .byte   PATT
  .word Label_0111E8BA
@  #02 @076   ----------------------------------------
 .byte   PATT
  .word Label_0111E8C7
@  #02 @077   ----------------------------------------
 .byte   PATT
  .word Label_0111E8D2
@  #02 @078   ----------------------------------------
 .byte   W72
@  #02 @079   ----------------------------------------
 .byte   PATT
  .word Label_0111E8BA
@  #02 @080   ----------------------------------------
 .byte   PATT
  .word Label_0111E8C7
@  #02 @081   ----------------------------------------
 .byte   PATT
  .word Label_0111E8D2
@  #02 @082   ----------------------------------------
 .byte   W72
 .byte   N68 ,Fs2 ,v080
 .byte   W72
@  #02 @083   ----------------------------------------
 .byte   PATT
  .word Label_0111E8F2
@  #02 @084   ----------------------------------------
 .byte   N68 ,En2 ,v080
 .byte   W72
@  #02 @085   ----------------------------------------
 .byte   PATT
  .word Label_0111E8FF
@  #02 @086   ----------------------------------------
 .byte   PATT
  .word Label_0111E909
@  #02 @087   ----------------------------------------
 .byte   PATT
  .word Label_0111E914
@  #02 @088   ----------------------------------------
 .byte   PATT
  .word Label_0111E909
@  #02 @089   ----------------------------------------
 .byte   PATT
  .word Label_0111E924
@  #02 @090   ----------------------------------------
 .byte   PATT
  .word Label_0111E92E
@  #02 @091   ----------------------------------------
 .byte   PATT
  .word Label_0111E945
@  #02 @092   ----------------------------------------
 .byte   PATT
  .word Label_0111E95A
@  #02 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111E96C
@  #02 @094   ----------------------------------------
 .byte   PATT
  .word Label_0111E92E
@  #02 @095   ----------------------------------------
 .byte   PATT
  .word Label_0111E945
@  #02 @096   ----------------------------------------
 .byte   PATT
  .word Label_0111E95A
@  #02 @097   ----------------------------------------
 .byte   W72
 .byte   N68 ,Fs2 ,v080
 .byte   W72
@  #02 @098   ----------------------------------------
 .byte   PATT
  .word Label_0111E8F2
@  #02 @099   ----------------------------------------
 .byte   N68 ,En2 ,v080
 .byte   W72
@  #02 @100   ----------------------------------------
 .byte   PATT
  .word Label_0111E991
@  #02 @101   ----------------------------------------
 .byte   TIE ,As2 ,v080
 .byte   W72
 .byte   W72
@  #02 @102   ----------------------------------------
 .byte   W72
 .byte   W11
 .byte   EOT
 .byte   W60
@  #02 @103   ----------------------------------------
 .byte   W01
 .byte   W72
 .byte   W72
@  #02 @104   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @105   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @106   ----------------------------------------
 .byte   W72
@  #02 @107   ----------------------------------------
 .byte   PATT
  .word Label_0111E9AB
@  #02 @108   ----------------------------------------
 .byte   PATT
  .word Label_0111E9B7
@  #02 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111E9CB
@  #02 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111E9DC
@  #02 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111E9EA
@  #02 @112   ----------------------------------------
 .byte   PATT
  .word Label_0111E9FB
@  #02 @113   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   An4
 .byte   W01
 .byte   N80 ,An4 ,v080
 .byte   W72
@  #02 @114   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Bn1
 .byte   W60
 .byte   W01
 .byte   W72
@  #02 @115   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @116   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @117   ----------------------------------------
 .byte   PATT
  .word Label_0111EA12
@  #02 @118   ----------------------------------------
 .byte   PATT
  .word Label_0111EA1E
@  #02 @119   ----------------------------------------
 .byte   PATT
  .word Label_0111EA29
@  #02 @120   ----------------------------------------
 .byte   PATT
  .word Label_0111EA34
@  #02 @121   ----------------------------------------
 .byte   PATT
  .word Label_0111EA43
@  #02 @122   ----------------------------------------
 .byte   PATT
  .word Label_0111EA54
@  #02 @123   ----------------------------------------
 .byte   PATT
  .word Label_0111EA5E
@  #02 @124   ----------------------------------------
 .byte   PATT
  .word Label_0111EA6D
@  #02 @125   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   EOT
 .byte   Dn4
 .byte   W24
@  #02 @126   ----------------------------------------
 .byte   Dn2
 .byte   W24
 .byte   W01
 .byte   W72
@  #02 @127   ----------------------------------------
 .byte   PATT
  .word Label_0111E8BA
@  #02 @128   ----------------------------------------
 .byte   PATT
  .word Label_0111E8C7
@  #02 @129   ----------------------------------------
 .byte   PATT
  .word Label_0111E8D2
@  #02 @130   ----------------------------------------
 .byte   W72
@  #02 @131   ----------------------------------------
 .byte   PATT
  .word Label_0111E8BA
@  #02 @132   ----------------------------------------
 .byte   PATT
  .word Label_0111E8C7
@  #02 @133   ----------------------------------------
 .byte   PATT
  .word Label_0111E8D2
@  #02 @134   ----------------------------------------
 .byte   W72
 .byte   N68 ,Fs2 ,v080
 .byte   W72
@  #02 @135   ----------------------------------------
 .byte   PATT
  .word Label_0111E8F2
@  #02 @136   ----------------------------------------
 .byte   N68 ,En2 ,v080
 .byte   W72
@  #02 @137   ----------------------------------------
 .byte   PATT
  .word Label_0111E8FF
@  #02 @138   ----------------------------------------
 .byte   PATT
  .word Label_0111E909
@  #02 @139   ----------------------------------------
 .byte   PATT
  .word Label_0111E914
@  #02 @140   ----------------------------------------
 .byte   PATT
  .word Label_0111E909
@  #02 @141   ----------------------------------------
 .byte   N11 ,Dn1 ,v080
 .byte   W72
 .byte   W72
@  #02 @142   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @143   ----------------------------------------
 .byte   W72
 .byte   N68 ,Cn3
 .byte   W72
@  #02 @144   ----------------------------------------
 .byte   Fn2
 .byte   W72
 .byte   Fs2
 .byte   W72
@  #02 @145   ----------------------------------------
 .byte   Bn2
 .byte   W72
@  #02 @146   ----------------------------------------
 .byte   PATT
  .word Label_0111EACF
@  #02 @147   ----------------------------------------
 .byte   PATT
  .word Label_0111EAD8
@  #02 @148   ----------------------------------------
 .byte   PATT
  .word Label_0111EAE1
@  #02 @149   ----------------------------------------
 .byte   PATT
  .word Label_0111EAEA
@  #02 @150   ----------------------------------------
 .byte   PATT
  .word Label_0111EACF
@  #02 @151   ----------------------------------------
 .byte   PATT
  .word Label_0111EAD8
@  #02 @152   ----------------------------------------
 .byte   PATT
  .word Label_0111EAE1
@  #02 @153   ----------------------------------------
 .byte   PATT
  .word Label_0111EAEA
@  #02 @154   ----------------------------------------
 .byte   PATT
  .word Label_0111EB07
@  #02 @155   ----------------------------------------
 .byte   PATT
  .word Label_0111EB0E
@  #02 @156   ----------------------------------------
 .byte   PATT
  .word Label_0111EB15
@  #02 @157   ----------------------------------------
 .byte   PATT
  .word Label_0111EB1C
@  #02 @158   ----------------------------------------
 .byte   W72
 .byte   W72
@  #02 @159   ----------------------------------------
 .byte   W72
 .byte   W64
@  #02 @160   ----------------------------------------
 .byte   W01
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

.align 2, 0
song06_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 71
 .byte   VOL , 43*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N05 ,Cs4 ,v080
 .byte   W12
Label_0111B160:
 .byte   N05 ,Ds4 ,v080
 .byte   W12
Label_0111B164:
 .byte   N32 ,En4 ,v080
 .byte   W36
 .byte   N05 ,Ds4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #03 @001   ----------------------------------------
Label_0111B170:
 .byte   N32 ,Cs4 ,v080
 .byte   W36
 .byte   N05 ,Bn3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111B17C:
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   N05 ,Gs3
 .byte   W12
@  #03 @002   ----------------------------------------
 .byte   N68
 .byte   W48
 .byte   PEND 
Label_0111B186:
 .byte   W48
@  #03 @003   ----------------------------------------
 .byte   N05 ,Cs4 ,v080
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
@  #03 @004   ----------------------------------------
 .byte   PATT
  .word Label_0111B164
@  #03 @005   ----------------------------------------
 .byte   PATT
  .word Label_0111B170
@  #03 @006   ----------------------------------------
 .byte   PATT
  .word Label_0111B17C
@  #03 @007   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @008   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @009   ----------------------------------------
Label_0111B1A1:
 .byte   W48
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
 .byte   TIE ,An3
 .byte   W72
@  #03 @010   ----------------------------------------
 .byte   W72
 .byte   W68
@  #03 @011   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   W72
 .byte   W72
@  #03 @012   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @013   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @014   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @015   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @017   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @018   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @019   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @020   ----------------------------------------
Label_0111B1C3:
 .byte   N23 ,Bn1 ,v080
 .byte   W24
 .byte   Ds2
 .byte   W36
 .byte   N11 ,Gs1
 .byte   W12
 .byte   PEND 
Label_0111B1CD:
 .byte   N11 ,Fs1 ,v080
 .byte   W12
 .byte   Cs2
 .byte   N05 ,As3
 .byte   W06
 .byte   Bn3
 .byte   W06
@  #03 @021   ----------------------------------------
 .byte   N11 ,As2
 .byte   N05 ,Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N11 ,Cs3
 .byte   N05 ,Fn4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
Label_0111B1E6:
 .byte   N11 ,Cs3 ,v080
 .byte   N05 ,Fn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fn4
 .byte   W12
 .byte   N11 ,Cs4
 .byte   W48
 .byte   PEND 
@  #03 @022   ----------------------------------------
Label_0111B1F4:
 .byte   N11 ,An1 ,v080
 .byte   W12
 .byte   En2
 .byte   N05 ,Gs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   N11 ,Ds3
 .byte   N05 ,Bn3
 .byte   W12
 .byte   Ds4
 .byte   W24
 .byte   N11 ,En2
 .byte   W12
 .byte   PEND 
Label_0111B209:
 .byte   N11 ,An1 ,v080
 .byte   W12
 .byte   En2
 .byte   N05 ,En3
 .byte   W06
 .byte   Fs3
 .byte   W06
@  #03 @023   ----------------------------------------
 .byte   N11 ,En3
 .byte   N05 ,Gs3
 .byte   W12
 .byte   Bn3
 .byte   W24
 .byte   N11 ,En2
 .byte   W12
 .byte   PEND 
Label_0111B21E:
 .byte   N11 ,Gs1 ,v080
 .byte   W12
 .byte   Ds2
 .byte   N05 ,Gs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   N11 ,Bn2
 .byte   N05 ,Bn3
 .byte   W12
 .byte   N11 ,Ds2
 .byte   N05 ,Cs4
 .byte   W12
@  #03 @024   ----------------------------------------
 .byte   N11 ,Bn2
 .byte   N05 ,Ds4
 .byte   W12
 .byte   N11 ,Ds2
 .byte   N05 ,En4
 .byte   W12
 .byte   PEND 
Label_0111B23D:
 .byte   N11 ,Bn2 ,v080
 .byte   N05 ,Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Ds4
 .byte   W12
 .byte   N11 ,Bn3
 .byte   W24
 .byte   N05 ,Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   PEND 
@  #03 @025   ----------------------------------------
Label_0111B254:
 .byte   N32 ,An4 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   N11 ,Gn4 ,v080
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_0111B265:
 .byte   N23 ,Fn4 ,v080
 .byte   W24
@  #03 @026   ----------------------------------------
 .byte   N32 ,En4
 .byte   W36
 .byte   N11 ,Fn4
 .byte   W12
 .byte   PEND 
Label_0111B270:
 .byte   N32 ,Gn4 ,v080
 .byte   W36
 .byte   N11 ,Fn4
 .byte   W12
@  #03 @027   ----------------------------------------
 .byte   Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111B27C:
 .byte   N23 ,Ds4 ,v080
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   PEND 
@  #03 @028   ----------------------------------------
 .byte   TIE ,An4
 .byte   W72
 .byte   W68
@  #03 @029   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N80 ,En4
 .byte   W72
 .byte   W72
@  #03 @030   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @031   ----------------------------------------
 .byte   W72
Label_0111B299:
 .byte   W48
@  #03 @032   ----------------------------------------
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
Label_0111B2A1:
 .byte   N32 ,Fn4 ,v080
 .byte   W36
 .byte   N11 ,En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #03 @033   ----------------------------------------
Label_0111B2AD:
 .byte   N32 ,Dn4 ,v080
 .byte   W36
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
Label_0111B2BD:
 .byte   N11 ,Gn4 ,v080
 .byte   W12
 .byte   An4
 .byte   W12
@  #03 @034   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   PEND 
Label_0111B2C6:
 .byte   N11 ,Fn4 ,v080
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
@  #03 @035   ----------------------------------------
Label_0111B2CF:
 .byte   N11 ,En4 ,v080
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N32 ,Cn4
 .byte   W36
 .byte   N11 ,Fn4
 .byte   W12
 .byte   PEND 
Label_0111B2DC:
 .byte   N11 ,En4 ,v080
 .byte   W12
 .byte   Fn4
 .byte   W12
@  #03 @036   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N23 ,En4
 .byte   W12
 .byte   PEND 
Label_0111B2EB:
 .byte   W12
 .byte   N11 ,Fn4 ,v080
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
@  #03 @037   ----------------------------------------
Label_0111B2F3:
 .byte   N11 ,Gn4 ,v080
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N32 ,Fn4
 .byte   W36
 .byte   N11 ,Ds4
 .byte   W12
 .byte   PEND 
 .byte   TIE ,Dn4
 .byte   W72
@  #03 @038   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   EOT
 .byte   W48
@  #03 @039   ----------------------------------------
 .byte   W01
 .byte   W72
 .byte   W72
@  #03 @040   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @041   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @042   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @043   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @044   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @045   ----------------------------------------
 .byte   W72
Label_0111B315:
 .byte   W48
@  #03 @046   ----------------------------------------
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111B31D:
 .byte   N32 ,An3 ,v080
 .byte   W36
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #03 @047   ----------------------------------------
 .byte   N68 ,Fs3
 .byte   W72
 .byte   W72
@  #03 @048   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @049   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @050   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @051   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @052   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @053   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @054   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @055   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @056   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @057   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @058   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @059   ----------------------------------------
 .byte   W72
 .byte   W48
@  #03 @060   ----------------------------------------
 .byte   N05 ,Cs4
 .byte   W12
 .byte   GOTO
  .word Label_0111B160
@  #03 @061   ----------------------------------------
 .byte   N05 ,Ds4 ,v080
 .byte   W12
@  #03 @062   ----------------------------------------
 .byte   PATT
  .word Label_0111B164
@  #03 @063   ----------------------------------------
 .byte   PATT
  .word Label_0111B170
@  #03 @064   ----------------------------------------
 .byte   PATT
  .word Label_0111B17C
@  #03 @065   ----------------------------------------
 .byte   PATT
  .word Label_0111B186
@  #03 @066   ----------------------------------------
 .byte   PATT
  .word Label_0111B164
@  #03 @067   ----------------------------------------
 .byte   PATT
  .word Label_0111B170
@  #03 @068   ----------------------------------------
 .byte   PATT
  .word Label_0111B17C
@  #03 @069   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @071   ----------------------------------------
 .byte   PATT
  .word Label_0111B1A1
@  #03 @072   ----------------------------------------
 .byte   TIE ,An3 ,v080
 .byte   W72
 .byte   W72
@  #03 @073   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   W72
@  #03 @074   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @075   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @076   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @077   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @078   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @079   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @080   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @082   ----------------------------------------
 .byte   W72
@  #03 @083   ----------------------------------------
 .byte   PATT
  .word Label_0111B1C3
@  #03 @084   ----------------------------------------
 .byte   PATT
  .word Label_0111B1CD
@  #03 @085   ----------------------------------------
 .byte   PATT
  .word Label_0111B1E6
@  #03 @086   ----------------------------------------
 .byte   PATT
  .word Label_0111B1F4
@  #03 @087   ----------------------------------------
 .byte   PATT
  .word Label_0111B209
@  #03 @088   ----------------------------------------
 .byte   PATT
  .word Label_0111B21E
@  #03 @089   ----------------------------------------
 .byte   PATT
  .word Label_0111B23D
@  #03 @090   ----------------------------------------
 .byte   PATT
  .word Label_0111B254
@  #03 @091   ----------------------------------------
 .byte   PATT
  .word Label_0111B265
@  #03 @092   ----------------------------------------
 .byte   PATT
  .word Label_0111B270
@  #03 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111B27C
@  #03 @094   ----------------------------------------
 .byte   TIE ,An4 ,v080
 .byte   W72
 .byte   W68
@  #03 @095   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N80 ,En4
 .byte   W72
 .byte   W72
@  #03 @096   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @097   ----------------------------------------
 .byte   W72
@  #03 @098   ----------------------------------------
 .byte   PATT
  .word Label_0111B299
@  #03 @099   ----------------------------------------
 .byte   PATT
  .word Label_0111B2A1
@  #03 @100   ----------------------------------------
 .byte   PATT
  .word Label_0111B2AD
@  #03 @101   ----------------------------------------
 .byte   PATT
  .word Label_0111B2BD
@  #03 @102   ----------------------------------------
 .byte   PATT
  .word Label_0111B2C6
@  #03 @103   ----------------------------------------
 .byte   PATT
  .word Label_0111B2CF
@  #03 @104   ----------------------------------------
 .byte   PATT
  .word Label_0111B2DC
@  #03 @105   ----------------------------------------
 .byte   PATT
  .word Label_0111B2EB
@  #03 @106   ----------------------------------------
 .byte   PATT
  .word Label_0111B2F3
@  #03 @107   ----------------------------------------
 .byte   TIE ,Dn4 ,v080
 .byte   W72
 .byte   W72
@  #03 @108   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   W48
 .byte   W01
 .byte   W72
@  #03 @109   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @110   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @111   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @112   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @113   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @114   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @115   ----------------------------------------
 .byte   PATT
  .word Label_0111B315
@  #03 @116   ----------------------------------------
 .byte   PATT
  .word Label_0111B31D
@  #03 @117   ----------------------------------------
 .byte   N68 ,Fs3 ,v080
 .byte   W72
 .byte   W72
@  #03 @118   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @119   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @120   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @121   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @122   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @123   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @124   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @125   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @126   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @127   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @128   ----------------------------------------
 .byte   W72
 .byte   W72
@  #03 @129   ----------------------------------------
 .byte   W72
 .byte   W48
@  #03 @130   ----------------------------------------
 .byte   N05 ,Cs4
 .byte   W12
 .byte   Ds4
 .byte   W05
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

.align 2, 0
song06_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 1
 .byte   VOL , 41*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111B45D:
 .byte   W12
 .byte   N68 ,Ds2 ,v080
 .byte   W72
@  #04 @001   ----------------------------------------
Label_0111B462:
 .byte   N44 ,En2 ,v080
 .byte   W48
 .byte   N23 ,Bn1
 .byte   W24
 .byte   PEND 
 .byte   N68 ,Ds2
 .byte   W72
@  #04 @002   ----------------------------------------
 .byte   W48
 .byte   N23 ,Bn1
 .byte   W24
Label_0111B471:
 .byte   N44 ,Ds2 ,v080
 .byte   W48
@  #04 @003   ----------------------------------------
 .byte   N23 ,En2
 .byte   W24
 .byte   PEND 
Label_0111B479:
 .byte   N44 ,Fs2 ,v080
 .byte   W48
 .byte   N23 ,Bn1
 .byte   W24
 .byte   PEND 
@  #04 @004   ----------------------------------------
 .byte   N68 ,Ds2
 .byte   W72
 .byte   W72
@  #04 @005   ----------------------------------------
 .byte   Fs1
 .byte   N68 ,Cs2
 .byte   W72
Label_0111B489:
 .byte   N44 ,Bn1 ,v080
 .byte   N68 ,Ds2
 .byte   W48
@  #04 @006   ----------------------------------------
 .byte   N11 ,Fs1
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   PEND 
 .byte   N68 ,En1
 .byte   N68 ,Bn1
 .byte   W72
@  #04 @007   ----------------------------------------
Label_0111B49A:
 .byte   N44 ,An1 ,v080
 .byte   N68 ,Cs2
 .byte   W72
 .byte   PEND 
 .byte   Dn2
 .byte   N68 ,An2
 .byte   W72
@  #04 @008   ----------------------------------------
 .byte   En2
 .byte   N68 ,An2
 .byte   W72
Label_0111B4A9:
 .byte   N68 ,Cs2 ,v080
 .byte   N80 ,An2
 .byte   W72
 .byte   PEND 
@  #04 @009   ----------------------------------------
 .byte   N11 ,Dn2
 .byte   W72
 .byte   N68 ,Ds2
 .byte   W72
@  #04 @010   ----------------------------------------
 .byte   PATT
  .word Label_0111B462
@  #04 @011   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W48
@  #04 @012   ----------------------------------------
 .byte   N23 ,Bn1
 .byte   W24
@  #04 @013   ----------------------------------------
 .byte   PATT
  .word Label_0111B471
@  #04 @014   ----------------------------------------
 .byte   PATT
  .word Label_0111B479
@  #04 @015   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W72
@  #04 @016   ----------------------------------------
 .byte   Fs1
 .byte   N68 ,Cs2
 .byte   W72
@  #04 @017   ----------------------------------------
 .byte   PATT
  .word Label_0111B489
@  #04 @018   ----------------------------------------
 .byte   N68 ,En1 ,v080
 .byte   N68 ,Bn1
 .byte   W72
Label_0111B4E1:
 .byte   N44 ,An1 ,v080
 .byte   N44 ,Cs2
 .byte   W48
@  #04 @019   ----------------------------------------
 .byte   N11 ,Gs1
 .byte   N23 ,Cs2
 .byte   W12
 .byte   N11 ,An1
 .byte   W12
 .byte   PEND 
Label_0111B4F0:
 .byte   TIE ,As1 ,v080
 .byte   TIE ,Ds2
 .byte   W72
 .byte   PEND 
@  #04 @020   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @021   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   As1 ,v051
 .byte   W36
 .byte   W01
 .byte   N11 ,As3
 .byte   W12
 .byte   Bn3
 .byte   W12
Label_0111B504:
 .byte   N23 ,Bn1 ,v080
 .byte   N32 ,Cs4
 .byte   W24
@  #04 @022   ----------------------------------------
 .byte   N44 ,Cs2
 .byte   N44 ,Fn2
 .byte   W12
 .byte   N11 ,Bn3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111B517:
 .byte   N44 ,Bn1 ,v080
 .byte   N68 ,Ds2
 .byte   N32 ,As3
 .byte   W36
 .byte   N11 ,Gs3
 .byte   W12
@  #04 @023   ----------------------------------------
 .byte   N23 ,As1
 .byte   N11 ,Fs3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   PEND 
Label_0111B52A:
 .byte   N23 ,Gs1 ,v080
 .byte   N23 ,Cs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N44 ,Gs1
 .byte   N44 ,Bn1
 .byte   N44 ,Cs3
 .byte   W48
 .byte   PEND 
@  #04 @024   ----------------------------------------
Label_0111B53C:
 .byte   N68 ,Fs1 ,v080
 .byte   N68 ,As1
 .byte   W48
 .byte   N11 ,Gs3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
Label_0111B548:
 .byte   N23 ,An1 ,v080
 .byte   N32 ,Bn3
 .byte   W24
@  #04 @025   ----------------------------------------
 .byte   N44 ,Bn1
 .byte   N44 ,Ds2
 .byte   W12
 .byte   N11 ,An3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   PEND 
Label_0111B55B:
 .byte   N44 ,An1 ,v080
 .byte   N68 ,Cs2
 .byte   N32 ,Gs3
 .byte   W36
 .byte   N11 ,Fs3
 .byte   W12
@  #04 @026   ----------------------------------------
 .byte   N23 ,Gs1
 .byte   N11 ,En3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   PEND 
Label_0111B56E:
 .byte   N23 ,Fs1 ,v080
 .byte   N23 ,Bn1
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N44 ,Gs1
 .byte   N44 ,Bn1
 .byte   N44 ,Ds3
 .byte   W48
 .byte   PEND 
@  #04 @027   ----------------------------------------
 .byte   Bn1
 .byte   N44 ,Ds2
 .byte   W72
 .byte   W72
@  #04 @028   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @029   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @030   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @031   ----------------------------------------
 .byte   W72
Label_0111B58C:
 .byte   N11 ,As3 ,v080
 .byte   W12
 .byte   En4
 .byte   W12
@  #04 @032   ----------------------------------------
 .byte   Fn4
 .byte   W48
 .byte   PEND 
@  #04 @033   ----------------------------------------
 .byte   PATT
  .word Label_0111B58C
@  #04 @034   ----------------------------------------
Label_0111B59A:
 .byte   N11 ,Fn2 ,v080
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   PEND 
Label_0111B5A9:
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Cn3
 .byte   W12
@  #04 @035   ----------------------------------------
 .byte   Gn3
 .byte   W12
 .byte   An3
 .byte   W36
 .byte   PEND 
@  #04 @036   ----------------------------------------
 .byte   PATT
  .word Label_0111B58C
@  #04 @037   ----------------------------------------
 .byte   PATT
  .word Label_0111B58C
@  #04 @038   ----------------------------------------
Label_0111B5BE:
 .byte   N68 ,Bn0 ,v080
 .byte   N68 ,Bn3
 .byte   N68 ,Dn5
 .byte   W72
 .byte   PEND 
Label_0111B5C7:
 .byte   N68 ,As0 ,v080
 .byte   N68 ,As3
 .byte   N68 ,Cs4
 .byte   W72
 .byte   PEND 
@  #04 @039   ----------------------------------------
Label_0111B5D0:
 .byte   N68 ,An0 ,v080
 .byte   N68 ,An3
 .byte   N68 ,Cn4
 .byte   W72
 .byte   PEND 
Label_0111B5D9:
 .byte   N68 ,Dn0 ,v080
 .byte   N68 ,An3
 .byte   N68 ,Dn4
 .byte   W72
 .byte   PEND 
@  #04 @040   ----------------------------------------
Label_0111B5E2:
 .byte   N68 ,Gn0 ,v080
 .byte   N68 ,As3
 .byte   N68 ,Dn4
 .byte   W72
 .byte   PEND 
Label_0111B5EB:
 .byte   N68 ,Ds1 ,v080
 .byte   N68 ,As3
 .byte   N68 ,Ds4
 .byte   W72
 .byte   PEND 
@  #04 @041   ----------------------------------------
Label_0111B5F4:
 .byte   TIE ,Dn1 ,v080
 .byte   TIE ,An3
 .byte   TIE ,Dn4
 .byte   W72
 .byte   PEND 
 .byte   W72
@  #04 @042   ----------------------------------------
 .byte   W23
 .byte   EOT
 .byte   Dn1 ,v069
 .byte   Dn4
 .byte   W48
 .byte   W01
 .byte   W72
@  #04 @043   ----------------------------------------
 .byte   N68 ,Ds2
 .byte   W72
@  #04 @044   ----------------------------------------
 .byte   PATT
  .word Label_0111B462
@  #04 @045   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W48
@  #04 @046   ----------------------------------------
 .byte   N23 ,Bn1
 .byte   W24
@  #04 @047   ----------------------------------------
 .byte   PATT
  .word Label_0111B471
@  #04 @048   ----------------------------------------
 .byte   PATT
  .word Label_0111B479
@  #04 @049   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W72
@  #04 @050   ----------------------------------------
 .byte   Fs1
 .byte   N68 ,Cs2
 .byte   W72
@  #04 @051   ----------------------------------------
 .byte   PATT
  .word Label_0111B489
@  #04 @052   ----------------------------------------
 .byte   N68 ,En1 ,v080
 .byte   N68 ,Bn1
 .byte   W72
@  #04 @053   ----------------------------------------
 .byte   PATT
  .word Label_0111B49A
@  #04 @054   ----------------------------------------
Label_0111B639:
 .byte   N68 ,Dn2 ,v080
 .byte   N68 ,An2
 .byte   W48
 .byte   N11 ,Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111B645:
 .byte   N68 ,En2 ,v080
 .byte   N68 ,An2
 .byte   N32 ,An3
 .byte   W36
@  #04 @055   ----------------------------------------
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
Label_0111B655:
 .byte   N68 ,Cs2 ,v080
 .byte   N80 ,An2
 .byte   N68 ,Fs3
 .byte   W72
 .byte   PEND 
@  #04 @056   ----------------------------------------
 .byte   N11 ,Dn2
 .byte   W72
 .byte   W72
@  #04 @057   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @058   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @060   ----------------------------------------
Label_0111B668:
 .byte   W48
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
Label_0111B670:
 .byte   N32 ,Bn3 ,v080
 .byte   W36
@  #04 @061   ----------------------------------------
 .byte   N11 ,An3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   PEND 
Label_0111B67C:
 .byte   N32 ,Gs3 ,v080
 .byte   W36
 .byte   N11 ,Fs3
 .byte   W12
 .byte   En3
 .byte   W12
@  #04 @062   ----------------------------------------
 .byte   Ds3
 .byte   W12
 .byte   PEND 
Label_0111B688:
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
Label_0111B691:
 .byte   N44 ,Cs3 ,v080
 .byte   W48
@  #04 @063   ----------------------------------------
 .byte   N11 ,Gs3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #04 @064   ----------------------------------------
 .byte   PATT
  .word Label_0111B670
@  #04 @065   ----------------------------------------
 .byte   PATT
  .word Label_0111B67C
@  #04 @066   ----------------------------------------
 .byte   PATT
  .word Label_0111B688
@  #04 @067   ----------------------------------------
Label_0111B6AA:
 .byte   N44 ,Cs3 ,v080
 .byte   W48
 .byte   N11 ,Gs2
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   PEND 
 .byte   TIE ,Bn2
 .byte   W72
@  #04 @068   ----------------------------------------
 .byte   N68 ,Ds3
 .byte   W72
 .byte   TIE ,En3
 .byte   W72
@  #04 @069   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Bn2 ,v064
 .byte   W01
 .byte   W72
@  #04 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @071   ----------------------------------------
 .byte   W60
 .byte   GOTO
  .word Label_0111B45D
@  #04 @072   ----------------------------------------
 .byte   W12
 .byte   N68 ,Ds2 ,v080
 .byte   W72
@  #04 @073   ----------------------------------------
 .byte   PATT
  .word Label_0111B462
@  #04 @074   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W48
@  #04 @075   ----------------------------------------
 .byte   N23 ,Bn1
 .byte   W24
@  #04 @076   ----------------------------------------
 .byte   PATT
  .word Label_0111B471
@  #04 @077   ----------------------------------------
 .byte   PATT
  .word Label_0111B479
@  #04 @078   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W72
@  #04 @079   ----------------------------------------
 .byte   Fs1
 .byte   N68 ,Cs2
 .byte   W72
@  #04 @080   ----------------------------------------
 .byte   PATT
  .word Label_0111B489
@  #04 @081   ----------------------------------------
 .byte   N68 ,En1 ,v080
 .byte   N68 ,Bn1
 .byte   W72
@  #04 @082   ----------------------------------------
 .byte   PATT
  .word Label_0111B49A
@  #04 @083   ----------------------------------------
 .byte   N68 ,Dn2 ,v080
 .byte   N68 ,An2
 .byte   W72
 .byte   En2
 .byte   N68 ,An2
 .byte   W72
@  #04 @084   ----------------------------------------
 .byte   PATT
  .word Label_0111B4A9
@  #04 @085   ----------------------------------------
 .byte   N11 ,Dn2 ,v080
 .byte   W72
 .byte   N68 ,Ds2
 .byte   W72
@  #04 @086   ----------------------------------------
 .byte   PATT
  .word Label_0111B462
@  #04 @087   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W48
@  #04 @088   ----------------------------------------
 .byte   N23 ,Bn1
 .byte   W24
@  #04 @089   ----------------------------------------
 .byte   PATT
  .word Label_0111B471
@  #04 @090   ----------------------------------------
 .byte   PATT
  .word Label_0111B479
@  #04 @091   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W72
@  #04 @092   ----------------------------------------
 .byte   Fs1
 .byte   N68 ,Cs2
 .byte   W72
@  #04 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111B489
@  #04 @094   ----------------------------------------
 .byte   N68 ,En1 ,v080
 .byte   N68 ,Bn1
 .byte   W72
@  #04 @095   ----------------------------------------
 .byte   PATT
  .word Label_0111B4E1
@  #04 @096   ----------------------------------------
 .byte   PATT
  .word Label_0111B4F0
@  #04 @097   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @098   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   As1 ,v051
 .byte   W36
 .byte   W01
 .byte   N11 ,As3 ,v080
 .byte   W12
 .byte   Bn3
 .byte   W12
@  #04 @099   ----------------------------------------
 .byte   PATT
  .word Label_0111B504
@  #04 @100   ----------------------------------------
 .byte   PATT
  .word Label_0111B517
@  #04 @101   ----------------------------------------
 .byte   PATT
  .word Label_0111B52A
@  #04 @102   ----------------------------------------
 .byte   PATT
  .word Label_0111B53C
@  #04 @103   ----------------------------------------
 .byte   PATT
  .word Label_0111B548
@  #04 @104   ----------------------------------------
 .byte   PATT
  .word Label_0111B55B
@  #04 @105   ----------------------------------------
 .byte   PATT
  .word Label_0111B56E
@  #04 @106   ----------------------------------------
 .byte   N44 ,Bn1 ,v080
 .byte   N44 ,Ds2
 .byte   W72
 .byte   W72
@  #04 @107   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @108   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @109   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @110   ----------------------------------------
 .byte   W72
@  #04 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111B58C
@  #04 @112   ----------------------------------------
 .byte   PATT
  .word Label_0111B58C
@  #04 @113   ----------------------------------------
 .byte   PATT
  .word Label_0111B59A
@  #04 @114   ----------------------------------------
 .byte   PATT
  .word Label_0111B5A9
@  #04 @115   ----------------------------------------
 .byte   PATT
  .word Label_0111B58C
@  #04 @116   ----------------------------------------
 .byte   PATT
  .word Label_0111B58C
@  #04 @117   ----------------------------------------
 .byte   PATT
  .word Label_0111B5BE
@  #04 @118   ----------------------------------------
 .byte   PATT
  .word Label_0111B5C7
@  #04 @119   ----------------------------------------
 .byte   PATT
  .word Label_0111B5D0
@  #04 @120   ----------------------------------------
 .byte   PATT
  .word Label_0111B5D9
@  #04 @121   ----------------------------------------
 .byte   PATT
  .word Label_0111B5E2
@  #04 @122   ----------------------------------------
 .byte   PATT
  .word Label_0111B5EB
@  #04 @123   ----------------------------------------
 .byte   PATT
  .word Label_0111B5F4
@  #04 @124   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   EOT
 .byte   Dn1 ,v069
 .byte   Dn4
 .byte   W48
@  #04 @125   ----------------------------------------
 .byte   W01
 .byte   W72
 .byte   N68 ,Ds2 ,v080
 .byte   W72
@  #04 @126   ----------------------------------------
 .byte   PATT
  .word Label_0111B462
@  #04 @127   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W48
@  #04 @128   ----------------------------------------
 .byte   N23 ,Bn1
 .byte   W24
@  #04 @129   ----------------------------------------
 .byte   PATT
  .word Label_0111B471
@  #04 @130   ----------------------------------------
 .byte   PATT
  .word Label_0111B479
@  #04 @131   ----------------------------------------
 .byte   N68 ,Ds2 ,v080
 .byte   W72
 .byte   W72
@  #04 @132   ----------------------------------------
 .byte   Fs1
 .byte   N68 ,Cs2
 .byte   W72
@  #04 @133   ----------------------------------------
 .byte   PATT
  .word Label_0111B489
@  #04 @134   ----------------------------------------
 .byte   N68 ,En1 ,v080
 .byte   N68 ,Bn1
 .byte   W72
@  #04 @135   ----------------------------------------
 .byte   PATT
  .word Label_0111B49A
@  #04 @136   ----------------------------------------
 .byte   PATT
  .word Label_0111B639
@  #04 @137   ----------------------------------------
 .byte   PATT
  .word Label_0111B645
@  #04 @138   ----------------------------------------
 .byte   PATT
  .word Label_0111B655
@  #04 @139   ----------------------------------------
 .byte   N11 ,Dn2 ,v080
 .byte   W72
 .byte   W72
@  #04 @140   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @141   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @142   ----------------------------------------
 .byte   W72
 .byte   W72
@  #04 @143   ----------------------------------------
 .byte   PATT
  .word Label_0111B668
@  #04 @144   ----------------------------------------
 .byte   PATT
  .word Label_0111B670
@  #04 @145   ----------------------------------------
 .byte   PATT
  .word Label_0111B67C
@  #04 @146   ----------------------------------------
 .byte   PATT
  .word Label_0111B688
@  #04 @147   ----------------------------------------
 .byte   PATT
  .word Label_0111B691
@  #04 @148   ----------------------------------------
 .byte   PATT
  .word Label_0111B670
@  #04 @149   ----------------------------------------
 .byte   PATT
  .word Label_0111B67C
@  #04 @150   ----------------------------------------
 .byte   PATT
  .word Label_0111B688
@  #04 @151   ----------------------------------------
 .byte   PATT
  .word Label_0111B6AA
@  #04 @152   ----------------------------------------
 .byte   TIE ,Bn2 ,v080
 .byte   W72
 .byte   N68 ,Ds3
 .byte   W72
@  #04 @153   ----------------------------------------
 .byte   TIE ,En3
 .byte   W72
 .byte   W68
@  #04 @154   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   Bn2 ,v064
 .byte   W01
 .byte   W72
 .byte   W72
@  #04 @155   ----------------------------------------
 .byte   W72
 .byte   W64
@  #04 @156   ----------------------------------------
 .byte   W01
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

.align 2, 0
song06_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 68
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111DF91:
 .byte   W12
 .byte   W72
@  #05 @001   ----------------------------------------
 .byte   W72
Label_0111DF94:
 .byte   W60
@  #05 @002   ----------------------------------------
 .byte   N05 ,Gs2 ,v080
 .byte   W06
 .byte   Fs2
 .byte   W06
 .byte   PEND 
Label_0111DF9C:
 .byte   N05 ,Gs2 ,v080
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   PEND 
 .byte   W72
@  #05 @003   ----------------------------------------
 .byte   W72
@  #05 @004   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @005   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @006   ----------------------------------------
Label_0111DFC3:
 .byte   N68 ,Fs1 ,v080
 .byte   N05 ,An2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   PEND 
Label_0111DFE0:
 .byte   N44 ,Bn1 ,v080
 .byte   N05 ,Gs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   En3
 .byte   W06
@  #05 @007   ----------------------------------------
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   N11 ,Fs1
 .byte   N05 ,Gs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   N11 ,Fn1
 .byte   N05 ,Ds5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   PEND 
Label_0111E003:
 .byte   N68 ,En1 ,v080
 .byte   N05 ,Gn2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En4
 .byte   W06
@  #05 @008   ----------------------------------------
 .byte   Gn4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   PEND 
Label_0111E020:
 .byte   N44 ,An1 ,v080
 .byte   N05 ,Fs2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,En1
 .byte   N05 ,Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   N11 ,Ds1
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   PEND 
@  #05 @009   ----------------------------------------
Label_0111E043:
 .byte   N11 ,Dn1 ,v080
 .byte   W12
 .byte   An1
 .byte   W12
 .byte   Fs2
 .byte   W36
 .byte   An1
 .byte   W12
 .byte   PEND 
Label_0111E04E:
 .byte   N11 ,Dn1 ,v080
 .byte   W12
 .byte   An1
 .byte   W12
@  #05 @010   ----------------------------------------
 .byte   Dn2
 .byte   W36
 .byte   An1
 .byte   W12
 .byte   PEND 
@  #05 @011   ----------------------------------------
 .byte   PATT
  .word Label_0111E043
@  #05 @012   ----------------------------------------
 .byte   N11 ,Dn1 ,v080
 .byte   W72
 .byte   W72
@  #05 @013   ----------------------------------------
 .byte   W72
@  #05 @014   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @015   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @017   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @018   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @019   ----------------------------------------
 .byte   PATT
  .word Label_0111DFC3
@  #05 @020   ----------------------------------------
 .byte   PATT
  .word Label_0111DFE0
@  #05 @021   ----------------------------------------
 .byte   PATT
  .word Label_0111E003
@  #05 @022   ----------------------------------------
Label_0111E089:
 .byte   N44 ,An1 ,v080
 .byte   N05 ,Fs2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Gs1
 .byte   N05 ,Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   N11 ,An1
 .byte   N05 ,Cs5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   PEND 
Label_0111E0AC:
 .byte   TIE ,As1 ,v080
 .byte   N05 ,Ds2
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Fn2
 .byte   W06
@  #05 @023   ----------------------------------------
 .byte   Gs2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Fn1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   PEND 
Label_0111E0C9:
 .byte   N05 ,Ds2 ,v080
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   Bn1
 .byte   W06
@  #05 @024   ----------------------------------------
 .byte   Gs1
 .byte   W06
 .byte   Fn1
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Bn1
 .byte   W06
 .byte   PEND 
Label_0111E0E4:
 .byte   N05 ,Ds2 ,v080
 .byte   W06
 .byte   Fn2
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fs5
 .byte   W06
 .byte   Gs5
 .byte   W06
 .byte   As5
 .byte   W06
 .byte   Cn6
 .byte   W06
 .byte   PEND 
@  #05 @025   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   As1
 .byte   W60
 .byte   W01
Label_0111E104:
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   Fs3
 .byte   W12
@  #05 @026   ----------------------------------------
 .byte   N23
 .byte   N23 ,Bn3
 .byte   N23 ,Cs4
 .byte   W24
 .byte   Cs3
 .byte   N23 ,As3
 .byte   W24
 .byte   PEND 
Label_0111E115:
 .byte   N11 ,Bn2 ,v080
 .byte   W12
 .byte   N05 ,Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
@  #05 @027   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
 .byte   N11 ,Fs4
 .byte   N11 ,As4
 .byte   W72
@  #05 @028   ----------------------------------------
Label_0111E134:
 .byte   N11 ,Bn3 ,v080
 .byte   W12
 .byte   N05 ,Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As4
 .byte   W30
 .byte   PEND 
Label_0111E146:
 .byte   W24
@  #05 @029   ----------------------------------------
 .byte   N11 ,Ds2 ,v080
 .byte   N11 ,Ds3
 .byte   W48
 .byte   PEND 
Label_0111E14E:
 .byte   W24
 .byte   N11 ,En2 ,v080
 .byte   N11 ,En3
 .byte   W48
 .byte   PEND 
@  #05 @030   ----------------------------------------
 .byte   W72
Label_0111E157:
 .byte   N11 ,Ds3 ,v080
 .byte   W12
 .byte   N05 ,En3
 .byte   W06
 .byte   Fs3
 .byte   W06
@  #05 @031   ----------------------------------------
 .byte   Gs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   PEND 
Label_0111E171:
 .byte   N68 ,Gn0 ,v080
 .byte   N05 ,An4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   An3
 .byte   W06
@  #05 @032   ----------------------------------------
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   PEND 
Label_0111E18E:
 .byte   N44 ,Cn1 ,v080
 .byte   N05 ,As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N11 ,Gn0
 .byte   N05 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Fs0
 .byte   N05 ,En4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
@  #05 @033   ----------------------------------------
Label_0111E1B1:
 .byte   N68 ,Fn0 ,v080
 .byte   N05 ,Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   PEND 
Label_0111E1CE:
 .byte   N68 ,As0 ,v080
 .byte   N05 ,Cn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fn3
 .byte   W06
@  #05 @034   ----------------------------------------
 .byte   Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   PEND 
Label_0111E1EB:
 .byte   TIE ,Bn0 ,v080
 .byte   N68 ,An4
 .byte   W72
 .byte   PEND 
@  #05 @035   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @036   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Bn0
 .byte   W60
 .byte   W01
 .byte   W72
@  #05 @037   ----------------------------------------
 .byte   W72
Label_0111E1FB:
 .byte   W60
@  #05 @038   ----------------------------------------
 .byte   N05 ,An2 ,v080
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   PEND 
Label_0111E203:
 .byte   N05 ,An2 ,v080
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   PEND 
 .byte   W72
@  #05 @039   ----------------------------------------
 .byte   W72
Label_0111E220:
 .byte   N68 ,Bn0 ,v080
 .byte   N05 ,Bn2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
@  #05 @040   ----------------------------------------
 .byte   Bn3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Gn5
 .byte   W06
 .byte   PEND 
Label_0111E23D:
 .byte   N68 ,As0 ,v080
 .byte   N05 ,As2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
@  #05 @041   ----------------------------------------
 .byte   As4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Gn5
 .byte   W06
 .byte   PEND 
Label_0111E25A:
 .byte   N68 ,An0 ,v080
 .byte   N05 ,An2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   PEND 
@  #05 @042   ----------------------------------------
Label_0111E277:
 .byte   N68 ,Dn0 ,v080
 .byte   N05 ,An2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   PEND 
Label_0111E294:
 .byte   N68 ,Gn0 ,v080
 .byte   N05 ,As2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
@  #05 @043   ----------------------------------------
 .byte   As3
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   As4
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   Gn5
 .byte   W06
 .byte   PEND 
Label_0111E2B1:
 .byte   N68 ,Ds1 ,v080
 .byte   N05 ,As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
@  #05 @044   ----------------------------------------
 .byte   As4
 .byte   W06
 .byte   Cn5
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   Fn5
 .byte   W06
 .byte   PEND 
 .byte   TIE ,Dn1
 .byte   W72
@  #05 @045   ----------------------------------------
 .byte   W72
 .byte   W44
@  #05 @046   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   W24
 .byte   W01
 .byte   W72
@  #05 @047   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @048   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @049   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @050   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @051   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @052   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @053   ----------------------------------------
 .byte   PATT
  .word Label_0111DFC3
@  #05 @054   ----------------------------------------
 .byte   PATT
  .word Label_0111DFE0
@  #05 @055   ----------------------------------------
 .byte   PATT
  .word Label_0111E003
@  #05 @056   ----------------------------------------
 .byte   PATT
  .word Label_0111E020
@  #05 @057   ----------------------------------------
 .byte   PATT
  .word Label_0111E043
@  #05 @058   ----------------------------------------
 .byte   PATT
  .word Label_0111E04E
@  #05 @059   ----------------------------------------
 .byte   PATT
  .word Label_0111E043
@  #05 @060   ----------------------------------------
Label_0111E313:
 .byte   N11 ,Dn1 ,v080
 .byte   W06
 .byte   N05 ,An2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   En4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   PEND 
 .byte   W72
@  #05 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @062   ----------------------------------------
 .byte   W72
Label_0111E333:
 .byte   N68 ,Cn2 ,v080
 .byte   N32 ,Dn4
 .byte   W02
 .byte   Dn5
 .byte   W32
@  #05 @063   ----------------------------------------
 .byte   W02
 .byte   N11 ,Cn4
 .byte   W02
 .byte   N08 ,Cn5
 .byte   W10
 .byte   N11 ,As3
 .byte   W02
 .byte   N08 ,As4
 .byte   W10
 .byte   N11 ,Gn3
 .byte   W02
 .byte   N08 ,Gn4
 .byte   W10
 .byte   PEND 
Label_0111E34F:
 .byte   N68 ,Fn1 ,v080
 .byte   N23 ,An3
 .byte   W02
 .byte   N20 ,An4
 .byte   W22
 .byte   N23 ,As3
 .byte   W02
 .byte   N20 ,As4
 .byte   W22
 .byte   N23 ,Cn4
 .byte   W02
 .byte   N20 ,Cn5
 .byte   W22
 .byte   PEND 
@  #05 @064   ----------------------------------------
Label_0111E365:
 .byte   N68 ,Fs1 ,v080
 .byte   N32 ,Cs4
 .byte   W02
 .byte   Cs5
 .byte   W32
 .byte   W02
 .byte   N11 ,Ds4
 .byte   W02
 .byte   N08 ,Ds5
 .byte   W10
 .byte   N23 ,En4
 .byte   W02
 .byte   N20 ,En5
 .byte   W22
 .byte   PEND 
Label_0111E37B:
 .byte   N68 ,Bn1 ,v080
 .byte   N23 ,En4
 .byte   W02
 .byte   N20 ,En5
 .byte   W22
@  #05 @065   ----------------------------------------
 .byte   N44 ,Ds4
 .byte   W02
 .byte   Ds5
 .byte   W44
 .byte   W02
 .byte   PEND 
Label_0111E38B:
 .byte   N05 ,Gs2 ,v080
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   En3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   En4
 .byte   W06
@  #05 @066   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   En5
 .byte   W06
 .byte   PEND 
Label_0111E3A6:
 .byte   N05 ,Fs2 ,v080
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   Bn3
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Ds5
 .byte   W06
 .byte   PEND 
@  #05 @067   ----------------------------------------
 .byte   PATT
  .word Label_0111E3A6
@  #05 @068   ----------------------------------------
Label_0111E3C6:
 .byte   N05 ,Fn2 ,v080
 .byte   W06
 .byte   Fs2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   An4
 .byte   W06
 .byte   Cs5
 .byte   W06
 .byte   PEND 
@  #05 @069   ----------------------------------------
 .byte   PATT
  .word Label_0111E38B
@  #05 @070   ----------------------------------------
 .byte   PATT
  .word Label_0111E3A6
@  #05 @071   ----------------------------------------
 .byte   PATT
  .word Label_0111E3A6
@  #05 @072   ----------------------------------------
 .byte   PATT
  .word Label_0111E3C6
@  #05 @073   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @074   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @075   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @076   ----------------------------------------
 .byte   W72
 .byte   W60
@  #05 @077   ----------------------------------------
 .byte   GOTO
  .word Label_0111DF91
@  #05 @078   ----------------------------------------
 .byte   W12
 .byte   W72
 .byte   W72
@  #05 @079   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @080   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @082   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @083   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @084   ----------------------------------------
 .byte   PATT
  .word Label_0111DFC3
@  #05 @085   ----------------------------------------
 .byte   PATT
  .word Label_0111DFE0
@  #05 @086   ----------------------------------------
 .byte   PATT
  .word Label_0111E003
@  #05 @087   ----------------------------------------
 .byte   PATT
  .word Label_0111E020
@  #05 @088   ----------------------------------------
 .byte   PATT
  .word Label_0111E043
@  #05 @089   ----------------------------------------
 .byte   PATT
  .word Label_0111E04E
@  #05 @090   ----------------------------------------
 .byte   PATT
  .word Label_0111E043
@  #05 @091   ----------------------------------------
 .byte   N11 ,Dn1 ,v080
 .byte   W72
 .byte   W72
@  #05 @092   ----------------------------------------
 .byte   W72
@  #05 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @094   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @095   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @096   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @097   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @098   ----------------------------------------
 .byte   PATT
  .word Label_0111DFC3
@  #05 @099   ----------------------------------------
 .byte   PATT
  .word Label_0111DFE0
@  #05 @100   ----------------------------------------
 .byte   PATT
  .word Label_0111E003
@  #05 @101   ----------------------------------------
 .byte   PATT
  .word Label_0111E089
@  #05 @102   ----------------------------------------
 .byte   PATT
  .word Label_0111E0AC
@  #05 @103   ----------------------------------------
 .byte   PATT
  .word Label_0111E0C9
@  #05 @104   ----------------------------------------
 .byte   PATT
  .word Label_0111E0E4
@  #05 @105   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   As1
 .byte   W60
 .byte   W01
@  #05 @106   ----------------------------------------
 .byte   PATT
  .word Label_0111E104
@  #05 @107   ----------------------------------------
 .byte   PATT
  .word Label_0111E115
@  #05 @108   ----------------------------------------
 .byte   N11 ,Fs4 ,v080
 .byte   N11 ,As4
 .byte   W72
@  #05 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111E134
@  #05 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111E146
@  #05 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111E14E
@  #05 @112   ----------------------------------------
 .byte   W72
@  #05 @113   ----------------------------------------
 .byte   PATT
  .word Label_0111E157
@  #05 @114   ----------------------------------------
 .byte   PATT
  .word Label_0111E171
@  #05 @115   ----------------------------------------
 .byte   PATT
  .word Label_0111E18E
@  #05 @116   ----------------------------------------
 .byte   PATT
  .word Label_0111E1B1
@  #05 @117   ----------------------------------------
 .byte   PATT
  .word Label_0111E1CE
@  #05 @118   ----------------------------------------
 .byte   PATT
  .word Label_0111E1EB
@  #05 @119   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @120   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   Bn0
 .byte   W60
 .byte   W01
 .byte   W72
@  #05 @121   ----------------------------------------
 .byte   W72
@  #05 @122   ----------------------------------------
 .byte   PATT
  .word Label_0111E1FB
@  #05 @123   ----------------------------------------
 .byte   PATT
  .word Label_0111E203
@  #05 @124   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @125   ----------------------------------------
 .byte   PATT
  .word Label_0111E220
@  #05 @126   ----------------------------------------
 .byte   PATT
  .word Label_0111E23D
@  #05 @127   ----------------------------------------
 .byte   PATT
  .word Label_0111E25A
@  #05 @128   ----------------------------------------
 .byte   PATT
  .word Label_0111E277
@  #05 @129   ----------------------------------------
 .byte   PATT
  .word Label_0111E294
@  #05 @130   ----------------------------------------
 .byte   PATT
  .word Label_0111E2B1
@  #05 @131   ----------------------------------------
 .byte   TIE ,Dn1 ,v080
 .byte   W72
 .byte   W72
@  #05 @132   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W24
 .byte   W01
 .byte   W72
@  #05 @133   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @134   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @135   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @136   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @137   ----------------------------------------
 .byte   PATT
  .word Label_0111DF94
@  #05 @138   ----------------------------------------
 .byte   PATT
  .word Label_0111DF9C
@  #05 @139   ----------------------------------------
 .byte   PATT
  .word Label_0111DFC3
@  #05 @140   ----------------------------------------
 .byte   PATT
  .word Label_0111DFE0
@  #05 @141   ----------------------------------------
 .byte   PATT
  .word Label_0111E003
@  #05 @142   ----------------------------------------
 .byte   PATT
  .word Label_0111E020
@  #05 @143   ----------------------------------------
 .byte   PATT
  .word Label_0111E043
@  #05 @144   ----------------------------------------
 .byte   PATT
  .word Label_0111E04E
@  #05 @145   ----------------------------------------
 .byte   PATT
  .word Label_0111E043
@  #05 @146   ----------------------------------------
 .byte   PATT
  .word Label_0111E313
@  #05 @147   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @148   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @149   ----------------------------------------
 .byte   PATT
  .word Label_0111E333
@  #05 @150   ----------------------------------------
 .byte   PATT
  .word Label_0111E34F
@  #05 @151   ----------------------------------------
 .byte   PATT
  .word Label_0111E365
@  #05 @152   ----------------------------------------
 .byte   PATT
  .word Label_0111E37B
@  #05 @153   ----------------------------------------
 .byte   PATT
  .word Label_0111E38B
@  #05 @154   ----------------------------------------
 .byte   PATT
  .word Label_0111E3A6
@  #05 @155   ----------------------------------------
 .byte   PATT
  .word Label_0111E3A6
@  #05 @156   ----------------------------------------
 .byte   PATT
  .word Label_0111E3C6
@  #05 @157   ----------------------------------------
 .byte   PATT
  .word Label_0111E38B
@  #05 @158   ----------------------------------------
 .byte   PATT
  .word Label_0111E3A6
@  #05 @159   ----------------------------------------
 .byte   PATT
  .word Label_0111E3A6
@  #05 @160   ----------------------------------------
 .byte   PATT
  .word Label_0111E3C6
@  #05 @161   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @162   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @163   ----------------------------------------
 .byte   W72
 .byte   W72
@  #05 @164   ----------------------------------------
 .byte   W72
 .byte   W64
@  #05 @165   ----------------------------------------
 .byte   W01
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

.align 2, 0
song06_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 32
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111C015:
 .byte   W12
 .byte   W72
@  #06 @001   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @002   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @003   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @004   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @005   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @006   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @007   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @008   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @009   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @010   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @011   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @012   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @013   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @014   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @015   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @017   ----------------------------------------
Label_0111C037:
 .byte   N23 ,Bn1 ,v080
 .byte   W24
 .byte   Ds2
 .byte   W36
 .byte   N11 ,Gs1
 .byte   W12
 .byte   PEND 
Label_0111C041:
 .byte   N11 ,Fs1 ,v080
 .byte   W12
 .byte   Cs2
 .byte   W24
@  #06 @018   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
 .byte   As1
 .byte   W72
@  #06 @019   ----------------------------------------
Label_0111C04E:
 .byte   N11 ,An1 ,v080
 .byte   W12
 .byte   En2
 .byte   W48
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #06 @020   ----------------------------------------
 .byte   PATT
  .word Label_0111C04E
@  #06 @021   ----------------------------------------
Label_0111C05C:
 .byte   N11 ,Gs1 ,v080
 .byte   W12
 .byte   Ds2
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
 .byte   Bn1
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
 .byte   W72
 .byte   W72
@  #06 @026   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @027   ----------------------------------------
Label_0111C073:
 .byte   N11 ,Fn1 ,v080
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   PEND 
Label_0111C082:
 .byte   N11 ,En2 ,v080
 .byte   W12
 .byte   Cn2
 .byte   W12
@  #06 @028   ----------------------------------------
 .byte   Gn2
 .byte   W12
 .byte   An2
 .byte   W36
 .byte   PEND 
 .byte   W72
@  #06 @029   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @030   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @031   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @032   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @033   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @034   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @035   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @036   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @037   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @038   ----------------------------------------
 .byte   W72
 .byte   W72
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
Label_0111C0A9:
 .byte   N44 ,Gn1 ,v080
 .byte   W60
@  #06 @043   ----------------------------------------
 .byte   N11 ,Dn2
 .byte   W12
 .byte   PEND 
 .byte   N44 ,Fs1
 .byte   W72
Label_0111C0B4:
 .byte   N44 ,En1 ,v080
 .byte   W60
@  #06 @044   ----------------------------------------
 .byte   N11 ,Dn2
 .byte   W12
 .byte   PEND 
 .byte   N68
 .byte   W72
 .byte   W72
@  #06 @045   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @046   ----------------------------------------
 .byte   W72
 .byte   N11 ,Fs1
 .byte   W72
@  #06 @047   ----------------------------------------
 .byte   Bn1
 .byte   W72
 .byte   Gs1
 .byte   W72
@  #06 @048   ----------------------------------------
 .byte   Cs2
 .byte   W72
 .byte   Fs1
 .byte   W72
@  #06 @049   ----------------------------------------
 .byte   Bn1
 .byte   W72
 .byte   Gs1
 .byte   W72
@  #06 @050   ----------------------------------------
 .byte   Cs2
 .byte   W72
Label_0111C0D3:
 .byte   N11 ,An1 ,v080
 .byte   W12
 .byte   En2
 .byte   W60
 .byte   PEND 
@  #06 @051   ----------------------------------------
Label_0111C0DA:
 .byte   N11 ,Gs1 ,v080
 .byte   W12
 .byte   Fs2
 .byte   W60
 .byte   PEND 
Label_0111C0E1:
 .byte   N11 ,Fs1 ,v080
 .byte   W12
 .byte   En2
 .byte   W60
 .byte   PEND 
@  #06 @052   ----------------------------------------
Label_0111C0E8:
 .byte   N11 ,En1 ,v080
 .byte   W12
 .byte   Ds2
 .byte   W60
 .byte   PEND 
 .byte   W72
@  #06 @053   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @054   ----------------------------------------
 .byte   W60
 .byte   GOTO
  .word Label_0111C015
@  #06 @055   ----------------------------------------
 .byte   W12
 .byte   W72
 .byte   W72
@  #06 @056   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @057   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @058   ----------------------------------------
 .byte   W72
 .byte   W72
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
 .byte   W72
 .byte   W72
@  #06 @069   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @071   ----------------------------------------
 .byte   W72
@  #06 @072   ----------------------------------------
 .byte   PATT
  .word Label_0111C037
@  #06 @073   ----------------------------------------
 .byte   PATT
  .word Label_0111C041
@  #06 @074   ----------------------------------------
 .byte   N11 ,As1 ,v080
 .byte   W72
@  #06 @075   ----------------------------------------
 .byte   PATT
  .word Label_0111C04E
@  #06 @076   ----------------------------------------
 .byte   PATT
  .word Label_0111C04E
@  #06 @077   ----------------------------------------
 .byte   PATT
  .word Label_0111C05C
@  #06 @078   ----------------------------------------
 .byte   N11 ,Bn1 ,v080
 .byte   W72
 .byte   W72
@  #06 @079   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @080   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @082   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @083   ----------------------------------------
 .byte   W72
@  #06 @084   ----------------------------------------
 .byte   PATT
  .word Label_0111C073
@  #06 @085   ----------------------------------------
 .byte   PATT
  .word Label_0111C082
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
 .byte   W72
@  #06 @094   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @095   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @096   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @097   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @098   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @099   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @100   ----------------------------------------
 .byte   PATT
  .word Label_0111C0A9
@  #06 @101   ----------------------------------------
 .byte   N44 ,Fs1 ,v080
 .byte   W72
@  #06 @102   ----------------------------------------
 .byte   PATT
  .word Label_0111C0B4
@  #06 @103   ----------------------------------------
 .byte   N68 ,Dn2 ,v080
 .byte   W72
 .byte   W72
@  #06 @104   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @105   ----------------------------------------
 .byte   W72
 .byte   N11 ,Fs1
 .byte   W72
@  #06 @106   ----------------------------------------
 .byte   Bn1
 .byte   W72
 .byte   Gs1
 .byte   W72
@  #06 @107   ----------------------------------------
 .byte   Cs2
 .byte   W72
 .byte   Fs1
 .byte   W72
@  #06 @108   ----------------------------------------
 .byte   Bn1
 .byte   W72
 .byte   Gs1
 .byte   W72
@  #06 @109   ----------------------------------------
 .byte   Cs2
 .byte   W72
@  #06 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111C0D3
@  #06 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111C0DA
@  #06 @112   ----------------------------------------
 .byte   PATT
  .word Label_0111C0E1
@  #06 @113   ----------------------------------------
 .byte   PATT
  .word Label_0111C0E8
@  #06 @114   ----------------------------------------
 .byte   W72
 .byte   W72
@  #06 @115   ----------------------------------------
 .byte   W72
 .byte   W64
@  #06 @116   ----------------------------------------
 .byte   W01
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

.align 2, 0
song06_007:
@  #07 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 49
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111CCE5:
 .byte   W12
 .byte   W72
@  #07 @001   ----------------------------------------
 .byte   W72
Label_0111CCE8:
 .byte   W24
@  #07 @002   ----------------------------------------
 .byte   N11 ,En3 ,v080
 .byte   W24
 .byte   Fs3
 .byte   W24
 .byte   PEND 
 .byte   Ds3
 .byte   W72
@  #07 @003   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @004   ----------------------------------------
 .byte   PATT
  .word Label_0111CCE8
@  #07 @005   ----------------------------------------
Label_0111CCF9:
 .byte   N11 ,Ds3 ,v080
 .byte   W48
 .byte   Gs4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   PEND 
Label_0111CD02:
 .byte   N32 ,Bn4 ,v080
 .byte   W36
@  #07 @006   ----------------------------------------
 .byte   N11 ,An4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   PEND 
Label_0111CD0E:
 .byte   N23 ,Gs4 ,v080
 .byte   W24
 .byte   N44 ,Fs4
 .byte   W48
 .byte   PEND 
@  #07 @007   ----------------------------------------
Label_0111CD16:
 .byte   N32 ,An4 ,v080
 .byte   W36
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
Label_0111CD22:
 .byte   N23 ,Fs4 ,v080
 .byte   W24
@  #07 @008   ----------------------------------------
 .byte   N44 ,En4
 .byte   W48
 .byte   PEND 
 .byte   W72
@  #07 @009   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @010   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @011   ----------------------------------------
 .byte   W72
@  #07 @012   ----------------------------------------
 .byte   PATT
  .word Label_0111CCE8
@  #07 @013   ----------------------------------------
 .byte   N11 ,Ds3 ,v080
 .byte   W72
 .byte   W72
@  #07 @014   ----------------------------------------
 .byte   W72
@  #07 @015   ----------------------------------------
 .byte   PATT
  .word Label_0111CCE8
@  #07 @016   ----------------------------------------
Label_0111CD40:
 .byte   N11 ,Ds3 ,v080
 .byte   W48
 .byte   Gs4 ,v096
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   PEND 
Label_0111CD4A:
 .byte   N32 ,Bn4 ,v096
 .byte   W36
@  #07 @017   ----------------------------------------
 .byte   N11 ,An4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   PEND 
Label_0111CD56:
 .byte   N23 ,Gs4 ,v096
 .byte   W24
 .byte   N44 ,Fs4
 .byte   W48
 .byte   PEND 
@  #07 @018   ----------------------------------------
Label_0111CD5E:
 .byte   N32 ,An4 ,v096
 .byte   W36
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
Label_0111CD6A:
 .byte   N23 ,Fs4 ,v096
 .byte   W24
@  #07 @019   ----------------------------------------
 .byte   En4
 .byte   W24
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
Label_0111CD76:
 .byte   N32 ,Ds4 ,v080
 .byte   TIE ,Gs4 ,v096
 .byte   W36
 .byte   N11 ,Cs4 ,v080
 .byte   W12
@  #07 @020   ----------------------------------------
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_0111CD86:
 .byte   N44 ,Cn4 ,v080
 .byte   W48
 .byte   N11 ,As3
 .byte   W12
 .byte   Ds4
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Gs4
 .byte   W01
@  #07 @021   ----------------------------------------
Label_0111CD93:
 .byte   N78 ,Ds4 ,v080
 .byte   N78 ,Gs4
 .byte   N80 ,Cn5 ,v096
 .byte   W72
 .byte   PEND 
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
Label_0111CDA6:
 .byte   N32 ,An4 ,v127
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   N11 ,Gn4 ,v096
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_0111CDB7:
 .byte   N23 ,Fn4 ,v096
 .byte   W24
@  #07 @027   ----------------------------------------
 .byte   N32 ,En4
 .byte   W36
 .byte   N11 ,Fn4
 .byte   W12
 .byte   PEND 
Label_0111CDC2:
 .byte   N32 ,Gn4 ,v096
 .byte   W36
 .byte   N11 ,Fn4
 .byte   W12
@  #07 @028   ----------------------------------------
 .byte   Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111CDCE:
 .byte   N23 ,Ds4 ,v096
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   PEND 
@  #07 @029   ----------------------------------------
 .byte   TIE ,An4
 .byte   W72
 .byte   W68
@  #07 @030   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N80 ,Cs5
 .byte   W72
Label_0111CDE7:
 .byte   W48
@  #07 @031   ----------------------------------------
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
Label_0111CDEF:
 .byte   N11 ,As2 ,v080
 .byte   N32 ,Fn4
 .byte   W12
 .byte   N11 ,En3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #07 @032   ----------------------------------------
Label_0111CE01:
 .byte   N11 ,As2 ,v080
 .byte   N32 ,Dn4
 .byte   W12
 .byte   N11 ,En3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
Label_0111CE13:
 .byte   N11 ,Fn1 ,v080
 .byte   N11 ,Gn3
 .byte   W12
 .byte   Cn2
 .byte   N11 ,An3
 .byte   W12
@  #07 @033   ----------------------------------------
 .byte   Gn2
 .byte   N90 ,An3
 .byte   W12
 .byte   N11 ,Cn2
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   PEND 
Label_0111CE29:
 .byte   N11 ,En2 ,v080
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   An2
 .byte   W12
@  #07 @034   ----------------------------------------
 .byte   Dn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #07 @035   ----------------------------------------
 .byte   PATT
  .word Label_0111CDEF
@  #07 @036   ----------------------------------------
 .byte   PATT
  .word Label_0111CE01
@  #07 @037   ----------------------------------------
Label_0111CE42:
 .byte   N11 ,Gn3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
Label_0111CE4B:
 .byte   N11 ,Fn3 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
@  #07 @038   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   PEND 
Label_0111CE54:
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N32 ,Cn4
 .byte   W36
@  #07 @039   ----------------------------------------
 .byte   N11 ,Fn4
 .byte   W12
 .byte   PEND 
Label_0111CE61:
 .byte   N11 ,En4 ,v080
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N22
 .byte   W24
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N22 ,En4
 .byte   W12
 .byte   PEND 
Label_0111CE70:
 .byte   W12
@  #07 @040   ----------------------------------------
 .byte   N11 ,Fn4 ,v080
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
Label_0111CE78:
 .byte   N11 ,Gn4 ,v080
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N32 ,Fn4
 .byte   W36
@  #07 @041   ----------------------------------------
 .byte   N11 ,Ds4
 .byte   W12
 .byte   PEND 
Label_0111CE85:
 .byte   N11 ,Dn1 ,v080
 .byte   N22 ,Dn4
 .byte   W12
 .byte   N11 ,An1
 .byte   W12
 .byte   En2
 .byte   W24
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
Label_0111CE95:
 .byte   N11 ,Dn1 ,v080
 .byte   N32 ,An4
 .byte   W12
@  #07 @042   ----------------------------------------
 .byte   N11 ,An1
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
Label_0111CEA7:
 .byte   N11 ,Dn1 ,v080
 .byte   N22 ,Fs4
 .byte   W12
 .byte   N11 ,An1
 .byte   W12
 .byte   En2
 .byte   W48
 .byte   PEND 
@  #07 @043   ----------------------------------------
Label_0111CEB3:
 .byte   N11 ,Dn1 ,v080
 .byte   W48
 .byte   N05 ,Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
Label_0111CEBD:
 .byte   N32 ,En4 ,v080
 .byte   W36
@  #07 @044   ----------------------------------------
 .byte   N05 ,Ds4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
Label_0111CEC9:
 .byte   N32 ,Cs4 ,v080
 .byte   W36
 .byte   N05 ,Bn3
 .byte   W12
 .byte   An3
 .byte   W12
@  #07 @045   ----------------------------------------
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111CED5:
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   N05 ,Gs3
 .byte   W12
 .byte   N68
 .byte   W48
 .byte   PEND 
Label_0111CEDF:
 .byte   W48
@  #07 @046   ----------------------------------------
 .byte   N05 ,Cs4 ,v080
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   PEND 
@  #07 @047   ----------------------------------------
 .byte   PATT
  .word Label_0111CEBD
@  #07 @048   ----------------------------------------
 .byte   PATT
  .word Label_0111CEC9
@  #07 @049   ----------------------------------------
 .byte   PATT
  .word Label_0111CED5
@  #07 @050   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @051   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @052   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @053   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @054   ----------------------------------------
 .byte   W72
Label_0111CEFF:
 .byte   N68 ,Gn2 ,v080
 .byte   N11 ,Fs4
 .byte   W12
 .byte   An3
 .byte   W12
@  #07 @055   ----------------------------------------
 .byte   N32 ,En4
 .byte   W36
 .byte   N11 ,An3
 .byte   W12
 .byte   PEND 
Label_0111CF0E:
 .byte   N68 ,Fs2 ,v080
 .byte   N11 ,En4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   N32 ,Dn4
 .byte   W36
@  #07 @056   ----------------------------------------
 .byte   N11 ,An3
 .byte   W12
 .byte   PEND 
Label_0111CF1D:
 .byte   N68 ,En2 ,v080
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N32 ,Cs4
 .byte   W36
 .byte   N11 ,Gn3
 .byte   W12
 .byte   PEND 
Label_0111CF2C:
 .byte   N68 ,Dn2 ,v080
 .byte   N22 ,Cs4
 .byte   W24
@  #07 @057   ----------------------------------------
 .byte   N44 ,Dn4
 .byte   W48
 .byte   PEND 
Label_0111CF36:
 .byte   N60 ,Gn3 ,v080
 .byte   N36 ,Cn4
 .byte   W36
 .byte   N32
 .byte   W12
@  #07 @058   ----------------------------------------
 .byte   N11 ,As3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
Label_0111CF44:
 .byte   N68 ,Ds3 ,v080
 .byte   N68 ,Fn3
 .byte   W24
 .byte   N22 ,As3
 .byte   W24
 .byte   Cn4
 .byte   W24
 .byte   PEND 
@  #07 @059   ----------------------------------------
Label_0111CF50:
 .byte   N68 ,En3 ,v080
 .byte   N68 ,An3
 .byte   W36
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N22 ,En4
 .byte   W24
 .byte   PEND 
Label_0111CF5D:
 .byte   N22 ,En4 ,v080
 .byte   W24
@  #07 @060   ----------------------------------------
 .byte   N44 ,Ds4
 .byte   W48
 .byte   PEND 
Label_0111CF65:
 .byte   W24
 .byte   N11 ,An3 ,v080
 .byte   N11 ,Cs4
 .byte   N11 ,En4
 .byte   W48
 .byte   PEND 
@  #07 @061   ----------------------------------------
Label_0111CF6F:
 .byte   W24
 .byte   N11 ,Gs3 ,v080
 .byte   N11 ,Bn3
 .byte   N11 ,Ds4
 .byte   W48
 .byte   PEND 
Label_0111CF79:
 .byte   W24
@  #07 @062   ----------------------------------------
 .byte   N11 ,Bn3 ,v080
 .byte   N11 ,Ds4
 .byte   N11 ,Fs4
 .byte   W48
 .byte   PEND 
Label_0111CF83:
 .byte   W24
 .byte   N11 ,Bn3 ,v080
 .byte   N11 ,Cs4
 .byte   N11 ,Fn4
 .byte   W48
 .byte   PEND 
@  #07 @063   ----------------------------------------
 .byte   PATT
  .word Label_0111CF65
@  #07 @064   ----------------------------------------
 .byte   PATT
  .word Label_0111CF6F
@  #07 @065   ----------------------------------------
 .byte   PATT
  .word Label_0111CF79
@  #07 @066   ----------------------------------------
 .byte   PATT
  .word Label_0111CF83
@  #07 @067   ----------------------------------------
Label_0111CFA1:
 .byte   W12
 .byte   N11 ,En4 ,v080
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N32 ,Bn3
 .byte   W36
 .byte   PEND 
 .byte   W72
@  #07 @068   ----------------------------------------
 .byte   N68
 .byte   W72
 .byte   W72
@  #07 @069   ----------------------------------------
Label_0111CFB0:
 .byte   N68 ,Fs3 ,v080
 .byte   W02
 .byte   An3
 .byte   W03
 .byte   N66 ,Cs4
 .byte   W66
 .byte   W01
 .byte   PEND 
 .byte   W72
@  #07 @070   ----------------------------------------
Label_0111CFBC:
 .byte   N68 ,Fs4 ,v080
 .byte   W02
 .byte   An4
 .byte   W03
 .byte   N66 ,Cs5
 .byte   W66
 .byte   W01
 .byte   PEND 
 .byte   W60
@  #07 @071   ----------------------------------------
 .byte   GOTO
  .word Label_0111CCE5
@  #07 @072   ----------------------------------------
 .byte   W12
 .byte   W72
 .byte   W72
@  #07 @073   ----------------------------------------
 .byte   PATT
  .word Label_0111CCE8
@  #07 @074   ----------------------------------------
 .byte   N11 ,Ds3 ,v080
 .byte   W72
 .byte   W72
@  #07 @075   ----------------------------------------
 .byte   W72
@  #07 @076   ----------------------------------------
 .byte   PATT
  .word Label_0111CCE8
@  #07 @077   ----------------------------------------
 .byte   PATT
  .word Label_0111CCF9
@  #07 @078   ----------------------------------------
 .byte   PATT
  .word Label_0111CD02
@  #07 @079   ----------------------------------------
 .byte   PATT
  .word Label_0111CD0E
@  #07 @080   ----------------------------------------
 .byte   PATT
  .word Label_0111CD16
@  #07 @081   ----------------------------------------
 .byte   PATT
  .word Label_0111CD22
@  #07 @082   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @083   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @084   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @085   ----------------------------------------
 .byte   PATT
  .word Label_0111CCE8
@  #07 @086   ----------------------------------------
 .byte   N11 ,Ds3 ,v080
 .byte   W72
 .byte   W72
@  #07 @087   ----------------------------------------
 .byte   W72
@  #07 @088   ----------------------------------------
 .byte   PATT
  .word Label_0111CCE8
@  #07 @089   ----------------------------------------
 .byte   PATT
  .word Label_0111CD40
@  #07 @090   ----------------------------------------
 .byte   PATT
  .word Label_0111CD4A
@  #07 @091   ----------------------------------------
 .byte   PATT
  .word Label_0111CD56
@  #07 @092   ----------------------------------------
 .byte   PATT
  .word Label_0111CD5E
@  #07 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111CD6A
@  #07 @094   ----------------------------------------
 .byte   PATT
  .word Label_0111CD76
@  #07 @095   ----------------------------------------
 .byte   PATT
  .word Label_0111CD86
@  #07 @096   ----------------------------------------
 .byte   EOT
 .byte   Gs4
 .byte   W01
@  #07 @097   ----------------------------------------
 .byte   PATT
  .word Label_0111CD93
@  #07 @098   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @099   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @100   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @101   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @102   ----------------------------------------
 .byte   W72
@  #07 @103   ----------------------------------------
 .byte   PATT
  .word Label_0111CDA6
@  #07 @104   ----------------------------------------
 .byte   PATT
  .word Label_0111CDB7
@  #07 @105   ----------------------------------------
 .byte   PATT
  .word Label_0111CDC2
@  #07 @106   ----------------------------------------
 .byte   PATT
  .word Label_0111CDCE
@  #07 @107   ----------------------------------------
 .byte   TIE ,An4 ,v096
 .byte   W72
 .byte   W68
@  #07 @108   ----------------------------------------
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N80 ,Cs5
 .byte   W72
@  #07 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111CDE7
@  #07 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111CDEF
@  #07 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111CE01
@  #07 @112   ----------------------------------------
 .byte   PATT
  .word Label_0111CE13
@  #07 @113   ----------------------------------------
 .byte   PATT
  .word Label_0111CE29
@  #07 @114   ----------------------------------------
 .byte   PATT
  .word Label_0111CDEF
@  #07 @115   ----------------------------------------
 .byte   PATT
  .word Label_0111CE01
@  #07 @116   ----------------------------------------
 .byte   PATT
  .word Label_0111CE42
@  #07 @117   ----------------------------------------
 .byte   PATT
  .word Label_0111CE4B
@  #07 @118   ----------------------------------------
 .byte   PATT
  .word Label_0111CE54
@  #07 @119   ----------------------------------------
 .byte   PATT
  .word Label_0111CE61
@  #07 @120   ----------------------------------------
 .byte   PATT
  .word Label_0111CE70
@  #07 @121   ----------------------------------------
 .byte   PATT
  .word Label_0111CE78
@  #07 @122   ----------------------------------------
 .byte   PATT
  .word Label_0111CE85
@  #07 @123   ----------------------------------------
 .byte   PATT
  .word Label_0111CE95
@  #07 @124   ----------------------------------------
 .byte   PATT
  .word Label_0111CEA7
@  #07 @125   ----------------------------------------
 .byte   PATT
  .word Label_0111CEB3
@  #07 @126   ----------------------------------------
 .byte   PATT
  .word Label_0111CEBD
@  #07 @127   ----------------------------------------
 .byte   PATT
  .word Label_0111CEC9
@  #07 @128   ----------------------------------------
 .byte   PATT
  .word Label_0111CED5
@  #07 @129   ----------------------------------------
 .byte   PATT
  .word Label_0111CEDF
@  #07 @130   ----------------------------------------
 .byte   PATT
  .word Label_0111CEBD
@  #07 @131   ----------------------------------------
 .byte   PATT
  .word Label_0111CEC9
@  #07 @132   ----------------------------------------
 .byte   PATT
  .word Label_0111CED5
@  #07 @133   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @134   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @135   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @136   ----------------------------------------
 .byte   W72
 .byte   W72
@  #07 @137   ----------------------------------------
 .byte   W72
@  #07 @138   ----------------------------------------
 .byte   PATT
  .word Label_0111CEFF
@  #07 @139   ----------------------------------------
 .byte   PATT
  .word Label_0111CF0E
@  #07 @140   ----------------------------------------
 .byte   PATT
  .word Label_0111CF1D
@  #07 @141   ----------------------------------------
 .byte   PATT
  .word Label_0111CF2C
@  #07 @142   ----------------------------------------
 .byte   PATT
  .word Label_0111CF36
@  #07 @143   ----------------------------------------
 .byte   PATT
  .word Label_0111CF44
@  #07 @144   ----------------------------------------
 .byte   PATT
  .word Label_0111CF50
@  #07 @145   ----------------------------------------
 .byte   PATT
  .word Label_0111CF5D
@  #07 @146   ----------------------------------------
 .byte   PATT
  .word Label_0111CF65
@  #07 @147   ----------------------------------------
 .byte   PATT
  .word Label_0111CF6F
@  #07 @148   ----------------------------------------
 .byte   PATT
  .word Label_0111CF79
@  #07 @149   ----------------------------------------
 .byte   PATT
  .word Label_0111CF83
@  #07 @150   ----------------------------------------
 .byte   PATT
  .word Label_0111CF65
@  #07 @151   ----------------------------------------
 .byte   PATT
  .word Label_0111CF6F
@  #07 @152   ----------------------------------------
 .byte   PATT
  .word Label_0111CF79
@  #07 @153   ----------------------------------------
 .byte   PATT
  .word Label_0111CF83
@  #07 @154   ----------------------------------------
 .byte   PATT
  .word Label_0111CFA1
@  #07 @155   ----------------------------------------
 .byte   W72
 .byte   N68 ,Bn3 ,v080
 .byte   W72
@  #07 @156   ----------------------------------------
 .byte   W72
@  #07 @157   ----------------------------------------
 .byte   PATT
  .word Label_0111CFB0
@  #07 @158   ----------------------------------------
 .byte   W72
@  #07 @159   ----------------------------------------
 .byte   PATT
  .word Label_0111CFBC
@  #07 @160   ----------------------------------------
 .byte   W64
 .byte   W01
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

.align 2, 0
song06_008:
@  #08 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 40
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111BC8D:
 .byte   W12
 .byte   W72
@  #08 @001   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @002   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @003   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @004   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @005   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @006   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @007   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @008   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @009   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @010   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @011   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @012   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @013   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @014   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @015   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @017   ----------------------------------------
 .byte   W72
Label_0111BCB0:
 .byte   W24
@  #08 @018   ----------------------------------------
 .byte   N11 ,As3 ,v096
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   PEND 
Label_0111BCB8:
 .byte   N11 ,Cs4 ,v096
 .byte   W48
@  #08 @019   ----------------------------------------
 .byte   Gs3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
Label_0111BCC1:
 .byte   N32 ,Bn3 ,v096
 .byte   W36
 .byte   N11 ,An3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   PEND 
@  #08 @020   ----------------------------------------
Label_0111BCCD:
 .byte   N32 ,Gs3 ,v096
 .byte   W36
 .byte   N11 ,Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   PEND 
Label_0111BCD9:
 .byte   N11 ,Cs3 ,v096
 .byte   W12
 .byte   Ds3
 .byte   W12
@  #08 @021   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   PEND 
 .byte   N11
 .byte   W72
@  #08 @022   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @024   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @025   ----------------------------------------
 .byte   W72
Label_0111BCED:
 .byte   W48
@  #08 @026   ----------------------------------------
 .byte   N11 ,Dn4 ,v004
 .byte   W12
 .byte   En4 ,v096
 .byte   W12
 .byte   PEND 
Label_0111BCF6:
 .byte   N32 ,Fn4 ,v096
 .byte   W36
 .byte   N11 ,En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #08 @027   ----------------------------------------
Label_0111BD02:
 .byte   N32 ,Dn4 ,v096
 .byte   W36
 .byte   N11 ,Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
Label_0111BD0E:
 .byte   N11 ,Gn3 ,v096
 .byte   W12
 .byte   An3
 .byte   W12
@  #08 @028   ----------------------------------------
 .byte   N68
 .byte   W48
 .byte   PEND 
 .byte   W72
@  #08 @029   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @030   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @031   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @032   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @033   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @034   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @035   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @036   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @037   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @038   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @039   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @040   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @041   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @042   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @043   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @044   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @045   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @046   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @047   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @048   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @049   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @050   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @051   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @052   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @053   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @054   ----------------------------------------
 .byte   W72
 .byte   W60
@  #08 @055   ----------------------------------------
 .byte   GOTO
  .word Label_0111BC8D
@  #08 @056   ----------------------------------------
 .byte   W12
 .byte   W72
 .byte   W72
@  #08 @057   ----------------------------------------
 .byte   W72
 .byte   W72
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
 .byte   W72
 .byte   W72
@  #08 @068   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @069   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @071   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @072   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @073   ----------------------------------------
 .byte   PATT
  .word Label_0111BCB0
@  #08 @074   ----------------------------------------
 .byte   PATT
  .word Label_0111BCB8
@  #08 @075   ----------------------------------------
 .byte   PATT
  .word Label_0111BCC1
@  #08 @076   ----------------------------------------
 .byte   PATT
  .word Label_0111BCCD
@  #08 @077   ----------------------------------------
 .byte   PATT
  .word Label_0111BCD9
@  #08 @078   ----------------------------------------
 .byte   N11 ,Bn2 ,v096
 .byte   W72
 .byte   W72
@  #08 @079   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @080   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @082   ----------------------------------------
 .byte   PATT
  .word Label_0111BCED
@  #08 @083   ----------------------------------------
 .byte   PATT
  .word Label_0111BCF6
@  #08 @084   ----------------------------------------
 .byte   PATT
  .word Label_0111BD02
@  #08 @085   ----------------------------------------
 .byte   PATT
  .word Label_0111BD0E
@  #08 @086   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @087   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @088   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @089   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @090   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @091   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @092   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @093   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @094   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @095   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @096   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @097   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @098   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @099   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @100   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @101   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @102   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @103   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @104   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @105   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @106   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @107   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @108   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @109   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @110   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @111   ----------------------------------------
 .byte   W72
 .byte   W72
@  #08 @112   ----------------------------------------
 .byte   W64
 .byte   W01
 .byte   FINE

@**************** Track 9 (Midi-Chn.8) ****************@

.align 2, 0
song06_009:
@  #09 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 121
 .byte   VOL , 22*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 22*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 22*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 22*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111D161:
 .byte   W12
Label_0111D162:
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W42
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #09 @001   ----------------------------------------
Label_0111D17E:
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W48
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D18B:
 .byte   W12
 .byte   N11 ,Fs1 ,v080
 .byte   W48
@  #09 @002   ----------------------------------------
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D199:
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N11 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W54
 .byte   W01
 .byte   PEND 
Label_0111D1AC:
 .byte   W12
@  #09 @003   ----------------------------------------
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W42
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #09 @004   ----------------------------------------
 .byte   PATT
  .word Label_0111D17E
@  #09 @005   ----------------------------------------
Label_0111D1C1:
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N11 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W42
 .byte   W01
 .byte   N02 ,Fs1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #09 @006   ----------------------------------------
 .byte   PATT
  .word Label_0111D1C1
@  #09 @007   ----------------------------------------
Label_0111D1E3:
 .byte   N11 ,Cs1 ,v080
 .byte   W12
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N11 ,Cs1
 .byte   W18
 .byte   Fs1
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   N05
 .byte   N05 ,Ds2
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   PEND 
Label_0111D1F8:
 .byte   N11 ,Cs1 ,v080
 .byte   W12
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N11 ,Cs1
 .byte   W18
@  #09 @008   ----------------------------------------
 .byte   Fs1
 .byte   W12
 .byte   N05 ,Cs1
 .byte   N05 ,Fs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   N05
 .byte   N05 ,Fs1
 .byte   W06
 .byte   Cs1
 .byte   W06
 .byte   PEND 
@  #09 @009   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @010   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @011   ----------------------------------------
Label_0111D21C:
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Cs1
 .byte   W12
 .byte   Fs1
 .byte   W48
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D22D:
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Cn1
 .byte   N11 ,Fs1
 .byte   W48
@  #09 @012   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D23D:
 .byte   N11 ,Cn1 ,v080
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N11 ,Cn1
 .byte   N11 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W42
 .byte   W01
 .byte   N02 ,Fs1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N14
 .byte   W03
 .byte   PEND 
Label_0111D25F:
 .byte   W60
@  #09 @013   ----------------------------------------
 .byte   N05 ,Dn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D267:
 .byte   N11 ,Cn1 ,v080
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N11 ,Cn1
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N23 ,Dn1
 .byte   W36
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D28D:
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
@  #09 @014   ----------------------------------------
 .byte   Cn1
 .byte   N11 ,Fs1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W42
 .byte   Dn1
 .byte   N05 ,Fs1
 .byte   W06
 .byte   Dn1
 .byte   N05 ,Fs1
 .byte   W06
 .byte   PEND 
Label_0111D2A3:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   N11 ,Fs1
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W36
@  #09 @015   ----------------------------------------
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D2B8:
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N11 ,Cn1
 .byte   N11 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Dn1 ,v080
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D2D5:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
@  #09 @016   ----------------------------------------
 .byte   N11
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Dn1
 .byte   W36
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #09 @017   ----------------------------------------
 .byte   PATT
  .word Label_0111D28D
@  #09 @018   ----------------------------------------
Label_0111D2F1:
 .byte   N11 ,Cn1 ,v080
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N11 ,Cn1
 .byte   N11 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N23 ,Dn1 ,v080
 .byte   W36
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D315:
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N11 ,Cn1
 .byte   N11 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
@  #09 @019   ----------------------------------------
 .byte   Dn1 ,v080
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #09 @020   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @021   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @022   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @023   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @024   ----------------------------------------
 .byte   PATT
  .word Label_0111D21C
@  #09 @025   ----------------------------------------
 .byte   PATT
  .word Label_0111D22D
@  #09 @026   ----------------------------------------
 .byte   PATT
  .word Label_0111D23D
@  #09 @027   ----------------------------------------
 .byte   W72
Label_0111D35D:
 .byte   W12
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W18
@  #09 @028   ----------------------------------------
 .byte   N05
 .byte   W36
 .byte   PEND 
Label_0111D367:
 .byte   W12
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W42
@  #09 @029   ----------------------------------------
 .byte   Dn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D373:
 .byte   W12
 .byte   N11 ,Dn1 ,v080
 .byte   W48
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D37D:
 .byte   W12
@  #09 @030   ----------------------------------------
 .byte   N11 ,Dn1 ,v080
 .byte   W36
 .byte   N05 ,Cs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Cs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D391:
 .byte   W12
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W36
@  #09 @031   ----------------------------------------
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N08
 .byte   W03
 .byte   PEND 
Label_0111D3A3:
 .byte   W06
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N11
 .byte   W48
 .byte   N05 ,Dn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D3B0:
 .byte   W12
@  #09 @032   ----------------------------------------
 .byte   N11 ,Dn1 ,v080
 .byte   W48
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N08
 .byte   W03
 .byte   PEND 
Label_0111D3BF:
 .byte   W06
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N11
 .byte   W60
 .byte   PEND 
@  #09 @033   ----------------------------------------
Label_0111D3C7:
 .byte   N11 ,Dn1 ,v080
 .byte   W12
 .byte   N05 ,Cs1
 .byte   W06
 .byte   N11 ,Dn1
 .byte   W18
 .byte   Fs1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N05 ,Cs1
 .byte   N05 ,Ds2
 .byte   W06
 .byte   Dn1
 .byte   W06
 .byte   PEND 
@  #09 @034   ----------------------------------------
 .byte   PATT
  .word Label_0111D3C7
@  #09 @035   ----------------------------------------
 .byte   PATT
  .word Label_0111D3C7
@  #09 @036   ----------------------------------------
 .byte   PATT
  .word Label_0111D3C7
@  #09 @037   ----------------------------------------
Label_0111D3EC:
 .byte   N23 ,Cn1 ,v080
 .byte   N11 ,Cs1
 .byte   N11 ,Dn1
 .byte   W12
 .byte   N05 ,Cs1
 .byte   N11 ,Fs1
 .byte   W06
 .byte   Dn1
 .byte   W18
 .byte   Fs1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N05 ,Cs1
 .byte   N02 ,Fs1
 .byte   N05 ,Ds2
 .byte   W03
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N05 ,Dn1
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D411:
 .byte   N11 ,Dn1 ,v080
 .byte   N05 ,Fs1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Cn1
 .byte   N05 ,Cs1
 .byte   N11 ,Fs1
 .byte   W06
 .byte   Dn1
 .byte   W18
@  #09 @038   ----------------------------------------
 .byte   Fs1
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N05 ,Cs1
 .byte   N05 ,Fs1
 .byte   N05 ,Ds2
 .byte   W06
 .byte   Dn1
 .byte   N05 ,Fs1
 .byte   W06
 .byte   PEND 
Label_0111D432:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,Dn1
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N11 ,Cn1
 .byte   N05 ,Cs1
 .byte   N11 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Dn1 ,v080
 .byte   W18
 .byte   Fs1
 .byte   W12
 .byte   Cs1
 .byte   W12
@  #09 @039   ----------------------------------------
 .byte   N05
 .byte   N02 ,Fs1
 .byte   N05 ,Ds2
 .byte   W03
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N05 ,Cs1
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N14
 .byte   W03
 .byte   PEND 
Label_0111D464:
 .byte   N05 ,Dn1 ,v080
 .byte   W60
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05 ,Dn1
 .byte   N02 ,Fs1
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D475:
 .byte   W12
@  #09 @040   ----------------------------------------
 .byte   N11 ,Fs1 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D481:
 .byte   W12
 .byte   N11 ,Fs1 ,v080
 .byte   W24
@  #09 @041   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   N05 ,Dn1
 .byte   N05 ,Fs1
 .byte   W06
 .byte   Dn1
 .byte   N05 ,Fs1
 .byte   W06
 .byte   PEND 
Label_0111D492:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N17 ,Dn1
 .byte   W18
 .byte   N05
 .byte   W30
 .byte   PEND 
@  #09 @042   ----------------------------------------
Label_0111D49E:
 .byte   W06
 .byte   N05 ,Cn1 ,v080
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N17 ,Dn1
 .byte   W18
 .byte   N05
 .byte   W30
 .byte   PEND 
@  #09 @043   ----------------------------------------
 .byte   PATT
  .word Label_0111D475
@  #09 @044   ----------------------------------------
Label_0111D4B0:
 .byte   W12
 .byte   N11 ,Fs1 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D4C0:
 .byte   N23 ,Cn1 ,v096
 .byte   W24
@  #09 @045   ----------------------------------------
 .byte   Dn1
 .byte   W36
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D4CC:
 .byte   W12
 .byte   N11 ,Cn1 ,v096
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   N17
 .byte   W18
@  #09 @046   ----------------------------------------
 .byte   N11
 .byte   W06
 .byte   Cn1
 .byte   W12
 .byte   PEND 
@  #09 @047   ----------------------------------------
 .byte   PATT
  .word Label_0111D4C0
@  #09 @048   ----------------------------------------
 .byte   PATT
  .word Label_0111D4CC
@  #09 @049   ----------------------------------------
Label_0111D4E4:
 .byte   N11 ,Cn1 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W36
 .byte   N11 ,Cn1
 .byte   W12
 .byte   PEND 
Label_0111D4F1:
 .byte   N11 ,Cn1 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
@  #09 @050   ----------------------------------------
 .byte   Dn1
 .byte   W12
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   Cn1
 .byte   W12
 .byte   PEND 
Label_0111D500:
 .byte   N23 ,Cn1 ,v096
 .byte   W60
@  #09 @051   ----------------------------------------
 .byte   N02 ,Fs1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N08
 .byte   W03
 .byte   PEND 
Label_0111D50F:
 .byte   W06
 .byte   N05 ,Fs1 ,v080
 .byte   W54
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D519:
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
@  #09 @052   ----------------------------------------
 .byte   N05
 .byte   W48
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N14
 .byte   W03
 .byte   PEND 
 .byte   W72
@  #09 @053   ----------------------------------------
 .byte   PATT
  .word Label_0111D162
@  #09 @054   ----------------------------------------
 .byte   PATT
  .word Label_0111D17E
@  #09 @055   ----------------------------------------
 .byte   PATT
  .word Label_0111D18B
@  #09 @056   ----------------------------------------
 .byte   PATT
  .word Label_0111D199
@  #09 @057   ----------------------------------------
 .byte   PATT
  .word Label_0111D1AC
@  #09 @058   ----------------------------------------
 .byte   PATT
  .word Label_0111D17E
@  #09 @059   ----------------------------------------
 .byte   PATT
  .word Label_0111D1C1
@  #09 @060   ----------------------------------------
 .byte   PATT
  .word Label_0111D1C1
@  #09 @061   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @062   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @063   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @064   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @065   ----------------------------------------
 .byte   PATT
  .word Label_0111D21C
@  #09 @066   ----------------------------------------
 .byte   PATT
  .word Label_0111D22D
@  #09 @067   ----------------------------------------
 .byte   PATT
  .word Label_0111D23D
@  #09 @068   ----------------------------------------
Label_0111D576:
 .byte   W60
 .byte   N05 ,Dn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D57E:
 .byte   N11 ,Cn1 ,v096
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   Fs1 ,v080
 .byte   W06
@  #09 @069   ----------------------------------------
 .byte   N11 ,Dn1 ,v096
 .byte   N05 ,Fs1 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W30
 .byte   W01
 .byte   N02 ,Fs1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D5AE:
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W42
@  #09 @070   ----------------------------------------
 .byte   Dn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
Label_0111D5C3:
 .byte   N11 ,Cn1 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W36
 .byte   N02 ,Fs1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D5D6:
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
@  #09 @071   ----------------------------------------
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Fs1 ,v080
 .byte   W12
 .byte   N17 ,Dn1 ,v096
 .byte   W18
 .byte   N05
 .byte   W18
 .byte   N02 ,Fs1 ,v080
 .byte   N02 ,Ds2 ,v096
 .byte   W03
 .byte   Fs1 ,v080
 .byte   N02 ,Ds2 ,v096
 .byte   W03
 .byte   Fs1 ,v080
 .byte   N02 ,Ds2 ,v096
 .byte   W03
 .byte   Fs1 ,v080
 .byte   N24 ,Ds2 ,v096
 .byte   W03
 .byte   PEND 
Label_0111D603:
 .byte   N23 ,Cn1 ,v096
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1 ,v096
 .byte   W36
@  #09 @072   ----------------------------------------
 .byte   N02 ,Fs1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #09 @073   ----------------------------------------
 .byte   PATT
  .word Label_0111D5AE
@  #09 @074   ----------------------------------------
Label_0111D622:
 .byte   N11 ,Bn0 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W36
 .byte   N02 ,Fs1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D636:
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Fs1 ,v080
 .byte   W12
@  #09 @075   ----------------------------------------
 .byte   N17 ,Dn1 ,v096
 .byte   W18
 .byte   N17
 .byte   W18
 .byte   N11
 .byte   N02 ,Ds2 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N14
 .byte   W03
 .byte   PEND 
Label_0111D655:
 .byte   W12
 .byte   N11 ,Ds2 ,v096
 .byte   W24
 .byte   N11
 .byte   W24
@  #09 @076   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #09 @077   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @078   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @079   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @080   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @081   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @082   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @083   ----------------------------------------
Label_0111D67D:
 .byte   W12
 .byte   N11 ,Ds2 ,v096
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N02 ,Fs1 ,v080
 .byte   N11 ,Ds2 ,v096
 .byte   W03
 .byte   N02 ,Fs1 ,v080
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
Label_0111D694:
 .byte   N11 ,Fs1 ,v080
 .byte   W12
 .byte   N11
 .byte   W48
@  #09 @084   ----------------------------------------
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #09 @085   ----------------------------------------
 .byte   PATT
  .word Label_0111D17E
@  #09 @086   ----------------------------------------
Label_0111D6A8:
 .byte   N05 ,Fs1 ,v080
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W48
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #09 @087   ----------------------------------------
 .byte   PATT
  .word Label_0111D6A8
@  #09 @088   ----------------------------------------
Label_0111D6BE:
 .byte   N17 ,Fs1 ,v080
 .byte   W18
 .byte   N05
 .byte   W42
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #09 @089   ----------------------------------------
 .byte   PATT
  .word Label_0111D6A8
@  #09 @090   ----------------------------------------
 .byte   PATT
  .word Label_0111D694
@  #09 @091   ----------------------------------------
 .byte   N11 ,Fs1 ,v080
 .byte   W60
 .byte   GOTO
  .word Label_0111D161
@  #09 @092   ----------------------------------------
 .byte   W12
@  #09 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111D162
@  #09 @094   ----------------------------------------
 .byte   PATT
  .word Label_0111D17E
@  #09 @095   ----------------------------------------
 .byte   PATT
  .word Label_0111D18B
@  #09 @096   ----------------------------------------
 .byte   PATT
  .word Label_0111D199
@  #09 @097   ----------------------------------------
 .byte   PATT
  .word Label_0111D1AC
@  #09 @098   ----------------------------------------
 .byte   PATT
  .word Label_0111D17E
@  #09 @099   ----------------------------------------
 .byte   PATT
  .word Label_0111D1C1
@  #09 @100   ----------------------------------------
 .byte   PATT
  .word Label_0111D1C1
@  #09 @101   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @102   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @103   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @104   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @105   ----------------------------------------
 .byte   PATT
  .word Label_0111D21C
@  #09 @106   ----------------------------------------
 .byte   PATT
  .word Label_0111D22D
@  #09 @107   ----------------------------------------
 .byte   PATT
  .word Label_0111D23D
@  #09 @108   ----------------------------------------
 .byte   PATT
  .word Label_0111D25F
@  #09 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111D267
@  #09 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111D28D
@  #09 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111D2A3
@  #09 @112   ----------------------------------------
 .byte   PATT
  .word Label_0111D2B8
@  #09 @113   ----------------------------------------
 .byte   PATT
  .word Label_0111D2D5
@  #09 @114   ----------------------------------------
 .byte   PATT
  .word Label_0111D28D
@  #09 @115   ----------------------------------------
 .byte   PATT
  .word Label_0111D2F1
@  #09 @116   ----------------------------------------
 .byte   PATT
  .word Label_0111D315
@  #09 @117   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @118   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @119   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @120   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @121   ----------------------------------------
 .byte   PATT
  .word Label_0111D21C
@  #09 @122   ----------------------------------------
 .byte   PATT
  .word Label_0111D22D
@  #09 @123   ----------------------------------------
 .byte   PATT
  .word Label_0111D23D
@  #09 @124   ----------------------------------------
 .byte   W72
@  #09 @125   ----------------------------------------
 .byte   PATT
  .word Label_0111D35D
@  #09 @126   ----------------------------------------
 .byte   PATT
  .word Label_0111D367
@  #09 @127   ----------------------------------------
 .byte   PATT
  .word Label_0111D373
@  #09 @128   ----------------------------------------
 .byte   PATT
  .word Label_0111D37D
@  #09 @129   ----------------------------------------
 .byte   PATT
  .word Label_0111D391
@  #09 @130   ----------------------------------------
 .byte   PATT
  .word Label_0111D3A3
@  #09 @131   ----------------------------------------
 .byte   PATT
  .word Label_0111D3B0
@  #09 @132   ----------------------------------------
 .byte   PATT
  .word Label_0111D3BF
@  #09 @133   ----------------------------------------
 .byte   PATT
  .word Label_0111D3C7
@  #09 @134   ----------------------------------------
 .byte   PATT
  .word Label_0111D3C7
@  #09 @135   ----------------------------------------
 .byte   PATT
  .word Label_0111D3C7
@  #09 @136   ----------------------------------------
 .byte   PATT
  .word Label_0111D3C7
@  #09 @137   ----------------------------------------
 .byte   PATT
  .word Label_0111D3EC
@  #09 @138   ----------------------------------------
 .byte   PATT
  .word Label_0111D411
@  #09 @139   ----------------------------------------
 .byte   PATT
  .word Label_0111D432
@  #09 @140   ----------------------------------------
 .byte   PATT
  .word Label_0111D464
@  #09 @141   ----------------------------------------
 .byte   PATT
  .word Label_0111D475
@  #09 @142   ----------------------------------------
 .byte   PATT
  .word Label_0111D481
@  #09 @143   ----------------------------------------
 .byte   PATT
  .word Label_0111D492
@  #09 @144   ----------------------------------------
 .byte   PATT
  .word Label_0111D49E
@  #09 @145   ----------------------------------------
 .byte   PATT
  .word Label_0111D475
@  #09 @146   ----------------------------------------
 .byte   PATT
  .word Label_0111D4B0
@  #09 @147   ----------------------------------------
 .byte   PATT
  .word Label_0111D4C0
@  #09 @148   ----------------------------------------
 .byte   PATT
  .word Label_0111D4CC
@  #09 @149   ----------------------------------------
 .byte   PATT
  .word Label_0111D4C0
@  #09 @150   ----------------------------------------
 .byte   PATT
  .word Label_0111D4CC
@  #09 @151   ----------------------------------------
 .byte   PATT
  .word Label_0111D4E4
@  #09 @152   ----------------------------------------
 .byte   PATT
  .word Label_0111D4F1
@  #09 @153   ----------------------------------------
 .byte   PATT
  .word Label_0111D500
@  #09 @154   ----------------------------------------
 .byte   PATT
  .word Label_0111D50F
@  #09 @155   ----------------------------------------
 .byte   PATT
  .word Label_0111D519
@  #09 @156   ----------------------------------------
 .byte   W72
@  #09 @157   ----------------------------------------
 .byte   PATT
  .word Label_0111D162
@  #09 @158   ----------------------------------------
 .byte   PATT
  .word Label_0111D17E
@  #09 @159   ----------------------------------------
 .byte   PATT
  .word Label_0111D18B
@  #09 @160   ----------------------------------------
 .byte   PATT
  .word Label_0111D199
@  #09 @161   ----------------------------------------
 .byte   PATT
  .word Label_0111D1AC
@  #09 @162   ----------------------------------------
 .byte   PATT
  .word Label_0111D17E
@  #09 @163   ----------------------------------------
 .byte   PATT
  .word Label_0111D1C1
@  #09 @164   ----------------------------------------
 .byte   PATT
  .word Label_0111D1C1
@  #09 @165   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @166   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @167   ----------------------------------------
 .byte   PATT
  .word Label_0111D1E3
@  #09 @168   ----------------------------------------
 .byte   PATT
  .word Label_0111D1F8
@  #09 @169   ----------------------------------------
 .byte   PATT
  .word Label_0111D21C
@  #09 @170   ----------------------------------------
 .byte   PATT
  .word Label_0111D22D
@  #09 @171   ----------------------------------------
 .byte   PATT
  .word Label_0111D23D
@  #09 @172   ----------------------------------------
 .byte   PATT
  .word Label_0111D576
@  #09 @173   ----------------------------------------
 .byte   PATT
  .word Label_0111D57E
@  #09 @174   ----------------------------------------
 .byte   PATT
  .word Label_0111D5AE
@  #09 @175   ----------------------------------------
 .byte   PATT
  .word Label_0111D5C3
@  #09 @176   ----------------------------------------
 .byte   PATT
  .word Label_0111D5D6
@  #09 @177   ----------------------------------------
 .byte   PATT
  .word Label_0111D603
@  #09 @178   ----------------------------------------
 .byte   PATT
  .word Label_0111D5AE
@  #09 @179   ----------------------------------------
 .byte   PATT
  .word Label_0111D622
@  #09 @180   ----------------------------------------
 .byte   PATT
  .word Label_0111D636
@  #09 @181   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @182   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @183   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @184   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @185   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @186   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @187   ----------------------------------------
 .byte   PATT
  .word Label_0111D655
@  #09 @188   ----------------------------------------
 .byte   PATT
  .word Label_0111D67D
@  #09 @189   ----------------------------------------
 .byte   PATT
  .word Label_0111D694
@  #09 @190   ----------------------------------------
 .byte   PATT
  .word Label_0111D17E
@  #09 @191   ----------------------------------------
 .byte   PATT
  .word Label_0111D6A8
@  #09 @192   ----------------------------------------
 .byte   PATT
  .word Label_0111D6A8
@  #09 @193   ----------------------------------------
 .byte   PATT
  .word Label_0111D6BE
@  #09 @194   ----------------------------------------
 .byte   PATT
  .word Label_0111D6A8
@  #09 @195   ----------------------------------------
 .byte   PATT
  .word Label_0111D694
@  #09 @196   ----------------------------------------
 .byte   N11 ,Fs1 ,v080
 .byte   W64
 .byte   W01
 .byte   FINE

@**************** Track 10 (Midi-Chn.9) ****************@

.align 2, 0
song06_010:
@  #10 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 68
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_011104B9:
 .byte   W12
 .byte   W72
@  #10 @001   ----------------------------------------
 .byte   W72
Label_011104BC:
 .byte   W24
@  #10 @002   ----------------------------------------
 .byte   N11 ,Gs2 ,v080
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   PEND 
 .byte   N11
 .byte   W72
@  #10 @003   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @004   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @005   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
Label_011104D1:
 .byte   N32 ,En4 ,v080
 .byte   W36
@  #10 @006   ----------------------------------------
 .byte   N11 ,Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
 .byte   N68 ,An3
 .byte   N68 ,Ds4
 .byte   W72
@  #10 @007   ----------------------------------------
Label_011104E2:
 .byte   N32 ,En4 ,v080
 .byte   W36
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   PEND 
 .byte   N44 ,Gn3
 .byte   N44 ,Cs4
 .byte   W72
@  #10 @008   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @009   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @010   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @011   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @012   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
 .byte   W72
@  #10 @013   ----------------------------------------
 .byte   W72
@  #10 @014   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @015   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
@  #10 @016   ----------------------------------------
 .byte   PATT
  .word Label_011104D1
@  #10 @017   ----------------------------------------
 .byte   N68 ,Ds4 ,v080
 .byte   W72
@  #10 @018   ----------------------------------------
 .byte   PATT
  .word Label_011104E2
@  #10 @019   ----------------------------------------
 .byte   N44 ,Cs4 ,v080
 .byte   W72
Label_0111051F:
 .byte   N32 ,Ds4 ,v080
 .byte   W36
@  #10 @020   ----------------------------------------
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_0111052B:
 .byte   N44 ,Cn4 ,v080
 .byte   W48
 .byte   N11 ,As3
 .byte   W12
@  #10 @021   ----------------------------------------
 .byte   Ds4
 .byte   W12
 .byte   PEND 
 .byte   N80 ,Gs4
 .byte   W72
 .byte   W72
@  #10 @022   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @024   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @025   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @026   ----------------------------------------
Label_01110541:
 .byte   N32 ,Fn4 ,v080
 .byte   W36
 .byte   N11 ,Dn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   PEND 
 .byte   N68 ,As3
 .byte   N68 ,Cn4
 .byte   W72
@  #10 @027   ----------------------------------------
Label_01110552:
 .byte   N32 ,Cn4 ,v080
 .byte   N32 ,Ds4
 .byte   W36
 .byte   N11 ,Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   PEND 
Label_01110560:
 .byte   N44 ,As3 ,v080
 .byte   W48
@  #10 @028   ----------------------------------------
 .byte   N23
 .byte   W24
 .byte   PEND 
Label_01110567:
 .byte   N32 ,En4 ,v080
 .byte   W36
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #10 @029   ----------------------------------------
Label_01110573:
 .byte   N44 ,Cs4 ,v080
 .byte   W48
 .byte   N11 ,Bn3
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
 .byte   N80
 .byte   N80 ,An4
 .byte   W72
@  #10 @030   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @031   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @032   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @033   ----------------------------------------
 .byte   W72
 .byte   N68 ,Bn3
 .byte   N68 ,Dn4
 .byte   W72
@  #10 @034   ----------------------------------------
 .byte   As3
 .byte   N68 ,Cs4
 .byte   W72
Label_01110591:
 .byte   N56 ,An3 ,v080
 .byte   N56 ,Cn4
 .byte   W60
@  #10 @035   ----------------------------------------
 .byte   N11 ,An4
 .byte   W12
 .byte   PEND 
Label_0111059B:
 .byte   N11 ,Gn4 ,v080
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,Dn5
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   PEND 
 .byte   N68 ,As4
 .byte   W72
@  #10 @036   ----------------------------------------
 .byte   N68
 .byte   N68 ,Ds5
 .byte   W72
Label_011105B0:
 .byte   TIE ,Fs4 ,v080
 .byte   TIE ,An4
 .byte   W72
 .byte   PEND 
@  #10 @037   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   EOT
 .byte   Fs4 ,v081
 .byte   W48
@  #10 @038   ----------------------------------------
 .byte   W01
 .byte   W72
 .byte   W72
@  #10 @039   ----------------------------------------
 .byte   W72
@  #10 @040   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @041   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
 .byte   W72
@  #10 @042   ----------------------------------------
 .byte   W72
@  #10 @043   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @044   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
@  #10 @045   ----------------------------------------
 .byte   PATT
  .word Label_011104D1
@  #10 @046   ----------------------------------------
 .byte   N68 ,An3 ,v080
 .byte   N68 ,Ds4
 .byte   W72
@  #10 @047   ----------------------------------------
 .byte   PATT
  .word Label_011104E2
@  #10 @048   ----------------------------------------
 .byte   N44 ,Gn3 ,v080
 .byte   N44 ,Cs4
 .byte   W72
 .byte   W72
@  #10 @049   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @050   ----------------------------------------
Label_011105EE:
 .byte   W48
 .byte   N02 ,An3 ,v080
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
 .byte   PEND 
Label_01110602:
 .byte   N02 ,An3 ,v080
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
@  #10 @051   ----------------------------------------
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
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W05
 .byte   PEND 
@  #10 @052   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #10 @053   ----------------------------------------
Label_0111063A:
 .byte   N02 ,Gn3 ,v080
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
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W05
 .byte   PEND 
Label_0111066D:
 .byte   N02 ,Fs3 ,v080
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
@  #10 @054   ----------------------------------------
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
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W05
 .byte   PEND 
 .byte   N68 ,Gn3
 .byte   W72
@  #10 @055   ----------------------------------------
 .byte   Fn3
 .byte   W72
 .byte   An3
 .byte   W72
@  #10 @056   ----------------------------------------
Label_011106A7:
 .byte   N23 ,Cs4 ,v080
 .byte   W24
 .byte   N44 ,Bn3
 .byte   W48
 .byte   PEND 
 .byte   W72
@  #10 @057   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @058   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @062   ----------------------------------------
 .byte   W72
 .byte   TIE ,An3
 .byte   W72
@  #10 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @064   ----------------------------------------
 .byte   W05
 .byte   EOT
 .byte   W54
 .byte   W01
 .byte   GOTO
  .word Label_011104B9
@  #10 @065   ----------------------------------------
 .byte   W12
 .byte   W72
 .byte   W72
@  #10 @066   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @067   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
 .byte   W72
@  #10 @068   ----------------------------------------
 .byte   W72
@  #10 @069   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @070   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
@  #10 @071   ----------------------------------------
 .byte   PATT
  .word Label_011104D1
@  #10 @072   ----------------------------------------
 .byte   N68 ,An3 ,v080
 .byte   N68 ,Ds4
 .byte   W72
@  #10 @073   ----------------------------------------
 .byte   PATT
  .word Label_011104E2
@  #10 @074   ----------------------------------------
 .byte   N44 ,Gn3 ,v080
 .byte   N44 ,Cs4
 .byte   W72
 .byte   W72
@  #10 @075   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @076   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @077   ----------------------------------------
 .byte   W72
@  #10 @078   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @079   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
 .byte   W72
@  #10 @080   ----------------------------------------
 .byte   W72
@  #10 @081   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @082   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
@  #10 @083   ----------------------------------------
 .byte   PATT
  .word Label_011104D1
@  #10 @084   ----------------------------------------
 .byte   N68 ,Ds4 ,v080
 .byte   W72
@  #10 @085   ----------------------------------------
 .byte   PATT
  .word Label_011104E2
@  #10 @086   ----------------------------------------
 .byte   N44 ,Cs4 ,v080
 .byte   W72
@  #10 @087   ----------------------------------------
 .byte   PATT
  .word Label_0111051F
@  #10 @088   ----------------------------------------
 .byte   PATT
  .word Label_0111052B
@  #10 @089   ----------------------------------------
 .byte   N80 ,Gs4 ,v080
 .byte   W72
 .byte   W72
@  #10 @090   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @091   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @092   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @093   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @094   ----------------------------------------
 .byte   PATT
  .word Label_01110541
@  #10 @095   ----------------------------------------
 .byte   N68 ,As3 ,v080
 .byte   N68 ,Cn4
 .byte   W72
@  #10 @096   ----------------------------------------
 .byte   PATT
  .word Label_01110552
@  #10 @097   ----------------------------------------
 .byte   PATT
  .word Label_01110560
@  #10 @098   ----------------------------------------
 .byte   PATT
  .word Label_01110567
@  #10 @099   ----------------------------------------
 .byte   PATT
  .word Label_01110573
@  #10 @100   ----------------------------------------
 .byte   N80 ,En4 ,v080
 .byte   N80 ,An4
 .byte   W72
 .byte   W72
@  #10 @101   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @102   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @103   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @104   ----------------------------------------
 .byte   N68 ,Bn3
 .byte   N68 ,Dn4
 .byte   W72
 .byte   As3
 .byte   N68 ,Cs4
 .byte   W72
@  #10 @105   ----------------------------------------
 .byte   PATT
  .word Label_01110591
@  #10 @106   ----------------------------------------
 .byte   PATT
  .word Label_0111059B
@  #10 @107   ----------------------------------------
 .byte   N68 ,As4 ,v080
 .byte   W72
 .byte   N68
 .byte   N68 ,Ds5
 .byte   W72
@  #10 @108   ----------------------------------------
 .byte   PATT
  .word Label_011105B0
@  #10 @109   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   EOT
 .byte   Fs4 ,v081
 .byte   W48
@  #10 @110   ----------------------------------------
 .byte   W01
 .byte   W72
 .byte   W72
@  #10 @111   ----------------------------------------
 .byte   W72
@  #10 @112   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @113   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
 .byte   W72
@  #10 @114   ----------------------------------------
 .byte   W72
@  #10 @115   ----------------------------------------
 .byte   PATT
  .word Label_011104BC
@  #10 @116   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
@  #10 @117   ----------------------------------------
 .byte   PATT
  .word Label_011104D1
@  #10 @118   ----------------------------------------
 .byte   N68 ,An3 ,v080
 .byte   N68 ,Ds4
 .byte   W72
@  #10 @119   ----------------------------------------
 .byte   PATT
  .word Label_011104E2
@  #10 @120   ----------------------------------------
 .byte   N44 ,Gn3 ,v080
 .byte   N44 ,Cs4
 .byte   W72
 .byte   W72
@  #10 @121   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @122   ----------------------------------------
 .byte   PATT
  .word Label_011105EE
@  #10 @123   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #10 @124   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #10 @125   ----------------------------------------
 .byte   PATT
  .word Label_0111063A
@  #10 @126   ----------------------------------------
 .byte   PATT
  .word Label_0111066D
@  #10 @127   ----------------------------------------
 .byte   N68 ,Gn3 ,v080
 .byte   W72
 .byte   Fn3
 .byte   W72
@  #10 @128   ----------------------------------------
 .byte   An3
 .byte   W72
@  #10 @129   ----------------------------------------
 .byte   PATT
  .word Label_011106A7
@  #10 @130   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @131   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @132   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @133   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @134   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @135   ----------------------------------------
 .byte   W72
 .byte   W72
@  #10 @136   ----------------------------------------
 .byte   TIE ,An3 ,v080
 .byte   W72
 .byte   W72
@  #10 @137   ----------------------------------------
 .byte   W72
 .byte   W05
 .byte   EOT
 .byte   W60
 .byte   FINE

@**************** Track 11 (Midi-Chn.10) ****************@

.align 2, 0
song06_011:
@  #11 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 45
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111FAE5:
 .byte   W12
 .byte   W72
@  #11 @001   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @002   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @003   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @004   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @005   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @006   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @007   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @008   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @009   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @010   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @011   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @012   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @013   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @014   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @015   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @017   ----------------------------------------
 .byte   W72
Label_0111FB08:
 .byte   W24
@  #11 @018   ----------------------------------------
 .byte   N11 ,As3 ,v080
 .byte   W24
 .byte   Cs4
 .byte   W24
 .byte   PEND 
 .byte   En3
 .byte   W72
@  #11 @019   ----------------------------------------
 .byte   W24
 .byte   Ds3
 .byte   W48
 .byte   W24
@  #11 @020   ----------------------------------------
 .byte   En3
 .byte   W48
Label_0111FB18:
 .byte   W12
 .byte   N11 ,Ds3 ,v080
 .byte   W12
 .byte   Bn2
 .byte   W24
@  #11 @021   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   PEND 
 .byte   N11
 .byte   W72
@  #11 @022   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @024   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @025   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @026   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @027   ----------------------------------------
 .byte   W72
Label_0111FB2F:
 .byte   W48
@  #11 @028   ----------------------------------------
 .byte   N11 ,Dn4 ,v096
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
Label_0111FB37:
 .byte   N32 ,Fn4 ,v096
 .byte   W36
 .byte   N11 ,En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #11 @029   ----------------------------------------
Label_0111FB43:
 .byte   N32 ,Dn4 ,v096
 .byte   W36
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N05 ,Cn3
 .byte   N05 ,Cn4
 .byte   W06
 .byte   Dn3
 .byte   N05 ,Dn4
 .byte   W06
 .byte   En3
 .byte   N05 ,En4
 .byte   W06
 .byte   Fn3
 .byte   N05 ,Fn4
 .byte   W06
 .byte   PEND 
Label_0111FB5C:
 .byte   N11 ,Gn3 ,v096
 .byte   N11 ,Gn4
 .byte   W12
 .byte   An3
 .byte   N11 ,An4
 .byte   W12
@  #11 @030   ----------------------------------------
 .byte   N44 ,An3
 .byte   N44 ,An4
 .byte   W48
 .byte   PEND 
Label_0111FB6C:
 .byte   N11 ,Fn3 ,v096
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Gn3
 .byte   N11 ,Gn4
 .byte   W12
 .byte   N44 ,Gn3
 .byte   N44 ,Gn4
 .byte   W48
 .byte   PEND 
@  #11 @031   ----------------------------------------
Label_0111FB7C:
 .byte   N11 ,En3 ,v096
 .byte   N11 ,En4
 .byte   W12
 .byte   Fn3
 .byte   N11 ,Fn4
 .byte   W12
 .byte   N32 ,Cn4
 .byte   N32 ,Cn5
 .byte   W36
 .byte   N11 ,Fn4
 .byte   N11 ,Fn5
 .byte   W12
 .byte   PEND 
Label_0111FB91:
 .byte   N11 ,En4 ,v096
 .byte   N11 ,En5
 .byte   W12
 .byte   Fn4
 .byte   N11 ,Fn5
 .byte   W12
@  #11 @032   ----------------------------------------
 .byte   N23 ,Fn4
 .byte   N23 ,Fn5
 .byte   W24
 .byte   N11 ,Dn4
 .byte   N11 ,Dn5
 .byte   W12
 .byte   N23 ,En4
 .byte   N23 ,En5
 .byte   W12
 .byte   PEND 
Label_0111FBAB:
 .byte   W12
 .byte   N11 ,Fn4 ,v096
 .byte   N11 ,Fn5
 .byte   W12
 .byte   N44 ,Fn4
 .byte   N44 ,Fn5
 .byte   W48
 .byte   PEND 
@  #11 @033   ----------------------------------------
Label_0111FBB8:
 .byte   N11 ,Gn4 ,v096
 .byte   N11 ,Gn5
 .byte   W12
 .byte   An4
 .byte   N11 ,An5
 .byte   W12
 .byte   N32 ,Fn4
 .byte   N32 ,Fn5
 .byte   W36
 .byte   N11 ,Ds4
 .byte   N11 ,Ds5
 .byte   W12
 .byte   PEND 
Label_0111FBCD:
 .byte   TIE ,Dn4 ,v096
 .byte   TIE ,Dn5
 .byte   W72
 .byte   PEND 
@  #11 @034   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   EOT
 .byte   Dn4 ,v086
 .byte   W48
@  #11 @035   ----------------------------------------
 .byte   W01
 .byte   W72
 .byte   W72
@  #11 @036   ----------------------------------------
 .byte   W72
Label_0111FBDE:
 .byte   W24
@  #11 @037   ----------------------------------------
 .byte   N11 ,En3 ,v096
 .byte   W24
 .byte   Fs3
 .byte   W24
 .byte   PEND 
 .byte   Ds3
 .byte   W72
@  #11 @038   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @039   ----------------------------------------
 .byte   PATT
  .word Label_0111FBDE
@  #11 @040   ----------------------------------------
Label_0111FBEF:
 .byte   N11 ,Ds3 ,v096
 .byte   W48
 .byte   Gs4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   PEND 
Label_0111FBF8:
 .byte   N32 ,Bn4 ,v096
 .byte   W36
@  #11 @041   ----------------------------------------
 .byte   N11 ,An4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   PEND 
Label_0111FC04:
 .byte   N23 ,Gs4 ,v096
 .byte   W24
 .byte   N44 ,Fs4
 .byte   W48
 .byte   PEND 
@  #11 @042   ----------------------------------------
Label_0111FC0C:
 .byte   N32 ,An4 ,v096
 .byte   W36
 .byte   N11 ,Gn4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
Label_0111FC18:
 .byte   N23 ,Fs4 ,v096
 .byte   W24
@  #11 @043   ----------------------------------------
 .byte   N44 ,En4
 .byte   W48
 .byte   PEND 
Label_0111FC20:
 .byte   W48
@  #11 @044   ----------------------------------------
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_0111FC28:
 .byte   N32 ,An3 ,v080
 .byte   W36
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #11 @045   ----------------------------------------
 .byte   N68 ,Fs3
 .byte   W72
Label_0111FC37:
 .byte   W48
@  #11 @046   ----------------------------------------
 .byte   N02 ,Dn4 ,v096
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
 .byte   PEND 
Label_0111FC4B:
 .byte   N02 ,Fs4 ,v096
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
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W05
 .byte   PEND 
@  #11 @047   ----------------------------------------
Label_0111FC7E:
 .byte   N02 ,En4 ,v096
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
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W05
 .byte   PEND 
Label_0111FCB1:
 .byte   N02 ,Dn4 ,v096
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
@  #11 @048   ----------------------------------------
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
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W05
 .byte   PEND 
Label_0111FCE4:
 .byte   N02 ,Cs4 ,v096
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
 .byte   Dn4
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
@  #11 @049   ----------------------------------------
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
 .byte   PEND 
Label_0111FD17:
 .byte   N32 ,Dn4 ,v080
 .byte   W36
 .byte   N11 ,Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
Label_0111FD23:
 .byte   N23 ,An3 ,v080
 .byte   W24
@  #11 @050   ----------------------------------------
 .byte   As3
 .byte   W24
 .byte   Cn4
 .byte   W24
 .byte   PEND 
Label_0111FD2C:
 .byte   N32 ,Cs4 ,v080
 .byte   W36
 .byte   N11 ,Ds4
 .byte   W12
@  #11 @051   ----------------------------------------
 .byte   N23 ,En4
 .byte   W24
 .byte   PEND 
Label_0111FD37:
 .byte   N23 ,En4 ,v080
 .byte   W24
 .byte   N44 ,Ds4
 .byte   W48
 .byte   PEND 
@  #11 @052   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @053   ----------------------------------------
 .byte   W72
Label_0111FD42:
 .byte   W48
@  #11 @054   ----------------------------------------
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
Label_0111FD4A:
 .byte   N32 ,Bn3 ,v080
 .byte   W36
 .byte   N11 ,An3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   PEND 
@  #11 @055   ----------------------------------------
Label_0111FD56:
 .byte   N32 ,Gs3 ,v080
 .byte   W36
 .byte   N11 ,Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   PEND 
Label_0111FD62:
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   Ds3
 .byte   W12
@  #11 @056   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   PEND 
 .byte   Cs3
 .byte   W72
@  #11 @057   ----------------------------------------
Label_0111FD6D:
 .byte   W36
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #11 @058   ----------------------------------------
 .byte   PATT
  .word Label_0111FD6D
@  #11 @059   ----------------------------------------
Label_0111FD7C:
 .byte   W36
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #11 @060   ----------------------------------------
 .byte   PATT
  .word Label_0111FD6D
@  #11 @061   ----------------------------------------
Label_0111FD8B:
 .byte   N02 ,Cs4 ,v080
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
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W02
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W05
 .byte   PEND 
@  #11 @062   ----------------------------------------
 .byte   PATT
  .word Label_0111FD8B
@  #11 @063   ----------------------------------------
 .byte   PATT
  .word Label_0111FD8B
@  #11 @064   ----------------------------------------
 .byte   N01 ,Cs4 ,v080
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
 .byte   W48
 .byte   W02
 .byte   GOTO
  .word Label_0111FAE5
@  #11 @065   ----------------------------------------
 .byte   W12
 .byte   W72
 .byte   W72
@  #11 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @067   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @068   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @069   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @071   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @072   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @073   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @074   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @075   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @076   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @077   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @078   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @079   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @080   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @082   ----------------------------------------
 .byte   PATT
  .word Label_0111FB08
@  #11 @083   ----------------------------------------
 .byte   N11 ,En3 ,v080
 .byte   W72
 .byte   W24
@  #11 @084   ----------------------------------------
 .byte   Ds3
 .byte   W48
 .byte   W24
 .byte   En3
 .byte   W48
@  #11 @085   ----------------------------------------
 .byte   PATT
  .word Label_0111FB18
@  #11 @086   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
 .byte   W72
@  #11 @087   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @088   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @089   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @090   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @091   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @092   ----------------------------------------
 .byte   PATT
  .word Label_0111FB2F
@  #11 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111FB37
@  #11 @094   ----------------------------------------
 .byte   PATT
  .word Label_0111FB43
@  #11 @095   ----------------------------------------
 .byte   PATT
  .word Label_0111FB5C
@  #11 @096   ----------------------------------------
 .byte   PATT
  .word Label_0111FB6C
@  #11 @097   ----------------------------------------
 .byte   PATT
  .word Label_0111FB7C
@  #11 @098   ----------------------------------------
 .byte   PATT
  .word Label_0111FB91
@  #11 @099   ----------------------------------------
 .byte   PATT
  .word Label_0111FBAB
@  #11 @100   ----------------------------------------
 .byte   PATT
  .word Label_0111FBB8
@  #11 @101   ----------------------------------------
 .byte   PATT
  .word Label_0111FBCD
@  #11 @102   ----------------------------------------
 .byte   W72
 .byte   W23
 .byte   EOT
 .byte   Dn4 ,v086
 .byte   W48
@  #11 @103   ----------------------------------------
 .byte   W01
 .byte   W72
 .byte   W72
@  #11 @104   ----------------------------------------
 .byte   W72
@  #11 @105   ----------------------------------------
 .byte   PATT
  .word Label_0111FBDE
@  #11 @106   ----------------------------------------
 .byte   N11 ,Ds3 ,v096
 .byte   W72
 .byte   W72
@  #11 @107   ----------------------------------------
 .byte   W72
@  #11 @108   ----------------------------------------
 .byte   PATT
  .word Label_0111FBDE
@  #11 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111FBEF
@  #11 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111FBF8
@  #11 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111FC04
@  #11 @112   ----------------------------------------
 .byte   PATT
  .word Label_0111FC0C
@  #11 @113   ----------------------------------------
 .byte   PATT
  .word Label_0111FC18
@  #11 @114   ----------------------------------------
 .byte   PATT
  .word Label_0111FC20
@  #11 @115   ----------------------------------------
 .byte   PATT
  .word Label_0111FC28
@  #11 @116   ----------------------------------------
 .byte   N68 ,Fs3 ,v080
 .byte   W72
@  #11 @117   ----------------------------------------
 .byte   PATT
  .word Label_0111FC37
@  #11 @118   ----------------------------------------
 .byte   PATT
  .word Label_0111FC4B
@  #11 @119   ----------------------------------------
 .byte   PATT
  .word Label_0111FC7E
@  #11 @120   ----------------------------------------
 .byte   PATT
  .word Label_0111FCB1
@  #11 @121   ----------------------------------------
 .byte   PATT
  .word Label_0111FCE4
@  #11 @122   ----------------------------------------
 .byte   PATT
  .word Label_0111FD17
@  #11 @123   ----------------------------------------
 .byte   PATT
  .word Label_0111FD23
@  #11 @124   ----------------------------------------
 .byte   PATT
  .word Label_0111FD2C
@  #11 @125   ----------------------------------------
 .byte   PATT
  .word Label_0111FD37
@  #11 @126   ----------------------------------------
 .byte   W72
 .byte   W72
@  #11 @127   ----------------------------------------
 .byte   W72
@  #11 @128   ----------------------------------------
 .byte   PATT
  .word Label_0111FD42
@  #11 @129   ----------------------------------------
 .byte   PATT
  .word Label_0111FD4A
@  #11 @130   ----------------------------------------
 .byte   PATT
  .word Label_0111FD56
@  #11 @131   ----------------------------------------
 .byte   PATT
  .word Label_0111FD62
@  #11 @132   ----------------------------------------
 .byte   N44 ,Cs3 ,v080
 .byte   W72
@  #11 @133   ----------------------------------------
 .byte   PATT
  .word Label_0111FD6D
@  #11 @134   ----------------------------------------
 .byte   PATT
  .word Label_0111FD6D
@  #11 @135   ----------------------------------------
 .byte   PATT
  .word Label_0111FD7C
@  #11 @136   ----------------------------------------
 .byte   PATT
  .word Label_0111FD6D
@  #11 @137   ----------------------------------------
 .byte   PATT
  .word Label_0111FD8B
@  #11 @138   ----------------------------------------
 .byte   PATT
  .word Label_0111FD8B
@  #11 @139   ----------------------------------------
 .byte   PATT
  .word Label_0111FD8B
@  #11 @140   ----------------------------------------
 .byte   N01 ,Cs4 ,v080
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
 .byte   W54
 .byte   W01
 .byte   FINE

@**************** Track 12 (Midi-Chn.11) ****************@

.align 2, 0
song06_012:
@  #12 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 1
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_01119F8D:
 .byte   W12
 .byte   W72
@  #12 @001   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @002   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @003   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @004   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @005   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @006   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @007   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @008   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @009   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @010   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @011   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @012   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @013   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @014   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @015   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @017   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @018   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @019   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @020   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @021   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @022   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @024   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @025   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @026   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @027   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @028   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @029   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @030   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @031   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @032   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @033   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @034   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @035   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @036   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @037   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @038   ----------------------------------------
 .byte   W72
Label_01119FDA:
 .byte   W48
@  #12 @039   ----------------------------------------
 .byte   N11 ,Fs3 ,v096
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
Label_01119FE2:
 .byte   N32 ,An3 ,v096
 .byte   W36
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #12 @040   ----------------------------------------
 .byte   N68 ,Fs3
 .byte   W72
 .byte   W72
@  #12 @041   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @042   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @043   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @044   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @045   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @046   ----------------------------------------
 .byte   W72
Label_01119FFD:
 .byte   W48
@  #12 @047   ----------------------------------------
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
Label_0111A005:
 .byte   N32 ,Bn3 ,v080
 .byte   W36
 .byte   N11 ,An3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   PEND 
@  #12 @048   ----------------------------------------
Label_0111A011:
 .byte   N32 ,Gs3 ,v080
 .byte   W36
 .byte   N11 ,Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   PEND 
Label_0111A01D:
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   Ds3
 .byte   W12
@  #12 @049   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   PEND 
 .byte   Cs3
 .byte   W72
@  #12 @050   ----------------------------------------
Label_0111A028:
 .byte   W36
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #12 @051   ----------------------------------------
 .byte   PATT
  .word Label_0111A028
@  #12 @052   ----------------------------------------
Label_0111A037:
 .byte   W36
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #12 @053   ----------------------------------------
 .byte   PATT
  .word Label_0111A028
@  #12 @054   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @055   ----------------------------------------
 .byte   W72
 .byte   W60
@  #12 @056   ----------------------------------------
 .byte   GOTO
  .word Label_01119F8D
@  #12 @057   ----------------------------------------
 .byte   W12
 .byte   W72
 .byte   W72
@  #12 @058   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @059   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @060   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @061   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @062   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @063   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @064   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @065   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @067   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @068   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @069   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @071   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @072   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @073   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @074   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @075   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @076   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @077   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @078   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @079   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @080   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @082   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @083   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @084   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @085   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @086   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @087   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @088   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @089   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @090   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @091   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @092   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @093   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @094   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @095   ----------------------------------------
 .byte   PATT
  .word Label_01119FDA
@  #12 @096   ----------------------------------------
 .byte   PATT
  .word Label_01119FE2
@  #12 @097   ----------------------------------------
 .byte   N68 ,Fs3 ,v096
 .byte   W72
 .byte   W72
@  #12 @098   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @099   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @100   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @101   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @102   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @103   ----------------------------------------
 .byte   W72
@  #12 @104   ----------------------------------------
 .byte   PATT
  .word Label_01119FFD
@  #12 @105   ----------------------------------------
 .byte   PATT
  .word Label_0111A005
@  #12 @106   ----------------------------------------
 .byte   PATT
  .word Label_0111A011
@  #12 @107   ----------------------------------------
 .byte   PATT
  .word Label_0111A01D
@  #12 @108   ----------------------------------------
 .byte   N44 ,Cs3 ,v080
 .byte   W72
@  #12 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111A028
@  #12 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111A028
@  #12 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111A037
@  #12 @112   ----------------------------------------
 .byte   PATT
  .word Label_0111A028
@  #12 @113   ----------------------------------------
 .byte   W72
 .byte   W72
@  #12 @114   ----------------------------------------
 .byte   W72
 .byte   W64
@  #12 @115   ----------------------------------------
 .byte   W01
 .byte   FINE

@**************** Track 13 (Midi-Chn.12) ****************@

.align 2, 0
song06_013:
@  #13 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 68
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_01117A89:
 .byte   W12
Label_01117A8A:
 .byte   W24
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W48
 .byte   PEND 
@  #13 @001   ----------------------------------------
Label_01117A92:
 .byte   W24
 .byte   N11 ,Cs3 ,v080
 .byte   N11 ,En3
 .byte   W48
 .byte   PEND 
Label_01117A9A:
 .byte   W24
@  #13 @002   ----------------------------------------
 .byte   N11 ,Gs2 ,v080
 .byte   N11 ,Bn2
 .byte   W24
 .byte   N11
 .byte   N11 ,Ds3
 .byte   W24
 .byte   PEND 
 .byte   Bn2
 .byte   N11 ,Ds3
 .byte   W72
@  #13 @003   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @004   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @005   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @006   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
 .byte   W72
@  #13 @007   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @008   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @009   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @010   ----------------------------------------
 .byte   W72
@  #13 @011   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @012   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @013   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @014   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
@  #13 @015   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @016   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @017   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @018   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
Label_01117AF1:
 .byte   N32 ,En4 ,v080
 .byte   W36
@  #13 @019   ----------------------------------------
 .byte   N11 ,Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
 .byte   N68 ,An3
 .byte   W72
@  #13 @020   ----------------------------------------
Label_01117B00:
 .byte   N32 ,En4 ,v080
 .byte   W36
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   PEND 
 .byte   N44 ,Gn3
 .byte   W72
@  #13 @021   ----------------------------------------
Label_01117B0F:
 .byte   N32 ,Ds4 ,v080
 .byte   W36
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
Label_01117B1B:
 .byte   N44 ,Cn4 ,v080
 .byte   W48
@  #13 @022   ----------------------------------------
 .byte   TIE ,As3
 .byte   W24
 .byte   PEND 
 .byte   W72
@  #13 @023   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   W60
 .byte   W01
 .byte   W72
@  #13 @024   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @025   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @026   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @027   ----------------------------------------
 .byte   W72
 .byte   N68
 .byte   W72
@  #13 @028   ----------------------------------------
 .byte   N68
 .byte   W72
 .byte   Cn4
 .byte   W72
@  #13 @029   ----------------------------------------
 .byte   Fn3
 .byte   W72
Label_01117B38:
 .byte   N32 ,En4 ,v080
 .byte   W36
@  #13 @030   ----------------------------------------
 .byte   N11 ,Dn4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
 .byte   N68 ,Cs4
 .byte   W72
@  #13 @031   ----------------------------------------
 .byte   N80 ,Bn3
 .byte   W72
 .byte   W72
@  #13 @032   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @033   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @034   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @035   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @036   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @037   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @038   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @039   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @040   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @041   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @042   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @043   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
@  #13 @044   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @045   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @046   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @047   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
 .byte   W72
@  #13 @048   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @049   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @050   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @051   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @052   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @053   ----------------------------------------
 .byte   W72
 .byte   N68 ,Cn3
 .byte   W72
@  #13 @054   ----------------------------------------
 .byte   Ds3
 .byte   W72
 .byte   En3
 .byte   W72
@  #13 @055   ----------------------------------------
Label_01117B98:
 .byte   N23 ,An3 ,v080
 .byte   W24
 .byte   N44 ,Fs3
 .byte   W48
 .byte   PEND 
 .byte   W72
@  #13 @056   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @057   ----------------------------------------
 .byte   W72
 .byte   W72
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
 .byte   W60
 .byte   GOTO
  .word Label_01117A89
@  #13 @064   ----------------------------------------
 .byte   W12
@  #13 @065   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @066   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @067   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @068   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
@  #13 @069   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @070   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @071   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @072   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
 .byte   W72
@  #13 @073   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @074   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @075   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @076   ----------------------------------------
 .byte   W72
@  #13 @077   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @078   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @079   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @080   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
@  #13 @081   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @082   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @083   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @084   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
@  #13 @085   ----------------------------------------
 .byte   PATT
  .word Label_01117AF1
@  #13 @086   ----------------------------------------
 .byte   N68 ,An3 ,v080
 .byte   W72
@  #13 @087   ----------------------------------------
 .byte   PATT
  .word Label_01117B00
@  #13 @088   ----------------------------------------
 .byte   N44 ,Gn3 ,v080
 .byte   W72
@  #13 @089   ----------------------------------------
 .byte   PATT
  .word Label_01117B0F
@  #13 @090   ----------------------------------------
 .byte   PATT
  .word Label_01117B1B
@  #13 @091   ----------------------------------------
 .byte   W72
 .byte   W11
 .byte   EOT
 .byte   As3
 .byte   W60
@  #13 @092   ----------------------------------------
 .byte   W01
 .byte   W72
 .byte   W72
@  #13 @093   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @094   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @095   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @096   ----------------------------------------
 .byte   N68 ,As3 ,v080
 .byte   W72
 .byte   N68
 .byte   W72
@  #13 @097   ----------------------------------------
 .byte   Cn4
 .byte   W72
 .byte   Fn3
 .byte   W72
@  #13 @098   ----------------------------------------
 .byte   PATT
  .word Label_01117B38
@  #13 @099   ----------------------------------------
 .byte   N68 ,Cs4 ,v080
 .byte   W72
 .byte   N80 ,Bn3
 .byte   W72
@  #13 @100   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @101   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @102   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @103   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @104   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @105   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @106   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @107   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @108   ----------------------------------------
 .byte   W72
@  #13 @109   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @110   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @111   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @112   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
@  #13 @113   ----------------------------------------
 .byte   PATT
  .word Label_01117A8A
@  #13 @114   ----------------------------------------
 .byte   PATT
  .word Label_01117A92
@  #13 @115   ----------------------------------------
 .byte   PATT
  .word Label_01117A9A
@  #13 @116   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Ds3
 .byte   W72
 .byte   W72
@  #13 @117   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @118   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @119   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @120   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @121   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @122   ----------------------------------------
 .byte   W72
 .byte   N68 ,Cn3
 .byte   W72
@  #13 @123   ----------------------------------------
 .byte   Ds3
 .byte   W72
 .byte   En3
 .byte   W72
@  #13 @124   ----------------------------------------
 .byte   PATT
  .word Label_01117B98
@  #13 @125   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @126   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @127   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @128   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @129   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @130   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @131   ----------------------------------------
 .byte   W72
 .byte   W72
@  #13 @132   ----------------------------------------
 .byte   W72
 .byte   W64
@  #13 @133   ----------------------------------------
 .byte   W01
 .byte   FINE

@**************** Track 14 (Midi-Chn.13) ****************@

.align 2, 0
song06_014:
@  #14 @000   ----------------------------------------
 .byte   KEYSH , song06_key+0
 .byte   VOICE , 45
 .byte   VOL , 42*song06_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
Label_0111ECB9:
 .byte   W12
 .byte   W72
@  #14 @001   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @002   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @003   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @004   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @005   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @006   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @007   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @008   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @009   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @010   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @011   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @012   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @013   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @014   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @015   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @016   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @017   ----------------------------------------
 .byte   W72
Label_0111ECDC:
 .byte   W24
@  #14 @018   ----------------------------------------
 .byte   N11 ,As2 ,v080
 .byte   W24
 .byte   Cs3
 .byte   W24
 .byte   PEND 
 .byte   Fs2
 .byte   W72
@  #14 @019   ----------------------------------------
 .byte   W24
 .byte   Ds3
 .byte   W48
 .byte   W24
@  #14 @020   ----------------------------------------
 .byte   En3
 .byte   W48
Label_0111ECEC:
 .byte   W12
 .byte   N11 ,Ds2 ,v080
 .byte   W12
 .byte   Bn2
 .byte   W24
@  #14 @021   ----------------------------------------
 .byte   N11
 .byte   W24
 .byte   PEND 
 .byte   N11
 .byte   W72
@  #14 @022   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @023   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @024   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @025   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @026   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @027   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @028   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @029   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @030   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @031   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @032   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @033   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @034   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @035   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @036   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @037   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @038   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @039   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @040   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @041   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @042   ----------------------------------------
 .byte   W24
 .byte   En3
 .byte   N11 ,Gn3
 .byte   W48
Label_0111ED25:
 .byte   W24
@  #14 @043   ----------------------------------------
 .byte   N11 ,En3 ,v080
 .byte   N11 ,Gn3
 .byte   W24
 .byte   Dn3
 .byte   N11 ,Gn3
 .byte   W24
 .byte   PEND 
Label_0111ED31:
 .byte   W24
 .byte   N11 ,Gn3 ,v080
 .byte   N11 ,Bn3
 .byte   W48
 .byte   PEND 
@  #14 @044   ----------------------------------------
Label_0111ED39:
 .byte   W24
 .byte   N11 ,Cs3 ,v080
 .byte   N11 ,An3
 .byte   W24
 .byte   Dn3
 .byte   N11 ,An3
 .byte   W24
 .byte   PEND 
 .byte   W72
@  #14 @045   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @046   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @047   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @048   ----------------------------------------
Label_0111ED4C:
 .byte   W48
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
Label_0111ED54:
 .byte   N32 ,Bn3 ,v080
 .byte   W36
@  #14 @049   ----------------------------------------
 .byte   N11 ,An3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   PEND 
Label_0111ED60:
 .byte   N32 ,Gs3 ,v080
 .byte   W36
 .byte   N11 ,Fs3
 .byte   W12
 .byte   En3
 .byte   W12
@  #14 @050   ----------------------------------------
 .byte   Ds3
 .byte   W12
 .byte   PEND 
Label_0111ED6C:
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N44
 .byte   W48
 .byte   PEND 
 .byte   Cs3
 .byte   W72
@  #14 @051   ----------------------------------------
Label_0111ED77:
 .byte   W36
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #14 @052   ----------------------------------------
 .byte   PATT
  .word Label_0111ED77
@  #14 @053   ----------------------------------------
Label_0111ED86:
 .byte   W36
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #14 @054   ----------------------------------------
 .byte   PATT
  .word Label_0111ED77
@  #14 @055   ----------------------------------------
 .byte   TIE ,Fs3 ,v080
 .byte   W72
 .byte   W72
@  #14 @056   ----------------------------------------
 .byte   W72
 .byte   W05
 .byte   EOT
 .byte   W54
@  #14 @057   ----------------------------------------
 .byte   W01
 .byte   GOTO
  .word Label_0111ECB9
@  #14 @058   ----------------------------------------
 .byte   W12
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
 .byte   W72
 .byte   W72
@  #14 @065   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @066   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @067   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @068   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @069   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @070   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @071   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @072   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @073   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @074   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @075   ----------------------------------------
 .byte   PATT
  .word Label_0111ECDC
@  #14 @076   ----------------------------------------
 .byte   N11 ,Fs2 ,v080
 .byte   W72
 .byte   W24
@  #14 @077   ----------------------------------------
 .byte   Ds3
 .byte   W48
 .byte   W24
 .byte   En3
 .byte   W48
@  #14 @078   ----------------------------------------
 .byte   PATT
  .word Label_0111ECEC
@  #14 @079   ----------------------------------------
 .byte   N11 ,Bn2 ,v080
 .byte   W72
 .byte   W72
@  #14 @080   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @081   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @082   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @083   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @084   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @085   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @086   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @087   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @088   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @089   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @090   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @091   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @092   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @093   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @094   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @095   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @096   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @097   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @098   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @099   ----------------------------------------
 .byte   W72
 .byte   W24
@  #14 @100   ----------------------------------------
 .byte   En3
 .byte   N11 ,Gn3
 .byte   W48
@  #14 @101   ----------------------------------------
 .byte   PATT
  .word Label_0111ED25
@  #14 @102   ----------------------------------------
 .byte   PATT
  .word Label_0111ED31
@  #14 @103   ----------------------------------------
 .byte   PATT
  .word Label_0111ED39
@  #14 @104   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @105   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @106   ----------------------------------------
 .byte   W72
 .byte   W72
@  #14 @107   ----------------------------------------
 .byte   W72
@  #14 @108   ----------------------------------------
 .byte   PATT
  .word Label_0111ED4C
@  #14 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111ED54
@  #14 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111ED60
@  #14 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111ED6C
@  #14 @112   ----------------------------------------
 .byte   N44 ,Cs3 ,v080
 .byte   W72
@  #14 @113   ----------------------------------------
 .byte   PATT
  .word Label_0111ED77
@  #14 @114   ----------------------------------------
 .byte   PATT
  .word Label_0111ED77
@  #14 @115   ----------------------------------------
 .byte   PATT
  .word Label_0111ED86
@  #14 @116   ----------------------------------------
 .byte   PATT
  .word Label_0111ED77
@  #14 @117   ----------------------------------------
 .byte   TIE ,Fs3 ,v080
 .byte   W72
 .byte   W72
@  #14 @118   ----------------------------------------
 .byte   W72
 .byte   W05
 .byte   EOT
 .byte   W60
 .byte   FINE

@******************************************************@
	.align	2

Song_GarregMachMonastery_SurfingKyogre:
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
