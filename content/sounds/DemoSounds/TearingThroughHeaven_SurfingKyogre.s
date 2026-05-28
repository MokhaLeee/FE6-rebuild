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
	.global	Song_TearingThroughHeaven_SurfingKyogre
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

.align 2, 0
song07_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   TEMPO , 174*song07_tbs/2
 .byte   VOICE , 49
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W96
@  #01 @001   ----------------------------------------
 .byte   W96
@  #01 @002   ----------------------------------------
 .byte   W96
@  #01 @003   ----------------------------------------
 .byte   W96
@  #01 @004   ----------------------------------------
Label_0110FE6E:
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   W72
 .byte   Gs0
 .byte   N23 ,Gs1
 .byte   W24
 .byte   PEND 
@  #01 @005   ----------------------------------------
Label_0110FE79:
 .byte   W48
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   W36
 .byte   N32 ,Gs0
 .byte   N32 ,Gs1
 .byte   W12
 .byte   PEND 
@  #01 @006   ----------------------------------------
Label_0110FE86:
 .byte   W72
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   W24
 .byte   PEND 
@  #01 @007   ----------------------------------------
Label_0110FE8E:
 .byte   W48
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   W48
 .byte   PEND 
@  #01 @008   ----------------------------------------
Label_0110FE96:
 .byte   W96
@  #01 @009   ----------------------------------------
 .byte   W96
@  #01 @010   ----------------------------------------
 .byte   W96
@  #01 @011   ----------------------------------------
 .byte   W96
@  #01 @012   ----------------------------------------
 .byte   W96
@  #01 @013   ----------------------------------------
Label_0110FE9B:
 .byte   N11 ,Gs0 ,v064
 .byte   W36
 .byte   Bn0
 .byte   W36
 .byte   Gs0
 .byte   W12
 .byte   N23 ,Fs0
 .byte   W12
 .byte   PEND 
@  #01 @014   ----------------------------------------
Label_0110FEA7:
 .byte   W36
 .byte   N11 ,Bn0 ,v064
 .byte   W36
 .byte   Fs0
 .byte   W24
 .byte   PEND 
@  #01 @015   ----------------------------------------
Label_0110FEAF:
 .byte   N11 ,En0 ,v064
 .byte   W36
 .byte   Cs1
 .byte   W36
 .byte   En0
 .byte   W12
 .byte   N23 ,Cs0
 .byte   W12
 .byte   PEND 
@  #01 @016   ----------------------------------------
 .byte   W96
@  #01 @017   ----------------------------------------
Label_0110FEBC:
 .byte   N11 ,An0 ,v064
 .byte   W36
 .byte   Cs1
 .byte   W36
 .byte   An0
 .byte   W12
 .byte   N23 ,Gs0
 .byte   W12
 .byte   PEND 
@  #01 @018   ----------------------------------------
Label_0110FEC8:
 .byte   W36
 .byte   N11 ,Ds1 ,v064
 .byte   W24
 .byte   Gs0
 .byte   W36
 .byte   PEND 
@  #01 @019   ----------------------------------------
Label_0110FED0:
 .byte   N11 ,Fn0 ,v064
 .byte   W36
 .byte   Cs1
 .byte   W36
 .byte   Fn0
 .byte   W12
 .byte   N23 ,Ds0
 .byte   W12
 .byte   PEND 
@  #01 @020   ----------------------------------------
Label_0110FEDC:
 .byte   W36
 .byte   N11 ,As0 ,v064
 .byte   W24
 .byte   Ds0
 .byte   W36
 .byte   PEND 
@  #01 @021   ----------------------------------------
 .byte   PATT
  .word Label_0110FE9B
@  #01 @022   ----------------------------------------
 .byte   PATT
  .word Label_0110FEA7
@  #01 @023   ----------------------------------------
 .byte   PATT
  .word Label_0110FEAF
@  #01 @024   ----------------------------------------
 .byte   W96
@  #01 @025   ----------------------------------------
 .byte   PATT
  .word Label_0110FEBC
@  #01 @026   ----------------------------------------
 .byte   PATT
  .word Label_0110FEC8
@  #01 @027   ----------------------------------------
 .byte   PATT
  .word Label_0110FED0
@  #01 @028   ----------------------------------------
 .byte   PATT
  .word Label_0110FEDC
@  #01 @029   ----------------------------------------
 .byte   W96
@  #01 @030   ----------------------------------------
 .byte   W96
@  #01 @031   ----------------------------------------
 .byte   W96
@  #01 @032   ----------------------------------------
 .byte   W96
@  #01 @033   ----------------------------------------
 .byte   W96
@  #01 @034   ----------------------------------------
 .byte   W96
@  #01 @035   ----------------------------------------
 .byte   W96
@  #01 @036   ----------------------------------------
 .byte   W96
@  #01 @037   ----------------------------------------
 .byte   PATT
  .word Label_0110FE6E
@  #01 @038   ----------------------------------------
 .byte   PATT
  .word Label_0110FE79
@  #01 @039   ----------------------------------------
 .byte   PATT
  .word Label_0110FE86
@  #01 @040   ----------------------------------------
 .byte   PATT
  .word Label_0110FE8E
@  #01 @041   ----------------------------------------
Label_0110FF24:
 .byte   N11 ,Gs0 ,v064
 .byte   N11 ,Fs3
 .byte   N11 ,Ds4
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Bn0
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Gs0
 .byte   W12
 .byte   N23 ,Fs0
 .byte   N11 ,Fs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   PEND 
@  #01 @042   ----------------------------------------
Label_0110FF40:
 .byte   W24
 .byte   N11 ,Fs3 ,v064
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Bn0
 .byte   W24
 .byte   Fs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Fs0
 .byte   W24
 .byte   PEND 
@  #01 @043   ----------------------------------------
Label_0110FF50:
 .byte   N11 ,En0 ,v064
 .byte   N11 ,Gs3
 .byte   N11 ,Ds4
 .byte   W24
 .byte   Gs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Cs1
 .byte   W24
 .byte   Gs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   En0
 .byte   N11 ,Gs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N23 ,Cs0
 .byte   N11 ,Fn4
 .byte   N11 ,Cs5
 .byte   W12
 .byte   PEND 
@  #01 @044   ----------------------------------------
Label_0110FF70:
 .byte   N11 ,Ds4 ,v064
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N11
 .byte   N11 ,Cs5
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #01 @045   ----------------------------------------
Label_0110FF85:
 .byte   N11 ,An0 ,v064
 .byte   N11 ,An3
 .byte   N11 ,En4
 .byte   W24
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   Cs1
 .byte   W24
 .byte   An3
 .byte   N11 ,En4
 .byte   W12
 .byte   An0
 .byte   W12
 .byte   N23 ,Gs0
 .byte   N11 ,Gs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   PEND 
@  #01 @046   ----------------------------------------
Label_0110FFA1:
 .byte   W24
 .byte   N11 ,Gs3 ,v064
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Ds1
 .byte   W24
 .byte   Gs0
 .byte   N11 ,Gs3
 .byte   N11 ,Ds4
 .byte   W36
 .byte   PEND 
@  #01 @047   ----------------------------------------
Label_0110FFB1:
 .byte   N11 ,Fn0 ,v064
 .byte   N11 ,Fn3
 .byte   N11 ,Cs4
 .byte   W24
 .byte   Fn3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Cs1
 .byte   W24
 .byte   Fn3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Fn0
 .byte   W12
 .byte   N23 ,Ds0
 .byte   N11 ,Gn3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   PEND 
@  #01 @048   ----------------------------------------
Label_0110FFCD:
 .byte   W12
 .byte   N11 ,Gn3 ,v064
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   As0
 .byte   N11 ,Gn3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Gn4
 .byte   N11 ,Cs5
 .byte   W12
 .byte   Ds0
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   PEND 
@  #01 @049   ----------------------------------------
 .byte   PATT
  .word Label_0110FF24
@  #01 @050   ----------------------------------------
 .byte   PATT
  .word Label_0110FF40
@  #01 @051   ----------------------------------------
Label_0110FFF3:
 .byte   N11 ,En0 ,v064
 .byte   N11 ,Gs3
 .byte   N11 ,Ds4
 .byte   W24
 .byte   Gs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Cs1
 .byte   W24
 .byte   Gs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   En0
 .byte   N11 ,Gs3
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N23 ,Cs0
 .byte   N11 ,Cs5
 .byte   W12
 .byte   PEND 
@  #01 @052   ----------------------------------------
Label_01110011:
 .byte   W12
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Fn3
 .byte   N11 ,Cs4
 .byte   W36
 .byte   PEND 
@  #01 @053   ----------------------------------------
 .byte   PATT
  .word Label_0110FF85
@  #01 @054   ----------------------------------------
 .byte   PATT
  .word Label_0110FFA1
@  #01 @055   ----------------------------------------
 .byte   PATT
  .word Label_0110FFB1
@  #01 @056   ----------------------------------------
Label_01110030:
 .byte   W12
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   As0
 .byte   N11 ,Cs4
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Ds0
 .byte   N11 ,Gs4
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #01 @057   ----------------------------------------
 .byte   W96
@  #01 @058   ----------------------------------------
 .byte   W96
@  #01 @059   ----------------------------------------
 .byte   W96
@  #01 @060   ----------------------------------------
 .byte   W96
@  #01 @061   ----------------------------------------
 .byte   W96
@  #01 @062   ----------------------------------------
 .byte   W96
@  #01 @063   ----------------------------------------
 .byte   W96
@  #01 @064   ----------------------------------------
 .byte   W96
@  #01 @065   ----------------------------------------
Label_0111004E:
 .byte   N05 ,Gs4 ,v036
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W03
 .byte   W03
 .byte   Gs4
 .byte   W05
 .byte   W01
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W01
 .byte   W05
 .byte   Ds4 ,v040
 .byte   W03
 .byte   W03
 .byte   Gs4
 .byte   W05
 .byte   W01
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W01
 .byte   W05
 .byte   Ds4
 .byte   W03
 .byte   W03
 .byte   Gs4 ,v044
 .byte   W05
 .byte   W01
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W01
 .byte   W05
 .byte   Ds4
 .byte   W02
 .byte   W04
 .byte   PEND 
@  #01 @066   ----------------------------------------
Label_0111007D:
 .byte   N05 ,Gs4 ,v044
 .byte   W04
 .byte   W02
 .byte   Fs4 ,v048
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W02
 .byte   W04
 .byte   Gs4
 .byte   W04
 .byte   W02
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4 ,v052
 .byte   W02
 .byte   W04
 .byte   Gs4
 .byte   W04
 .byte   W02
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W02
 .byte   W04
 .byte   Gs4 ,v056
 .byte   W03
 .byte   W03
 .byte   Fs4
 .byte   W05
 .byte   W01
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W01
 .byte   W05
 .byte   PEND 
@  #01 @067   ----------------------------------------
Label_011100AC:
 .byte   N05 ,Gs4 ,v056
 .byte   W03
 .byte   W03
 .byte   Fs4 ,v060
 .byte   W05
 .byte   W01
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W01
 .byte   W05
 .byte   Gs4
 .byte   W03
 .byte   W03
 .byte   Fs4
 .byte   W05
 .byte   W01
 .byte   Cs4 ,v064
 .byte   W06
 .byte   Ds4
 .byte   W01
 .byte   W05
 .byte   Gs4
 .byte   W03
 .byte   W03
 .byte   Fs4
 .byte   W04
 .byte   W02
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4 ,v068
 .byte   W02
 .byte   W04
 .byte   Fs4
 .byte   W04
 .byte   W02
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
@  #01 @068   ----------------------------------------
Label_011100DC:
 .byte   N05 ,Gs4 ,v068
 .byte   W02
 .byte   W04
 .byte   Fs4 ,v072
 .byte   W04
 .byte   W02
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W02
 .byte   W04
 .byte   Fs4
 .byte   W04
 .byte   W02
 .byte   Cs4 ,v076
 .byte   W05
 .byte   W01
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W01
 .byte   W05
 .byte   Fs4
 .byte   W03
 .byte   W03
 .byte   Cs4
 .byte   W05
 .byte   W01
 .byte   Ds4
 .byte   W06
 .byte   Gs4 ,v080
 .byte   W01
 .byte   W05
 .byte   Fs4
 .byte   W03
 .byte   W03
 .byte   Cs4
 .byte   W05
 .byte   W01
 .byte   Ds4
 .byte   W06
 .byte   PEND 
@  #01 @069   ----------------------------------------
Label_0111010D:
 .byte   W24
 .byte   N32 ,An1 ,v080
 .byte   W24
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Gs1 ,v080
 .byte   N11 ,Gs4 ,v064
 .byte   W12
 .byte   Fs1 ,v080
 .byte   N11 ,Cs5 ,v064
 .byte   W12
 .byte   TIE ,Gs1 ,v080
 .byte   N11 ,Gs4 ,v064
 .byte   W12
 .byte   PEND 
@  #01 @070   ----------------------------------------
Label_0111012A:
 .byte   N11 ,Ds4 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Fs4
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Gs1
 .byte   W01
@  #01 @071   ----------------------------------------
Label_01110140:
 .byte   TIE ,Cs1 ,v080
 .byte   N11 ,Fn4 ,v064
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #01 @072   ----------------------------------------
Label_01110156:
 .byte   N11 ,Cs5 ,v064
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs5
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Cs1
 .byte   W01
@  #01 @073   ----------------------------------------
 .byte   PATT
  .word Label_0111010D
@  #01 @074   ----------------------------------------
 .byte   PATT
  .word Label_0111012A
@  #01 @075   ----------------------------------------
 .byte   EOT
 .byte   Gs1
 .byte   W01
Label_01110179:
 .byte   TIE ,As1 ,v080
 .byte   N11 ,Fn4 ,v064
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #01 @076   ----------------------------------------
 .byte   PATT
  .word Label_01110156
@  #01 @077   ----------------------------------------
 .byte   EOT
 .byte   As1
 .byte   W01
Label_01110197:
 .byte   W24
 .byte   N32 ,Dn1 ,v080
 .byte   N11 ,Cs5 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs1 ,v080
 .byte   N11 ,Cs5 ,v064
 .byte   W12
 .byte   Bn0 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   TIE ,Cs1 ,v080
 .byte   N11 ,Gs4 ,v064
 .byte   W12
 .byte   PEND 
@  #01 @078   ----------------------------------------
Label_011101B7:
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Cs1
 .byte   W01
@  #01 @079   ----------------------------------------
Label_011101CD:
 .byte   N80 ,Ds1 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #01 @080   ----------------------------------------
Label_011101E3:
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   PEND 
@  #01 @081   ----------------------------------------
Label_011101F6:
 .byte   N11 ,Dn4 ,v064
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   PEND 
@  #01 @082   ----------------------------------------
Label_01110209:
 .byte   N11 ,Cn4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   PEND 
@  #01 @083   ----------------------------------------
Label_0111021C:
 .byte   N11 ,Cs5 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #01 @084   ----------------------------------------
Label_0111022F:
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
@  #01 @085   ----------------------------------------
Label_01110242:
 .byte   N11 ,Bn0 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #01 @086   ----------------------------------------
Label_0111024D:
 .byte   N11 ,Cs1 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #01 @087   ----------------------------------------
Label_01110258:
 .byte   N11 ,Dn1 ,v080
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   An3 ,v064
 .byte   W12
 .byte   Dn1 ,v080
 .byte   N11 ,Dn4 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn1 ,v080
 .byte   N11 ,Dn4 ,v064
 .byte   W12
 .byte   N56 ,Gs3
 .byte   N56 ,Bn3
 .byte   N56 ,En4
 .byte   W12
 .byte   PEND 
@  #01 @088   ----------------------------------------
Label_01110277:
 .byte   N11 ,En0 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #01 @089   ----------------------------------------
Label_01110282:
 .byte   N11 ,Gn0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Gn0 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Gn0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Gn0 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
@  #01 @090   ----------------------------------------
Label_011102A4:
 .byte   N11 ,Fs0 ,v080
 .byte   N11 ,An4 ,v064
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Fs0 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Fs0 ,v080
 .byte   N11 ,An4 ,v064
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Fs0 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
@  #01 @091   ----------------------------------------
Label_011102C6:
 .byte   N11 ,En0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   En0 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   En0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   En0 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
@  #01 @092   ----------------------------------------
Label_011102E8:
 .byte   N11 ,Fs0 ,v080
 .byte   N05 ,As4 ,v064
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W12
 .byte   N11 ,Fs0 ,v080
 .byte   N05 ,Fs4 ,v064
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As4
 .byte   W12
 .byte   N11 ,Fs0 ,v080
 .byte   N05 ,As4 ,v064
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W12
 .byte   N11 ,Fs0 ,v080
 .byte   N05 ,Fs4 ,v064
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As4
 .byte   W12
 .byte   PEND 
@  #01 @093   ----------------------------------------
 .byte   PATT
  .word Label_01110242
@  #01 @094   ----------------------------------------
 .byte   PATT
  .word Label_0111024D
@  #01 @095   ----------------------------------------
Label_0111031F:
 .byte   N11 ,Dn1 ,v080
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Dn1
 .byte   N11 ,Dn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn1
 .byte   N11 ,Dn4
 .byte   W12
 .byte   N56 ,Gs3
 .byte   N56 ,Bn3
 .byte   N56 ,En4
 .byte   W12
 .byte   PEND 
@  #01 @096   ----------------------------------------
 .byte   PATT
  .word Label_01110277
@  #01 @097   ----------------------------------------
Label_0111033E:
 .byte   N11 ,Gn0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Gn0 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Gn0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Gn0 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #01 @098   ----------------------------------------
Label_01110360:
 .byte   N11 ,Fs0 ,v080
 .byte   N11 ,An4 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Fs0 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Fs0 ,v080
 .byte   N11 ,An4 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Fs0 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #01 @099   ----------------------------------------
Label_01110382:
 .byte   N11 ,En0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   En0 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   En0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   En0 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #01 @100   ----------------------------------------
 .byte   PATT
  .word Label_01110382
@  #01 @101   ----------------------------------------
Label_011103A9:
 .byte   N11 ,An0 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   An0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   An0 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   An0 ,v080
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
@  #01 @102   ----------------------------------------
Label_011103CB:
 .byte   N11 ,An0 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   An0 ,v080
 .byte   N11 ,Cs5 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   An0 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   An0 ,v080
 .byte   N11 ,Cs5 ,v064
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
@  #01 @103   ----------------------------------------
 .byte   W96
@  #01 @104   ----------------------------------------
 .byte   W96
@  #01 @105   ----------------------------------------
 .byte   W96
@  #01 @106   ----------------------------------------
 .byte   W96
@  #01 @107   ----------------------------------------
 .byte   W96
@  #01 @108   ----------------------------------------
 .byte   W96
@  #01 @109   ----------------------------------------
 .byte   W96
@  #01 @110   ----------------------------------------
 .byte   W96
@  #01 @111   ----------------------------------------
 .byte   W96
@  #01 @112   ----------------------------------------
 .byte   W96
@  #01 @113   ----------------------------------------
 .byte   W96
@  #01 @114   ----------------------------------------
 .byte   W96
@  #01 @115   ----------------------------------------
 .byte   W96
@  #01 @116   ----------------------------------------
 .byte   W96
@  #01 @117   ----------------------------------------
 .byte   W96
@  #01 @118   ----------------------------------------
 .byte   W96
@  #01 @119   ----------------------------------------
 .byte   W96
@  #01 @120   ----------------------------------------
 .byte   W96
@  #01 @121   ----------------------------------------
 .byte   TEMPO , 174*song07_tbs/2
 .byte   W96
@  #01 @122   ----------------------------------------
 .byte   W96
@  #01 @123   ----------------------------------------
 .byte   W96
@  #01 @124   ----------------------------------------
 .byte   W96
@  #01 @125   ----------------------------------------
 .byte   PATT
  .word Label_0110FE6E
@  #01 @126   ----------------------------------------
 .byte   PATT
  .word Label_0110FE79
@  #01 @127   ----------------------------------------
 .byte   PATT
  .word Label_0110FE86
@  #01 @128   ----------------------------------------
 .byte   PATT
  .word Label_0110FE8E
@  #01 @129   ----------------------------------------
 .byte   GOTO
  .word Label_0110FE96
@  #01 @130   ----------------------------------------
 .byte   W96
@  #01 @131   ----------------------------------------
 .byte   W96
@  #01 @132   ----------------------------------------
 .byte   W96
@  #01 @133   ----------------------------------------
 .byte   W96
@  #01 @134   ----------------------------------------
 .byte   W96
@  #01 @135   ----------------------------------------
 .byte   PATT
  .word Label_0110FE9B
@  #01 @136   ----------------------------------------
 .byte   PATT
  .word Label_0110FEA7
@  #01 @137   ----------------------------------------
 .byte   PATT
  .word Label_0110FEAF
@  #01 @138   ----------------------------------------
 .byte   W96
@  #01 @139   ----------------------------------------
 .byte   PATT
  .word Label_0110FEBC
@  #01 @140   ----------------------------------------
 .byte   PATT
  .word Label_0110FEC8
@  #01 @141   ----------------------------------------
 .byte   PATT
  .word Label_0110FED0
@  #01 @142   ----------------------------------------
 .byte   PATT
  .word Label_0110FEDC
@  #01 @143   ----------------------------------------
 .byte   PATT
  .word Label_0110FE9B
@  #01 @144   ----------------------------------------
 .byte   PATT
  .word Label_0110FEA7
@  #01 @145   ----------------------------------------
 .byte   PATT
  .word Label_0110FEAF
@  #01 @146   ----------------------------------------
 .byte   W96
@  #01 @147   ----------------------------------------
 .byte   PATT
  .word Label_0110FEBC
@  #01 @148   ----------------------------------------
 .byte   PATT
  .word Label_0110FEC8
@  #01 @149   ----------------------------------------
 .byte   PATT
  .word Label_0110FED0
@  #01 @150   ----------------------------------------
 .byte   PATT
  .word Label_0110FEDC
@  #01 @151   ----------------------------------------
 .byte   W96
@  #01 @152   ----------------------------------------
 .byte   W96
@  #01 @153   ----------------------------------------
 .byte   W96
@  #01 @154   ----------------------------------------
 .byte   W96
@  #01 @155   ----------------------------------------
 .byte   W96
@  #01 @156   ----------------------------------------
 .byte   W96
@  #01 @157   ----------------------------------------
 .byte   W96
@  #01 @158   ----------------------------------------
 .byte   W96
@  #01 @159   ----------------------------------------
 .byte   PATT
  .word Label_0110FE6E
@  #01 @160   ----------------------------------------
 .byte   PATT
  .word Label_0110FE79
@  #01 @161   ----------------------------------------
 .byte   PATT
  .word Label_0110FE86
@  #01 @162   ----------------------------------------
 .byte   PATT
  .word Label_0110FE8E
@  #01 @163   ----------------------------------------
 .byte   PATT
  .word Label_0110FF24
@  #01 @164   ----------------------------------------
 .byte   PATT
  .word Label_0110FF40
@  #01 @165   ----------------------------------------
 .byte   PATT
  .word Label_0110FF50
@  #01 @166   ----------------------------------------
 .byte   PATT
  .word Label_0110FF70
@  #01 @167   ----------------------------------------
 .byte   PATT
  .word Label_0110FF85
@  #01 @168   ----------------------------------------
 .byte   PATT
  .word Label_0110FFA1
@  #01 @169   ----------------------------------------
 .byte   PATT
  .word Label_0110FFB1
@  #01 @170   ----------------------------------------
 .byte   PATT
  .word Label_0110FFCD
@  #01 @171   ----------------------------------------
 .byte   PATT
  .word Label_0110FF24
@  #01 @172   ----------------------------------------
 .byte   PATT
  .word Label_0110FF40
@  #01 @173   ----------------------------------------
 .byte   PATT
  .word Label_0110FFF3
@  #01 @174   ----------------------------------------
 .byte   PATT
  .word Label_01110011
@  #01 @175   ----------------------------------------
 .byte   PATT
  .word Label_0110FF85
@  #01 @176   ----------------------------------------
 .byte   PATT
  .word Label_0110FFA1
@  #01 @177   ----------------------------------------
 .byte   PATT
  .word Label_0110FFB1
@  #01 @178   ----------------------------------------
 .byte   PATT
  .word Label_01110030
@  #01 @179   ----------------------------------------
 .byte   W96
@  #01 @180   ----------------------------------------
 .byte   W96
@  #01 @181   ----------------------------------------
 .byte   W96
@  #01 @182   ----------------------------------------
 .byte   W96
@  #01 @183   ----------------------------------------
 .byte   W96
@  #01 @184   ----------------------------------------
 .byte   W96
@  #01 @185   ----------------------------------------
 .byte   W96
@  #01 @186   ----------------------------------------
 .byte   W96
@  #01 @187   ----------------------------------------
 .byte   PATT
  .word Label_0111004E
@  #01 @188   ----------------------------------------
 .byte   PATT
  .word Label_0111007D
@  #01 @189   ----------------------------------------
 .byte   PATT
  .word Label_011100AC
@  #01 @190   ----------------------------------------
 .byte   PATT
  .word Label_011100DC
@  #01 @191   ----------------------------------------
 .byte   PATT
  .word Label_0111010D
@  #01 @192   ----------------------------------------
 .byte   PATT
  .word Label_0111012A
@  #01 @193   ----------------------------------------
 .byte   EOT
 .byte   Gs1
 .byte   W01
@  #01 @194   ----------------------------------------
 .byte   PATT
  .word Label_01110140
@  #01 @195   ----------------------------------------
 .byte   PATT
  .word Label_01110156
@  #01 @196   ----------------------------------------
 .byte   EOT
 .byte   Cs1
 .byte   W01
@  #01 @197   ----------------------------------------
 .byte   PATT
  .word Label_0111010D
@  #01 @198   ----------------------------------------
 .byte   PATT
  .word Label_0111012A
@  #01 @199   ----------------------------------------
 .byte   EOT
 .byte   Gs1
 .byte   W01
@  #01 @200   ----------------------------------------
 .byte   PATT
  .word Label_01110179
@  #01 @201   ----------------------------------------
 .byte   PATT
  .word Label_01110156
@  #01 @202   ----------------------------------------
 .byte   EOT
 .byte   As1
 .byte   W01
@  #01 @203   ----------------------------------------
 .byte   PATT
  .word Label_01110197
@  #01 @204   ----------------------------------------
 .byte   PATT
  .word Label_011101B7
@  #01 @205   ----------------------------------------
 .byte   EOT
 .byte   Cs1
 .byte   W01
@  #01 @206   ----------------------------------------
 .byte   PATT
  .word Label_011101CD
@  #01 @207   ----------------------------------------
 .byte   PATT
  .word Label_011101E3
@  #01 @208   ----------------------------------------
 .byte   PATT
  .word Label_011101F6
@  #01 @209   ----------------------------------------
 .byte   PATT
  .word Label_01110209
@  #01 @210   ----------------------------------------
 .byte   PATT
  .word Label_0111021C
@  #01 @211   ----------------------------------------
 .byte   PATT
  .word Label_0111022F
@  #01 @212   ----------------------------------------
 .byte   PATT
  .word Label_01110242
@  #01 @213   ----------------------------------------
 .byte   PATT
  .word Label_0111024D
@  #01 @214   ----------------------------------------
 .byte   PATT
  .word Label_01110258
@  #01 @215   ----------------------------------------
 .byte   PATT
  .word Label_01110277
@  #01 @216   ----------------------------------------
 .byte   PATT
  .word Label_01110282
@  #01 @217   ----------------------------------------
 .byte   PATT
  .word Label_011102A4
@  #01 @218   ----------------------------------------
 .byte   PATT
  .word Label_011102C6
@  #01 @219   ----------------------------------------
 .byte   PATT
  .word Label_011102E8
@  #01 @220   ----------------------------------------
 .byte   PATT
  .word Label_01110242
@  #01 @221   ----------------------------------------
 .byte   PATT
  .word Label_0111024D
@  #01 @222   ----------------------------------------
 .byte   PATT
  .word Label_0111031F
@  #01 @223   ----------------------------------------
 .byte   PATT
  .word Label_01110277
@  #01 @224   ----------------------------------------
 .byte   PATT
  .word Label_0111033E
@  #01 @225   ----------------------------------------
 .byte   PATT
  .word Label_01110360
@  #01 @226   ----------------------------------------
 .byte   PATT
  .word Label_01110382
@  #01 @227   ----------------------------------------
 .byte   PATT
  .word Label_01110382
@  #01 @228   ----------------------------------------
 .byte   PATT
  .word Label_011103A9
@  #01 @229   ----------------------------------------
 .byte   PATT
  .word Label_011103CB
@  #01 @230   ----------------------------------------
 .byte   W96
@  #01 @231   ----------------------------------------
 .byte   W96
@  #01 @232   ----------------------------------------
 .byte   W96
@  #01 @233   ----------------------------------------
 .byte   W96
@  #01 @234   ----------------------------------------
 .byte   W96
@  #01 @235   ----------------------------------------
 .byte   W96
@  #01 @236   ----------------------------------------
 .byte   W96
@  #01 @237   ----------------------------------------
 .byte   W96
@  #01 @238   ----------------------------------------
 .byte   W96
@  #01 @239   ----------------------------------------
 .byte   W96
@  #01 @240   ----------------------------------------
 .byte   W96
@  #01 @241   ----------------------------------------
 .byte   W96
@  #01 @242   ----------------------------------------
 .byte   W96
@  #01 @243   ----------------------------------------
 .byte   W96
@  #01 @244   ----------------------------------------
 .byte   W96
@  #01 @245   ----------------------------------------
 .byte   W96
@  #01 @246   ----------------------------------------
 .byte   W96
@  #01 @247   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

.align 2, 0
song07_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 45
 .byte   PAN , c_v-51
 .byte   VOL , 22*song07_mvl/mxv
 .byte   Dn3 ,v062
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
Label_0110D93A:
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
Label_0110D93F:
 .byte   N11 ,Gs1 ,v096
 .byte   W36
 .byte   Bn1
 .byte   W36
 .byte   Gs1
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   PEND 
@  #02 @014   ----------------------------------------
Label_0110D94A:
 .byte   W36
 .byte   N11 ,Bn1 ,v096
 .byte   W36
 .byte   Fs1
 .byte   W24
 .byte   PEND 
@  #02 @015   ----------------------------------------
Label_0110D952:
 .byte   N11 ,En1 ,v096
 .byte   W36
 .byte   Cs2
 .byte   W36
 .byte   En1
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   PEND 
@  #02 @016   ----------------------------------------
 .byte   W96
@  #02 @017   ----------------------------------------
Label_0110D95E:
 .byte   N11 ,An1 ,v096
 .byte   W36
 .byte   Cs2
 .byte   W36
 .byte   An1
 .byte   W12
 .byte   N23 ,Gs1
 .byte   W12
 .byte   PEND 
@  #02 @018   ----------------------------------------
Label_0110D96A:
 .byte   W36
 .byte   N11 ,Ds1 ,v096
 .byte   W24
 .byte   Gs1
 .byte   W36
 .byte   PEND 
@  #02 @019   ----------------------------------------
Label_0110D972:
 .byte   N11 ,Fn1 ,v096
 .byte   W36
 .byte   Cs2
 .byte   W36
 .byte   Fn1
 .byte   W12
 .byte   N23 ,Ds1
 .byte   W12
 .byte   PEND 
@  #02 @020   ----------------------------------------
Label_0110D97E:
 .byte   W36
 .byte   N11 ,As1 ,v096
 .byte   W24
 .byte   Ds1
 .byte   W36
 .byte   PEND 
@  #02 @021   ----------------------------------------
 .byte   PATT
  .word Label_0110D93F
@  #02 @022   ----------------------------------------
 .byte   PATT
  .word Label_0110D94A
@  #02 @023   ----------------------------------------
 .byte   PATT
  .word Label_0110D952
@  #02 @024   ----------------------------------------
 .byte   W96
@  #02 @025   ----------------------------------------
 .byte   PATT
  .word Label_0110D95E
@  #02 @026   ----------------------------------------
 .byte   PATT
  .word Label_0110D96A
@  #02 @027   ----------------------------------------
 .byte   PATT
  .word Label_0110D972
@  #02 @028   ----------------------------------------
 .byte   PATT
  .word Label_0110D97E
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
 .byte   W96
@  #02 @035   ----------------------------------------
 .byte   W96
@  #02 @036   ----------------------------------------
 .byte   W96
@  #02 @037   ----------------------------------------
 .byte   W96
@  #02 @038   ----------------------------------------
 .byte   W96
@  #02 @039   ----------------------------------------
 .byte   W96
@  #02 @040   ----------------------------------------
 .byte   W96
@  #02 @041   ----------------------------------------
 .byte   PATT
  .word Label_0110D93F
@  #02 @042   ----------------------------------------
 .byte   PATT
  .word Label_0110D94A
@  #02 @043   ----------------------------------------
 .byte   PATT
  .word Label_0110D952
@  #02 @044   ----------------------------------------
 .byte   W96
@  #02 @045   ----------------------------------------
 .byte   PATT
  .word Label_0110D95E
@  #02 @046   ----------------------------------------
 .byte   PATT
  .word Label_0110D96A
@  #02 @047   ----------------------------------------
 .byte   PATT
  .word Label_0110D972
@  #02 @048   ----------------------------------------
 .byte   PATT
  .word Label_0110D97E
@  #02 @049   ----------------------------------------
 .byte   PATT
  .word Label_0110D93F
@  #02 @050   ----------------------------------------
 .byte   PATT
  .word Label_0110D94A
@  #02 @051   ----------------------------------------
 .byte   PATT
  .word Label_0110D952
@  #02 @052   ----------------------------------------
 .byte   W96
@  #02 @053   ----------------------------------------
 .byte   PATT
  .word Label_0110D95E
@  #02 @054   ----------------------------------------
 .byte   PATT
  .word Label_0110D96A
@  #02 @055   ----------------------------------------
 .byte   PATT
  .word Label_0110D972
@  #02 @056   ----------------------------------------
 .byte   PATT
  .word Label_0110D97E
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
Label_0110DA0A:
 .byte   W48
 .byte   N11 ,En4 ,v080
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #02 @070   ----------------------------------------
Label_0110DA16:
 .byte   N11 ,Ds4 ,v080
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
@  #02 @071   ----------------------------------------
Label_0110DA29:
 .byte   N11 ,Fn4 ,v080
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #02 @072   ----------------------------------------
Label_0110DA3C:
 .byte   N11 ,Cs5 ,v080
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #02 @073   ----------------------------------------
 .byte   PATT
  .word Label_0110DA0A
@  #02 @074   ----------------------------------------
 .byte   PATT
  .word Label_0110DA16
@  #02 @075   ----------------------------------------
 .byte   PATT
  .word Label_0110DA29
@  #02 @076   ----------------------------------------
 .byte   PATT
  .word Label_0110DA3C
@  #02 @077   ----------------------------------------
Label_0110DA63:
 .byte   W24
 .byte   N11 ,Cs5 ,v080
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #02 @078   ----------------------------------------
Label_0110DA73:
 .byte   N11 ,Fs4 ,v080
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #02 @079   ----------------------------------------
Label_0110DA86:
 .byte   N11 ,Fs4 ,v080
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #02 @080   ----------------------------------------
Label_0110DA99:
 .byte   N11 ,Fs4 ,v080
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   PEND 
@  #02 @081   ----------------------------------------
Label_0110DAAC:
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   PEND 
@  #02 @082   ----------------------------------------
Label_0110DABF:
 .byte   N11 ,Cn4 ,v080
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   PEND 
@  #02 @083   ----------------------------------------
Label_0110DAD2:
 .byte   N11 ,Cs5 ,v080
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #02 @084   ----------------------------------------
Label_0110DAE5:
 .byte   N11 ,Fs4 ,v080
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
@  #02 @085   ----------------------------------------
 .byte   W96
@  #02 @086   ----------------------------------------
Label_0110DAF9:
 .byte   W48
 .byte   N05 ,Cs5 ,v096
 .byte   W06
 .byte   Dn5
 .byte   W06
 .byte   En5
 .byte   W12
 .byte   An4
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #02 @087   ----------------------------------------
 .byte   W96
@  #02 @088   ----------------------------------------
 .byte   W96
@  #02 @089   ----------------------------------------
Label_0110DB0B:
 .byte   N11 ,Bn4 ,v080
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
@  #02 @090   ----------------------------------------
Label_0110DB1E:
 .byte   N11 ,An4 ,v080
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
@  #02 @091   ----------------------------------------
 .byte   PATT
  .word Label_0110DB0B
@  #02 @092   ----------------------------------------
Label_0110DB36:
 .byte   N05 ,As4 ,v080
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W12
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As4
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Bn4
 .byte   W06
 .byte   Cs5
 .byte   W12
 .byte   Fs4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   As4
 .byte   W12
 .byte   PEND 
@  #02 @093   ----------------------------------------
 .byte   W96
@  #02 @094   ----------------------------------------
 .byte   PATT
  .word Label_0110DAF9
@  #02 @095   ----------------------------------------
 .byte   W96
@  #02 @096   ----------------------------------------
 .byte   W96
@  #02 @097   ----------------------------------------
Label_0110DB59:
 .byte   N11 ,Bn4 ,v080
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   PEND 
@  #02 @098   ----------------------------------------
Label_0110DB6C:
 .byte   N11 ,An4 ,v080
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #02 @099   ----------------------------------------
 .byte   PATT
  .word Label_0110DB59
@  #02 @100   ----------------------------------------
 .byte   PATT
  .word Label_0110DB59
@  #02 @101   ----------------------------------------
Label_0110DB89:
 .byte   N11 ,En4 ,v080
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
@  #02 @102   ----------------------------------------
Label_0110DB9C:
 .byte   N11 ,En4 ,v080
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   PEND 
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
 .byte   GOTO
  .word Label_0110D93A
@  #02 @130   ----------------------------------------
 .byte   W96
@  #02 @131   ----------------------------------------
 .byte   W96
@  #02 @132   ----------------------------------------
 .byte   W96
@  #02 @133   ----------------------------------------
 .byte   W96
@  #02 @134   ----------------------------------------
 .byte   W96
@  #02 @135   ----------------------------------------
 .byte   PATT
  .word Label_0110D93F
@  #02 @136   ----------------------------------------
 .byte   PATT
  .word Label_0110D94A
@  #02 @137   ----------------------------------------
 .byte   PATT
  .word Label_0110D952
@  #02 @138   ----------------------------------------
 .byte   W96
@  #02 @139   ----------------------------------------
 .byte   PATT
  .word Label_0110D95E
@  #02 @140   ----------------------------------------
 .byte   PATT
  .word Label_0110D96A
@  #02 @141   ----------------------------------------
 .byte   PATT
  .word Label_0110D972
@  #02 @142   ----------------------------------------
 .byte   PATT
  .word Label_0110D97E
@  #02 @143   ----------------------------------------
 .byte   PATT
  .word Label_0110D93F
@  #02 @144   ----------------------------------------
 .byte   PATT
  .word Label_0110D94A
@  #02 @145   ----------------------------------------
 .byte   PATT
  .word Label_0110D952
@  #02 @146   ----------------------------------------
 .byte   W96
@  #02 @147   ----------------------------------------
 .byte   PATT
  .word Label_0110D95E
@  #02 @148   ----------------------------------------
 .byte   PATT
  .word Label_0110D96A
@  #02 @149   ----------------------------------------
 .byte   PATT
  .word Label_0110D972
@  #02 @150   ----------------------------------------
 .byte   PATT
  .word Label_0110D97E
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
 .byte   W96
@  #02 @159   ----------------------------------------
 .byte   W96
@  #02 @160   ----------------------------------------
 .byte   W96
@  #02 @161   ----------------------------------------
 .byte   W96
@  #02 @162   ----------------------------------------
 .byte   W96
@  #02 @163   ----------------------------------------
 .byte   PATT
  .word Label_0110D93F
@  #02 @164   ----------------------------------------
 .byte   PATT
  .word Label_0110D94A
@  #02 @165   ----------------------------------------
 .byte   PATT
  .word Label_0110D952
@  #02 @166   ----------------------------------------
 .byte   W96
@  #02 @167   ----------------------------------------
 .byte   PATT
  .word Label_0110D95E
@  #02 @168   ----------------------------------------
 .byte   PATT
  .word Label_0110D96A
@  #02 @169   ----------------------------------------
 .byte   PATT
  .word Label_0110D972
@  #02 @170   ----------------------------------------
 .byte   PATT
  .word Label_0110D97E
@  #02 @171   ----------------------------------------
 .byte   PATT
  .word Label_0110D93F
@  #02 @172   ----------------------------------------
 .byte   PATT
  .word Label_0110D94A
@  #02 @173   ----------------------------------------
 .byte   PATT
  .word Label_0110D952
@  #02 @174   ----------------------------------------
 .byte   W96
@  #02 @175   ----------------------------------------
 .byte   PATT
  .word Label_0110D95E
@  #02 @176   ----------------------------------------
 .byte   PATT
  .word Label_0110D96A
@  #02 @177   ----------------------------------------
 .byte   PATT
  .word Label_0110D972
@  #02 @178   ----------------------------------------
 .byte   PATT
  .word Label_0110D97E
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
 .byte   W96
@  #02 @189   ----------------------------------------
 .byte   W96
@  #02 @190   ----------------------------------------
 .byte   W96
@  #02 @191   ----------------------------------------
 .byte   PATT
  .word Label_0110DA0A
@  #02 @192   ----------------------------------------
 .byte   PATT
  .word Label_0110DA16
@  #02 @193   ----------------------------------------
 .byte   PATT
  .word Label_0110DA29
@  #02 @194   ----------------------------------------
 .byte   PATT
  .word Label_0110DA3C
@  #02 @195   ----------------------------------------
 .byte   PATT
  .word Label_0110DA0A
@  #02 @196   ----------------------------------------
 .byte   PATT
  .word Label_0110DA16
@  #02 @197   ----------------------------------------
 .byte   PATT
  .word Label_0110DA29
@  #02 @198   ----------------------------------------
 .byte   PATT
  .word Label_0110DA3C
@  #02 @199   ----------------------------------------
 .byte   PATT
  .word Label_0110DA63
@  #02 @200   ----------------------------------------
 .byte   PATT
  .word Label_0110DA73
@  #02 @201   ----------------------------------------
 .byte   PATT
  .word Label_0110DA86
@  #02 @202   ----------------------------------------
 .byte   PATT
  .word Label_0110DA99
@  #02 @203   ----------------------------------------
 .byte   PATT
  .word Label_0110DAAC
@  #02 @204   ----------------------------------------
 .byte   PATT
  .word Label_0110DABF
@  #02 @205   ----------------------------------------
 .byte   PATT
  .word Label_0110DAD2
@  #02 @206   ----------------------------------------
 .byte   PATT
  .word Label_0110DAE5
@  #02 @207   ----------------------------------------
 .byte   W96
@  #02 @208   ----------------------------------------
 .byte   PATT
  .word Label_0110DAF9
@  #02 @209   ----------------------------------------
 .byte   W96
@  #02 @210   ----------------------------------------
 .byte   W96
@  #02 @211   ----------------------------------------
 .byte   PATT
  .word Label_0110DB0B
@  #02 @212   ----------------------------------------
 .byte   PATT
  .word Label_0110DB1E
@  #02 @213   ----------------------------------------
 .byte   PATT
  .word Label_0110DB0B
@  #02 @214   ----------------------------------------
 .byte   PATT
  .word Label_0110DB36
@  #02 @215   ----------------------------------------
 .byte   W96
@  #02 @216   ----------------------------------------
 .byte   PATT
  .word Label_0110DAF9
@  #02 @217   ----------------------------------------
 .byte   W96
@  #02 @218   ----------------------------------------
 .byte   W96
@  #02 @219   ----------------------------------------
 .byte   PATT
  .word Label_0110DB59
@  #02 @220   ----------------------------------------
 .byte   PATT
  .word Label_0110DB6C
@  #02 @221   ----------------------------------------
 .byte   PATT
  .word Label_0110DB59
@  #02 @222   ----------------------------------------
 .byte   PATT
  .word Label_0110DB59
@  #02 @223   ----------------------------------------
 .byte   PATT
  .word Label_0110DB89
@  #02 @224   ----------------------------------------
 .byte   PATT
  .word Label_0110DB9C
@  #02 @225   ----------------------------------------
 .byte   W96
@  #02 @226   ----------------------------------------
 .byte   W96
@  #02 @227   ----------------------------------------
 .byte   W96
@  #02 @228   ----------------------------------------
 .byte   W96
@  #02 @229   ----------------------------------------
 .byte   W96
@  #02 @230   ----------------------------------------
 .byte   W96
@  #02 @231   ----------------------------------------
 .byte   W96
@  #02 @232   ----------------------------------------
 .byte   W96
@  #02 @233   ----------------------------------------
 .byte   W96
@  #02 @234   ----------------------------------------
 .byte   W96
@  #02 @235   ----------------------------------------
 .byte   W96
@  #02 @236   ----------------------------------------
 .byte   W96
@  #02 @237   ----------------------------------------
 .byte   W96
@  #02 @238   ----------------------------------------
 .byte   W96
@  #02 @239   ----------------------------------------
 .byte   W96
@  #02 @240   ----------------------------------------
 .byte   W96
@  #02 @241   ----------------------------------------
 .byte   W96
@  #02 @242   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

.align 2, 0
song07_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 44
 .byte   VOL , 12*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 12*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 12*song07_mvl/mxv
 .byte   PAN , c_v+0
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
Label_0110E050:
 .byte   W96
@  #03 @009   ----------------------------------------
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
Label_0110E071:
 .byte   W12
 .byte   N11 ,Ds5 ,v064
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Ds6
 .byte   W12
 .byte   PEND 
@  #03 @042   ----------------------------------------
Label_0110E083:
 .byte   N11 ,Ds5 ,v064
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Cs6
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   PEND 
@  #03 @043   ----------------------------------------
Label_0110E096:
 .byte   W12
 .byte   N11 ,Ds5 ,v064
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Cs6
 .byte   W12
 .byte   PEND 
@  #03 @044   ----------------------------------------
Label_0110E0A8:
 .byte   N11 ,Ds5 ,v064
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   Cs6
 .byte   W12
 .byte   Fn5
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   PEND 
@  #03 @045   ----------------------------------------
Label_0110E0BB:
 .byte   W12
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Bn5
 .byte   W12
 .byte   PEND 
@  #03 @046   ----------------------------------------
Label_0110E0CD:
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   Bn5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   PEND 
@  #03 @047   ----------------------------------------
Label_0110E0E0:
 .byte   W12
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Fs5
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   Bn5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   PEND 
@  #03 @048   ----------------------------------------
Label_0110E0F2:
 .byte   N11 ,As4 ,v064
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Gs5
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Cs6
 .byte   W12
 .byte   Ds5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   As5
 .byte   W12
 .byte   PEND 
@  #03 @049   ----------------------------------------
 .byte   PATT
  .word Label_0110E071
@  #03 @050   ----------------------------------------
 .byte   PATT
  .word Label_0110E083
@  #03 @051   ----------------------------------------
 .byte   PATT
  .word Label_0110E096
@  #03 @052   ----------------------------------------
 .byte   PATT
  .word Label_0110E0A8
@  #03 @053   ----------------------------------------
 .byte   PATT
  .word Label_0110E0BB
@  #03 @054   ----------------------------------------
 .byte   PATT
  .word Label_0110E0CD
@  #03 @055   ----------------------------------------
 .byte   PATT
  .word Label_0110E0E0
@  #03 @056   ----------------------------------------
 .byte   PATT
  .word Label_0110E0F2
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
Label_0110E139:
 .byte   W48
 .byte   N11 ,En4 ,v080
 .byte   N11 ,En5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @070   ----------------------------------------
Label_0110E154:
 .byte   N11 ,Ds4 ,v080
 .byte   N11 ,Ds5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Bn4 ,v080
 .byte   N11 ,Bn5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Ds4 ,v080
 .byte   N11 ,Ds5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Bn4 ,v080
 .byte   N11 ,Bn5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @071   ----------------------------------------
Label_0110E186:
 .byte   N11 ,Fn4 ,v080
 .byte   N11 ,Fn5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Fn4 ,v080
 .byte   N11 ,Fn5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Fn4 ,v080
 .byte   N11 ,Fn5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @072   ----------------------------------------
Label_0110E1B8:
 .byte   N11 ,Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Fn4 ,v080
 .byte   N11 ,Fn5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Fn4 ,v080
 .byte   N11 ,Fn5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Bn4 ,v080
 .byte   N11 ,Bn5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @073   ----------------------------------------
 .byte   PATT
  .word Label_0110E139
@  #03 @074   ----------------------------------------
 .byte   PATT
  .word Label_0110E154
@  #03 @075   ----------------------------------------
 .byte   PATT
  .word Label_0110E186
@  #03 @076   ----------------------------------------
 .byte   PATT
  .word Label_0110E1B8
@  #03 @077   ----------------------------------------
Label_0110E1FE:
 .byte   W24
 .byte   N11 ,Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Bn4 ,v080
 .byte   N11 ,Bn5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @078   ----------------------------------------
Label_0110E225:
 .byte   N11 ,Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @079   ----------------------------------------
Label_0110E257:
 .byte   N11 ,Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Gs4 ,v080
 .byte   N11 ,Gs5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Bn4 ,v080
 .byte   N11 ,Bn5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Bn4 ,v080
 .byte   N11 ,Bn5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @080   ----------------------------------------
Label_0110E289:
 .byte   N11 ,Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   An4 ,v080
 .byte   N11 ,An5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   An4 ,v080
 .byte   N11 ,An5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   An4 ,v080
 .byte   N11 ,An5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   An4 ,v080
 .byte   N11 ,An5 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @081   ----------------------------------------
Label_0110E2BB:
 .byte   N11 ,Dn4 ,v080
 .byte   N11 ,Dn5 ,v064
 .byte   W12
 .byte   An4 ,v080
 .byte   N11 ,An5 ,v064
 .byte   W12
 .byte   Dn5 ,v080
 .byte   N11 ,Dn6 ,v064
 .byte   W12
 .byte   Dn4 ,v080
 .byte   N11 ,Dn5 ,v064
 .byte   W12
 .byte   An4 ,v080
 .byte   N11 ,An5 ,v064
 .byte   W12
 .byte   Dn5 ,v080
 .byte   N11 ,Dn6 ,v064
 .byte   W12
 .byte   Dn4 ,v080
 .byte   N11 ,Dn5 ,v064
 .byte   W12
 .byte   An4 ,v080
 .byte   N11 ,An5 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @082   ----------------------------------------
Label_0110E2ED:
 .byte   N11 ,Cn4 ,v080
 .byte   N11 ,Cn5 ,v064
 .byte   W12
 .byte   Gn4 ,v080
 .byte   N11 ,Gn5 ,v064
 .byte   W12
 .byte   Cn5 ,v080
 .byte   N11 ,Cn6 ,v064
 .byte   W12
 .byte   Cn4 ,v080
 .byte   N11 ,Cn5 ,v064
 .byte   W12
 .byte   Gn4 ,v080
 .byte   N11 ,Gn5 ,v064
 .byte   W12
 .byte   Cn4 ,v080
 .byte   N11 ,Cn5 ,v064
 .byte   W12
 .byte   Gn4 ,v080
 .byte   N11 ,Gn5 ,v064
 .byte   W12
 .byte   Cn5 ,v080
 .byte   N11 ,Cn6 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @083   ----------------------------------------
Label_0110E31F:
 .byte   N11 ,Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   En4 ,v080
 .byte   N11 ,En5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   En4 ,v080
 .byte   N11 ,En5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   En4 ,v080
 .byte   N11 ,En5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   En4 ,v080
 .byte   N11 ,En5 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @084   ----------------------------------------
Label_0110E351:
 .byte   N11 ,Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   Bn4 ,v080
 .byte   N11 ,Bn5 ,v064
 .byte   W12
 .byte   Cs4 ,v080
 .byte   N11 ,Cs5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   Cs5 ,v080
 .byte   N11 ,Cs6 ,v064
 .byte   W12
 .byte   As4 ,v080
 .byte   N11 ,As5 ,v064
 .byte   W12
 .byte   Fs4 ,v080
 .byte   N11 ,Fs5 ,v064
 .byte   W12
 .byte   PEND 
@  #03 @085   ----------------------------------------
Label_0110E383:
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #03 @086   ----------------------------------------
Label_0110E396:
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #03 @087   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @088   ----------------------------------------
Label_0110E3AE:
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
@  #03 @089   ----------------------------------------
Label_0110E3C1:
 .byte   N11 ,Gn3 ,v080
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #03 @090   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @091   ----------------------------------------
Label_0110E3D9:
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #03 @092   ----------------------------------------
Label_0110E3EC:
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
@  #03 @093   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @094   ----------------------------------------
 .byte   PATT
  .word Label_0110E396
@  #03 @095   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @096   ----------------------------------------
Label_0110E40E:
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   N11 ,Dn6
 .byte   W12
 .byte   Dn4
 .byte   N11 ,En6
 .byte   W12
 .byte   Gs3
 .byte   N11 ,An6
 .byte   W12
 .byte   En3
 .byte   N11 ,Bn6
 .byte   W12
 .byte   Gs3
 .byte   N11 ,Fs6
 .byte   W12
 .byte   Dn4
 .byte   N11 ,En6
 .byte   W12
 .byte   Gs3
 .byte   N11 ,Dn6
 .byte   W12
 .byte   PEND 
@  #03 @097   ----------------------------------------
 .byte   PATT
  .word Label_0110E3C1
@  #03 @098   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @099   ----------------------------------------
 .byte   PATT
  .word Label_0110E3D9
@  #03 @100   ----------------------------------------
 .byte   PATT
  .word Label_0110E3D9
@  #03 @101   ----------------------------------------
 .byte   PATT
  .word Label_0110E396
@  #03 @102   ----------------------------------------
 .byte   PATT
  .word Label_0110E396
@  #03 @103   ----------------------------------------
 .byte   W96
@  #03 @104   ----------------------------------------
 .byte   W96
@  #03 @105   ----------------------------------------
 .byte   W96
@  #03 @106   ----------------------------------------
 .byte   W96
@  #03 @107   ----------------------------------------
 .byte   W96
@  #03 @108   ----------------------------------------
 .byte   W96
@  #03 @109   ----------------------------------------
 .byte   W96
@  #03 @110   ----------------------------------------
Label_0110E454:
 .byte   W60
 .byte   N11 ,Dn4 ,v112
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   N68 ,Fn4
 .byte   W12
 .byte   PEND 
@  #03 @111   ----------------------------------------
Label_0110E45F:
 .byte   W60
 .byte   N11 ,En4 ,v112
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #03 @112   ----------------------------------------
Label_0110E469:
 .byte   N56 ,Dn4 ,v112
 .byte   W60
 .byte   N11 ,Cn4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #03 @113   ----------------------------------------
Label_0110E475:
 .byte   N23 ,Gn3 ,v112
 .byte   W24
 .byte   N11 ,An3
 .byte   W12
 .byte   TIE
 .byte   W60
 .byte   PEND 
@  #03 @114   ----------------------------------------
 .byte   W96
@  #03 @115   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   W01
 .byte   N23 ,Dn3
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W12
 .byte   TIE
 .byte   W48
@  #03 @116   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
@  #03 @117   ----------------------------------------
Label_0110E493:
 .byte   N23 ,En3 ,v112
 .byte   W24
 .byte   N11 ,Fn3
 .byte   W12
 .byte   TIE ,Cn4
 .byte   W60
 .byte   PEND 
@  #03 @118   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W24
 .byte   W01
@  #03 @119   ----------------------------------------
 .byte   W96
@  #03 @120   ----------------------------------------
 .byte   W96
@  #03 @121   ----------------------------------------
 .byte   W96
@  #03 @122   ----------------------------------------
 .byte   W96
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
 .byte   GOTO
  .word Label_0110E050
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
 .byte   W96
@  #03 @148   ----------------------------------------
 .byte   W96
@  #03 @149   ----------------------------------------
 .byte   W96
@  #03 @150   ----------------------------------------
 .byte   W96
@  #03 @151   ----------------------------------------
 .byte   W96
@  #03 @152   ----------------------------------------
 .byte   W96
@  #03 @153   ----------------------------------------
 .byte   W96
@  #03 @154   ----------------------------------------
 .byte   W96
@  #03 @155   ----------------------------------------
 .byte   W96
@  #03 @156   ----------------------------------------
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
 .byte   W96
@  #03 @163   ----------------------------------------
 .byte   PATT
  .word Label_0110E071
@  #03 @164   ----------------------------------------
 .byte   PATT
  .word Label_0110E083
@  #03 @165   ----------------------------------------
 .byte   PATT
  .word Label_0110E096
@  #03 @166   ----------------------------------------
 .byte   PATT
  .word Label_0110E0A8
@  #03 @167   ----------------------------------------
 .byte   PATT
  .word Label_0110E0BB
@  #03 @168   ----------------------------------------
 .byte   PATT
  .word Label_0110E0CD
@  #03 @169   ----------------------------------------
 .byte   PATT
  .word Label_0110E0E0
@  #03 @170   ----------------------------------------
 .byte   PATT
  .word Label_0110E0F2
@  #03 @171   ----------------------------------------
 .byte   PATT
  .word Label_0110E071
@  #03 @172   ----------------------------------------
 .byte   PATT
  .word Label_0110E083
@  #03 @173   ----------------------------------------
 .byte   PATT
  .word Label_0110E096
@  #03 @174   ----------------------------------------
 .byte   PATT
  .word Label_0110E0A8
@  #03 @175   ----------------------------------------
 .byte   PATT
  .word Label_0110E0BB
@  #03 @176   ----------------------------------------
 .byte   PATT
  .word Label_0110E0CD
@  #03 @177   ----------------------------------------
 .byte   PATT
  .word Label_0110E0E0
@  #03 @178   ----------------------------------------
 .byte   PATT
  .word Label_0110E0F2
@  #03 @179   ----------------------------------------
 .byte   W96
@  #03 @180   ----------------------------------------
 .byte   W96
@  #03 @181   ----------------------------------------
 .byte   W96
@  #03 @182   ----------------------------------------
 .byte   W96
@  #03 @183   ----------------------------------------
 .byte   W96
@  #03 @184   ----------------------------------------
 .byte   W96
@  #03 @185   ----------------------------------------
 .byte   W96
@  #03 @186   ----------------------------------------
 .byte   W96
@  #03 @187   ----------------------------------------
 .byte   W96
@  #03 @188   ----------------------------------------
 .byte   W96
@  #03 @189   ----------------------------------------
 .byte   W96
@  #03 @190   ----------------------------------------
 .byte   W96
@  #03 @191   ----------------------------------------
 .byte   PATT
  .word Label_0110E139
@  #03 @192   ----------------------------------------
 .byte   PATT
  .word Label_0110E154
@  #03 @193   ----------------------------------------
 .byte   PATT
  .word Label_0110E186
@  #03 @194   ----------------------------------------
 .byte   PATT
  .word Label_0110E1B8
@  #03 @195   ----------------------------------------
 .byte   PATT
  .word Label_0110E139
@  #03 @196   ----------------------------------------
 .byte   PATT
  .word Label_0110E154
@  #03 @197   ----------------------------------------
 .byte   PATT
  .word Label_0110E186
@  #03 @198   ----------------------------------------
 .byte   PATT
  .word Label_0110E1B8
@  #03 @199   ----------------------------------------
 .byte   PATT
  .word Label_0110E1FE
@  #03 @200   ----------------------------------------
 .byte   PATT
  .word Label_0110E225
@  #03 @201   ----------------------------------------
 .byte   PATT
  .word Label_0110E257
@  #03 @202   ----------------------------------------
 .byte   PATT
  .word Label_0110E289
@  #03 @203   ----------------------------------------
 .byte   PATT
  .word Label_0110E2BB
@  #03 @204   ----------------------------------------
 .byte   PATT
  .word Label_0110E2ED
@  #03 @205   ----------------------------------------
 .byte   PATT
  .word Label_0110E31F
@  #03 @206   ----------------------------------------
 .byte   PATT
  .word Label_0110E351
@  #03 @207   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @208   ----------------------------------------
 .byte   PATT
  .word Label_0110E396
@  #03 @209   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @210   ----------------------------------------
 .byte   PATT
  .word Label_0110E3AE
@  #03 @211   ----------------------------------------
 .byte   PATT
  .word Label_0110E3C1
@  #03 @212   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @213   ----------------------------------------
 .byte   PATT
  .word Label_0110E3D9
@  #03 @214   ----------------------------------------
 .byte   PATT
  .word Label_0110E3EC
@  #03 @215   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @216   ----------------------------------------
 .byte   PATT
  .word Label_0110E396
@  #03 @217   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @218   ----------------------------------------
 .byte   PATT
  .word Label_0110E40E
@  #03 @219   ----------------------------------------
 .byte   PATT
  .word Label_0110E3C1
@  #03 @220   ----------------------------------------
 .byte   PATT
  .word Label_0110E383
@  #03 @221   ----------------------------------------
 .byte   PATT
  .word Label_0110E3D9
@  #03 @222   ----------------------------------------
 .byte   PATT
  .word Label_0110E3D9
@  #03 @223   ----------------------------------------
 .byte   PATT
  .word Label_0110E396
@  #03 @224   ----------------------------------------
 .byte   PATT
  .word Label_0110E396
@  #03 @225   ----------------------------------------
 .byte   W96
@  #03 @226   ----------------------------------------
 .byte   W96
@  #03 @227   ----------------------------------------
 .byte   W96
@  #03 @228   ----------------------------------------
 .byte   W96
@  #03 @229   ----------------------------------------
 .byte   W96
@  #03 @230   ----------------------------------------
 .byte   W96
@  #03 @231   ----------------------------------------
 .byte   W96
@  #03 @232   ----------------------------------------
 .byte   PATT
  .word Label_0110E454
@  #03 @233   ----------------------------------------
 .byte   PATT
  .word Label_0110E45F
@  #03 @234   ----------------------------------------
 .byte   PATT
  .word Label_0110E469
@  #03 @235   ----------------------------------------
 .byte   PATT
  .word Label_0110E475
@  #03 @236   ----------------------------------------
 .byte   W96
@  #03 @237   ----------------------------------------
 .byte   W11
 .byte   EOT
 .byte   An3
 .byte   W01
 .byte   N23 ,Dn3 ,v112
 .byte   W24
 .byte   N11 ,Gn3
 .byte   W12
 .byte   TIE
 .byte   W48
@  #03 @238   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
@  #03 @239   ----------------------------------------
 .byte   PATT
  .word Label_0110E493
@  #03 @240   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   EOT
 .byte   Cn4
 .byte   W24
 .byte   W01
@  #03 @241   ----------------------------------------
 .byte   W96
@  #03 @242   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

.align 2, 0
song07_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 49
 .byte   VOL , 22*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 22*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 22*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W12
 .byte   N11 ,Ds2 ,v064
 .byte   W12
 .byte   N11
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   N11
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Ds2
 .byte   W24
 .byte   N11
 .byte   W12
@  #04 @001   ----------------------------------------
Label_011105E7:
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Ds2
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   PEND 
@  #04 @002   ----------------------------------------
Label_01110602:
 .byte   W12
 .byte   N11 ,Ds2 ,v064
 .byte   W12
 .byte   N11
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   N11
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Ds2
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #04 @003   ----------------------------------------
Label_0111061A:
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Ds2
 .byte   W24
 .byte   Cs3
 .byte   N11 ,Fn3
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   PEND 
@  #04 @004   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @005   ----------------------------------------
 .byte   PATT
  .word Label_011105E7
@  #04 @006   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @007   ----------------------------------------
 .byte   PATT
  .word Label_0111061A
@  #04 @008   ----------------------------------------
Label_01110649:
 .byte   TIE ,Bn1 ,v052
 .byte   TIE ,Ds2
 .byte   W96
 .byte   PEND 
@  #04 @009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn1 ,v051
 .byte   W01
@  #04 @010   ----------------------------------------
Label_01110656:
 .byte   TIE ,Cs2 ,v052
 .byte   TIE ,Ds2
 .byte   TIE ,Fs2
 .byte   W96
 .byte   PEND 
@  #04 @011   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cs2 ,v051
 .byte   Fs2
 .byte   W01
@  #04 @012   ----------------------------------------
 .byte   W96
@  #04 @013   ----------------------------------------
Label_01110667:
 .byte   N11 ,Fs2 ,v064
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Fs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Fs2
 .byte   N11 ,As2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #04 @014   ----------------------------------------
Label_01110682:
 .byte   W24
 .byte   N11 ,Fs2 ,v064
 .byte   N11 ,As2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Fs2
 .byte   N11 ,As2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   PEND 
@  #04 @015   ----------------------------------------
Label_01110692:
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Gs2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #04 @016   ----------------------------------------
Label_011106AD:
 .byte   W24
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W36
 .byte   Fn2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W36
 .byte   PEND 
@  #04 @017   ----------------------------------------
Label_011106BD:
 .byte   N11 ,An2 ,v064
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   W24
 .byte   An2
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   W36
 .byte   An2
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #04 @018   ----------------------------------------
Label_011106D8:
 .byte   W24
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   PEND 
@  #04 @019   ----------------------------------------
Label_011106E8:
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W36
 .byte   Fn2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Gn2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #04 @020   ----------------------------------------
Label_01110703:
 .byte   W24
 .byte   N11 ,Gn2 ,v064
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Ds2
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N11
 .byte   N11 ,As2
 .byte   W12
 .byte   N11
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #04 @021   ----------------------------------------
 .byte   PATT
  .word Label_01110667
@  #04 @022   ----------------------------------------
 .byte   PATT
  .word Label_01110682
@  #04 @023   ----------------------------------------
 .byte   PATT
  .word Label_01110692
@  #04 @024   ----------------------------------------
 .byte   PATT
  .word Label_011106AD
@  #04 @025   ----------------------------------------
 .byte   PATT
  .word Label_011106BD
@  #04 @026   ----------------------------------------
 .byte   PATT
  .word Label_011106D8
@  #04 @027   ----------------------------------------
 .byte   PATT
  .word Label_011106E8
@  #04 @028   ----------------------------------------
Label_0111073C:
 .byte   W24
 .byte   N11 ,Gn2 ,v064
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W72
 .byte   PEND 
@  #04 @029   ----------------------------------------
 .byte   PATT
  .word Label_01110649
@  #04 @030   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn1 ,v051
 .byte   W01
@  #04 @031   ----------------------------------------
 .byte   PATT
  .word Label_01110656
@  #04 @032   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cs2 ,v051
 .byte   Fs2
 .byte   W01
@  #04 @033   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @034   ----------------------------------------
 .byte   PATT
  .word Label_011105E7
@  #04 @035   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @036   ----------------------------------------
 .byte   PATT
  .word Label_0111061A
@  #04 @037   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @038   ----------------------------------------
 .byte   PATT
  .word Label_011105E7
@  #04 @039   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @040   ----------------------------------------
 .byte   PATT
  .word Label_0111061A
@  #04 @041   ----------------------------------------
Label_01110785:
 .byte   N11 ,Fs2 ,v064
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Fs2
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #04 @042   ----------------------------------------
Label_01110798:
 .byte   W24
 .byte   N11 ,Fs2 ,v064
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Fs2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   PEND 
@  #04 @043   ----------------------------------------
Label_011107A4:
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Gs2
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #04 @044   ----------------------------------------
Label_011107B7:
 .byte   W24
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Cs3
 .byte   W36
 .byte   Fn2
 .byte   N11 ,Cs3
 .byte   W36
 .byte   PEND 
@  #04 @045   ----------------------------------------
Label_011107C3:
 .byte   N11 ,An2 ,v064
 .byte   N11 ,En3
 .byte   W24
 .byte   An2
 .byte   N11 ,En3
 .byte   W36
 .byte   An2
 .byte   N11 ,En3
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #04 @046   ----------------------------------------
Label_011107D6:
 .byte   W24
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Gs2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   PEND 
@  #04 @047   ----------------------------------------
Label_011107E2:
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Cs3
 .byte   W36
 .byte   Fn2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Gn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #04 @048   ----------------------------------------
Label_011107F5:
 .byte   W24
 .byte   N11 ,Gn2 ,v064
 .byte   N11 ,Ds3
 .byte   W36
 .byte   Ds2
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N11
 .byte   N11 ,As2
 .byte   W12
 .byte   N11
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #04 @049   ----------------------------------------
 .byte   PATT
  .word Label_01110785
@  #04 @050   ----------------------------------------
 .byte   PATT
  .word Label_01110798
@  #04 @051   ----------------------------------------
 .byte   PATT
  .word Label_011107A4
@  #04 @052   ----------------------------------------
 .byte   PATT
  .word Label_011107B7
@  #04 @053   ----------------------------------------
 .byte   PATT
  .word Label_011107C3
@  #04 @054   ----------------------------------------
 .byte   PATT
  .word Label_011107D6
@  #04 @055   ----------------------------------------
 .byte   PATT
  .word Label_011107E2
@  #04 @056   ----------------------------------------
 .byte   PATT
  .word Label_011107F5
@  #04 @057   ----------------------------------------
 .byte   PATT
  .word Label_01110649
@  #04 @058   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn1 ,v051
 .byte   W01
@  #04 @059   ----------------------------------------
 .byte   PATT
  .word Label_01110656
@  #04 @060   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cs2 ,v051
 .byte   Fs2
 .byte   W01
@  #04 @061   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @062   ----------------------------------------
 .byte   PATT
  .word Label_011105E7
@  #04 @063   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @064   ----------------------------------------
 .byte   PATT
  .word Label_0111061A
@  #04 @065   ----------------------------------------
Label_0111085C:
 .byte   TIE ,Bn1 ,v052
 .byte   TIE ,Ds2
 .byte   N05 ,Gs4 ,v036
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W03
 .byte   W03
 .byte   Gs4
 .byte   W01
 .byte   W04
 .byte   W01
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W01
 .byte   W01
 .byte   W04
 .byte   Ds4 ,v040
 .byte   W03
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   W02
 .byte   W01
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W01
 .byte   W03
 .byte   W02
 .byte   Ds4
 .byte   W03
 .byte   W03
 .byte   Gs4 ,v044
 .byte   W04
 .byte   W01
 .byte   W01
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W01
 .byte   W04
 .byte   W01
 .byte   Ds4
 .byte   W02
 .byte   W04
 .byte   PEND 
@  #04 @066   ----------------------------------------
Label_01110896:
 .byte   N05 ,Gs4 ,v044
 .byte   W04
 .byte   W02
 .byte   Fs4 ,v048
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W01
 .byte   W01
 .byte   W04
 .byte   Gs4
 .byte   W04
 .byte   W02
 .byte   Fs4
 .byte   W02
 .byte   W04
 .byte   Cs4
 .byte   W06
 .byte   Ds4 ,v052
 .byte   W02
 .byte   W04
 .byte   Gs4
 .byte   W04
 .byte   W02
 .byte   Fs4
 .byte   W03
 .byte   W03
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   Gs4 ,v056
 .byte   W03
 .byte   W03
 .byte   Fs4
 .byte   W05
 .byte   W01
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W01
 .byte   W04
 .byte   PEND 
 .byte   EOT
 .byte   Bn1 ,v051
 .byte   W01
@  #04 @067   ----------------------------------------
Label_011108CD:
 .byte   TIE ,Cs2 ,v064
 .byte   TIE ,Ds2
 .byte   TIE ,Fs2
 .byte   N05 ,Gs4 ,v056
 .byte   W03
 .byte   W03
 .byte   Fs4 ,v060
 .byte   W05
 .byte   W01
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W01
 .byte   W05
 .byte   Gs4
 .byte   W03
 .byte   W03
 .byte   Fs4
 .byte   W05
 .byte   W01
 .byte   Cs4 ,v064
 .byte   W06
 .byte   Ds4
 .byte   W01
 .byte   W05
 .byte   Gs4
 .byte   W03
 .byte   W03
 .byte   Fs4
 .byte   W04
 .byte   W02
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4 ,v068
 .byte   W02
 .byte   W04
 .byte   Fs4
 .byte   W04
 .byte   W02
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   PEND 
@  #04 @068   ----------------------------------------
Label_01110904:
 .byte   N05 ,Gs4 ,v068
 .byte   W02
 .byte   W04
 .byte   Fs4 ,v072
 .byte   W04
 .byte   W02
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W02
 .byte   W04
 .byte   Fs4
 .byte   W04
 .byte   W02
 .byte   Cs4 ,v076
 .byte   W05
 .byte   W01
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W01
 .byte   W05
 .byte   Fs4
 .byte   W03
 .byte   W03
 .byte   Cs4
 .byte   W05
 .byte   W01
 .byte   Ds4
 .byte   W06
 .byte   Gs4 ,v080
 .byte   W01
 .byte   W05
 .byte   Fs4
 .byte   W03
 .byte   W03
 .byte   Cs4
 .byte   W05
 .byte   W01
 .byte   Ds4
 .byte   W05
 .byte   PEND 
 .byte   EOT
 .byte   Cs2 ,v051
 .byte   Fs2
 .byte   W01
@  #04 @069   ----------------------------------------
Label_0111093A:
 .byte   W24
 .byte   N32 ,An2 ,v064
 .byte   W24
 .byte   N11 ,En4 ,v080
 .byte   W12
 .byte   Gs2 ,v064
 .byte   N11 ,Gs4 ,v080
 .byte   W12
 .byte   Fs2 ,v064
 .byte   N11 ,Cs5 ,v080
 .byte   W12
 .byte   TIE ,Gs2 ,v064
 .byte   N11 ,Gs4 ,v080
 .byte   W12
 .byte   PEND 
@  #04 @070   ----------------------------------------
Label_01110957:
 .byte   N11 ,Ds4 ,v080
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   Fs4
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #04 @071   ----------------------------------------
Label_0111096D:
 .byte   TIE ,Cs2 ,v064
 .byte   N11 ,Fn3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
@  #04 @072   ----------------------------------------
Label_01110983:
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Cs2
 .byte   W01
@  #04 @073   ----------------------------------------
Label_01110999:
 .byte   W24
 .byte   N32 ,An2 ,v064
 .byte   W24
 .byte   N11 ,En4 ,v080
 .byte   W12
 .byte   Gs2 ,v064
 .byte   N11 ,Gs4 ,v080
 .byte   W12
 .byte   Fs2 ,v064
 .byte   N11 ,Cs5 ,v080
 .byte   W12
 .byte   TIE ,Gs2 ,v064
 .byte   N11 ,Gs4 ,v080
 .byte   W12
 .byte   PEND 
@  #04 @074   ----------------------------------------
 .byte   PATT
  .word Label_01110957
@  #04 @075   ----------------------------------------
 .byte   EOT
 .byte   Gs2
 .byte   W01
Label_011109BE:
 .byte   TIE ,As2 ,v064
 .byte   N11 ,Fn3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
@  #04 @076   ----------------------------------------
 .byte   PATT
  .word Label_01110983
@  #04 @077   ----------------------------------------
 .byte   EOT
 .byte   As2
 .byte   W01
Label_011109DC:
 .byte   W24
 .byte   N32 ,Dn2 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs2 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   Bn1 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   TIE ,Cs2 ,v064
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   PEND 
@  #04 @078   ----------------------------------------
Label_011109FC:
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Cs2
 .byte   W01
@  #04 @079   ----------------------------------------
Label_01110A12:
 .byte   N80 ,Ds2 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   TIE ,Dn2 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   PEND 
@  #04 @080   ----------------------------------------
Label_01110A2D:
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   An3
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Dn2
 .byte   W01
@  #04 @081   ----------------------------------------
Label_01110A43:
 .byte   N68 ,Gn2 ,v064
 .byte   N11 ,Dn3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   N24 ,Cn3 ,v064
 .byte   N11 ,Dn3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #04 @082   ----------------------------------------
Label_01110A5E:
 .byte   N11 ,Cn3 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   PEND 
@  #04 @083   ----------------------------------------
Label_01110A71:
 .byte   N68 ,Cs3 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   TIE ,Fs2 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   PEND 
@  #04 @084   ----------------------------------------
Label_01110A8C:
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Fs3
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Fs2
 .byte   W01
@  #04 @085   ----------------------------------------
Label_01110AA2:
 .byte   N11 ,Bn1 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Bn1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Bn1 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Bn1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #04 @086   ----------------------------------------
Label_01110AC4:
 .byte   N11 ,Cs2 ,v064
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cs2 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cs2 ,v064
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Cs2 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #04 @087   ----------------------------------------
Label_01110AE6:
 .byte   N11 ,Dn2 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Dn2 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Dn2 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Dn2 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #04 @088   ----------------------------------------
Label_01110B08:
 .byte   N11 ,En1 ,v064
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En1 ,v064
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   En1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   PEND 
@  #04 @089   ----------------------------------------
Label_01110B2A:
 .byte   N11 ,Gn1 ,v064
 .byte   N11 ,Gn3 ,v080
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Gn1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Gn1 ,v064
 .byte   N11 ,Gn3 ,v080
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Gn1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   PEND 
@  #04 @090   ----------------------------------------
Label_01110B4C:
 .byte   N11 ,Fs1 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Fs1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Fs1 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Fs1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #04 @091   ----------------------------------------
Label_01110B6E:
 .byte   N11 ,En1 ,v064
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   En1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   En1 ,v064
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   En1 ,v064
 .byte   N11 ,Dn4 ,v080
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   PEND 
@  #04 @092   ----------------------------------------
Label_01110B90:
 .byte   N11 ,Fs1 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Fs1 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Fs1 ,v064
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Fs1 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   PEND 
@  #04 @093   ----------------------------------------
 .byte   PATT
  .word Label_01110AA2
@  #04 @094   ----------------------------------------
 .byte   PATT
  .word Label_01110AC4
@  #04 @095   ----------------------------------------
 .byte   PATT
  .word Label_01110AE6
@  #04 @096   ----------------------------------------
 .byte   PATT
  .word Label_01110B08
@  #04 @097   ----------------------------------------
 .byte   PATT
  .word Label_01110B2A
@  #04 @098   ----------------------------------------
 .byte   PATT
  .word Label_01110B4C
@  #04 @099   ----------------------------------------
 .byte   PATT
  .word Label_01110B6E
@  #04 @100   ----------------------------------------
 .byte   PATT
  .word Label_01110B6E
@  #04 @101   ----------------------------------------
Label_01110BDA:
 .byte   N11 ,An1 ,v064
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   An1 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   An1 ,v064
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   An1 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   PEND 
@  #04 @102   ----------------------------------------
 .byte   PATT
  .word Label_01110BDA
@  #04 @103   ----------------------------------------
Label_01110C01:
 .byte   W24
 .byte   N05 ,Bn2 ,v064
 .byte   N05 ,Fs3
 .byte   N05 ,An3
 .byte   W60
 .byte   Dn3
 .byte   N05 ,Fs3
 .byte   N05 ,Gn3
 .byte   W12
 .byte   PEND 
@  #04 @104   ----------------------------------------
Label_01110C11:
 .byte   W36
 .byte   N05 ,Bn2 ,v064
 .byte   N05 ,En3
 .byte   N05 ,Fs3
 .byte   W36
 .byte   Bn2
 .byte   N05 ,En3
 .byte   N05 ,Fs3
 .byte   W24
 .byte   PEND 
@  #04 @105   ----------------------------------------
 .byte   PATT
  .word Label_01110C01
@  #04 @106   ----------------------------------------
 .byte   PATT
  .word Label_01110C11
@  #04 @107   ----------------------------------------
 .byte   PATT
  .word Label_01110C01
@  #04 @108   ----------------------------------------
 .byte   PATT
  .word Label_01110C11
@  #04 @109   ----------------------------------------
 .byte   PATT
  .word Label_01110C01
@  #04 @110   ----------------------------------------
 .byte   PATT
  .word Label_01110C11
@  #04 @111   ----------------------------------------
Label_01110C3F:
 .byte   W24
 .byte   N05 ,Dn3 ,v064
 .byte   N05 ,Fn3
 .byte   N05 ,Cn4
 .byte   W60
 .byte   Fn3
 .byte   N05 ,Gn3
 .byte   N05 ,As3
 .byte   W12
 .byte   PEND 
@  #04 @112   ----------------------------------------
Label_01110C4F:
 .byte   W36
 .byte   N05 ,As2 ,v064
 .byte   N05 ,Dn3
 .byte   N05 ,An3
 .byte   W36
 .byte   Dn3
 .byte   N05 ,Ds3
 .byte   N05 ,Gn3
 .byte   W24
 .byte   PEND 
@  #04 @113   ----------------------------------------
 .byte   PATT
  .word Label_01110C3F
@  #04 @114   ----------------------------------------
 .byte   PATT
  .word Label_01110C4F
@  #04 @115   ----------------------------------------
 .byte   PATT
  .word Label_01110C3F
@  #04 @116   ----------------------------------------
 .byte   PATT
  .word Label_01110C4F
@  #04 @117   ----------------------------------------
Label_01110C73:
 .byte   W24
 .byte   N11 ,Dn3 ,v064
 .byte   N11 ,Fn3
 .byte   N11 ,Cn4
 .byte   W60
 .byte   Fn3
 .byte   N11 ,Gn3
 .byte   N11 ,As3
 .byte   W12
 .byte   PEND 
@  #04 @118   ----------------------------------------
Label_01110C83:
 .byte   W36
 .byte   N11 ,As2 ,v064
 .byte   N11 ,Dn3
 .byte   N11 ,An3
 .byte   W36
 .byte   TIE ,As2
 .byte   TIE ,Cn3
 .byte   TIE ,Cs3
 .byte   TIE ,Fn3
 .byte   TIE ,Gn3
 .byte   W24
 .byte   PEND 
@  #04 @119   ----------------------------------------
 .byte   W96
@  #04 @120   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   As2 ,v060
 .byte   Cs3 ,v065
 .byte   Gn3
 .byte   W01
@  #04 @121   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @122   ----------------------------------------
 .byte   PATT
  .word Label_011105E7
@  #04 @123   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @124   ----------------------------------------
 .byte   PATT
  .word Label_0111061A
@  #04 @125   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @126   ----------------------------------------
 .byte   PATT
  .word Label_011105E7
@  #04 @127   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @128   ----------------------------------------
 .byte   PATT
  .word Label_0111061A
@  #04 @129   ----------------------------------------
 .byte   GOTO
  .word Label_01110649
@  #04 @130   ----------------------------------------
 .byte   PATT
  .word Label_01110649
@  #04 @131   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn1 ,v051
 .byte   W01
@  #04 @132   ----------------------------------------
 .byte   PATT
  .word Label_01110656
@  #04 @133   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cs2 ,v051
 .byte   Fs2
 .byte   W01
@  #04 @134   ----------------------------------------
 .byte   W96
@  #04 @135   ----------------------------------------
 .byte   PATT
  .word Label_01110667
@  #04 @136   ----------------------------------------
 .byte   PATT
  .word Label_01110682
@  #04 @137   ----------------------------------------
 .byte   PATT
  .word Label_01110692
@  #04 @138   ----------------------------------------
 .byte   PATT
  .word Label_011106AD
@  #04 @139   ----------------------------------------
 .byte   PATT
  .word Label_011106BD
@  #04 @140   ----------------------------------------
 .byte   PATT
  .word Label_011106D8
@  #04 @141   ----------------------------------------
 .byte   PATT
  .word Label_011106E8
@  #04 @142   ----------------------------------------
 .byte   PATT
  .word Label_01110703
@  #04 @143   ----------------------------------------
 .byte   PATT
  .word Label_01110667
@  #04 @144   ----------------------------------------
 .byte   PATT
  .word Label_01110682
@  #04 @145   ----------------------------------------
 .byte   PATT
  .word Label_01110692
@  #04 @146   ----------------------------------------
 .byte   PATT
  .word Label_011106AD
@  #04 @147   ----------------------------------------
 .byte   PATT
  .word Label_011106BD
@  #04 @148   ----------------------------------------
 .byte   PATT
  .word Label_011106D8
@  #04 @149   ----------------------------------------
 .byte   PATT
  .word Label_011106E8
@  #04 @150   ----------------------------------------
 .byte   PATT
  .word Label_0111073C
@  #04 @151   ----------------------------------------
 .byte   PATT
  .word Label_01110649
@  #04 @152   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn1 ,v051
 .byte   W01
@  #04 @153   ----------------------------------------
 .byte   PATT
  .word Label_01110656
@  #04 @154   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cs2 ,v051
 .byte   Fs2
 .byte   W01
@  #04 @155   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @156   ----------------------------------------
 .byte   PATT
  .word Label_011105E7
@  #04 @157   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @158   ----------------------------------------
 .byte   PATT
  .word Label_0111061A
@  #04 @159   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @160   ----------------------------------------
 .byte   PATT
  .word Label_011105E7
@  #04 @161   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @162   ----------------------------------------
 .byte   PATT
  .word Label_0111061A
@  #04 @163   ----------------------------------------
 .byte   PATT
  .word Label_01110785
@  #04 @164   ----------------------------------------
 .byte   PATT
  .word Label_01110798
@  #04 @165   ----------------------------------------
 .byte   PATT
  .word Label_011107A4
@  #04 @166   ----------------------------------------
 .byte   PATT
  .word Label_011107B7
@  #04 @167   ----------------------------------------
 .byte   PATT
  .word Label_011107C3
@  #04 @168   ----------------------------------------
 .byte   PATT
  .word Label_011107D6
@  #04 @169   ----------------------------------------
 .byte   PATT
  .word Label_011107E2
@  #04 @170   ----------------------------------------
 .byte   PATT
  .word Label_011107F5
@  #04 @171   ----------------------------------------
 .byte   PATT
  .word Label_01110785
@  #04 @172   ----------------------------------------
 .byte   PATT
  .word Label_01110798
@  #04 @173   ----------------------------------------
 .byte   PATT
  .word Label_011107A4
@  #04 @174   ----------------------------------------
 .byte   PATT
  .word Label_011107B7
@  #04 @175   ----------------------------------------
 .byte   PATT
  .word Label_011107C3
@  #04 @176   ----------------------------------------
 .byte   PATT
  .word Label_011107D6
@  #04 @177   ----------------------------------------
 .byte   PATT
  .word Label_011107E2
@  #04 @178   ----------------------------------------
 .byte   PATT
  .word Label_011107F5
@  #04 @179   ----------------------------------------
 .byte   PATT
  .word Label_01110649
@  #04 @180   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn1 ,v051
 .byte   W01
@  #04 @181   ----------------------------------------
 .byte   PATT
  .word Label_01110656
@  #04 @182   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cs2 ,v051
 .byte   Fs2
 .byte   W01
@  #04 @183   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @184   ----------------------------------------
 .byte   PATT
  .word Label_011105E7
@  #04 @185   ----------------------------------------
 .byte   PATT
  .word Label_01110602
@  #04 @186   ----------------------------------------
 .byte   PATT
  .word Label_0111061A
@  #04 @187   ----------------------------------------
 .byte   PATT
  .word Label_0111085C
@  #04 @188   ----------------------------------------
 .byte   PATT
  .word Label_01110896
@  #04 @189   ----------------------------------------
 .byte   EOT
 .byte   Bn1 ,v051
 .byte   W01
@  #04 @190   ----------------------------------------
 .byte   PATT
  .word Label_011108CD
@  #04 @191   ----------------------------------------
 .byte   PATT
  .word Label_01110904
@  #04 @192   ----------------------------------------
 .byte   EOT
 .byte   Cs2 ,v051
 .byte   Fs2
 .byte   W01
@  #04 @193   ----------------------------------------
 .byte   PATT
  .word Label_0111093A
@  #04 @194   ----------------------------------------
 .byte   PATT
  .word Label_01110957
@  #04 @195   ----------------------------------------
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #04 @196   ----------------------------------------
 .byte   PATT
  .word Label_0111096D
@  #04 @197   ----------------------------------------
 .byte   PATT
  .word Label_01110983
@  #04 @198   ----------------------------------------
 .byte   EOT
 .byte   Cs2
 .byte   W01
@  #04 @199   ----------------------------------------
 .byte   PATT
  .word Label_01110999
@  #04 @200   ----------------------------------------
 .byte   PATT
  .word Label_01110957
@  #04 @201   ----------------------------------------
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #04 @202   ----------------------------------------
 .byte   PATT
  .word Label_011109BE
@  #04 @203   ----------------------------------------
 .byte   PATT
  .word Label_01110983
@  #04 @204   ----------------------------------------
 .byte   EOT
 .byte   As2
 .byte   W01
@  #04 @205   ----------------------------------------
 .byte   PATT
  .word Label_011109DC
@  #04 @206   ----------------------------------------
 .byte   PATT
  .word Label_011109FC
@  #04 @207   ----------------------------------------
 .byte   EOT
 .byte   Cs2
 .byte   W01
@  #04 @208   ----------------------------------------
 .byte   PATT
  .word Label_01110A12
@  #04 @209   ----------------------------------------
 .byte   PATT
  .word Label_01110A2D
@  #04 @210   ----------------------------------------
 .byte   EOT
 .byte   Dn2
 .byte   W01
@  #04 @211   ----------------------------------------
 .byte   PATT
  .word Label_01110A43
@  #04 @212   ----------------------------------------
 .byte   PATT
  .word Label_01110A5E
@  #04 @213   ----------------------------------------
 .byte   PATT
  .word Label_01110A71
@  #04 @214   ----------------------------------------
 .byte   PATT
  .word Label_01110A8C
@  #04 @215   ----------------------------------------
 .byte   EOT
 .byte   Fs2
 .byte   W01
@  #04 @216   ----------------------------------------
 .byte   PATT
  .word Label_01110AA2
@  #04 @217   ----------------------------------------
 .byte   PATT
  .word Label_01110AC4
@  #04 @218   ----------------------------------------
 .byte   PATT
  .word Label_01110AE6
@  #04 @219   ----------------------------------------
 .byte   PATT
  .word Label_01110B08
@  #04 @220   ----------------------------------------
 .byte   PATT
  .word Label_01110B2A
@  #04 @221   ----------------------------------------
 .byte   PATT
  .word Label_01110B4C
@  #04 @222   ----------------------------------------
 .byte   PATT
  .word Label_01110B6E
@  #04 @223   ----------------------------------------
 .byte   PATT
  .word Label_01110B90
@  #04 @224   ----------------------------------------
 .byte   PATT
  .word Label_01110AA2
@  #04 @225   ----------------------------------------
 .byte   PATT
  .word Label_01110AC4
@  #04 @226   ----------------------------------------
 .byte   PATT
  .word Label_01110AE6
@  #04 @227   ----------------------------------------
 .byte   PATT
  .word Label_01110B08
@  #04 @228   ----------------------------------------
 .byte   PATT
  .word Label_01110B2A
@  #04 @229   ----------------------------------------
 .byte   PATT
  .word Label_01110B4C
@  #04 @230   ----------------------------------------
 .byte   PATT
  .word Label_01110B6E
@  #04 @231   ----------------------------------------
 .byte   PATT
  .word Label_01110B6E
@  #04 @232   ----------------------------------------
 .byte   PATT
  .word Label_01110BDA
@  #04 @233   ----------------------------------------
 .byte   PATT
  .word Label_01110BDA
@  #04 @234   ----------------------------------------
 .byte   PATT
  .word Label_01110C01
@  #04 @235   ----------------------------------------
 .byte   PATT
  .word Label_01110C11
@  #04 @236   ----------------------------------------
 .byte   PATT
  .word Label_01110C01
@  #04 @237   ----------------------------------------
 .byte   PATT
  .word Label_01110C11
@  #04 @238   ----------------------------------------
 .byte   PATT
  .word Label_01110C01
@  #04 @239   ----------------------------------------
 .byte   PATT
  .word Label_01110C11
@  #04 @240   ----------------------------------------
 .byte   PATT
  .word Label_01110C01
@  #04 @241   ----------------------------------------
 .byte   PATT
  .word Label_01110C11
@  #04 @242   ----------------------------------------
 .byte   PATT
  .word Label_01110C3F
@  #04 @243   ----------------------------------------
 .byte   PATT
  .word Label_01110C4F
@  #04 @244   ----------------------------------------
 .byte   PATT
  .word Label_01110C3F
@  #04 @245   ----------------------------------------
 .byte   PATT
  .word Label_01110C4F
@  #04 @246   ----------------------------------------
 .byte   PATT
  .word Label_01110C3F
@  #04 @247   ----------------------------------------
 .byte   PATT
  .word Label_01110C4F
@  #04 @248   ----------------------------------------
 .byte   PATT
  .word Label_01110C73
@  #04 @249   ----------------------------------------
 .byte   PATT
  .word Label_01110C83
@  #04 @250   ----------------------------------------
 .byte   W96
@  #04 @251   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   As2 ,v060
 .byte   Cs3 ,v065
 .byte   Gn3
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

.align 2, 0
song07_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 121
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N23 ,Cs2 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W78
 .byte   W01
 .byte   N11 ,As1 ,v080
 .byte   W12
@  #05 @001   ----------------------------------------
Label_01110F48:
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Bn1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N23 ,Bn1
 .byte   W12
 .byte   N11 ,Gn2 ,v080
 .byte   W12
 .byte   PEND 
@  #05 @002   ----------------------------------------
Label_01110F6A:
 .byte   W60
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N05 ,Fn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #05 @003   ----------------------------------------
Label_01110F7A:
 .byte   N11 ,Fn1 ,v096
 .byte   W24
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N11 ,Cn2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   An1
 .byte   W12
 .byte   PEND 
@  #05 @004   ----------------------------------------
Label_01110F90:
 .byte   N23 ,Cs2 ,v080
 .byte   W84
 .byte   N11 ,As1
 .byte   W12
 .byte   PEND 
@  #05 @005   ----------------------------------------
 .byte   PATT
  .word Label_01110F48
@  #05 @006   ----------------------------------------
 .byte   PATT
  .word Label_01110F6A
@  #05 @007   ----------------------------------------
 .byte   PATT
  .word Label_01110F7A
@  #05 @008   ----------------------------------------
Label_01110FA7:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,As1 ,v052
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,As1 ,v052
 .byte   W12
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1 ,v052
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1 ,v052
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #05 @009   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @010   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @011   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @012   ----------------------------------------
Label_01110FDA:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N11 ,En1
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   N05
 .byte   N05 ,En1
 .byte   W06
 .byte   Cn1
 .byte   N05 ,En1
 .byte   W06
 .byte   PEND 
@  #05 @013   ----------------------------------------
Label_01110FF7:
 .byte   N11 ,Cn1 ,v080
 .byte   N23 ,Cs2 ,v096
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   PEND 
@  #05 @014   ----------------------------------------
Label_0111101D:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #05 @015   ----------------------------------------
Label_0111103F:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   PEND 
@  #05 @016   ----------------------------------------
Label_01111061:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   W12
 .byte   PEND 
@  #05 @017   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @018   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @019   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @020   ----------------------------------------
Label_0111108E:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W06
 .byte   N05 ,Cn1 ,v080
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #05 @021   ----------------------------------------
 .byte   PATT
  .word Label_01110FF7
@  #05 @022   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @023   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @024   ----------------------------------------
 .byte   PATT
  .word Label_01111061
@  #05 @025   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @026   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @027   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @028   ----------------------------------------
 .byte   PATT
  .word Label_0111108E
@  #05 @029   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @030   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @031   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @032   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @033   ----------------------------------------
Label_011110EC:
 .byte   N23 ,Cs2 ,v096
 .byte   W84
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   PEND 
@  #05 @034   ----------------------------------------
 .byte   PATT
  .word Label_01110F48
@  #05 @035   ----------------------------------------
 .byte   PATT
  .word Label_01110F6A
@  #05 @036   ----------------------------------------
 .byte   PATT
  .word Label_01110F7A
@  #05 @037   ----------------------------------------
 .byte   PATT
  .word Label_01110F90
@  #05 @038   ----------------------------------------
 .byte   PATT
  .word Label_01110F48
@  #05 @039   ----------------------------------------
 .byte   PATT
  .word Label_01110F6A
@  #05 @040   ----------------------------------------
 .byte   PATT
  .word Label_01110F7A
@  #05 @041   ----------------------------------------
 .byte   PATT
  .word Label_01110FF7
@  #05 @042   ----------------------------------------
Label_0111111D:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   N23 ,Dn1 ,v080
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   PEND 
@  #05 @043   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @044   ----------------------------------------
Label_01111145:
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   W12
 .byte   PEND 
@  #05 @045   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @046   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @047   ----------------------------------------
Label_0111116D:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   PEND 
@  #05 @048   ----------------------------------------
 .byte   PATT
  .word Label_01111061
@  #05 @049   ----------------------------------------
Label_01111193:
 .byte   N11 ,Cn1 ,v080
 .byte   N23 ,Cs2 ,v096
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N11 ,Cn1 ,v080
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,An2 ,v064
 .byte   W12
 .byte   PEND 
@  #05 @050   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @051   ----------------------------------------
 .byte   PATT
  .word Label_0111116D
@  #05 @052   ----------------------------------------
 .byte   PATT
  .word Label_01111061
@  #05 @053   ----------------------------------------
 .byte   PATT
  .word Label_0111116D
@  #05 @054   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @055   ----------------------------------------
 .byte   PATT
  .word Label_0111116D
@  #05 @056   ----------------------------------------
 .byte   PATT
  .word Label_01111061
@  #05 @057   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @058   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @059   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @060   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @061   ----------------------------------------
 .byte   PATT
  .word Label_011110EC
@  #05 @062   ----------------------------------------
 .byte   PATT
  .word Label_01110F48
@  #05 @063   ----------------------------------------
 .byte   PATT
  .word Label_01110F6A
@  #05 @064   ----------------------------------------
 .byte   PATT
  .word Label_01110F7A
@  #05 @065   ----------------------------------------
Label_01111203:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,As1 ,v052
 .byte   W12
 .byte   Cn1 ,v080
 .byte   N11 ,As1 ,v052
 .byte   W12
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1 ,v052
 .byte   W11
 .byte   W01
 .byte   N11
 .byte   W10
 .byte   W02
 .byte   N11
 .byte   W10
 .byte   W02
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1 ,v056
 .byte   W10
 .byte   W02
 .byte   N11
 .byte   W09
 .byte   W03
 .byte   N11
 .byte   W09
 .byte   W03
 .byte   PEND 
@  #05 @066   ----------------------------------------
Label_0111122D:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,As1 ,v056
 .byte   W08
 .byte   W04
 .byte   Cn1 ,v080
 .byte   N11 ,As1 ,v060
 .byte   W08
 .byte   W04
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1 ,v060
 .byte   W08
 .byte   W04
 .byte   N11
 .byte   W07
 .byte   W05
 .byte   N11
 .byte   W07
 .byte   W05
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1 ,v064
 .byte   W06
 .byte   W06
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   N11
 .byte   W06
 .byte   W06
 .byte   PEND 
@  #05 @067   ----------------------------------------
Label_01111259:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,As1 ,v064
 .byte   W05
 .byte   W07
 .byte   Cn1 ,v080
 .byte   N11 ,As1 ,v068
 .byte   W05
 .byte   W07
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1 ,v068
 .byte   W04
 .byte   W08
 .byte   N11
 .byte   W04
 .byte   W08
 .byte   N11
 .byte   W04
 .byte   W08
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1 ,v072
 .byte   W03
 .byte   W09
 .byte   N11
 .byte   W03
 .byte   W09
 .byte   N11
 .byte   W02
 .byte   W10
 .byte   PEND 
@  #05 @068   ----------------------------------------
Label_01111285:
 .byte   N11 ,Cn1 ,v080
 .byte   N11 ,As1 ,v072
 .byte   W02
 .byte   W10
 .byte   Cn1 ,v080
 .byte   N11 ,As1 ,v076
 .byte   W02
 .byte   W10
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1 ,v076
 .byte   W01
 .byte   W11
 .byte   N11
 .byte   W01
 .byte   W11
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1 ,v080
 .byte   N11 ,As1
 .byte   W12
 .byte   N11
 .byte   W11
 .byte   W01
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #05 @069   ----------------------------------------
Label_011112AD:
 .byte   W18
 .byte   N02 ,Cn1 ,v112
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05 ,Cn1 ,v096
 .byte   N11 ,Cs2 ,v127
 .byte   N11 ,An2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N05 ,Cn1 ,v096
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
 .byte   N11 ,An2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #05 @070   ----------------------------------------
Label_011112E1:
 .byte   N05 ,Cn1 ,v096
 .byte   N23 ,Cs2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N11 ,An2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   N11 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N23 ,Cs2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #05 @071   ----------------------------------------
Label_01111319:
 .byte   N05 ,Cn1 ,v096
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   PEND 
@  #05 @072   ----------------------------------------
Label_01111368:
 .byte   N05 ,Cn1 ,v096
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,As1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   PEND 
@  #05 @073   ----------------------------------------
Label_011113B7:
 .byte   N02 ,Cn1 ,v112
 .byte   N11 ,Fs1 ,v080
 .byte   W03
 .byte   N02 ,Cn1 ,v112
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W15
 .byte   N05 ,Cn1 ,v096
 .byte   N11 ,Cs2 ,v127
 .byte   N11 ,An2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N05 ,Cn1 ,v096
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
 .byte   N11 ,An2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #05 @074   ----------------------------------------
 .byte   PATT
  .word Label_011112E1
@  #05 @075   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @076   ----------------------------------------
Label_011113FD:
 .byte   N05 ,Cn1 ,v096
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N11 ,Cn1 ,v127
 .byte   N11 ,Dn1 ,v096
 .byte   N11 ,En2 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Cn1 ,v127
 .byte   N11 ,Dn1 ,v096
 .byte   N11 ,En2 ,v080
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   N02 ,Cn1 ,v127
 .byte   N11 ,Dn1 ,v096
 .byte   N11 ,En2 ,v080
 .byte   W03
 .byte   N02 ,Cn1 ,v096
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   PEND 
@  #05 @077   ----------------------------------------
Label_0111145C:
 .byte   W24
 .byte   N05 ,Cn1 ,v096
 .byte   N11 ,Cs2 ,v127
 .byte   N11 ,An2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N05 ,Cn1 ,v096
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
 .byte   N11 ,An2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #05 @078   ----------------------------------------
 .byte   PATT
  .word Label_011112E1
@  #05 @079   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @080   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @081   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @082   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @083   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @084   ----------------------------------------
Label_011114A8:
 .byte   N05 ,Cn1 ,v096
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Fs1 ,v080
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N05 ,Dn1
 .byte   N05 ,Dn2 ,v112
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1
 .byte   N05 ,Cn2 ,v112
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1
 .byte   N05 ,Bn1 ,v112
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Dn1
 .byte   N05 ,An1 ,v112
 .byte   W06
 .byte   PEND 
@  #05 @085   ----------------------------------------
Label_01111502:
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   N11 ,Cs2 ,v127
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   PEND 
@  #05 @086   ----------------------------------------
Label_01111530:
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   PEND 
@  #05 @087   ----------------------------------------
 .byte   PATT
  .word Label_01111530
@  #05 @088   ----------------------------------------
 .byte   PATT
  .word Label_01111530
@  #05 @089   ----------------------------------------
Label_01111563:
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   N11 ,An2 ,v080
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   PEND 
@  #05 @090   ----------------------------------------
 .byte   PATT
  .word Label_01111530
@  #05 @091   ----------------------------------------
 .byte   PATT
  .word Label_01111530
@  #05 @092   ----------------------------------------
Label_01111597:
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N23 ,Cn1 ,v096
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,As1 ,v080
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Cs2
 .byte   W06
 .byte   Cn1
 .byte   N05 ,An2
 .byte   W06
 .byte   Cn1
 .byte   N05 ,Cs2
 .byte   W06
 .byte   Cn1
 .byte   N05 ,An2
 .byte   W06
 .byte   PEND 
@  #05 @093   ----------------------------------------
Label_011115C8:
 .byte   N05 ,Cn1 ,v096
 .byte   N11 ,Cs2 ,v127
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W01
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   PEND 
@  #05 @094   ----------------------------------------
Label_0111160D:
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   PEND 
@  #05 @095   ----------------------------------------
Label_0111164C:
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   PEND 
@  #05 @096   ----------------------------------------
 .byte   PATT
  .word Label_0111160D
@  #05 @097   ----------------------------------------
Label_0111168E:
 .byte   N05 ,Cn1 ,v096
 .byte   N11 ,An2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   N05
 .byte   N23 ,Dn1
 .byte   W06
 .byte   N05 ,Cn1
 .byte   W06
 .byte   N05
 .byte   N11 ,Ds2 ,v112
 .byte   W06
 .byte   N05 ,Cn1 ,v096
 .byte   W06
 .byte   PEND 
@  #05 @098   ----------------------------------------
 .byte   PATT
  .word Label_0111160D
@  #05 @099   ----------------------------------------
 .byte   PATT
  .word Label_0111164C
@  #05 @100   ----------------------------------------
 .byte   PATT
  .word Label_0111160D
@  #05 @101   ----------------------------------------
 .byte   PATT
  .word Label_0111164C
@  #05 @102   ----------------------------------------
 .byte   PATT
  .word Label_0111160D
@  #05 @103   ----------------------------------------
Label_011116E9:
 .byte   N11 ,Cn1 ,v096
 .byte   N23 ,Cs2 ,v112
 .byte   W12
 .byte   N11 ,Cn1 ,v096
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #05 @104   ----------------------------------------
Label_01111703:
 .byte   N11 ,Cn1 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N23 ,Dn1
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   Cn1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   PEND 
@  #05 @105   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @106   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @107   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @108   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @109   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @110   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @111   ----------------------------------------
Label_01111736:
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Gn2 ,v112
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   N23 ,Dn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Dn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   PEND 
@  #05 @112   ----------------------------------------
Label_01111769:
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   N23 ,Dn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Dn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   PEND 
@  #05 @113   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @114   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @115   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @116   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @117   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @118   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @119   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @120   ----------------------------------------
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   N23 ,Dn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Dn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1
 .byte   W06
 .byte   Cn1
 .byte   N05 ,Dn1
 .byte   W06
 .byte   Cn1
 .byte   N05 ,Dn1
 .byte   W06
 .byte   Cn1
 .byte   N05 ,Dn1
 .byte   W06
@  #05 @121   ----------------------------------------
 .byte   N23 ,Cs2 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W78
 .byte   W01
 .byte   N11 ,As1 ,v080
 .byte   W12
@  #05 @122   ----------------------------------------
 .byte   PATT
  .word Label_01110F48
@  #05 @123   ----------------------------------------
 .byte   PATT
  .word Label_01110F6A
@  #05 @124   ----------------------------------------
 .byte   PATT
  .word Label_01110F7A
@  #05 @125   ----------------------------------------
 .byte   PATT
  .word Label_01110F90
@  #05 @126   ----------------------------------------
 .byte   PATT
  .word Label_01110F48
@  #05 @127   ----------------------------------------
 .byte   PATT
  .word Label_01110F6A
@  #05 @128   ----------------------------------------
 .byte   PATT
  .word Label_01110F7A
@  #05 @129   ----------------------------------------
 .byte   GOTO
  .word Label_01110FA7
@  #05 @130   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @131   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @132   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @133   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @134   ----------------------------------------
 .byte   PATT
  .word Label_01110FDA
@  #05 @135   ----------------------------------------
 .byte   PATT
  .word Label_01110FF7
@  #05 @136   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @137   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @138   ----------------------------------------
 .byte   PATT
  .word Label_01111061
@  #05 @139   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @140   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @141   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @142   ----------------------------------------
 .byte   PATT
  .word Label_0111108E
@  #05 @143   ----------------------------------------
 .byte   PATT
  .word Label_01110FF7
@  #05 @144   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @145   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @146   ----------------------------------------
 .byte   PATT
  .word Label_01111061
@  #05 @147   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @148   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @149   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @150   ----------------------------------------
 .byte   PATT
  .word Label_0111108E
@  #05 @151   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @152   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @153   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @154   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @155   ----------------------------------------
 .byte   PATT
  .word Label_011110EC
@  #05 @156   ----------------------------------------
 .byte   PATT
  .word Label_01110F48
@  #05 @157   ----------------------------------------
 .byte   PATT
  .word Label_01110F6A
@  #05 @158   ----------------------------------------
 .byte   PATT
  .word Label_01110F7A
@  #05 @159   ----------------------------------------
 .byte   PATT
  .word Label_01110F90
@  #05 @160   ----------------------------------------
 .byte   PATT
  .word Label_01110F48
@  #05 @161   ----------------------------------------
 .byte   PATT
  .word Label_01110F6A
@  #05 @162   ----------------------------------------
 .byte   PATT
  .word Label_01110F7A
@  #05 @163   ----------------------------------------
 .byte   PATT
  .word Label_01110FF7
@  #05 @164   ----------------------------------------
 .byte   PATT
  .word Label_0111111D
@  #05 @165   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @166   ----------------------------------------
 .byte   PATT
  .word Label_01111145
@  #05 @167   ----------------------------------------
 .byte   PATT
  .word Label_0111103F
@  #05 @168   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @169   ----------------------------------------
 .byte   PATT
  .word Label_0111116D
@  #05 @170   ----------------------------------------
 .byte   PATT
  .word Label_01111061
@  #05 @171   ----------------------------------------
 .byte   PATT
  .word Label_01111193
@  #05 @172   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @173   ----------------------------------------
 .byte   PATT
  .word Label_0111116D
@  #05 @174   ----------------------------------------
 .byte   PATT
  .word Label_01111061
@  #05 @175   ----------------------------------------
 .byte   PATT
  .word Label_0111116D
@  #05 @176   ----------------------------------------
 .byte   PATT
  .word Label_0111101D
@  #05 @177   ----------------------------------------
 .byte   PATT
  .word Label_0111116D
@  #05 @178   ----------------------------------------
 .byte   PATT
  .word Label_01111061
@  #05 @179   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @180   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @181   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @182   ----------------------------------------
 .byte   PATT
  .word Label_01110FA7
@  #05 @183   ----------------------------------------
 .byte   PATT
  .word Label_011110EC
@  #05 @184   ----------------------------------------
 .byte   PATT
  .word Label_01110F48
@  #05 @185   ----------------------------------------
 .byte   PATT
  .word Label_01110F6A
@  #05 @186   ----------------------------------------
 .byte   PATT
  .word Label_01110F7A
@  #05 @187   ----------------------------------------
 .byte   PATT
  .word Label_01111203
@  #05 @188   ----------------------------------------
 .byte   PATT
  .word Label_0111122D
@  #05 @189   ----------------------------------------
 .byte   PATT
  .word Label_01111259
@  #05 @190   ----------------------------------------
 .byte   PATT
  .word Label_01111285
@  #05 @191   ----------------------------------------
 .byte   PATT
  .word Label_011112AD
@  #05 @192   ----------------------------------------
 .byte   PATT
  .word Label_011112E1
@  #05 @193   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @194   ----------------------------------------
 .byte   PATT
  .word Label_01111368
@  #05 @195   ----------------------------------------
 .byte   PATT
  .word Label_011113B7
@  #05 @196   ----------------------------------------
 .byte   PATT
  .word Label_011112E1
@  #05 @197   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @198   ----------------------------------------
 .byte   PATT
  .word Label_011113FD
@  #05 @199   ----------------------------------------
 .byte   PATT
  .word Label_0111145C
@  #05 @200   ----------------------------------------
 .byte   PATT
  .word Label_011112E1
@  #05 @201   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @202   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @203   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @204   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @205   ----------------------------------------
 .byte   PATT
  .word Label_01111319
@  #05 @206   ----------------------------------------
 .byte   PATT
  .word Label_011114A8
@  #05 @207   ----------------------------------------
 .byte   PATT
  .word Label_01111502
@  #05 @208   ----------------------------------------
 .byte   PATT
  .word Label_01111530
@  #05 @209   ----------------------------------------
 .byte   PATT
  .word Label_01111530
@  #05 @210   ----------------------------------------
 .byte   PATT
  .word Label_01111530
@  #05 @211   ----------------------------------------
 .byte   PATT
  .word Label_01111563
@  #05 @212   ----------------------------------------
 .byte   PATT
  .word Label_01111530
@  #05 @213   ----------------------------------------
 .byte   PATT
  .word Label_01111530
@  #05 @214   ----------------------------------------
 .byte   PATT
  .word Label_01111597
@  #05 @215   ----------------------------------------
 .byte   PATT
  .word Label_011115C8
@  #05 @216   ----------------------------------------
 .byte   PATT
  .word Label_0111160D
@  #05 @217   ----------------------------------------
 .byte   PATT
  .word Label_0111164C
@  #05 @218   ----------------------------------------
 .byte   PATT
  .word Label_0111160D
@  #05 @219   ----------------------------------------
 .byte   PATT
  .word Label_0111168E
@  #05 @220   ----------------------------------------
 .byte   PATT
  .word Label_0111160D
@  #05 @221   ----------------------------------------
 .byte   PATT
  .word Label_0111164C
@  #05 @222   ----------------------------------------
 .byte   PATT
  .word Label_0111160D
@  #05 @223   ----------------------------------------
 .byte   PATT
  .word Label_0111164C
@  #05 @224   ----------------------------------------
 .byte   PATT
  .word Label_0111160D
@  #05 @225   ----------------------------------------
 .byte   PATT
  .word Label_011116E9
@  #05 @226   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @227   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @228   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @229   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @230   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @231   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @232   ----------------------------------------
 .byte   PATT
  .word Label_01111703
@  #05 @233   ----------------------------------------
 .byte   PATT
  .word Label_01111736
@  #05 @234   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @235   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @236   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @237   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @238   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @239   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @240   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @241   ----------------------------------------
 .byte   PATT
  .word Label_01111769
@  #05 @242   ----------------------------------------
 .byte   N11 ,Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   N23 ,Dn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Cn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   Dn1 ,v096
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   N05 ,Cn1 ,v096
 .byte   N05 ,Dn1
 .byte   W06
 .byte   Cn1
 .byte   N05 ,Dn1
 .byte   W06
 .byte   Cn1
 .byte   N05 ,Dn1
 .byte   W06
 .byte   Cn1
 .byte   N05 ,Dn1
 .byte   W05
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

.align 2, 0
song07_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 49
 .byte   VOL , 80*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 80*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 80*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W96
@  #06 @001   ----------------------------------------
 .byte   W96
@  #06 @002   ----------------------------------------
 .byte   W96
@  #06 @003   ----------------------------------------
 .byte   W96
@  #06 @004   ----------------------------------------
Label_0110E79C:
 .byte   W24
 .byte   N11 ,Ds2 ,v064
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   W24
 .byte   Ds2
 .byte   N11 ,Fs2
 .byte   N11 ,Bn2
 .byte   W48
 .byte   PEND 
@  #06 @005   ----------------------------------------
Label_0110E7AC:
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W48
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   PEND 
@  #06 @006   ----------------------------------------
 .byte   PATT
  .word Label_0110E79C
@  #06 @007   ----------------------------------------
Label_0110E7C6:
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Cs3
 .byte   W36
 .byte   N11
 .byte   N11 ,Fn3
 .byte   W36
 .byte   PEND 
@  #06 @008   ----------------------------------------
Label_0110E7D9:
 .byte   W96
@  #06 @009   ----------------------------------------
 .byte   W96
@  #06 @010   ----------------------------------------
 .byte   W96
@  #06 @011   ----------------------------------------
 .byte   W96
@  #06 @012   ----------------------------------------
 .byte   W96
@  #06 @013   ----------------------------------------
Label_0110E7DE:
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,Bn2
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   W36
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   W24
 .byte   Gs2
 .byte   N11 ,As2
 .byte   W12
 .byte   PEND 
@  #06 @014   ----------------------------------------
Label_0110E7F1:
 .byte   W24
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,As2
 .byte   W36
 .byte   Gs2
 .byte   N11 ,As2
 .byte   W36
 .byte   PEND 
@  #06 @015   ----------------------------------------
Label_0110E7FD:
 .byte   N11 ,Bn2 ,v064
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Bn2
 .byte   N11 ,Cs3
 .byte   W36
 .byte   Bn2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   PEND 
@  #06 @016   ----------------------------------------
Label_0110E810:
 .byte   W24
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,Bn2
 .byte   W36
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   W36
 .byte   PEND 
@  #06 @017   ----------------------------------------
Label_0110E81C:
 .byte   N11 ,Bn2 ,v064
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Bn2
 .byte   N11 ,Cs3
 .byte   W36
 .byte   Bn2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   As2
 .byte   N11 ,Bn2
 .byte   W12
 .byte   PEND 
@  #06 @018   ----------------------------------------
Label_0110E82F:
 .byte   W24
 .byte   N11 ,As2 ,v064
 .byte   N11 ,Bn2
 .byte   W36
 .byte   As2
 .byte   N11 ,Bn2
 .byte   W36
 .byte   PEND 
@  #06 @019   ----------------------------------------
Label_0110E83B:
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,Bn2
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   W36
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   W24
 .byte   As2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #06 @020   ----------------------------------------
Label_0110E84E:
 .byte   W24
 .byte   N11 ,As2 ,v064
 .byte   N11 ,Cs3
 .byte   W36
 .byte   Ds2
 .byte   N11 ,Gn2
 .byte   W12
 .byte   N11
 .byte   N11 ,As2
 .byte   W12
 .byte   N11
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #06 @021   ----------------------------------------
 .byte   PATT
  .word Label_0110E7DE
@  #06 @022   ----------------------------------------
 .byte   PATT
  .word Label_0110E7F1
@  #06 @023   ----------------------------------------
 .byte   PATT
  .word Label_0110E7FD
@  #06 @024   ----------------------------------------
 .byte   PATT
  .word Label_0110E810
@  #06 @025   ----------------------------------------
 .byte   PATT
  .word Label_0110E81C
@  #06 @026   ----------------------------------------
 .byte   PATT
  .word Label_0110E82F
@  #06 @027   ----------------------------------------
 .byte   PATT
  .word Label_0110E83B
@  #06 @028   ----------------------------------------
Label_0110E885:
 .byte   W24
 .byte   N11 ,As2 ,v064
 .byte   N11 ,Cs3
 .byte   W72
 .byte   PEND 
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
 .byte   PATT
  .word Label_0110E79C
@  #06 @038   ----------------------------------------
 .byte   PATT
  .word Label_0110E7AC
@  #06 @039   ----------------------------------------
 .byte   PATT
  .word Label_0110E79C
@  #06 @040   ----------------------------------------
 .byte   PATT
  .word Label_0110E7C6
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
Label_0110E8C5:
 .byte   W24
 .byte   N32 ,Cs3 ,v080
 .byte   N32 ,En3
 .byte   N32 ,Gs3
 .byte   W36
 .byte   N11 ,Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N56 ,Fs2
 .byte   N56 ,Bn2
 .byte   N56 ,Ds3
 .byte   W12
 .byte   PEND 
@  #06 @070   ----------------------------------------
Label_0110E8DB:
 .byte   W48
 .byte   N11 ,Bn2 ,v080
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   N92 ,Fs2
 .byte   TIE ,Gs2
 .byte   TIE ,Cs3
 .byte   W12
 .byte   PEND 
@  #06 @071   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn2
 .byte   W12
@  #06 @072   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs2 ,v061
 .byte   W01
 .byte   N11 ,Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #06 @073   ----------------------------------------
 .byte   PATT
  .word Label_0110E8C5
@  #06 @074   ----------------------------------------
 .byte   PATT
  .word Label_0110E8DB
@  #06 @075   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn2 ,v080
 .byte   W12
@  #06 @076   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs2 ,v061
 .byte   W13
 .byte   N11
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
@  #06 @077   ----------------------------------------
Label_0110E91A:
 .byte   W24
 .byte   N32 ,Fs3 ,v080
 .byte   N32 ,An3
 .byte   N32 ,Cs4
 .byte   W36
 .byte   N11 ,Bn3
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   N56 ,Bn2
 .byte   N56 ,En3
 .byte   N56 ,Gs3
 .byte   W12
 .byte   PEND 
@  #06 @078   ----------------------------------------
Label_0110E930:
 .byte   W48
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N68 ,Bn2
 .byte   N68 ,Cs3
 .byte   N68 ,Fs3
 .byte   W12
 .byte   PEND 
@  #06 @079   ----------------------------------------
Label_0110E941:
 .byte   W60
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   N32 ,An2
 .byte   N32 ,Cs3
 .byte   N32 ,Gs3
 .byte   W12
 .byte   PEND 
@  #06 @080   ----------------------------------------
Label_0110E950:
 .byte   W24
 .byte   N11 ,An3 ,v080
 .byte   W12
 .byte   N32 ,Gs3
 .byte   W36
 .byte   N23 ,An2
 .byte   N23 ,Cs3
 .byte   N23 ,Fs3
 .byte   W24
 .byte   PEND 
@  #06 @081   ----------------------------------------
Label_0110E960:
 .byte   N68 ,Bn2 ,v080
 .byte   N36 ,Dn3
 .byte   N23 ,En3
 .byte   W24
 .byte   N11 ,Fs3
 .byte   W12
 .byte   TIE ,Dn3
 .byte   W36
 .byte   N68 ,En2
 .byte   N68 ,Gn2
 .byte   N68 ,Bn2
 .byte   W24
 .byte   PEND 
@  #06 @082   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn3
 .byte   W01
 .byte   N32 ,Bn2
 .byte   W36
 .byte   TIE ,En2
 .byte   TIE ,Gs2
 .byte   TIE ,Bn2
 .byte   TIE ,En3
 .byte   W12
@  #06 @083   ----------------------------------------
 .byte   W96
@  #06 @084   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En2 ,v056
 .byte   Bn2 ,v064
 .byte   W01
@  #06 @085   ----------------------------------------
 .byte   W96
@  #06 @086   ----------------------------------------
 .byte   W96
@  #06 @087   ----------------------------------------
Label_0110E992:
 .byte   W36
 .byte   N11 ,An2 ,v096
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N56 ,Gs2
 .byte   N56 ,Bn2
 .byte   N56 ,En3
 .byte   W12
 .byte   PEND 
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
 .byte   PATT
  .word Label_0110E992
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
 .byte   PATT
  .word Label_0110E79C
@  #06 @126   ----------------------------------------
 .byte   PATT
  .word Label_0110E7AC
@  #06 @127   ----------------------------------------
 .byte   PATT
  .word Label_0110E79C
@  #06 @128   ----------------------------------------
 .byte   PATT
  .word Label_0110E7C6
@  #06 @129   ----------------------------------------
 .byte   GOTO
  .word Label_0110E7D9
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
 .byte   PATT
  .word Label_0110E7DE
@  #06 @136   ----------------------------------------
 .byte   PATT
  .word Label_0110E7F1
@  #06 @137   ----------------------------------------
 .byte   PATT
  .word Label_0110E7FD
@  #06 @138   ----------------------------------------
 .byte   PATT
  .word Label_0110E810
@  #06 @139   ----------------------------------------
 .byte   PATT
  .word Label_0110E81C
@  #06 @140   ----------------------------------------
 .byte   PATT
  .word Label_0110E82F
@  #06 @141   ----------------------------------------
 .byte   PATT
  .word Label_0110E83B
@  #06 @142   ----------------------------------------
 .byte   PATT
  .word Label_0110E84E
@  #06 @143   ----------------------------------------
 .byte   PATT
  .word Label_0110E7DE
@  #06 @144   ----------------------------------------
 .byte   PATT
  .word Label_0110E7F1
@  #06 @145   ----------------------------------------
 .byte   PATT
  .word Label_0110E7FD
@  #06 @146   ----------------------------------------
 .byte   PATT
  .word Label_0110E810
@  #06 @147   ----------------------------------------
 .byte   PATT
  .word Label_0110E81C
@  #06 @148   ----------------------------------------
 .byte   PATT
  .word Label_0110E82F
@  #06 @149   ----------------------------------------
 .byte   PATT
  .word Label_0110E83B
@  #06 @150   ----------------------------------------
 .byte   PATT
  .word Label_0110E885
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
 .byte   PATT
  .word Label_0110E79C
@  #06 @160   ----------------------------------------
 .byte   PATT
  .word Label_0110E7AC
@  #06 @161   ----------------------------------------
 .byte   PATT
  .word Label_0110E79C
@  #06 @162   ----------------------------------------
 .byte   PATT
  .word Label_0110E7C6
@  #06 @163   ----------------------------------------
 .byte   W96
@  #06 @164   ----------------------------------------
 .byte   W96
@  #06 @165   ----------------------------------------
 .byte   W96
@  #06 @166   ----------------------------------------
 .byte   W96
@  #06 @167   ----------------------------------------
 .byte   W96
@  #06 @168   ----------------------------------------
 .byte   W96
@  #06 @169   ----------------------------------------
 .byte   W96
@  #06 @170   ----------------------------------------
 .byte   W96
@  #06 @171   ----------------------------------------
 .byte   W96
@  #06 @172   ----------------------------------------
 .byte   W96
@  #06 @173   ----------------------------------------
 .byte   W96
@  #06 @174   ----------------------------------------
 .byte   W96
@  #06 @175   ----------------------------------------
 .byte   W96
@  #06 @176   ----------------------------------------
 .byte   W96
@  #06 @177   ----------------------------------------
 .byte   W96
@  #06 @178   ----------------------------------------
 .byte   W96
@  #06 @179   ----------------------------------------
 .byte   W96
@  #06 @180   ----------------------------------------
 .byte   W96
@  #06 @181   ----------------------------------------
 .byte   W96
@  #06 @182   ----------------------------------------
 .byte   W96
@  #06 @183   ----------------------------------------
 .byte   W96
@  #06 @184   ----------------------------------------
 .byte   W96
@  #06 @185   ----------------------------------------
 .byte   W96
@  #06 @186   ----------------------------------------
 .byte   W96
@  #06 @187   ----------------------------------------
 .byte   W96
@  #06 @188   ----------------------------------------
 .byte   W96
@  #06 @189   ----------------------------------------
 .byte   W96
@  #06 @190   ----------------------------------------
 .byte   W96
@  #06 @191   ----------------------------------------
 .byte   PATT
  .word Label_0110E8C5
@  #06 @192   ----------------------------------------
 .byte   PATT
  .word Label_0110E8DB
@  #06 @193   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn2 ,v080
 .byte   W12
@  #06 @194   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs2 ,v061
 .byte   W01
 .byte   N11 ,Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #06 @195   ----------------------------------------
 .byte   PATT
  .word Label_0110E8C5
@  #06 @196   ----------------------------------------
 .byte   PATT
  .word Label_0110E8DB
@  #06 @197   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn2 ,v080
 .byte   W12
@  #06 @198   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs2 ,v061
 .byte   W13
 .byte   N11
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
@  #06 @199   ----------------------------------------
 .byte   PATT
  .word Label_0110E91A
@  #06 @200   ----------------------------------------
 .byte   PATT
  .word Label_0110E930
@  #06 @201   ----------------------------------------
 .byte   PATT
  .word Label_0110E941
@  #06 @202   ----------------------------------------
 .byte   PATT
  .word Label_0110E950
@  #06 @203   ----------------------------------------
 .byte   PATT
  .word Label_0110E960
@  #06 @204   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn3
 .byte   W01
 .byte   N32 ,Bn2 ,v080
 .byte   W36
 .byte   TIE ,En2
 .byte   TIE ,Gs2
 .byte   TIE ,Bn2
 .byte   TIE ,En3
 .byte   W12
@  #06 @205   ----------------------------------------
 .byte   W96
@  #06 @206   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En2 ,v056
 .byte   Bn2 ,v064
 .byte   W01
@  #06 @207   ----------------------------------------
 .byte   W96
@  #06 @208   ----------------------------------------
 .byte   W96
@  #06 @209   ----------------------------------------
 .byte   PATT
  .word Label_0110E992
@  #06 @210   ----------------------------------------
 .byte   W96
@  #06 @211   ----------------------------------------
 .byte   W96
@  #06 @212   ----------------------------------------
 .byte   W96
@  #06 @213   ----------------------------------------
 .byte   W96
@  #06 @214   ----------------------------------------
 .byte   W96
@  #06 @215   ----------------------------------------
 .byte   W96
@  #06 @216   ----------------------------------------
 .byte   W96
@  #06 @217   ----------------------------------------
 .byte   PATT
  .word Label_0110E992
@  #06 @218   ----------------------------------------
 .byte   W96
@  #06 @219   ----------------------------------------
 .byte   W96
@  #06 @220   ----------------------------------------
 .byte   W96
@  #06 @221   ----------------------------------------
 .byte   W96
@  #06 @222   ----------------------------------------
 .byte   W96
@  #06 @223   ----------------------------------------
 .byte   W96
@  #06 @224   ----------------------------------------
 .byte   W96
@  #06 @225   ----------------------------------------
 .byte   W96
@  #06 @226   ----------------------------------------
 .byte   W96
@  #06 @227   ----------------------------------------
 .byte   W96
@  #06 @228   ----------------------------------------
 .byte   W96
@  #06 @229   ----------------------------------------
 .byte   W96
@  #06 @230   ----------------------------------------
 .byte   W96
@  #06 @231   ----------------------------------------
 .byte   W96
@  #06 @232   ----------------------------------------
 .byte   W96
@  #06 @233   ----------------------------------------
 .byte   W96
@  #06 @234   ----------------------------------------
 .byte   W96
@  #06 @235   ----------------------------------------
 .byte   W96
@  #06 @236   ----------------------------------------
 .byte   W96
@  #06 @237   ----------------------------------------
 .byte   W96
@  #06 @238   ----------------------------------------
 .byte   W96
@  #06 @239   ----------------------------------------
 .byte   W96
@  #06 @240   ----------------------------------------
 .byte   W96
@  #06 @241   ----------------------------------------
 .byte   W96
@  #06 @242   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

.align 2, 0
song07_007:
@  #07 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 49
 .byte   VOL , 35*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   En3 ,v064
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   W72
 .byte   Gs0
 .byte   N23 ,Gs1
 .byte   W24
@  #07 @001   ----------------------------------------
Label_01111AA8:
 .byte   W48
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   W36
 .byte   N32 ,Gs0
 .byte   N32 ,Gs1
 .byte   W12
 .byte   PEND 
@  #07 @002   ----------------------------------------
Label_01111AB5:
 .byte   W72
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   W24
 .byte   PEND 
@  #07 @003   ----------------------------------------
Label_01111ABD:
 .byte   W48
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   W48
 .byte   PEND 
@  #07 @004   ----------------------------------------
Label_01111AC5:
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   W72
 .byte   Gs0
 .byte   N23 ,Gs1
 .byte   W24
 .byte   PEND 
@  #07 @005   ----------------------------------------
 .byte   PATT
  .word Label_01111AA8
@  #07 @006   ----------------------------------------
 .byte   PATT
  .word Label_01111AB5
@  #07 @007   ----------------------------------------
 .byte   PATT
  .word Label_01111ABD
@  #07 @008   ----------------------------------------
Label_01111ADF:
 .byte   TIE ,En0 ,v052
 .byte   TIE ,Bn0
 .byte   TIE ,En1
 .byte   W96
 .byte   PEND 
@  #07 @009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En0 ,v035
 .byte   En1
 .byte   W01
@  #07 @010   ----------------------------------------
Label_01111AEF:
 .byte   TIE ,Fs0 ,v052
 .byte   TIE ,Cs1
 .byte   TIE ,Fs1
 .byte   W96
 .byte   PEND 
@  #07 @011   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v037
 .byte   Fs1
 .byte   W01
@  #07 @012   ----------------------------------------
 .byte   W96
@  #07 @013   ----------------------------------------
Label_01111B00:
 .byte   N11 ,Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   W36
 .byte   Bn0
 .byte   N11 ,Bn1
 .byte   W36
 .byte   Gs0
 .byte   N11 ,Gs1
 .byte   W12
 .byte   N23 ,Fs0
 .byte   N23 ,Fs1
 .byte   W12
 .byte   PEND 
@  #07 @014   ----------------------------------------
Label_01111B14:
 .byte   W36
 .byte   N11 ,Bn0 ,v064
 .byte   N11 ,Bn1
 .byte   W36
 .byte   Fs0
 .byte   N11 ,Fs1
 .byte   W24
 .byte   PEND 
@  #07 @015   ----------------------------------------
Label_01111B20:
 .byte   N11 ,En0 ,v064
 .byte   N11 ,En1
 .byte   W36
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W36
 .byte   En0
 .byte   N11 ,En1
 .byte   W12
 .byte   N23 ,Cs0
 .byte   N23 ,Cs1
 .byte   W12
 .byte   PEND 
@  #07 @016   ----------------------------------------
Label_01111B34:
 .byte   W36
 .byte   N11 ,Cs1 ,v064
 .byte   N11 ,Cs2
 .byte   W24
 .byte   Cs0
 .byte   N11 ,Cs1
 .byte   W36
 .byte   PEND 
@  #07 @017   ----------------------------------------
Label_01111B40:
 .byte   N11 ,An0 ,v064
 .byte   N11 ,An1
 .byte   W36
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W36
 .byte   An0
 .byte   N11 ,An1
 .byte   W12
 .byte   N23 ,Gs0
 .byte   N23 ,Gs1
 .byte   W12
 .byte   PEND 
@  #07 @018   ----------------------------------------
Label_01111B54:
 .byte   W36
 .byte   N11 ,Ds1 ,v064
 .byte   N11 ,Ds2
 .byte   W24
 .byte   Gs0
 .byte   N11 ,Gs1
 .byte   W36
 .byte   PEND 
@  #07 @019   ----------------------------------------
Label_01111B60:
 .byte   N11 ,Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   W36
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W36
 .byte   Fn0
 .byte   N11 ,Fn1
 .byte   W12
 .byte   N23 ,Ds0
 .byte   N23 ,Ds1
 .byte   W12
 .byte   PEND 
@  #07 @020   ----------------------------------------
Label_01111B74:
 .byte   W36
 .byte   N11 ,As0 ,v064
 .byte   N11 ,As1
 .byte   W24
 .byte   Ds0
 .byte   N11 ,Ds1
 .byte   W36
 .byte   PEND 
@  #07 @021   ----------------------------------------
 .byte   PATT
  .word Label_01111B00
@  #07 @022   ----------------------------------------
 .byte   PATT
  .word Label_01111B14
@  #07 @023   ----------------------------------------
 .byte   PATT
  .word Label_01111B20
@  #07 @024   ----------------------------------------
 .byte   PATT
  .word Label_01111B34
@  #07 @025   ----------------------------------------
 .byte   PATT
  .word Label_01111B40
@  #07 @026   ----------------------------------------
 .byte   PATT
  .word Label_01111B54
@  #07 @027   ----------------------------------------
 .byte   PATT
  .word Label_01111B60
@  #07 @028   ----------------------------------------
 .byte   PATT
  .word Label_01111B74
@  #07 @029   ----------------------------------------
 .byte   PATT
  .word Label_01111ADF
@  #07 @030   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En0 ,v035
 .byte   En1
 .byte   W01
@  #07 @031   ----------------------------------------
 .byte   PATT
  .word Label_01111AEF
@  #07 @032   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v037
 .byte   Fs1
 .byte   W01
@  #07 @033   ----------------------------------------
 .byte   PATT
  .word Label_01111AC5
@  #07 @034   ----------------------------------------
 .byte   PATT
  .word Label_01111AA8
@  #07 @035   ----------------------------------------
 .byte   PATT
  .word Label_01111AB5
@  #07 @036   ----------------------------------------
 .byte   PATT
  .word Label_01111ABD
@  #07 @037   ----------------------------------------
 .byte   PATT
  .word Label_01111AC5
@  #07 @038   ----------------------------------------
 .byte   PATT
  .word Label_01111AA8
@  #07 @039   ----------------------------------------
 .byte   PATT
  .word Label_01111AB5
@  #07 @040   ----------------------------------------
 .byte   PATT
  .word Label_01111ABD
@  #07 @041   ----------------------------------------
Label_01111BE8:
 .byte   N11 ,Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   W24
 .byte   N12 ,Bn1 ,v112
 .byte   N23 ,Bn2
 .byte   W12
 .byte   N11 ,Bn0 ,v064
 .byte   N11 ,Bn1
 .byte   W12
 .byte   Bn1 ,v112
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Cs2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   N11 ,Ds2 ,v112
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N23 ,Fs0 ,v064
 .byte   N23 ,Fs1
 .byte   N23 ,As2 ,v112
 .byte   N44 ,As3
 .byte   W12
 .byte   PEND 
@  #07 @042   ----------------------------------------
Label_01111C19:
 .byte   W12
 .byte   N23 ,As2 ,v112
 .byte   W24
 .byte   N11 ,Bn0 ,v064
 .byte   N11 ,Bn1
 .byte   N32 ,Gs2 ,v112
 .byte   N32 ,Gs3
 .byte   W36
 .byte   N11 ,Fs0 ,v064
 .byte   N11 ,Fs1
 .byte   N23 ,Ds2 ,v112
 .byte   N23 ,Ds3
 .byte   W24
 .byte   PEND 
@  #07 @043   ----------------------------------------
Label_01111C35:
 .byte   N11 ,En0 ,v064
 .byte   N11 ,En1
 .byte   N23 ,Cs2 ,v112
 .byte   N23 ,Cs3
 .byte   W24
 .byte   N11 ,Ds2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Cs1 ,v064
 .byte   N80 ,Gs1 ,v112
 .byte   N11 ,Cs2 ,v064
 .byte   N80 ,Gs2 ,v112
 .byte   W36
 .byte   N11 ,En0 ,v064
 .byte   N11 ,En1
 .byte   W12
 .byte   N23 ,Cs0
 .byte   N23 ,Cs1
 .byte   W12
 .byte   PEND 
@  #07 @044   ----------------------------------------
Label_01111C5D:
 .byte   W36
 .byte   N11 ,Cs1 ,v064
 .byte   N11 ,Cs2
 .byte   W12
 .byte   Gs1 ,v112
 .byte   N11 ,Gs2
 .byte   W12
 .byte   Cs0 ,v064
 .byte   N11 ,Cs1
 .byte   N11 ,As1 ,v112
 .byte   N11 ,As2
 .byte   W12
 .byte   N23 ,Bn1
 .byte   N23 ,Bn2
 .byte   W24
 .byte   PEND 
@  #07 @045   ----------------------------------------
Label_01111C79:
 .byte   N11 ,An0 ,v064
 .byte   N11 ,An1
 .byte   N23 ,Cs2 ,v112
 .byte   N23 ,Cs3
 .byte   W24
 .byte   N11 ,Ds2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Cs1 ,v064
 .byte   N32 ,Gs1 ,v112
 .byte   N11 ,Cs2 ,v064
 .byte   N32 ,Gs2 ,v112
 .byte   W36
 .byte   N11 ,An0 ,v064
 .byte   N11 ,An1
 .byte   N11 ,Gs2 ,v112
 .byte   N11 ,Gs3
 .byte   W12
 .byte   N23 ,Gs0 ,v064
 .byte   N23 ,Gs1
 .byte   N32 ,Fs2 ,v112
 .byte   N32 ,Fs3
 .byte   W12
 .byte   PEND 
@  #07 @046   ----------------------------------------
Label_01111CAC:
 .byte   W24
 .byte   N11 ,Ds2 ,v112
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Ds1 ,v064
 .byte   N32 ,Cs2 ,v112
 .byte   N11 ,Ds2 ,v064
 .byte   N32 ,Cs3 ,v112
 .byte   W24
 .byte   N11 ,Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   W12
 .byte   Bn1 ,v112
 .byte   N11 ,Bn2
 .byte   W12
 .byte   N44 ,Cs2
 .byte   N44 ,Cs3
 .byte   W12
 .byte   PEND 
@  #07 @047   ----------------------------------------
Label_01111CD0:
 .byte   N11 ,Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   W36
 .byte   Cs1
 .byte   N11 ,Gs1 ,v112
 .byte   N11 ,Cs2 ,v064
 .byte   N11 ,Gs2 ,v112
 .byte   W12
 .byte   N23 ,Gs1
 .byte   N23 ,Gs2
 .byte   W24
 .byte   N11 ,Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   N11 ,Bn1 ,v112
 .byte   N11 ,Bn2
 .byte   W12
 .byte   N23 ,Ds0 ,v064
 .byte   N23 ,Ds1
 .byte   N48 ,As1 ,v112
 .byte   TIE ,As2
 .byte   W12
 .byte   PEND 
@  #07 @048   ----------------------------------------
Label_01111CFD:
 .byte   W36
 .byte   N11 ,As0 ,v064
 .byte   N11 ,As1
 .byte   W24
 .byte   Ds0
 .byte   N11 ,Ds1
 .byte   W32
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   As2
 .byte   W01
@  #07 @049   ----------------------------------------
Label_01111D0D:
 .byte   N11 ,Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   W24
 .byte   N12 ,Bn1 ,v112
 .byte   N32 ,Bn2
 .byte   W12
 .byte   N11 ,Bn0 ,v064
 .byte   N11 ,Bn1
 .byte   W24
 .byte   Cs2 ,v112
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   N11 ,Ds2 ,v112
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N23 ,Fs0 ,v064
 .byte   N23 ,Fs1
 .byte   N44 ,As2 ,v112
 .byte   N44 ,As3
 .byte   W12
 .byte   PEND 
@  #07 @050   ----------------------------------------
Label_01111D3A:
 .byte   W36
 .byte   N11 ,Bn0 ,v064
 .byte   N11 ,Bn1
 .byte   N32 ,Gs2 ,v112
 .byte   N32 ,Gs3
 .byte   W36
 .byte   N11 ,Fs0 ,v064
 .byte   N11 ,Fs1
 .byte   N23 ,Ds2 ,v112
 .byte   N23 ,Ds3
 .byte   W24
 .byte   PEND 
@  #07 @051   ----------------------------------------
 .byte   PATT
  .word Label_01111C35
@  #07 @052   ----------------------------------------
 .byte   PATT
  .word Label_01111C5D
@  #07 @053   ----------------------------------------
 .byte   PATT
  .word Label_01111C79
@  #07 @054   ----------------------------------------
 .byte   PATT
  .word Label_01111CAC
@  #07 @055   ----------------------------------------
Label_01111D66:
 .byte   N11 ,Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   W36
 .byte   Cs1
 .byte   N11 ,Gs1 ,v112
 .byte   N11 ,Cs2 ,v064
 .byte   N11 ,Gs2 ,v112
 .byte   W12
 .byte   Gs1
 .byte   N11 ,Gs2
 .byte   W12
 .byte   As1
 .byte   N11 ,As2
 .byte   W12
 .byte   Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   N11 ,Bn1 ,v112
 .byte   N11 ,Bn2
 .byte   W12
 .byte   N23 ,Ds0 ,v064
 .byte   N23 ,Ds1
 .byte   TIE ,Ds2 ,v112
 .byte   TIE ,Ds3
 .byte   W12
 .byte   PEND 
@  #07 @056   ----------------------------------------
Label_01111D95:
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
 .byte   N11 ,As0 ,v064
 .byte   N11 ,As1
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   Ds0
 .byte   N11 ,Ds1
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
 .byte   PEND 
 .byte   EOT
 .byte   Ds2 ,v063
 .byte   W01
@  #07 @057   ----------------------------------------
 .byte   PATT
  .word Label_01111ADF
@  #07 @058   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En0 ,v035
 .byte   En1
 .byte   W01
@  #07 @059   ----------------------------------------
 .byte   PATT
  .word Label_01111AEF
@  #07 @060   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v037
 .byte   Fs1
 .byte   W01
@  #07 @061   ----------------------------------------
 .byte   PATT
  .word Label_01111AC5
@  #07 @062   ----------------------------------------
 .byte   PATT
  .word Label_01111AA8
@  #07 @063   ----------------------------------------
 .byte   PATT
  .word Label_01111AB5
@  #07 @064   ----------------------------------------
 .byte   PATT
  .word Label_01111ABD
@  #07 @065   ----------------------------------------
Label_01111DEE:
 .byte   TIE ,En0 ,v052
 .byte   TIE ,Bn0
 .byte   TIE ,En1
 .byte   W12
 .byte   W13
 .byte   W13
 .byte   W13
 .byte   W13
 .byte   W12
 .byte   W13
 .byte   W07
 .byte   PEND 
@  #07 @066   ----------------------------------------
Label_01111DFE:
 .byte   W06
 .byte   W13
 .byte   W13
 .byte   W12
 .byte   W13
 .byte   W13
 .byte   W13
 .byte   W12
 .byte   PEND 
 .byte   EOT
 .byte   En0 ,v035
 .byte   En1
 .byte   W01
@  #07 @067   ----------------------------------------
Label_01111E0C:
 .byte   TIE ,Fs0 ,v064
 .byte   TIE ,Cs1
 .byte   TIE ,Fs1
 .byte   W96
 .byte   PEND 
@  #07 @068   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v037
 .byte   Fs1
 .byte   W01
@  #07 @069   ----------------------------------------
Label_01111E1C:
 .byte   W24
 .byte   N32 ,An1 ,v064
 .byte   N32 ,Fs2 ,v080
 .byte   N32 ,An2
 .byte   N32 ,Gs4
 .byte   W36
 .byte   N11 ,Gs1 ,v064
 .byte   N11 ,En2 ,v080
 .byte   N11 ,Gs2
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Fs1 ,v064
 .byte   N11 ,Ds2 ,v080
 .byte   N11 ,Fs2
 .byte   N11 ,En4
 .byte   W12
 .byte   TIE ,Gs1 ,v064
 .byte   TIE ,En2 ,v080
 .byte   TIE ,Gs2
 .byte   N56 ,Ds4
 .byte   W12
 .byte   PEND 
@  #07 @070   ----------------------------------------
Label_01111E49:
 .byte   W48
 .byte   N11 ,Bn3 ,v080
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   TIE ,Cs4
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Gs1 ,v052
 .byte   Gs2
 .byte   W01
@  #07 @071   ----------------------------------------
Label_01111E5B:
 .byte   TIE ,Cs1 ,v064
 .byte   TIE ,Cs2 ,v080
 .byte   W96
 .byte   PEND 
@  #07 @072   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Cs4
 .byte   W01
 .byte   N11 ,Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W11
 .byte   EOT
 .byte   Cs1 ,v049
 .byte   W01
@  #07 @073   ----------------------------------------
 .byte   PATT
  .word Label_01111E1C
@  #07 @074   ----------------------------------------
 .byte   PATT
  .word Label_01111E49
@  #07 @075   ----------------------------------------
 .byte   EOT
 .byte   Gs1 ,v052
 .byte   Gs2
 .byte   W01
Label_01111E84:
 .byte   TIE ,As1 ,v064
 .byte   TIE ,As2 ,v080
 .byte   W96
 .byte   PEND 
@  #07 @076   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Cs4
 .byte   W13
 .byte   N11
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W11
 .byte   EOT
 .byte   As1 ,v058
 .byte   W01
@  #07 @077   ----------------------------------------
Label_01111E9B:
 .byte   W24
 .byte   N32 ,Dn1 ,v064
 .byte   N32 ,Cs3 ,v080
 .byte   N32 ,Fs3
 .byte   N32 ,Cs4
 .byte   W36
 .byte   N11 ,Cs1 ,v064
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,En3
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Bn0 ,v064
 .byte   N11 ,An2 ,v080
 .byte   N11 ,Dn3
 .byte   N11 ,An3
 .byte   W12
 .byte   TIE ,Cs1 ,v064
 .byte   TIE ,Cs3 ,v080
 .byte   N56 ,Gs3
 .byte   W12
 .byte   PEND 
@  #07 @078   ----------------------------------------
Label_01111EC6:
 .byte   W48
 .byte   N11 ,En3 ,v080
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N68 ,Fs3
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Cs1 ,v061
 .byte   W01
@  #07 @079   ----------------------------------------
Label_01111ED7:
 .byte   N80 ,Ds1 ,v064
 .byte   N80 ,Ds3 ,v080
 .byte   W60
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   TIE ,Dn1 ,v064
 .byte   N32 ,Gs4 ,v080
 .byte   W12
 .byte   PEND 
@  #07 @080   ----------------------------------------
Label_01111EEB:
 .byte   W24
 .byte   N11 ,An4 ,v080
 .byte   W12
 .byte   N32 ,Gs4
 .byte   W36
 .byte   N23 ,Fs4
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Dn1
 .byte   W01
@  #07 @081   ----------------------------------------
Label_01111EFA:
 .byte   N68 ,Gn1 ,v064
 .byte   N23 ,En4 ,v080
 .byte   W24
 .byte   N11 ,Fs4
 .byte   W12
 .byte   TIE ,Dn4
 .byte   W36
 .byte   Cn2 ,v064
 .byte   W24
 .byte   PEND 
@  #07 @082   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn4
 .byte   W01
 .byte   N32 ,Bn3 ,v080
 .byte   W36
 .byte   TIE ,En4
 .byte   W11
 .byte   EOT
 .byte   Cn2
 .byte   W01
@  #07 @083   ----------------------------------------
Label_01111F1A:
 .byte   N68 ,Cs2 ,v064
 .byte   W72
 .byte   TIE ,Fs1
 .byte   W24
 .byte   PEND 
@  #07 @084   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   EOT
 .byte   En4
 .byte   W01
@  #07 @085   ----------------------------------------
Label_01111F28:
 .byte   N11 ,Bn0 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #07 @086   ----------------------------------------
Label_01111F33:
 .byte   N11 ,Cs1 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #07 @087   ----------------------------------------
Label_01111F3E:
 .byte   N11 ,Dn1 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #07 @088   ----------------------------------------
Label_01111F49:
 .byte   N11 ,En0 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #07 @089   ----------------------------------------
Label_01111F54:
 .byte   N11 ,Gn0 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #07 @090   ----------------------------------------
Label_01111F5F:
 .byte   N11 ,Fs0 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #07 @091   ----------------------------------------
 .byte   PATT
  .word Label_01111F49
@  #07 @092   ----------------------------------------
Label_01111F6F:
 .byte   N11 ,Fs0 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   N11 ,Fs2 ,v127
 .byte   N11 ,Fs3
 .byte   W12
 .byte   Cs3
 .byte   N11 ,Cs4
 .byte   W12
 .byte   PEND 
@  #07 @093   ----------------------------------------
Label_01111F83:
 .byte   N11 ,Bn0 ,v064
 .byte   N32 ,Dn3 ,v127
 .byte   N32 ,Dn4
 .byte   W24
 .byte   N11 ,Bn0 ,v064
 .byte   W12
 .byte   N32 ,An2 ,v127
 .byte   N32 ,An3
 .byte   W12
 .byte   N11 ,Bn0 ,v064
 .byte   W24
 .byte   N11
 .byte   N23 ,Fs2 ,v127
 .byte   N23 ,Fs3
 .byte   W24
 .byte   PEND 
@  #07 @094   ----------------------------------------
Label_01111FA2:
 .byte   N11 ,Cs1 ,v064
 .byte   N23 ,En2 ,v127
 .byte   N23 ,En3
 .byte   W24
 .byte   N11 ,Cs1 ,v064
 .byte   N23 ,An1 ,v127
 .byte   N23 ,An2
 .byte   W24
 .byte   N11 ,Cs1 ,v064
 .byte   N23 ,An2 ,v127
 .byte   N23 ,An3
 .byte   W24
 .byte   N11 ,Cs1 ,v064
 .byte   N11 ,Gn2 ,v127
 .byte   N11 ,Gn3
 .byte   W12
 .byte   TIE ,Fs2
 .byte   TIE ,Fs3
 .byte   W12
 .byte   PEND 
@  #07 @095   ----------------------------------------
Label_01111FCC:
 .byte   N11 ,Dn1 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   Fs2 ,v066
 .byte   W01
@  #07 @096   ----------------------------------------
Label_01111FDB:
 .byte   N11 ,En0 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   Bn1 ,v127
 .byte   N11 ,Bn2
 .byte   W12
 .byte   En0 ,v064
 .byte   N11 ,Cs2 ,v127
 .byte   N11 ,Cs3
 .byte   W12
 .byte   N32 ,Dn2
 .byte   N32 ,Dn3
 .byte   W12
 .byte   PEND 
@  #07 @097   ----------------------------------------
Label_01111FF6:
 .byte   N11 ,Gn0 ,v064
 .byte   W24
 .byte   N11
 .byte   N11 ,Cs2 ,v127
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Dn2
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Gn0 ,v064
 .byte   W12
 .byte   An1 ,v127
 .byte   N11 ,An2
 .byte   W12
 .byte   Gn0 ,v064
 .byte   N11 ,Cs2 ,v127
 .byte   N11 ,Cs3
 .byte   W12
 .byte   N32 ,Dn2
 .byte   N32 ,Dn3
 .byte   W12
 .byte   PEND 
@  #07 @098   ----------------------------------------
Label_0111201B:
 .byte   N11 ,Fs0 ,v064
 .byte   W24
 .byte   N11
 .byte   N11 ,En2 ,v127
 .byte   N11 ,En3
 .byte   W12
 .byte   Dn2
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Fs0 ,v064
 .byte   W12
 .byte   An1 ,v127
 .byte   N11 ,An2
 .byte   W12
 .byte   Fs0 ,v064
 .byte   N11 ,Cs2 ,v127
 .byte   N11 ,Cs3
 .byte   W12
 .byte   N32 ,Dn2
 .byte   N32 ,Dn3
 .byte   W12
 .byte   PEND 
@  #07 @099   ----------------------------------------
Label_01112040:
 .byte   N11 ,En0 ,v064
 .byte   W24
 .byte   N11
 .byte   N23 ,Dn2 ,v127
 .byte   N23 ,Dn3
 .byte   W24
 .byte   N11 ,En0 ,v064
 .byte   N23 ,En2 ,v127
 .byte   N23 ,En3
 .byte   W24
 .byte   N11 ,En0 ,v064
 .byte   N23 ,Fs2 ,v127
 .byte   N23 ,Fs3
 .byte   W24
 .byte   PEND 
@  #07 @100   ----------------------------------------
Label_0111205E:
 .byte   N11 ,En0 ,v064
 .byte   N23 ,Gn2 ,v127
 .byte   N23 ,Gn3
 .byte   W24
 .byte   N11 ,En0 ,v064
 .byte   N23 ,Dn2 ,v127
 .byte   N23 ,Dn3
 .byte   W24
 .byte   N11 ,En0 ,v064
 .byte   N23 ,An2 ,v127
 .byte   N23 ,An3
 .byte   W24
 .byte   N11 ,En0 ,v064
 .byte   N23 ,Bn2 ,v127
 .byte   N23 ,Bn3
 .byte   W24
 .byte   PEND 
@  #07 @101   ----------------------------------------
Label_01112083:
 .byte   N11 ,An0 ,v064
 .byte   N92 ,Dn3 ,v127
 .byte   TIE ,An3
 .byte   W24
 .byte   N11 ,An0 ,v064
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #07 @102   ----------------------------------------
Label_01112095:
 .byte   N11 ,An0 ,v064
 .byte   N44 ,Cs3 ,v127
 .byte   W24
 .byte   N11 ,An0 ,v064
 .byte   W23
 .byte   PEND 
 .byte   EOT
 .byte   An3
 .byte   W01
 .byte   N11 ,An0
 .byte   W12
 .byte   Dn2 ,v127
 .byte   N11 ,Dn3
 .byte   W12
 .byte   An0 ,v064
 .byte   N11 ,En2 ,v127
 .byte   N11 ,En3
 .byte   W12
 .byte   TIE ,Fs2
 .byte   TIE ,Fs3
 .byte   W12
@  #07 @103   ----------------------------------------
Label_011120B9:
 .byte   N11 ,Bn0 ,v064
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Bn1
 .byte   W36
 .byte   An0
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   An1
 .byte   W12
 .byte   PEND 
@  #07 @104   ----------------------------------------
Label_011120C8:
 .byte   W04
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   N11 ,Gn0 ,v064
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   Dn1
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   Gn1
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W01
 .byte   Cn0
 .byte   W01
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W01
 .byte   Gn0
 .byte   W01
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W01
 .byte   N23 ,Cn1
 .byte   W01
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   PEND 
@  #07 @105   ----------------------------------------
Label_01112103:
 .byte   N11 ,Bn0 ,v064
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   Fs1
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   Bn1
 .byte   W03
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
 .byte   An0
 .byte   W01
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   En1
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   An1
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   PEND 
@  #07 @106   ----------------------------------------
Label_0111213C:
 .byte   W12
 .byte   N11 ,Gn0 ,v064
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   Gn1
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Fs2 ,v066
 .byte   W01
 .byte   N11 ,Cn0
 .byte   N11 ,An1 ,v112
 .byte   N11 ,An2
 .byte   W12
 .byte   Gn0 ,v064
 .byte   N11 ,Dn2 ,v112
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N23 ,Cn1 ,v064
 .byte   N11 ,En2 ,v112
 .byte   N11 ,En3
 .byte   W12
 .byte   TIE ,Fs2
 .byte   TIE ,Fs3
 .byte   W12
@  #07 @107   ----------------------------------------
 .byte   PATT
  .word Label_011120B9
@  #07 @108   ----------------------------------------
Label_0111216D:
 .byte   W04
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   N11 ,Gn0 ,v064
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   Dn1
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   Gn1
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   Cn0
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   Gn0
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   N23 ,Cn1
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   PEND 
@  #07 @109   ----------------------------------------
Label_0111219E:
 .byte   N11 ,Bn0 ,v064
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   Fs1
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   Bn1
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   An0
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   En1
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   An1
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   PEND 
@  #07 @110   ----------------------------------------
 .byte   PATT
  .word Label_0111213C
@  #07 @111   ----------------------------------------
 .byte   EOT
 .byte   Fs2 ,v066
 .byte   W01
 .byte   N11 ,Cn0 ,v064
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   N23 ,Cn1
 .byte   W24
Label_011121E1:
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   An1
 .byte   W12
 .byte   Dn2
 .byte   W36
@  #07 @112   ----------------------------------------
 .byte   Cn1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   PEND 
Label_011121F0:
 .byte   W12
 .byte   N11 ,As0 ,v064
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Ds0
 .byte   W12
@  #07 @113   ----------------------------------------
 .byte   As0
 .byte   W12
 .byte   Ds1
 .byte   W24
 .byte   PEND 
@  #07 @114   ----------------------------------------
 .byte   PATT
  .word Label_011121E1
@  #07 @115   ----------------------------------------
 .byte   PATT
  .word Label_011121F0
@  #07 @116   ----------------------------------------
 .byte   PATT
  .word Label_011121E1
@  #07 @117   ----------------------------------------
 .byte   PATT
  .word Label_011121F0
@  #07 @118   ----------------------------------------
 .byte   PATT
  .word Label_011121E1
@  #07 @119   ----------------------------------------
Label_01112219:
 .byte   W12
 .byte   N11 ,As0 ,v064
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   TIE ,Cn1
 .byte   W24
 .byte   PEND 
@  #07 @120   ----------------------------------------
 .byte   W96
@  #07 @121   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #07 @122   ----------------------------------------
 .byte   PATT
  .word Label_01111AC5
@  #07 @123   ----------------------------------------
 .byte   PATT
  .word Label_01111AA8
@  #07 @124   ----------------------------------------
 .byte   PATT
  .word Label_01111AB5
@  #07 @125   ----------------------------------------
 .byte   PATT
  .word Label_01111ABD
@  #07 @126   ----------------------------------------
 .byte   PATT
  .word Label_01111AC5
@  #07 @127   ----------------------------------------
 .byte   PATT
  .word Label_01111AA8
@  #07 @128   ----------------------------------------
 .byte   PATT
  .word Label_01111AB5
@  #07 @129   ----------------------------------------
 .byte   PATT
  .word Label_01111ABD
@  #07 @130   ----------------------------------------
 .byte   GOTO
  .word Label_01111ADF
@  #07 @131   ----------------------------------------
 .byte   PATT
  .word Label_01111ADF
@  #07 @132   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En0 ,v035
 .byte   En1
 .byte   W01
@  #07 @133   ----------------------------------------
 .byte   PATT
  .word Label_01111AEF
@  #07 @134   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v037
 .byte   Fs1
 .byte   W01
@  #07 @135   ----------------------------------------
 .byte   W96
@  #07 @136   ----------------------------------------
 .byte   PATT
  .word Label_01111B00
@  #07 @137   ----------------------------------------
 .byte   PATT
  .word Label_01111B14
@  #07 @138   ----------------------------------------
 .byte   PATT
  .word Label_01111B20
@  #07 @139   ----------------------------------------
 .byte   PATT
  .word Label_01111B34
@  #07 @140   ----------------------------------------
 .byte   PATT
  .word Label_01111B40
@  #07 @141   ----------------------------------------
 .byte   PATT
  .word Label_01111B54
@  #07 @142   ----------------------------------------
 .byte   PATT
  .word Label_01111B60
@  #07 @143   ----------------------------------------
 .byte   PATT
  .word Label_01111B74
@  #07 @144   ----------------------------------------
 .byte   PATT
  .word Label_01111B00
@  #07 @145   ----------------------------------------
 .byte   PATT
  .word Label_01111B14
@  #07 @146   ----------------------------------------
 .byte   PATT
  .word Label_01111B20
@  #07 @147   ----------------------------------------
 .byte   PATT
  .word Label_01111B34
@  #07 @148   ----------------------------------------
 .byte   PATT
  .word Label_01111B40
@  #07 @149   ----------------------------------------
 .byte   PATT
  .word Label_01111B54
@  #07 @150   ----------------------------------------
 .byte   PATT
  .word Label_01111B60
@  #07 @151   ----------------------------------------
 .byte   PATT
  .word Label_01111B74
@  #07 @152   ----------------------------------------
 .byte   PATT
  .word Label_01111ADF
@  #07 @153   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En0 ,v035
 .byte   En1
 .byte   W01
@  #07 @154   ----------------------------------------
 .byte   PATT
  .word Label_01111AEF
@  #07 @155   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v037
 .byte   Fs1
 .byte   W01
@  #07 @156   ----------------------------------------
 .byte   PATT
  .word Label_01111AC5
@  #07 @157   ----------------------------------------
 .byte   PATT
  .word Label_01111AA8
@  #07 @158   ----------------------------------------
 .byte   PATT
  .word Label_01111AB5
@  #07 @159   ----------------------------------------
 .byte   PATT
  .word Label_01111ABD
@  #07 @160   ----------------------------------------
 .byte   PATT
  .word Label_01111AC5
@  #07 @161   ----------------------------------------
 .byte   PATT
  .word Label_01111AA8
@  #07 @162   ----------------------------------------
 .byte   PATT
  .word Label_01111AB5
@  #07 @163   ----------------------------------------
 .byte   PATT
  .word Label_01111ABD
@  #07 @164   ----------------------------------------
 .byte   PATT
  .word Label_01111BE8
@  #07 @165   ----------------------------------------
 .byte   PATT
  .word Label_01111C19
@  #07 @166   ----------------------------------------
 .byte   PATT
  .word Label_01111C35
@  #07 @167   ----------------------------------------
 .byte   PATT
  .word Label_01111C5D
@  #07 @168   ----------------------------------------
 .byte   PATT
  .word Label_01111C79
@  #07 @169   ----------------------------------------
 .byte   PATT
  .word Label_01111CAC
@  #07 @170   ----------------------------------------
 .byte   PATT
  .word Label_01111CD0
@  #07 @171   ----------------------------------------
 .byte   PATT
  .word Label_01111CFD
@  #07 @172   ----------------------------------------
 .byte   EOT
 .byte   As2
 .byte   W01
@  #07 @173   ----------------------------------------
 .byte   PATT
  .word Label_01111D0D
@  #07 @174   ----------------------------------------
 .byte   PATT
  .word Label_01111D3A
@  #07 @175   ----------------------------------------
 .byte   PATT
  .word Label_01111C35
@  #07 @176   ----------------------------------------
 .byte   PATT
  .word Label_01111C5D
@  #07 @177   ----------------------------------------
 .byte   PATT
  .word Label_01111C79
@  #07 @178   ----------------------------------------
 .byte   PATT
  .word Label_01111CAC
@  #07 @179   ----------------------------------------
 .byte   PATT
  .word Label_01111D66
@  #07 @180   ----------------------------------------
 .byte   PATT
  .word Label_01111D95
@  #07 @181   ----------------------------------------
 .byte   EOT
 .byte   Ds2 ,v063
 .byte   W01
@  #07 @182   ----------------------------------------
 .byte   PATT
  .word Label_01111ADF
@  #07 @183   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En0 ,v035
 .byte   En1
 .byte   W01
@  #07 @184   ----------------------------------------
 .byte   PATT
  .word Label_01111AEF
@  #07 @185   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v037
 .byte   Fs1
 .byte   W01
@  #07 @186   ----------------------------------------
 .byte   PATT
  .word Label_01111AC5
@  #07 @187   ----------------------------------------
 .byte   PATT
  .word Label_01111AA8
@  #07 @188   ----------------------------------------
 .byte   PATT
  .word Label_01111AB5
@  #07 @189   ----------------------------------------
 .byte   PATT
  .word Label_01111ABD
@  #07 @190   ----------------------------------------
 .byte   PATT
  .word Label_01111DEE
@  #07 @191   ----------------------------------------
 .byte   PATT
  .word Label_01111DFE
@  #07 @192   ----------------------------------------
 .byte   EOT
 .byte   En0 ,v035
 .byte   En1
 .byte   W01
@  #07 @193   ----------------------------------------
 .byte   PATT
  .word Label_01111E0C
@  #07 @194   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs0 ,v037
 .byte   Fs1
 .byte   W01
@  #07 @195   ----------------------------------------
 .byte   PATT
  .word Label_01111E1C
@  #07 @196   ----------------------------------------
 .byte   PATT
  .word Label_01111E49
@  #07 @197   ----------------------------------------
 .byte   EOT
 .byte   Gs1 ,v052
 .byte   Gs2
 .byte   W01
@  #07 @198   ----------------------------------------
 .byte   PATT
  .word Label_01111E5B
@  #07 @199   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Cs4
 .byte   W01
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W11
 .byte   EOT
 .byte   Cs1 ,v049
 .byte   W01
@  #07 @200   ----------------------------------------
 .byte   PATT
  .word Label_01111E1C
@  #07 @201   ----------------------------------------
 .byte   PATT
  .word Label_01111E49
@  #07 @202   ----------------------------------------
 .byte   EOT
 .byte   Gs1 ,v052
 .byte   Gs2
 .byte   W01
@  #07 @203   ----------------------------------------
 .byte   PATT
  .word Label_01111E84
@  #07 @204   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Cs4
 .byte   W13
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W11
 .byte   EOT
 .byte   As1 ,v058
 .byte   W01
@  #07 @205   ----------------------------------------
 .byte   PATT
  .word Label_01111E9B
@  #07 @206   ----------------------------------------
 .byte   PATT
  .word Label_01111EC6
@  #07 @207   ----------------------------------------
 .byte   EOT
 .byte   Cs1 ,v061
 .byte   W01
@  #07 @208   ----------------------------------------
 .byte   PATT
  .word Label_01111ED7
@  #07 @209   ----------------------------------------
 .byte   PATT
  .word Label_01111EEB
@  #07 @210   ----------------------------------------
 .byte   EOT
 .byte   Dn1
 .byte   W01
@  #07 @211   ----------------------------------------
 .byte   PATT
  .word Label_01111EFA
@  #07 @212   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn4
 .byte   W01
 .byte   N32 ,Bn3 ,v080
 .byte   W36
 .byte   TIE ,En4
 .byte   W11
 .byte   EOT
 .byte   Cn2
 .byte   W01
@  #07 @213   ----------------------------------------
 .byte   PATT
  .word Label_01111F1A
@  #07 @214   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs1 ,v076
 .byte   W01
@  #07 @215   ----------------------------------------
 .byte   PATT
  .word Label_01111F28
@  #07 @216   ----------------------------------------
 .byte   PATT
  .word Label_01111F33
@  #07 @217   ----------------------------------------
 .byte   PATT
  .word Label_01111F3E
@  #07 @218   ----------------------------------------
 .byte   PATT
  .word Label_01111F49
@  #07 @219   ----------------------------------------
 .byte   PATT
  .word Label_01111F54
@  #07 @220   ----------------------------------------
 .byte   PATT
  .word Label_01111F5F
@  #07 @221   ----------------------------------------
 .byte   PATT
  .word Label_01111F49
@  #07 @222   ----------------------------------------
 .byte   PATT
  .word Label_01111F6F
@  #07 @223   ----------------------------------------
 .byte   PATT
  .word Label_01111F83
@  #07 @224   ----------------------------------------
 .byte   PATT
  .word Label_01111FA2
@  #07 @225   ----------------------------------------
 .byte   PATT
  .word Label_01111FCC
@  #07 @226   ----------------------------------------
 .byte   EOT
 .byte   Fs2 ,v066
 .byte   W01
@  #07 @227   ----------------------------------------
 .byte   PATT
  .word Label_01111FDB
@  #07 @228   ----------------------------------------
 .byte   PATT
  .word Label_01111FF6
@  #07 @229   ----------------------------------------
 .byte   PATT
  .word Label_0111201B
@  #07 @230   ----------------------------------------
 .byte   PATT
  .word Label_01112040
@  #07 @231   ----------------------------------------
 .byte   PATT
  .word Label_0111205E
@  #07 @232   ----------------------------------------
 .byte   PATT
  .word Label_01112083
@  #07 @233   ----------------------------------------
 .byte   PATT
  .word Label_01112095
@  #07 @234   ----------------------------------------
 .byte   EOT
 .byte   An3
 .byte   W01
 .byte   N11 ,An0 ,v064
 .byte   W12
 .byte   Dn2 ,v127
 .byte   N11 ,Dn3
 .byte   W12
 .byte   An0 ,v064
 .byte   N11 ,En2 ,v127
 .byte   N11 ,En3
 .byte   W12
 .byte   TIE ,Fs2
 .byte   TIE ,Fs3
 .byte   W12
@  #07 @235   ----------------------------------------
 .byte   PATT
  .word Label_011120B9
@  #07 @236   ----------------------------------------
 .byte   PATT
  .word Label_011120C8
@  #07 @237   ----------------------------------------
 .byte   PATT
  .word Label_01112103
@  #07 @238   ----------------------------------------
 .byte   PATT
  .word Label_0111213C
@  #07 @239   ----------------------------------------
 .byte   EOT
 .byte   Fs2 ,v066
 .byte   W01
 .byte   N11 ,Cn0 ,v064
 .byte   N11 ,An1 ,v112
 .byte   N11 ,An2
 .byte   W12
 .byte   Gn0 ,v064
 .byte   N11 ,Dn2 ,v112
 .byte   N11 ,Dn3
 .byte   W12
 .byte   N23 ,Cn1 ,v064
 .byte   N11 ,En2 ,v112
 .byte   N11 ,En3
 .byte   W12
 .byte   TIE ,Fs2
 .byte   TIE ,Fs3
 .byte   W12
@  #07 @240   ----------------------------------------
 .byte   PATT
  .word Label_011120B9
@  #07 @241   ----------------------------------------
 .byte   PATT
  .word Label_0111216D
@  #07 @242   ----------------------------------------
 .byte   PATT
  .word Label_0111219E
@  #07 @243   ----------------------------------------
 .byte   PATT
  .word Label_0111213C
@  #07 @244   ----------------------------------------
 .byte   EOT
 .byte   Fs2 ,v066
 .byte   W01
 .byte   N11 ,Cn0 ,v064
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   N23 ,Cn1
 .byte   W24
@  #07 @245   ----------------------------------------
 .byte   PATT
  .word Label_011121E1
@  #07 @246   ----------------------------------------
 .byte   PATT
  .word Label_011121F0
@  #07 @247   ----------------------------------------
 .byte   PATT
  .word Label_011121E1
@  #07 @248   ----------------------------------------
 .byte   PATT
  .word Label_011121F0
@  #07 @249   ----------------------------------------
 .byte   PATT
  .word Label_011121E1
@  #07 @250   ----------------------------------------
 .byte   PATT
  .word Label_011121F0
@  #07 @251   ----------------------------------------
 .byte   PATT
  .word Label_011121E1
@  #07 @252   ----------------------------------------
 .byte   PATT
  .word Label_01112219
@  #07 @253   ----------------------------------------
 .byte   W96
@  #07 @254   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cn1
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

.align 2, 0
song07_008:
@  #08 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 45
 .byte   VOL , 52*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 52*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 52*song07_mvl/mxv
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
 .byte   W96
@  #08 @008   ----------------------------------------
Label_01112540:
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
Label_01112545:
 .byte   W24
 .byte   N23 ,Bn3 ,v096
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N44 ,As4
 .byte   W12
 .byte   PEND 
@  #08 @014   ----------------------------------------
Label_01112554:
 .byte   W36
 .byte   N32 ,Gs4 ,v096
 .byte   W36
 .byte   N23 ,Ds4
 .byte   W24
 .byte   PEND 
@  #08 @015   ----------------------------------------
Label_0111255D:
 .byte   N23 ,Cs4 ,v096
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N80 ,Gs3
 .byte   W05
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W01
 .byte   PEND 
@  #08 @016   ----------------------------------------
Label_0111257E:
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W24
 .byte   W01
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Bn3
 .byte   W24
 .byte   PEND 
@  #08 @017   ----------------------------------------
Label_01112593:
 .byte   N23 ,Cs4 ,v096
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N32 ,Gs3
 .byte   W36
 .byte   N11 ,Gs4
 .byte   W12
 .byte   N32 ,Fs4
 .byte   W12
 .byte   PEND 
@  #08 @018   ----------------------------------------
Label_011125A4:
 .byte   W24
 .byte   N11 ,Ds4 ,v096
 .byte   W12
 .byte   N32 ,Cs4
 .byte   W36
 .byte   N11 ,Bn3
 .byte   W12
 .byte   N44 ,Cs4
 .byte   W12
 .byte   PEND 
@  #08 @019   ----------------------------------------
Label_011125B3:
 .byte   W36
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,Bn3
 .byte   W12
 .byte   TIE ,As3
 .byte   W12
 .byte   PEND 
@  #08 @020   ----------------------------------------
Label_011125C1:
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
 .byte   PEND 
 .byte   EOT
 .byte   As3
 .byte   W01
@  #08 @021   ----------------------------------------
Label_011125E5:
 .byte   W24
 .byte   N32 ,Bn3 ,v096
 .byte   W36
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N44 ,As4
 .byte   W12
 .byte   PEND 
@  #08 @022   ----------------------------------------
 .byte   PATT
  .word Label_01112554
@  #08 @023   ----------------------------------------
Label_011125F8:
 .byte   N23 ,Cs4 ,v096
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N80 ,Gs3
 .byte   W12
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W01
 .byte   PEND 
@  #08 @024   ----------------------------------------
Label_01112619:
 .byte   W01
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   W02
 .byte   W24
 .byte   W03
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Bn3
 .byte   W24
 .byte   PEND 
@  #08 @025   ----------------------------------------
 .byte   PATT
  .word Label_01112593
@  #08 @026   ----------------------------------------
 .byte   PATT
  .word Label_011125A4
@  #08 @027   ----------------------------------------
Label_01112639:
 .byte   W36
 .byte   N11 ,Gs3 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   TIE ,Ds4
 .byte   W12
 .byte   PEND 
@  #08 @028   ----------------------------------------
Label_01112648:
 .byte   W04
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
 .byte   Ds4
 .byte   W01
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
Label_011126A3:
 .byte   W24
 .byte   N32 ,En4 ,v064
 .byte   N32 ,Gs4 ,v080
 .byte   W36
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   N56 ,Bn3 ,v064
 .byte   N56 ,Ds4 ,v080
 .byte   W12
 .byte   PEND 
@  #08 @070   ----------------------------------------
Label_011126B8:
 .byte   W48
 .byte   N11 ,Bn3 ,v080
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   TIE ,Gs3 ,v064
 .byte   TIE ,Cs4 ,v080
 .byte   W12
 .byte   PEND 
@  #08 @071   ----------------------------------------
 .byte   W96
@  #08 @072   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W01
 .byte   N11 ,Fs3 ,v064
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   Fs3 ,v064
 .byte   N11 ,As3 ,v080
 .byte   W12
 .byte   Gs3 ,v064
 .byte   N11 ,Bn3 ,v080
 .byte   W12
 .byte   As3 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
@  #08 @073   ----------------------------------------
 .byte   PATT
  .word Label_011126A3
@  #08 @074   ----------------------------------------
 .byte   PATT
  .word Label_011126B8
@  #08 @075   ----------------------------------------
 .byte   W96
@  #08 @076   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W13
 .byte   N11 ,As3 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   Cs4 ,v064
 .byte   N11 ,Fs4 ,v080
 .byte   W12
 .byte   Cs4 ,v064
 .byte   N11 ,Gs4 ,v080
 .byte   W12
@  #08 @077   ----------------------------------------
Label_0111270D:
 .byte   W24
 .byte   N32 ,An3 ,v064
 .byte   N32 ,Cs5 ,v096
 .byte   W36
 .byte   N11 ,Bn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N56 ,En3 ,v064
 .byte   N56 ,Gs4 ,v096
 .byte   W12
 .byte   PEND 
@  #08 @078   ----------------------------------------
Label_01112722:
 .byte   W48
 .byte   N11 ,En4 ,v096
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   N68 ,Cs3 ,v064
 .byte   N92 ,Fs4 ,v096
 .byte   W12
 .byte   PEND 
@  #08 @079   ----------------------------------------
Label_01112733:
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
 .byte   N32 ,Cs4 ,v080
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   PEND 
@  #08 @080   ----------------------------------------
 .byte   W72
 .byte   N23
 .byte   W24
@  #08 @081   ----------------------------------------
Label_0111275A:
 .byte   N68 ,Dn4 ,v080
 .byte   W72
 .byte   TIE ,Bn3
 .byte   W24
 .byte   PEND 
@  #08 @082   ----------------------------------------
 .byte   W96
@  #08 @083   ----------------------------------------
 .byte   W96
@  #08 @084   ----------------------------------------
Label_01112764:
 .byte   W72
 .byte   N11 ,Fs4 ,v127
 .byte   W12
 .byte   Cs5
 .byte   W11
 .byte   PEND 
 .byte   EOT
 .byte   Bn3
 .byte   W01
@  #08 @085   ----------------------------------------
Label_0111276F:
 .byte   N04 ,Cs5 ,v127
 .byte   W04
 .byte   N30 ,Dn5
 .byte   W32
 .byte   N32 ,An4
 .byte   W36
 .byte   N23 ,Fs4
 .byte   W24
 .byte   PEND 
@  #08 @086   ----------------------------------------
Label_0111277D:
 .byte   N23 ,En4 ,v127
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   N04 ,Gs4
 .byte   W04
 .byte   N19 ,An4
 .byte   W20
 .byte   N11 ,Gn4
 .byte   W12
 .byte   TIE ,Fs4
 .byte   W12
 .byte   PEND 
@  #08 @087   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @088   ----------------------------------------
Label_01112794:
 .byte   W60
 .byte   N11 ,Bn3 ,v127
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N32 ,Dn4
 .byte   W12
 .byte   PEND 
@  #08 @089   ----------------------------------------
Label_0111279F:
 .byte   W24
 .byte   N11 ,Cs4 ,v127
 .byte   W12
 .byte   Dn4
 .byte   W24
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N32 ,Dn4
 .byte   W12
 .byte   PEND 
@  #08 @090   ----------------------------------------
Label_011127AE:
 .byte   W24
 .byte   N11 ,En4 ,v127
 .byte   W12
 .byte   Dn4
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
@  #08 @091   ----------------------------------------
Label_011127BC:
 .byte   N44 ,Gn4 ,v127
 .byte   W60
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #08 @092   ----------------------------------------
Label_011127C8:
 .byte   N32 ,Fs4 ,v127
 .byte   W36
 .byte   N11 ,En4
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #08 @093   ----------------------------------------
 .byte   PATT
  .word Label_0111276F
@  #08 @094   ----------------------------------------
Label_011127DC:
 .byte   N23 ,En4 ,v127
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   N04 ,Gn4
 .byte   W04
 .byte   N19 ,An4
 .byte   W20
 .byte   N11 ,Gn4
 .byte   W12
 .byte   TIE ,Fs4
 .byte   W12
 .byte   PEND 
@  #08 @095   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #08 @096   ----------------------------------------
 .byte   PATT
  .word Label_01112794
@  #08 @097   ----------------------------------------
 .byte   PATT
  .word Label_0111279F
@  #08 @098   ----------------------------------------
Label_011127FD:
 .byte   W24
 .byte   N11 ,En4 ,v127
 .byte   W12
 .byte   Dn4
 .byte   W24
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N32 ,Dn4
 .byte   W12
 .byte   PEND 
@  #08 @099   ----------------------------------------
Label_0111280C:
 .byte   W24
 .byte   N23 ,Dn4 ,v127
 .byte   W24
 .byte   En4
 .byte   W24
 .byte   Fs4
 .byte   W24
 .byte   PEND 
@  #08 @100   ----------------------------------------
Label_01112816:
 .byte   N23 ,Gn4 ,v127
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   An4
 .byte   W24
 .byte   Bn4
 .byte   W24
 .byte   PEND 
@  #08 @101   ----------------------------------------
 .byte   TIE ,An4
 .byte   W96
@  #08 @102   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W48
 .byte   W01
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
 .byte   GOTO
  .word Label_01112540
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
 .byte   PATT
  .word Label_01112545
@  #08 @136   ----------------------------------------
 .byte   PATT
  .word Label_01112554
@  #08 @137   ----------------------------------------
 .byte   PATT
  .word Label_0111255D
@  #08 @138   ----------------------------------------
 .byte   PATT
  .word Label_0111257E
@  #08 @139   ----------------------------------------
 .byte   PATT
  .word Label_01112593
@  #08 @140   ----------------------------------------
 .byte   PATT
  .word Label_011125A4
@  #08 @141   ----------------------------------------
 .byte   PATT
  .word Label_011125B3
@  #08 @142   ----------------------------------------
 .byte   PATT
  .word Label_011125C1
@  #08 @143   ----------------------------------------
 .byte   EOT
 .byte   As3
 .byte   W01
@  #08 @144   ----------------------------------------
 .byte   PATT
  .word Label_011125E5
@  #08 @145   ----------------------------------------
 .byte   PATT
  .word Label_01112554
@  #08 @146   ----------------------------------------
 .byte   PATT
  .word Label_011125F8
@  #08 @147   ----------------------------------------
 .byte   PATT
  .word Label_01112619
@  #08 @148   ----------------------------------------
 .byte   PATT
  .word Label_01112593
@  #08 @149   ----------------------------------------
 .byte   PATT
  .word Label_011125A4
@  #08 @150   ----------------------------------------
 .byte   PATT
  .word Label_01112639
@  #08 @151   ----------------------------------------
 .byte   PATT
  .word Label_01112648
@  #08 @152   ----------------------------------------
 .byte   EOT
 .byte   Ds4
 .byte   W01
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
 .byte   W96
@  #08 @188   ----------------------------------------
 .byte   W96
@  #08 @189   ----------------------------------------
 .byte   W96
@  #08 @190   ----------------------------------------
 .byte   W96
@  #08 @191   ----------------------------------------
 .byte   W96
@  #08 @192   ----------------------------------------
 .byte   PATT
  .word Label_011126A3
@  #08 @193   ----------------------------------------
 .byte   PATT
  .word Label_011126B8
@  #08 @194   ----------------------------------------
 .byte   W96
@  #08 @195   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W01
 .byte   N11 ,Fs3 ,v064
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   Fs3 ,v064
 .byte   N11 ,As3 ,v080
 .byte   W12
 .byte   Gs3 ,v064
 .byte   N11 ,Bn3 ,v080
 .byte   W12
 .byte   As3 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
@  #08 @196   ----------------------------------------
 .byte   PATT
  .word Label_011126A3
@  #08 @197   ----------------------------------------
 .byte   PATT
  .word Label_011126B8
@  #08 @198   ----------------------------------------
 .byte   W96
@  #08 @199   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W13
 .byte   N11 ,As3 ,v064
 .byte   N11 ,Cs4 ,v080
 .byte   W12
 .byte   Cs4 ,v064
 .byte   N11 ,Fs4 ,v080
 .byte   W12
 .byte   Cs4 ,v064
 .byte   N11 ,Gs4 ,v080
 .byte   W12
@  #08 @200   ----------------------------------------
 .byte   PATT
  .word Label_0111270D
@  #08 @201   ----------------------------------------
 .byte   PATT
  .word Label_01112722
@  #08 @202   ----------------------------------------
 .byte   PATT
  .word Label_01112733
@  #08 @203   ----------------------------------------
 .byte   W72
 .byte   N23 ,Cs4 ,v080
 .byte   W24
@  #08 @204   ----------------------------------------
 .byte   PATT
  .word Label_0111275A
@  #08 @205   ----------------------------------------
 .byte   W96
@  #08 @206   ----------------------------------------
 .byte   W96
@  #08 @207   ----------------------------------------
 .byte   PATT
  .word Label_01112764
@  #08 @208   ----------------------------------------
 .byte   EOT
 .byte   Bn3
 .byte   W01
@  #08 @209   ----------------------------------------
 .byte   PATT
  .word Label_0111276F
@  #08 @210   ----------------------------------------
 .byte   PATT
  .word Label_0111277D
@  #08 @211   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs4
 .byte   W01
@  #08 @212   ----------------------------------------
 .byte   PATT
  .word Label_01112794
@  #08 @213   ----------------------------------------
 .byte   PATT
  .word Label_0111279F
@  #08 @214   ----------------------------------------
 .byte   PATT
  .word Label_011127AE
@  #08 @215   ----------------------------------------
 .byte   PATT
  .word Label_011127BC
@  #08 @216   ----------------------------------------
 .byte   PATT
  .word Label_011127C8
@  #08 @217   ----------------------------------------
 .byte   PATT
  .word Label_0111276F
@  #08 @218   ----------------------------------------
 .byte   PATT
  .word Label_011127DC
@  #08 @219   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs4
 .byte   W01
@  #08 @220   ----------------------------------------
 .byte   PATT
  .word Label_01112794
@  #08 @221   ----------------------------------------
 .byte   PATT
  .word Label_0111279F
@  #08 @222   ----------------------------------------
 .byte   PATT
  .word Label_011127FD
@  #08 @223   ----------------------------------------
 .byte   PATT
  .word Label_0111280C
@  #08 @224   ----------------------------------------
 .byte   PATT
  .word Label_01112816
@  #08 @225   ----------------------------------------
 .byte   TIE ,An4 ,v127
 .byte   W96
@  #08 @226   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W48
 .byte   W01
@  #08 @227   ----------------------------------------
 .byte   W96
@  #08 @228   ----------------------------------------
 .byte   W96
@  #08 @229   ----------------------------------------
 .byte   W96
@  #08 @230   ----------------------------------------
 .byte   W96
@  #08 @231   ----------------------------------------
 .byte   W96
@  #08 @232   ----------------------------------------
 .byte   W96
@  #08 @233   ----------------------------------------
 .byte   W96
@  #08 @234   ----------------------------------------
 .byte   W96
@  #08 @235   ----------------------------------------
 .byte   W96
@  #08 @236   ----------------------------------------
 .byte   W96
@  #08 @237   ----------------------------------------
 .byte   W96
@  #08 @238   ----------------------------------------
 .byte   W96
@  #08 @239   ----------------------------------------
 .byte   W96
@  #08 @240   ----------------------------------------
 .byte   W96
@  #08 @241   ----------------------------------------
 .byte   W96
@  #08 @242   ----------------------------------------
 .byte   W96
@  #08 @243   ----------------------------------------
 .byte   W96
@  #08 @244   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 9 (Midi-Chn.8) ****************@

.align 2, 0
song07_009:
@  #09 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 44
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
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
Label_0110EDAC:
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
 .byte   W96
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
 .byte   W96
@  #09 @060   ----------------------------------------
 .byte   W96
@  #09 @061   ----------------------------------------
 .byte   W96
@  #09 @062   ----------------------------------------
 .byte   W96
@  #09 @063   ----------------------------------------
 .byte   W96
@  #09 @064   ----------------------------------------
 .byte   W96
@  #09 @065   ----------------------------------------
 .byte   W96
@  #09 @066   ----------------------------------------
 .byte   W96
@  #09 @067   ----------------------------------------
 .byte   W96
@  #09 @068   ----------------------------------------
 .byte   W96
@  #09 @069   ----------------------------------------
Label_0110EDE9:
 .byte   W24
 .byte   N32 ,Cs3 ,v064
 .byte   W60
 .byte   N56 ,Fs3
 .byte   W12
 .byte   PEND 
@  #09 @070   ----------------------------------------
 .byte   W84
 .byte   N92
 .byte   W12
@  #09 @071   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn3
 .byte   W12
@  #09 @072   ----------------------------------------
 .byte   W96
@  #09 @073   ----------------------------------------
 .byte   PATT
  .word Label_0110EDE9
@  #09 @074   ----------------------------------------
 .byte   W84
 .byte   N92 ,Fs3 ,v064
 .byte   W12
@  #09 @075   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn3
 .byte   W12
@  #09 @076   ----------------------------------------
 .byte   W96
@  #09 @077   ----------------------------------------
Label_0110EE09:
 .byte   W24
 .byte   N32 ,Fs3 ,v064
 .byte   W60
 .byte   N56 ,Bn2
 .byte   W12
 .byte   PEND 
@  #09 @078   ----------------------------------------
 .byte   W84
 .byte   N68
 .byte   W12
@  #09 @079   ----------------------------------------
 .byte   W84
 .byte   N32 ,An2 ,v080
 .byte   W12
@  #09 @080   ----------------------------------------
Label_0110EE1A:
 .byte   W24
 .byte   N11 ,An2 ,v080
 .byte   W12
 .byte   N32 ,Gs2
 .byte   W36
 .byte   N23 ,An2
 .byte   W24
 .byte   PEND 
@  #09 @081   ----------------------------------------
Label_0110EE26:
 .byte   N68 ,Bn2 ,v080
 .byte   W72
 .byte   Gn2
 .byte   W24
 .byte   PEND 
@  #09 @082   ----------------------------------------
Label_0110EE2D:
 .byte   W84
 .byte   TIE ,Gs2 ,v080
 .byte   W12
 .byte   PEND 
@  #09 @083   ----------------------------------------
 .byte   W96
@  #09 @084   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #09 @085   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #09 @099   ----------------------------------------
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
 .byte   W96
@  #09 @116   ----------------------------------------
 .byte   W96
@  #09 @117   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #09 @128   ----------------------------------------
 .byte   W96
@  #09 @129   ----------------------------------------
 .byte   GOTO
  .word Label_0110EDAC
@  #09 @130   ----------------------------------------
 .byte   W96
@  #09 @131   ----------------------------------------
 .byte   W96
@  #09 @132   ----------------------------------------
 .byte   W96
@  #09 @133   ----------------------------------------
 .byte   W96
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
 .byte   W96
@  #09 @143   ----------------------------------------
 .byte   W96
@  #09 @144   ----------------------------------------
 .byte   W96
@  #09 @145   ----------------------------------------
 .byte   W96
@  #09 @146   ----------------------------------------
 .byte   W96
@  #09 @147   ----------------------------------------
 .byte   W96
@  #09 @148   ----------------------------------------
 .byte   W96
@  #09 @149   ----------------------------------------
 .byte   W96
@  #09 @150   ----------------------------------------
 .byte   W96
@  #09 @151   ----------------------------------------
 .byte   W96
@  #09 @152   ----------------------------------------
 .byte   W96
@  #09 @153   ----------------------------------------
 .byte   W96
@  #09 @154   ----------------------------------------
 .byte   W96
@  #09 @155   ----------------------------------------
 .byte   W96
@  #09 @156   ----------------------------------------
 .byte   W96
@  #09 @157   ----------------------------------------
 .byte   W96
@  #09 @158   ----------------------------------------
 .byte   W96
@  #09 @159   ----------------------------------------
 .byte   W96
@  #09 @160   ----------------------------------------
 .byte   W96
@  #09 @161   ----------------------------------------
 .byte   W96
@  #09 @162   ----------------------------------------
 .byte   W96
@  #09 @163   ----------------------------------------
 .byte   W96
@  #09 @164   ----------------------------------------
 .byte   W96
@  #09 @165   ----------------------------------------
 .byte   W96
@  #09 @166   ----------------------------------------
 .byte   W96
@  #09 @167   ----------------------------------------
 .byte   W96
@  #09 @168   ----------------------------------------
 .byte   W96
@  #09 @169   ----------------------------------------
 .byte   W96
@  #09 @170   ----------------------------------------
 .byte   W96
@  #09 @171   ----------------------------------------
 .byte   W96
@  #09 @172   ----------------------------------------
 .byte   W96
@  #09 @173   ----------------------------------------
 .byte   W96
@  #09 @174   ----------------------------------------
 .byte   W96
@  #09 @175   ----------------------------------------
 .byte   W96
@  #09 @176   ----------------------------------------
 .byte   W96
@  #09 @177   ----------------------------------------
 .byte   W96
@  #09 @178   ----------------------------------------
 .byte   W96
@  #09 @179   ----------------------------------------
 .byte   W96
@  #09 @180   ----------------------------------------
 .byte   W96
@  #09 @181   ----------------------------------------
 .byte   W96
@  #09 @182   ----------------------------------------
 .byte   W96
@  #09 @183   ----------------------------------------
 .byte   W96
@  #09 @184   ----------------------------------------
 .byte   W96
@  #09 @185   ----------------------------------------
 .byte   W96
@  #09 @186   ----------------------------------------
 .byte   W96
@  #09 @187   ----------------------------------------
 .byte   W96
@  #09 @188   ----------------------------------------
 .byte   W96
@  #09 @189   ----------------------------------------
 .byte   W96
@  #09 @190   ----------------------------------------
 .byte   W96
@  #09 @191   ----------------------------------------
 .byte   PATT
  .word Label_0110EDE9
@  #09 @192   ----------------------------------------
 .byte   W84
 .byte   N92 ,Fs3 ,v064
 .byte   W12
@  #09 @193   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn3
 .byte   W12
@  #09 @194   ----------------------------------------
 .byte   W96
@  #09 @195   ----------------------------------------
 .byte   PATT
  .word Label_0110EDE9
@  #09 @196   ----------------------------------------
 .byte   W84
 .byte   N92 ,Fs3 ,v064
 .byte   W12
@  #09 @197   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn3
 .byte   W12
@  #09 @198   ----------------------------------------
 .byte   W96
@  #09 @199   ----------------------------------------
 .byte   PATT
  .word Label_0110EE09
@  #09 @200   ----------------------------------------
 .byte   W84
 .byte   N68 ,Bn2 ,v064
 .byte   W12
@  #09 @201   ----------------------------------------
 .byte   W84
 .byte   N32 ,An2 ,v080
 .byte   W12
@  #09 @202   ----------------------------------------
 .byte   PATT
  .word Label_0110EE1A
@  #09 @203   ----------------------------------------
 .byte   PATT
  .word Label_0110EE26
@  #09 @204   ----------------------------------------
 .byte   PATT
  .word Label_0110EE2D
@  #09 @205   ----------------------------------------
 .byte   W96
@  #09 @206   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #09 @207   ----------------------------------------
 .byte   W96
@  #09 @208   ----------------------------------------
 .byte   W96
@  #09 @209   ----------------------------------------
 .byte   W96
@  #09 @210   ----------------------------------------
 .byte   W96
@  #09 @211   ----------------------------------------
 .byte   W96
@  #09 @212   ----------------------------------------
 .byte   W96
@  #09 @213   ----------------------------------------
 .byte   W96
@  #09 @214   ----------------------------------------
 .byte   W96
@  #09 @215   ----------------------------------------
 .byte   W96
@  #09 @216   ----------------------------------------
 .byte   W96
@  #09 @217   ----------------------------------------
 .byte   W96
@  #09 @218   ----------------------------------------
 .byte   W96
@  #09 @219   ----------------------------------------
 .byte   W96
@  #09 @220   ----------------------------------------
 .byte   W96
@  #09 @221   ----------------------------------------
 .byte   W96
@  #09 @222   ----------------------------------------
 .byte   W96
@  #09 @223   ----------------------------------------
 .byte   W96
@  #09 @224   ----------------------------------------
 .byte   W96
@  #09 @225   ----------------------------------------
 .byte   W96
@  #09 @226   ----------------------------------------
 .byte   W96
@  #09 @227   ----------------------------------------
 .byte   W96
@  #09 @228   ----------------------------------------
 .byte   W96
@  #09 @229   ----------------------------------------
 .byte   W96
@  #09 @230   ----------------------------------------
 .byte   W96
@  #09 @231   ----------------------------------------
 .byte   W96
@  #09 @232   ----------------------------------------
 .byte   W96
@  #09 @233   ----------------------------------------
 .byte   W96
@  #09 @234   ----------------------------------------
 .byte   W96
@  #09 @235   ----------------------------------------
 .byte   W96
@  #09 @236   ----------------------------------------
 .byte   W96
@  #09 @237   ----------------------------------------
 .byte   W96
@  #09 @238   ----------------------------------------
 .byte   W96
@  #09 @239   ----------------------------------------
 .byte   W96
@  #09 @240   ----------------------------------------
 .byte   W96
@  #09 @241   ----------------------------------------
 .byte   W96
@  #09 @242   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 10 (Midi-Chn.9) ****************@

.align 2, 0
song07_010:
@  #10 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 56
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
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
Label_0110D574:
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
Label_0110D579:
 .byte   W30
 .byte   N23 ,Bn3 ,v064
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N44 ,As4
 .byte   W06
 .byte   PEND 
@  #10 @014   ----------------------------------------
Label_0110D588:
 .byte   W42
 .byte   N32 ,Gs4 ,v064
 .byte   W36
 .byte   N23 ,Ds4
 .byte   W18
 .byte   PEND 
@  #10 @015   ----------------------------------------
Label_0110D591:
 .byte   W06
 .byte   N23 ,Cs4 ,v064
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N80 ,Gs3
 .byte   W05
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   PEND 
@  #10 @016   ----------------------------------------
Label_0110D5AF:
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   W24
 .byte   W01
 .byte   N11 ,Gs3 ,v064
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Bn3
 .byte   W18
 .byte   PEND 
@  #10 @017   ----------------------------------------
Label_0110D5C6:
 .byte   W06
 .byte   N23 ,Cs4 ,v064
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N32 ,Gs3
 .byte   W36
 .byte   N11 ,Gs4
 .byte   W12
 .byte   N32 ,Fs4
 .byte   W06
 .byte   PEND 
@  #10 @018   ----------------------------------------
Label_0110D5D8:
 .byte   W30
 .byte   N11 ,Ds4 ,v064
 .byte   W12
 .byte   N32 ,Cs4
 .byte   W36
 .byte   N11 ,Bn3
 .byte   W12
 .byte   N44 ,Cs4
 .byte   W06
 .byte   PEND 
@  #10 @019   ----------------------------------------
Label_0110D5E7:
 .byte   W42
 .byte   N11 ,Gs3 ,v064
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,Bn3
 .byte   W12
 .byte   TIE ,As3
 .byte   W06
 .byte   PEND 
@  #10 @020   ----------------------------------------
Label_0110D5F5:
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
 .byte   W04
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
 .byte   W01
 .byte   PEND 
 .byte   EOT
 .byte   As3
 .byte   W01
@  #10 @021   ----------------------------------------
Label_0110D618:
 .byte   W30
 .byte   N32 ,Bn3 ,v064
 .byte   W36
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N44 ,As4
 .byte   W06
 .byte   PEND 
@  #10 @022   ----------------------------------------
 .byte   PATT
  .word Label_0110D588
@  #10 @023   ----------------------------------------
 .byte   PATT
  .word Label_0110D591
@  #10 @024   ----------------------------------------
 .byte   PATT
  .word Label_0110D5AF
@  #10 @025   ----------------------------------------
 .byte   PATT
  .word Label_0110D5C6
@  #10 @026   ----------------------------------------
 .byte   PATT
  .word Label_0110D5D8
@  #10 @027   ----------------------------------------
Label_0110D63F:
 .byte   W42
 .byte   N11 ,Gs3 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   TIE ,Ds4
 .byte   W06
 .byte   PEND 
@  #10 @028   ----------------------------------------
Label_0110D64E:
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
 .byte   Ds4
 .byte   W01
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
 .byte   W96
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
Label_0110D6AA:
 .byte   W24
 .byte   N32 ,En4 ,v080
 .byte   W36
 .byte   N11 ,Ds4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N56 ,Bn3
 .byte   W12
 .byte   PEND 
@  #10 @070   ----------------------------------------
Label_0110D6B8:
 .byte   W48
 .byte   N11 ,Gs3 ,v080
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   TIE ,Gs3
 .byte   W12
 .byte   PEND 
@  #10 @071   ----------------------------------------
 .byte   W96
@  #10 @072   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11 ,Fs3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
@  #10 @073   ----------------------------------------
 .byte   PATT
  .word Label_0110D6AA
@  #10 @074   ----------------------------------------
 .byte   PATT
  .word Label_0110D6B8
@  #10 @075   ----------------------------------------
 .byte   W96
@  #10 @076   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3
 .byte   W13
 .byte   N11 ,As3 ,v080
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N11
 .byte   W12
@  #10 @077   ----------------------------------------
Label_0110D6EB:
 .byte   W24
 .byte   N32 ,An4 ,v096
 .byte   W36
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   N56 ,En4
 .byte   W12
 .byte   PEND 
@  #10 @078   ----------------------------------------
Label_0110D6F9:
 .byte   W48
 .byte   N11 ,Cs4 ,v096
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N92
 .byte   W12
 .byte   PEND 
@  #10 @079   ----------------------------------------
Label_0110D705:
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
 .byte   PEND 
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
 .byte   W96
@  #10 @127   ----------------------------------------
 .byte   W96
@  #10 @128   ----------------------------------------
 .byte   W96
@  #10 @129   ----------------------------------------
 .byte   GOTO
  .word Label_0110D574
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
 .byte   PATT
  .word Label_0110D579
@  #10 @136   ----------------------------------------
 .byte   PATT
  .word Label_0110D588
@  #10 @137   ----------------------------------------
 .byte   PATT
  .word Label_0110D591
@  #10 @138   ----------------------------------------
 .byte   PATT
  .word Label_0110D5AF
@  #10 @139   ----------------------------------------
 .byte   PATT
  .word Label_0110D5C6
@  #10 @140   ----------------------------------------
 .byte   PATT
  .word Label_0110D5D8
@  #10 @141   ----------------------------------------
 .byte   PATT
  .word Label_0110D5E7
@  #10 @142   ----------------------------------------
 .byte   PATT
  .word Label_0110D5F5
@  #10 @143   ----------------------------------------
 .byte   EOT
 .byte   As3
 .byte   W01
@  #10 @144   ----------------------------------------
 .byte   PATT
  .word Label_0110D618
@  #10 @145   ----------------------------------------
 .byte   PATT
  .word Label_0110D588
@  #10 @146   ----------------------------------------
 .byte   PATT
  .word Label_0110D591
@  #10 @147   ----------------------------------------
 .byte   PATT
  .word Label_0110D5AF
@  #10 @148   ----------------------------------------
 .byte   PATT
  .word Label_0110D5C6
@  #10 @149   ----------------------------------------
 .byte   PATT
  .word Label_0110D5D8
@  #10 @150   ----------------------------------------
 .byte   PATT
  .word Label_0110D63F
@  #10 @151   ----------------------------------------
 .byte   PATT
  .word Label_0110D64E
@  #10 @152   ----------------------------------------
 .byte   EOT
 .byte   Ds4
 .byte   W01
 .byte   W96
@  #10 @153   ----------------------------------------
 .byte   W96
@  #10 @154   ----------------------------------------
 .byte   W96
@  #10 @155   ----------------------------------------
 .byte   W96
@  #10 @156   ----------------------------------------
 .byte   W96
@  #10 @157   ----------------------------------------
 .byte   W96
@  #10 @158   ----------------------------------------
 .byte   W96
@  #10 @159   ----------------------------------------
 .byte   W96
@  #10 @160   ----------------------------------------
 .byte   W96
@  #10 @161   ----------------------------------------
 .byte   W96
@  #10 @162   ----------------------------------------
 .byte   W96
@  #10 @163   ----------------------------------------
 .byte   W96
@  #10 @164   ----------------------------------------
 .byte   W96
@  #10 @165   ----------------------------------------
 .byte   W96
@  #10 @166   ----------------------------------------
 .byte   W96
@  #10 @167   ----------------------------------------
 .byte   W96
@  #10 @168   ----------------------------------------
 .byte   W96
@  #10 @169   ----------------------------------------
 .byte   W96
@  #10 @170   ----------------------------------------
 .byte   W96
@  #10 @171   ----------------------------------------
 .byte   W96
@  #10 @172   ----------------------------------------
 .byte   W96
@  #10 @173   ----------------------------------------
 .byte   W96
@  #10 @174   ----------------------------------------
 .byte   W96
@  #10 @175   ----------------------------------------
 .byte   W96
@  #10 @176   ----------------------------------------
 .byte   W96
@  #10 @177   ----------------------------------------
 .byte   W96
@  #10 @178   ----------------------------------------
 .byte   W96
@  #10 @179   ----------------------------------------
 .byte   W96
@  #10 @180   ----------------------------------------
 .byte   W96
@  #10 @181   ----------------------------------------
 .byte   W96
@  #10 @182   ----------------------------------------
 .byte   W96
@  #10 @183   ----------------------------------------
 .byte   W96
@  #10 @184   ----------------------------------------
 .byte   W96
@  #10 @185   ----------------------------------------
 .byte   W96
@  #10 @186   ----------------------------------------
 .byte   W96
@  #10 @187   ----------------------------------------
 .byte   W96
@  #10 @188   ----------------------------------------
 .byte   W96
@  #10 @189   ----------------------------------------
 .byte   W96
@  #10 @190   ----------------------------------------
 .byte   W96
@  #10 @191   ----------------------------------------
 .byte   W96
@  #10 @192   ----------------------------------------
 .byte   PATT
  .word Label_0110D6AA
@  #10 @193   ----------------------------------------
 .byte   PATT
  .word Label_0110D6B8
@  #10 @194   ----------------------------------------
 .byte   W96
@  #10 @195   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3
 .byte   W01
 .byte   N11 ,Fs3 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
@  #10 @196   ----------------------------------------
 .byte   PATT
  .word Label_0110D6AA
@  #10 @197   ----------------------------------------
 .byte   PATT
  .word Label_0110D6B8
@  #10 @198   ----------------------------------------
 .byte   W96
@  #10 @199   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3
 .byte   W13
 .byte   N11 ,As3 ,v080
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N11
 .byte   W12
@  #10 @200   ----------------------------------------
 .byte   PATT
  .word Label_0110D6EB
@  #10 @201   ----------------------------------------
 .byte   PATT
  .word Label_0110D6F9
@  #10 @202   ----------------------------------------
 .byte   PATT
  .word Label_0110D705
@  #10 @203   ----------------------------------------
 .byte   W96
@  #10 @204   ----------------------------------------
 .byte   W96
@  #10 @205   ----------------------------------------
 .byte   W96
@  #10 @206   ----------------------------------------
 .byte   W96
@  #10 @207   ----------------------------------------
 .byte   W96
@  #10 @208   ----------------------------------------
 .byte   W96
@  #10 @209   ----------------------------------------
 .byte   W96
@  #10 @210   ----------------------------------------
 .byte   W96
@  #10 @211   ----------------------------------------
 .byte   W96
@  #10 @212   ----------------------------------------
 .byte   W96
@  #10 @213   ----------------------------------------
 .byte   W96
@  #10 @214   ----------------------------------------
 .byte   W96
@  #10 @215   ----------------------------------------
 .byte   W96
@  #10 @216   ----------------------------------------
 .byte   W96
@  #10 @217   ----------------------------------------
 .byte   W96
@  #10 @218   ----------------------------------------
 .byte   W96
@  #10 @219   ----------------------------------------
 .byte   W96
@  #10 @220   ----------------------------------------
 .byte   W96
@  #10 @221   ----------------------------------------
 .byte   W96
@  #10 @222   ----------------------------------------
 .byte   W96
@  #10 @223   ----------------------------------------
 .byte   W96
@  #10 @224   ----------------------------------------
 .byte   W96
@  #10 @225   ----------------------------------------
 .byte   W96
@  #10 @226   ----------------------------------------
 .byte   W96
@  #10 @227   ----------------------------------------
 .byte   W96
@  #10 @228   ----------------------------------------
 .byte   W96
@  #10 @229   ----------------------------------------
 .byte   W96
@  #10 @230   ----------------------------------------
 .byte   W96
@  #10 @231   ----------------------------------------
 .byte   W96
@  #10 @232   ----------------------------------------
 .byte   W96
@  #10 @233   ----------------------------------------
 .byte   W96
@  #10 @234   ----------------------------------------
 .byte   W96
@  #10 @235   ----------------------------------------
 .byte   W96
@  #10 @236   ----------------------------------------
 .byte   W96
@  #10 @237   ----------------------------------------
 .byte   W96
@  #10 @238   ----------------------------------------
 .byte   W96
@  #10 @239   ----------------------------------------
 .byte   W96
@  #10 @240   ----------------------------------------
 .byte   W96
@  #10 @241   ----------------------------------------
 .byte   W96
@  #10 @242   ----------------------------------------
 .byte   W96
@  #10 @243   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 11 (Midi-Chn.10) ****************@

.align 2, 0
song07_011:
@  #11 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 59
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
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
Label_0110F178:
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
 .byte   W96
@  #11 @059   ----------------------------------------
 .byte   W96
@  #11 @060   ----------------------------------------
 .byte   W96
@  #11 @061   ----------------------------------------
 .byte   W96
@  #11 @062   ----------------------------------------
 .byte   W96
@  #11 @063   ----------------------------------------
 .byte   W96
@  #11 @064   ----------------------------------------
 .byte   W96
@  #11 @065   ----------------------------------------
 .byte   W96
@  #11 @066   ----------------------------------------
 .byte   W96
@  #11 @067   ----------------------------------------
 .byte   W96
@  #11 @068   ----------------------------------------
 .byte   W96
@  #11 @069   ----------------------------------------
Label_0110F1B5:
 .byte   W24
 .byte   N32 ,An2 ,v080
 .byte   W36
 .byte   N11 ,Gs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   TIE ,Gs2
 .byte   W12
 .byte   PEND 
@  #11 @070   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @071   ----------------------------------------
 .byte   TIE ,Cs2
 .byte   W96
@  #11 @072   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @073   ----------------------------------------
 .byte   PATT
  .word Label_0110F1B5
@  #11 @074   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #11 @075   ----------------------------------------
 .byte   TIE ,As2 ,v080
 .byte   W96
@  #11 @076   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @077   ----------------------------------------
Label_0110F1E0:
 .byte   W24
 .byte   N32 ,Dn2 ,v080
 .byte   W36
 .byte   N11 ,Cs2
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   TIE ,Cs2
 .byte   W12
 .byte   PEND 
@  #11 @078   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @079   ----------------------------------------
Label_0110F1F2:
 .byte   N80 ,Ds2 ,v080
 .byte   W84
 .byte   TIE ,Dn2
 .byte   W12
 .byte   PEND 
@  #11 @080   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @081   ----------------------------------------
Label_0110F1FE:
 .byte   N68 ,Gn2 ,v080
 .byte   W72
 .byte   TIE ,Cn3
 .byte   W24
 .byte   PEND 
@  #11 @082   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @083   ----------------------------------------
Label_0110F20A:
 .byte   N68 ,Cs3 ,v080
 .byte   W72
 .byte   TIE ,Fs2
 .byte   W24
 .byte   PEND 
@  #11 @084   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
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
 .byte   GOTO
  .word Label_0110F178
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
 .byte   W96
@  #11 @150   ----------------------------------------
 .byte   W96
@  #11 @151   ----------------------------------------
 .byte   W96
@  #11 @152   ----------------------------------------
 .byte   W96
@  #11 @153   ----------------------------------------
 .byte   W96
@  #11 @154   ----------------------------------------
 .byte   W96
@  #11 @155   ----------------------------------------
 .byte   W96
@  #11 @156   ----------------------------------------
 .byte   W96
@  #11 @157   ----------------------------------------
 .byte   W96
@  #11 @158   ----------------------------------------
 .byte   W96
@  #11 @159   ----------------------------------------
 .byte   W96
@  #11 @160   ----------------------------------------
 .byte   W96
@  #11 @161   ----------------------------------------
 .byte   W96
@  #11 @162   ----------------------------------------
 .byte   W96
@  #11 @163   ----------------------------------------
 .byte   W96
@  #11 @164   ----------------------------------------
 .byte   W96
@  #11 @165   ----------------------------------------
 .byte   W96
@  #11 @166   ----------------------------------------
 .byte   W96
@  #11 @167   ----------------------------------------
 .byte   W96
@  #11 @168   ----------------------------------------
 .byte   W96
@  #11 @169   ----------------------------------------
 .byte   W96
@  #11 @170   ----------------------------------------
 .byte   W96
@  #11 @171   ----------------------------------------
 .byte   W96
@  #11 @172   ----------------------------------------
 .byte   W96
@  #11 @173   ----------------------------------------
 .byte   W96
@  #11 @174   ----------------------------------------
 .byte   W96
@  #11 @175   ----------------------------------------
 .byte   W96
@  #11 @176   ----------------------------------------
 .byte   W96
@  #11 @177   ----------------------------------------
 .byte   W96
@  #11 @178   ----------------------------------------
 .byte   W96
@  #11 @179   ----------------------------------------
 .byte   W96
@  #11 @180   ----------------------------------------
 .byte   W96
@  #11 @181   ----------------------------------------
 .byte   W96
@  #11 @182   ----------------------------------------
 .byte   W96
@  #11 @183   ----------------------------------------
 .byte   W96
@  #11 @184   ----------------------------------------
 .byte   W96
@  #11 @185   ----------------------------------------
 .byte   W96
@  #11 @186   ----------------------------------------
 .byte   W96
@  #11 @187   ----------------------------------------
 .byte   W96
@  #11 @188   ----------------------------------------
 .byte   W96
@  #11 @189   ----------------------------------------
 .byte   W96
@  #11 @190   ----------------------------------------
 .byte   W96
@  #11 @191   ----------------------------------------
 .byte   PATT
  .word Label_0110F1B5
@  #11 @192   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #11 @193   ----------------------------------------
 .byte   TIE ,Cs2 ,v080
 .byte   W96
@  #11 @194   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @195   ----------------------------------------
 .byte   PATT
  .word Label_0110F1B5
@  #11 @196   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #11 @197   ----------------------------------------
 .byte   TIE ,As2 ,v080
 .byte   W96
@  #11 @198   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #11 @199   ----------------------------------------
 .byte   PATT
  .word Label_0110F1E0
@  #11 @200   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cs2
 .byte   W01
@  #11 @201   ----------------------------------------
 .byte   PATT
  .word Label_0110F1F2
@  #11 @202   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Dn2
 .byte   W01
@  #11 @203   ----------------------------------------
 .byte   PATT
  .word Label_0110F1FE
@  #11 @204   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cn3
 .byte   W01
@  #11 @205   ----------------------------------------
 .byte   PATT
  .word Label_0110F20A
@  #11 @206   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs2
 .byte   W01
@  #11 @207   ----------------------------------------
 .byte   W96
@  #11 @208   ----------------------------------------
 .byte   W96
@  #11 @209   ----------------------------------------
 .byte   W96
@  #11 @210   ----------------------------------------
 .byte   W96
@  #11 @211   ----------------------------------------
 .byte   W96
@  #11 @212   ----------------------------------------
 .byte   W96
@  #11 @213   ----------------------------------------
 .byte   W96
@  #11 @214   ----------------------------------------
 .byte   W96
@  #11 @215   ----------------------------------------
 .byte   W96
@  #11 @216   ----------------------------------------
 .byte   W96
@  #11 @217   ----------------------------------------
 .byte   W96
@  #11 @218   ----------------------------------------
 .byte   W96
@  #11 @219   ----------------------------------------
 .byte   W96
@  #11 @220   ----------------------------------------
 .byte   W96
@  #11 @221   ----------------------------------------
 .byte   W96
@  #11 @222   ----------------------------------------
 .byte   W96
@  #11 @223   ----------------------------------------
 .byte   W96
@  #11 @224   ----------------------------------------
 .byte   W96
@  #11 @225   ----------------------------------------
 .byte   W96
@  #11 @226   ----------------------------------------
 .byte   W96
@  #11 @227   ----------------------------------------
 .byte   W96
@  #11 @228   ----------------------------------------
 .byte   W96
@  #11 @229   ----------------------------------------
 .byte   W96
@  #11 @230   ----------------------------------------
 .byte   W96
@  #11 @231   ----------------------------------------
 .byte   W96
@  #11 @232   ----------------------------------------
 .byte   W96
@  #11 @233   ----------------------------------------
 .byte   W96
@  #11 @234   ----------------------------------------
 .byte   W96
@  #11 @235   ----------------------------------------
 .byte   W96
@  #11 @236   ----------------------------------------
 .byte   W96
@  #11 @237   ----------------------------------------
 .byte   W96
@  #11 @238   ----------------------------------------
 .byte   W96
@  #11 @239   ----------------------------------------
 .byte   W96
@  #11 @240   ----------------------------------------
 .byte   W96
@  #11 @241   ----------------------------------------
 .byte   W96
@  #11 @242   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 12 (Midi-Chn.11) ****************@

.align 2, 0
song07_012:
@  #12 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 1
 .byte   VOL , 82*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 82*song07_mvl/mxv
 .byte   PAN , c_v+0
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
Label_011129C0:
 .byte   W96
@  #12 @009   ----------------------------------------
 .byte   W96
@  #12 @010   ----------------------------------------
 .byte   W96
@  #12 @011   ----------------------------------------
 .byte   W96
@  #12 @012   ----------------------------------------
 .byte   W96
@  #12 @013   ----------------------------------------
Label_011129C5:
 .byte   N11 ,Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   N11 ,Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Bn0
 .byte   N11 ,Bn1
 .byte   N23 ,Bn3 ,v052
 .byte   W24
 .byte   N11 ,Fs2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   N11 ,Bn3 ,v052
 .byte   W12
 .byte   Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   N11 ,Cs4 ,v052
 .byte   W12
 .byte   N22 ,Fs0 ,v064
 .byte   N22 ,Fs1
 .byte   N11 ,Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   N11 ,Ds4 ,v052
 .byte   W12
 .byte   PEND 
@  #12 @014   ----------------------------------------
Label_01112A09:
 .byte   N44 ,As4 ,v052
 .byte   W24
 .byte   N11 ,Fs2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Bn0
 .byte   N11 ,Bn1
 .byte   W12
 .byte   N32 ,Gs4 ,v052
 .byte   W12
 .byte   N11 ,Fs2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Fs0
 .byte   N11 ,Fs1
 .byte   W12
 .byte   N23 ,Ds4 ,v052
 .byte   W12
 .byte   PEND 
@  #12 @015   ----------------------------------------
Label_01112A32:
 .byte   N11 ,En0 ,v064
 .byte   N11 ,En1
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N23 ,Cs4 ,v052
 .byte   W12
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   N11 ,Ds4 ,v052
 .byte   W12
 .byte   N80 ,Gs3
 .byte   W05
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   En0
 .byte   N11 ,En1
 .byte   W01
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W01
 .byte   N22 ,Cs0
 .byte   N22 ,Cs1
 .byte   N11 ,Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W01
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W01
 .byte   PEND 
@  #12 @016   ----------------------------------------
Label_01112A85:
 .byte   W02
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W02
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W24
 .byte   Cs0
 .byte   N11 ,Cs1
 .byte   N11 ,Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,Gs3 ,v052
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   N23 ,Bn3
 .byte   W12
 .byte   PEND 
@  #12 @017   ----------------------------------------
Label_01112AB6:
 .byte   N11 ,An0 ,v064
 .byte   N11 ,An1
 .byte   N11 ,An2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   W12
 .byte   N23 ,Cs4 ,v052
 .byte   W12
 .byte   N11 ,An2 ,v064
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   N11 ,Ds4 ,v052
 .byte   W12
 .byte   N32 ,Gs3
 .byte   W12
 .byte   N11 ,An2 ,v064
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   W12
 .byte   An0
 .byte   N11 ,An1
 .byte   W12
 .byte   N22 ,Gs0
 .byte   N22 ,Gs1
 .byte   N11 ,Gs2
 .byte   N11 ,As2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   N11 ,Gs4 ,v052
 .byte   W12
 .byte   PEND 
@  #12 @018   ----------------------------------------
Label_01112AFB:
 .byte   N32 ,Fs4 ,v052
 .byte   W24
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,As2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Ds1
 .byte   N11 ,Ds2
 .byte   N11 ,Ds4 ,v052
 .byte   W12
 .byte   N32 ,Cs4
 .byte   W12
 .byte   N11 ,Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   N11 ,Gs2
 .byte   N11 ,As2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Bn3 ,v052
 .byte   W12
 .byte   PEND 
@  #12 @019   ----------------------------------------
Label_01112B25:
 .byte   N11 ,Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   N11 ,Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N44 ,Cs4 ,v052
 .byte   W24
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W12
 .byte   Gs3 ,v052
 .byte   W12
 .byte   Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N23 ,Gs3 ,v052
 .byte   W12
 .byte   N11 ,Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   W12
 .byte   N22 ,Ds0
 .byte   N22 ,Ds1
 .byte   N11 ,Gn2
 .byte   N11 ,As2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   N11 ,Bn3 ,v052
 .byte   W12
 .byte   PEND 
@  #12 @020   ----------------------------------------
Label_01112B6A:
 .byte   N92 ,As3 ,v052
 .byte   W05
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W01
 .byte   N11 ,Gn2 ,v064
 .byte   N11 ,As2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   As0
 .byte   N11 ,As1
 .byte   W01
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   Ds0
 .byte   N11 ,Ds1
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
 .byte   W03
 .byte   W03
 .byte   W01
 .byte   PEND 
@  #12 @021   ----------------------------------------
Label_01112BA0:
 .byte   N11 ,Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   N11 ,Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Bn0
 .byte   N11 ,Bn1
 .byte   N32 ,Bn3 ,v052
 .byte   W24
 .byte   N11 ,Fs2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Gs0
 .byte   N11 ,Gs1
 .byte   N11 ,Cs4 ,v052
 .byte   W12
 .byte   N22 ,Fs0 ,v064
 .byte   N22 ,Fs1
 .byte   N11 ,Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   N11 ,Ds4 ,v052
 .byte   W12
 .byte   PEND 
@  #12 @022   ----------------------------------------
 .byte   PATT
  .word Label_01112A09
@  #12 @023   ----------------------------------------
 .byte   PATT
  .word Label_01112A32
@  #12 @024   ----------------------------------------
 .byte   PATT
  .word Label_01112A85
@  #12 @025   ----------------------------------------
 .byte   PATT
  .word Label_01112AB6
@  #12 @026   ----------------------------------------
 .byte   PATT
  .word Label_01112AFB
@  #12 @027   ----------------------------------------
Label_01112BF9:
 .byte   N11 ,Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   N11 ,Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N44 ,Cs4 ,v052
 .byte   W24
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W12
 .byte   Gs3 ,v052
 .byte   W12
 .byte   Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,Gs3 ,v052
 .byte   W12
 .byte   Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   N11 ,As3 ,v052
 .byte   W12
 .byte   N22 ,Ds0 ,v064
 .byte   N22 ,Ds1
 .byte   N11 ,Gn2
 .byte   N11 ,As2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   N11 ,Bn3 ,v052
 .byte   W12
 .byte   PEND 
@  #12 @028   ----------------------------------------
Label_01112C41:
 .byte   N92 ,Ds4 ,v052
 .byte   W05
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W01
 .byte   N11 ,Gn2 ,v064
 .byte   N11 ,As2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   W03
 .byte   W02
 .byte   As0
 .byte   N11 ,As1
 .byte   W01
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W02
 .byte   Ds0
 .byte   N11 ,Ds1
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
 .byte   W03
 .byte   W03
 .byte   W01
 .byte   PEND 
@  #12 @029   ----------------------------------------
Label_01112C77:
 .byte   W60
 .byte   N11 ,As4 ,v064
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   N22 ,Cs5
 .byte   W12
 .byte   PEND 
@  #12 @030   ----------------------------------------
Label_01112C82:
 .byte   W36
 .byte   N22 ,Fs5 ,v064
 .byte   W24
 .byte   Gs5
 .byte   W24
 .byte   N23 ,Cs6 ,v096
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   PEND 
@  #12 @031   ----------------------------------------
Label_01112C91:
 .byte   W36
 .byte   N22 ,As5 ,v064
 .byte   W24
 .byte   Fs5
 .byte   W24
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #12 @032   ----------------------------------------
Label_01112C9B:
 .byte   W12
 .byte   N22 ,As4 ,v064
 .byte   W24
 .byte   N44 ,Fs4
 .byte   W48
 .byte   W12
 .byte   PEND 
@  #12 @033   ----------------------------------------
 .byte   W96
@  #12 @034   ----------------------------------------
 .byte   W96
@  #12 @035   ----------------------------------------
 .byte   W96
@  #12 @036   ----------------------------------------
 .byte   W96
@  #12 @037   ----------------------------------------
 .byte   W96
@  #12 @038   ----------------------------------------
 .byte   W96
@  #12 @039   ----------------------------------------
 .byte   W96
@  #12 @040   ----------------------------------------
 .byte   W96
@  #12 @041   ----------------------------------------
Label_01112CAD:
 .byte   N11 ,Gs0 ,v064
 .byte   N11 ,Gs1
 .byte   N11 ,Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Bn0
 .byte   N11 ,Bn1
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Gs0
 .byte   N11 ,Gs1
 .byte   W12
 .byte   N22 ,Fs0
 .byte   N22 ,Fs1
 .byte   N11 ,Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #12 @042   ----------------------------------------
Label_01112CE1:
 .byte   W24
 .byte   N11 ,Fs2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Bn0
 .byte   N11 ,Bn1
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Fs0
 .byte   N11 ,Fs1
 .byte   W24
 .byte   PEND 
@  #12 @043   ----------------------------------------
Label_01112CFD:
 .byte   N11 ,En0 ,v064
 .byte   N11 ,En1
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W12
 .byte   En0
 .byte   N11 ,En1
 .byte   W12
 .byte   N22 ,Cs0
 .byte   N22 ,Cs1
 .byte   N11 ,Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   PEND 
@  #12 @044   ----------------------------------------
Label_01112D31:
 .byte   W24
 .byte   N11 ,Fn2 ,v064
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W24
 .byte   Cs0
 .byte   N11 ,Cs1
 .byte   N11 ,Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W36
 .byte   PEND 
@  #12 @045   ----------------------------------------
Label_01112D4D:
 .byte   N11 ,An0 ,v064
 .byte   N11 ,An1
 .byte   N11 ,An2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   W24
 .byte   An2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W24
 .byte   An2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   N11 ,En3
 .byte   W12
 .byte   An0
 .byte   N11 ,An1
 .byte   W12
 .byte   N22 ,Gs0
 .byte   N22 ,Gs1
 .byte   N11 ,Gs2
 .byte   N11 ,As2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #12 @046   ----------------------------------------
Label_01112D81:
 .byte   W24
 .byte   N11 ,Gs2 ,v064
 .byte   N11 ,As2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Ds1
 .byte   N11 ,Ds2
 .byte   W24
 .byte   Gs0
 .byte   N11 ,Gs1
 .byte   N11 ,Gs2
 .byte   N11 ,As2
 .byte   N11 ,Bn2
 .byte   N11 ,Ds3
 .byte   W36
 .byte   PEND 
@  #12 @047   ----------------------------------------
Label_01112D9D:
 .byte   N11 ,Fn0 ,v064
 .byte   N11 ,Fn1
 .byte   N11 ,Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs2
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   N11 ,Bn2
 .byte   N11 ,Cs3
 .byte   W12
 .byte   Fn0
 .byte   N11 ,Fn1
 .byte   W12
 .byte   N22 ,Ds0
 .byte   N22 ,Ds1
 .byte   N11 ,Gn2
 .byte   N11 ,As2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W12
 .byte   PEND 
@  #12 @048   ----------------------------------------
Label_01112DD1:
 .byte   W24
 .byte   N11 ,Gn2 ,v064
 .byte   N11 ,As2
 .byte   N11 ,Cs3
 .byte   N11 ,Ds3
 .byte   W12
 .byte   As0
 .byte   N11 ,As1
 .byte   W24
 .byte   Ds0
 .byte   N11 ,Ds1
 .byte   W36
 .byte   PEND 
@  #12 @049   ----------------------------------------
 .byte   PATT
  .word Label_01112CAD
@  #12 @050   ----------------------------------------
 .byte   PATT
  .word Label_01112CE1
@  #12 @051   ----------------------------------------
 .byte   PATT
  .word Label_01112CFD
@  #12 @052   ----------------------------------------
 .byte   PATT
  .word Label_01112D31
@  #12 @053   ----------------------------------------
 .byte   PATT
  .word Label_01112D4D
@  #12 @054   ----------------------------------------
 .byte   PATT
  .word Label_01112D81
@  #12 @055   ----------------------------------------
 .byte   PATT
  .word Label_01112D9D
@  #12 @056   ----------------------------------------
 .byte   PATT
  .word Label_01112DD1
@  #12 @057   ----------------------------------------
 .byte   W96
@  #12 @058   ----------------------------------------
Label_01112E0E:
 .byte   W36
 .byte   N22 ,Cs5 ,v064
 .byte   W24
 .byte   Fs4
 .byte   W24
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@  #12 @059   ----------------------------------------
 .byte   W96
@  #12 @060   ----------------------------------------
Label_01112E19:
 .byte   W48
 .byte   N22 ,Fs4 ,v064
 .byte   W24
 .byte   Gs4
 .byte   W24
 .byte   PEND 
@  #12 @061   ----------------------------------------
 .byte   W96
@  #12 @062   ----------------------------------------
 .byte   W96
@  #12 @063   ----------------------------------------
 .byte   W96
@  #12 @064   ----------------------------------------
 .byte   W96
@  #12 @065   ----------------------------------------
 .byte   W96
@  #12 @066   ----------------------------------------
 .byte   W96
@  #12 @067   ----------------------------------------
Label_01112E27:
 .byte   N05 ,Gs4 ,v052
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Cs4
 .byte   W05
 .byte   W01
 .byte   Ds4
 .byte   W05
 .byte   W01
 .byte   Gs4
 .byte   W05
 .byte   W01
 .byte   Fs4 ,v056
 .byte   W05
 .byte   W01
 .byte   Cs4
 .byte   W04
 .byte   W02
 .byte   Ds4
 .byte   W04
 .byte   W02
 .byte   Gs4
 .byte   W04
 .byte   W02
 .byte   Fs4 ,v060
 .byte   W04
 .byte   W02
 .byte   Cs4
 .byte   W04
 .byte   W02
 .byte   Ds4
 .byte   W03
 .byte   W03
 .byte   Gs4
 .byte   W03
 .byte   W03
 .byte   Fs4 ,v064
 .byte   W03
 .byte   W03
 .byte   Cs4
 .byte   W03
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   W03
 .byte   PEND 
@  #12 @068   ----------------------------------------
Label_01112E5B:
 .byte   N05 ,Gs4 ,v064
 .byte   W02
 .byte   W04
 .byte   Fs4 ,v068
 .byte   W02
 .byte   W04
 .byte   Cs4
 .byte   W02
 .byte   W04
 .byte   Ds4
 .byte   W02
 .byte   W04
 .byte   Gs4
 .byte   W02
 .byte   W04
 .byte   Fs4 ,v072
 .byte   W01
 .byte   W05
 .byte   Cs4
 .byte   W01
 .byte   W05
 .byte   Ds4
 .byte   W01
 .byte   W05
 .byte   Gs4
 .byte   W01
 .byte   W05
 .byte   Fs4 ,v076
 .byte   W01
 .byte   W05
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Fs4 ,v080
 .byte   W06
 .byte   Cs4
 .byte   W05
 .byte   W01
 .byte   Ds4
 .byte   W06
 .byte   PEND 
@  #12 @069   ----------------------------------------
Label_01112E8D:
 .byte   W24
 .byte   N32 ,An2 ,v064
 .byte   N32 ,Cs4
 .byte   N32 ,En4
 .byte   N32 ,Gs4
 .byte   W36
 .byte   N11 ,Gs2
 .byte   N11 ,Fs3 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Fs2
 .byte   N11 ,En3 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Gs2
 .byte   N56 ,Fs3
 .byte   N56 ,Bn3
 .byte   N56 ,Ds4
 .byte   W12
 .byte   PEND 
@  #12 @070   ----------------------------------------
Label_01112EB2:
 .byte   N11 ,Gs1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Gs1
 .byte   W12
 .byte   N11
 .byte   N11 ,Bn2 ,v080
 .byte   N11 ,Bn3 ,v064
 .byte   W12
 .byte   Gs1
 .byte   N11 ,Cs3 ,v080
 .byte   N11 ,Cs4 ,v064
 .byte   W12
 .byte   Gs2
 .byte   N11 ,Ds3 ,v080
 .byte   N11 ,Ds4 ,v064
 .byte   W12
 .byte   Gs1
 .byte   N90 ,Fs3
 .byte   TIE ,Gs3
 .byte   TIE ,Cs4
 .byte   W12
 .byte   PEND 
@  #12 @071   ----------------------------------------
Label_01112EDD:
 .byte   N11 ,Cs1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   Cs1
 .byte   N56 ,Fn3
 .byte   W12
 .byte   PEND 
@  #12 @072   ----------------------------------------
Label_01112EF2:
 .byte   N11 ,Cs1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   Cs1
 .byte   W04
 .byte   PEND 
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W08
 .byte   N11 ,Cs1
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,As3
 .byte   W12
 .byte   Cs2
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs4
 .byte   W12
@  #12 @073   ----------------------------------------
Label_01112F12:
 .byte   W24
 .byte   N32 ,An2 ,v064
 .byte   N32 ,Cs4
 .byte   N32 ,En4
 .byte   N32 ,Gs4
 .byte   W36
 .byte   N11 ,Gs2
 .byte   N11 ,Fs3 ,v080
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Fs2
 .byte   N11 ,En3 ,v080
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Gs2
 .byte   N56 ,Fs3
 .byte   N56 ,Bn3
 .byte   N56 ,Ds4
 .byte   W12
 .byte   PEND 
@  #12 @074   ----------------------------------------
 .byte   PATT
  .word Label_01112EB2
@  #12 @075   ----------------------------------------
 .byte   PATT
  .word Label_01112EDD
@  #12 @076   ----------------------------------------
 .byte   PATT
  .word Label_01112EF2
@  #12 @077   ----------------------------------------
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W08
 .byte   N11 ,Cs1 ,v064
 .byte   W12
 .byte   N11
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Cs2
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Gs4
 .byte   W12
Label_01112F5A:
 .byte   W24
 .byte   N32 ,Dn2 ,v064
 .byte   N32 ,Fs4
 .byte   N32 ,An4
 .byte   N32 ,Cs5
 .byte   W36
@  #12 @078   ----------------------------------------
 .byte   N11 ,Cs2
 .byte   N11 ,Bn3 ,v096
 .byte   N11 ,Bn4 ,v064
 .byte   W12
 .byte   Bn1
 .byte   N11 ,An3 ,v096
 .byte   N11 ,An4 ,v064
 .byte   W12
 .byte   Cs2
 .byte   N56 ,Bn3
 .byte   N56 ,En4
 .byte   N56 ,Gs4
 .byte   W12
 .byte   PEND 
Label_01112F7F:
 .byte   N11 ,Cs1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   Cs1
 .byte   N11 ,En3 ,v096
 .byte   N11 ,En4 ,v064
 .byte   W12
@  #12 @079   ----------------------------------------
 .byte   Cs1
 .byte   N11 ,Fs3 ,v096
 .byte   N11 ,Fs4 ,v064
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Gs3 ,v096
 .byte   N11 ,Gs4 ,v064
 .byte   W12
 .byte   Cs2
 .byte   N68 ,Bn3
 .byte   N68 ,Cs4
 .byte   N68 ,Fs4
 .byte   W12
 .byte   PEND 
Label_01112FAA:
 .byte   N11 ,Ds1 ,v064
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   N11
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   Ds1
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   N11
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
@  #12 @080   ----------------------------------------
 .byte   N11
 .byte   N11 ,Cs4
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   Ds2
 .byte   N11 ,Fs4
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   Dn1
 .byte   N32 ,An3
 .byte   N32 ,Cs4
 .byte   N32 ,Gs4
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   W03
 .byte   PEND 
Label_01112FDF:
 .byte   N11 ,Dn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn2
 .byte   N11 ,An4
 .byte   W12
 .byte   Dn1
 .byte   N32 ,Gs4
 .byte   W12
 .byte   N11 ,Dn1
 .byte   W12
@  #12 @081   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   Dn2
 .byte   N22 ,An3
 .byte   N22 ,Cs4
 .byte   N22 ,Fs4
 .byte   W12
 .byte   N11 ,Dn1
 .byte   W12
 .byte   PEND 
Label_01112FFE:
 .byte   N11 ,Gn1 ,v064
 .byte   N68 ,Bn3
 .byte   N36 ,Dn4
 .byte   N22 ,En4
 .byte   W12
 .byte   N11 ,Gn1
 .byte   W12
 .byte   Gn2
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Gn1
 .byte   TIE ,Dn4
 .byte   W12
 .byte   N11 ,Gn1
 .byte   W12
@  #12 @082   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   Cn2
 .byte   N68 ,En3
 .byte   N68 ,Gn3
 .byte   N68 ,Bn3
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   PEND 
Label_01113024:
 .byte   N11 ,Cn1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Cn1
 .byte   W06
 .byte   PEND 
 .byte   EOT
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Cn1
 .byte   N32 ,Bn3
 .byte   W12
@  #12 @083   ----------------------------------------
 .byte   N11 ,Cn1
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Cn1
 .byte   TIE ,En3
 .byte   TIE ,Gs3
 .byte   TIE ,Bn3
 .byte   TIE ,En4
 .byte   W12
Label_01113046:
 .byte   N11 ,Cs1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   Cs1
 .byte   W12
 .byte   N11
 .byte   W12
@  #12 @084   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   PEND 
Label_01113059:
 .byte   N11 ,Fs1 ,v064
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   N11
 .byte   W12
@  #12 @085   ----------------------------------------
 .byte   N11
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Fs1
 .byte   W01
 .byte   PEND 
 .byte   EOT
 .byte   En3 ,v068
 .byte   Bn3 ,v076
 .byte   W11
Label_01113072:
 .byte   N11 ,Fs2 ,v064
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   Fs2
 .byte   W12
@  #12 @086   ----------------------------------------
 .byte   An2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   PEND 
Label_01113085:
 .byte   N11 ,En2 ,v064
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   En2
 .byte   W12
@  #12 @087   ----------------------------------------
 .byte   An2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   PEND 
@  #12 @088   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @089   ----------------------------------------
Label_0111309D:
 .byte   N11 ,En2 ,v064
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   PEND 
@  #12 @090   ----------------------------------------
Label_011130B0:
 .byte   N11 ,Gn2 ,v064
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   PEND 
@  #12 @091   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @092   ----------------------------------------
Label_011130C8:
 .byte   N11 ,En2 ,v064
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   PEND 
@  #12 @093   ----------------------------------------
Label_011130DB:
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
 .byte   As2
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
@  #12 @094   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @095   ----------------------------------------
 .byte   PATT
  .word Label_01113085
@  #12 @096   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @097   ----------------------------------------
 .byte   PATT
  .word Label_0111309D
@  #12 @098   ----------------------------------------
 .byte   PATT
  .word Label_011130B0
@  #12 @099   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @100   ----------------------------------------
 .byte   PATT
  .word Label_011130C8
@  #12 @101   ----------------------------------------
 .byte   PATT
  .word Label_011130C8
@  #12 @102   ----------------------------------------
 .byte   PATT
  .word Label_01113085
@  #12 @103   ----------------------------------------
 .byte   PATT
  .word Label_01113085
@  #12 @104   ----------------------------------------
Label_01113120:
 .byte   N11 ,Bn0 ,v096
 .byte   W12
 .byte   Fs1
 .byte   W12
 .byte   Bn1
 .byte   N11 ,Bn2
 .byte   N11 ,Fs3
 .byte   N11 ,An3
 .byte   W36
 .byte   An0
 .byte   W12
 .byte   En1
 .byte   W12
 .byte   An1
 .byte   N11 ,Dn3
 .byte   N11 ,Fs3
 .byte   N11 ,Gn3
 .byte   W12
 .byte   PEND 
@  #12 @105   ----------------------------------------
Label_0111313B:
 .byte   W12
 .byte   N11 ,Gn0 ,v096
 .byte   W12
 .byte   Dn1
 .byte   W12
 .byte   Gn1
 .byte   N11 ,Bn2
 .byte   N11 ,En3
 .byte   N11 ,Fs3
 .byte   W12
 .byte   Cn0
 .byte   W12
 .byte   Gn0
 .byte   W12
 .byte   N22 ,Cn1
 .byte   N11 ,Bn2
 .byte   N11 ,En3
 .byte   N11 ,Fs3
 .byte   W24
 .byte   PEND 
@  #12 @106   ----------------------------------------
 .byte   PATT
  .word Label_01113120
@  #12 @107   ----------------------------------------
 .byte   PATT
  .word Label_0111313B
@  #12 @108   ----------------------------------------
 .byte   PATT
  .word Label_01113120
@  #12 @109   ----------------------------------------
 .byte   PATT
  .word Label_0111313B
@  #12 @110   ----------------------------------------
 .byte   PATT
  .word Label_01113120
@  #12 @111   ----------------------------------------
 .byte   PATT
  .word Label_0111313B
@  #12 @112   ----------------------------------------
Label_01113176:
 .byte   N11 ,Dn1 ,v096
 .byte   W12
 .byte   An1
 .byte   W12
 .byte   Dn2
 .byte   N11 ,Dn3
 .byte   N11 ,Fn3
 .byte   N11 ,Cn4
 .byte   W36
 .byte   Cn1
 .byte   W12
 .byte   Gn1
 .byte   W12
 .byte   Cn2
 .byte   N11 ,Fn3
 .byte   N11 ,Gn3
 .byte   N11 ,As3
 .byte   W12
 .byte   PEND 
@  #12 @113   ----------------------------------------
Label_01113191:
 .byte   W12
 .byte   N11 ,As0 ,v096
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   As1
 .byte   N11 ,As2
 .byte   N11 ,Dn3
 .byte   N11 ,An3
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Ds1
 .byte   N11 ,Dn3
 .byte   N11 ,Ds3
 .byte   N11 ,Gn3
 .byte   W24
 .byte   PEND 
@  #12 @114   ----------------------------------------
 .byte   PATT
  .word Label_01113176
@  #12 @115   ----------------------------------------
 .byte   PATT
  .word Label_01113191
@  #12 @116   ----------------------------------------
 .byte   PATT
  .word Label_01113176
@  #12 @117   ----------------------------------------
 .byte   PATT
  .word Label_01113191
@  #12 @118   ----------------------------------------
 .byte   PATT
  .word Label_01113176
@  #12 @119   ----------------------------------------
Label_011131C6:
 .byte   W12
 .byte   N11 ,As0 ,v096
 .byte   W12
 .byte   Fn1
 .byte   W12
 .byte   As1
 .byte   N11 ,As2
 .byte   N11 ,Dn3
 .byte   N11 ,An3
 .byte   W12
 .byte   Ds0
 .byte   W12
 .byte   As0
 .byte   W12
 .byte   Ds1
 .byte   TIE ,As2
 .byte   TIE ,Cn3
 .byte   TIE ,Cs3
 .byte   TIE ,Fn3
 .byte   TIE ,Gn3
 .byte   W24
 .byte   PEND 
@  #12 @120   ----------------------------------------
 .byte   W96
@  #12 @121   ----------------------------------------
 .byte   W84
 .byte   W01
 .byte   EOT
 .byte   As2 ,v060
 .byte   Cs3 ,v065
 .byte   Gn3
 .byte   W11
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
 .byte   GOTO
  .word Label_011129C0
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
 .byte   PATT
  .word Label_011129C5
@  #12 @137   ----------------------------------------
 .byte   PATT
  .word Label_01112A09
@  #12 @138   ----------------------------------------
 .byte   PATT
  .word Label_01112A32
@  #12 @139   ----------------------------------------
 .byte   PATT
  .word Label_01112A85
@  #12 @140   ----------------------------------------
 .byte   PATT
  .word Label_01112AB6
@  #12 @141   ----------------------------------------
 .byte   PATT
  .word Label_01112AFB
@  #12 @142   ----------------------------------------
 .byte   PATT
  .word Label_01112B25
@  #12 @143   ----------------------------------------
 .byte   PATT
  .word Label_01112B6A
@  #12 @144   ----------------------------------------
 .byte   PATT
  .word Label_01112BA0
@  #12 @145   ----------------------------------------
 .byte   PATT
  .word Label_01112A09
@  #12 @146   ----------------------------------------
 .byte   PATT
  .word Label_01112A32
@  #12 @147   ----------------------------------------
 .byte   PATT
  .word Label_01112A85
@  #12 @148   ----------------------------------------
 .byte   PATT
  .word Label_01112AB6
@  #12 @149   ----------------------------------------
 .byte   PATT
  .word Label_01112AFB
@  #12 @150   ----------------------------------------
 .byte   PATT
  .word Label_01112BF9
@  #12 @151   ----------------------------------------
 .byte   PATT
  .word Label_01112C41
@  #12 @152   ----------------------------------------
 .byte   PATT
  .word Label_01112C77
@  #12 @153   ----------------------------------------
 .byte   PATT
  .word Label_01112C82
@  #12 @154   ----------------------------------------
 .byte   PATT
  .word Label_01112C91
@  #12 @155   ----------------------------------------
 .byte   PATT
  .word Label_01112C9B
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
 .byte   W96
@  #12 @163   ----------------------------------------
 .byte   W96
@  #12 @164   ----------------------------------------
 .byte   PATT
  .word Label_01112CAD
@  #12 @165   ----------------------------------------
 .byte   PATT
  .word Label_01112CE1
@  #12 @166   ----------------------------------------
 .byte   PATT
  .word Label_01112CFD
@  #12 @167   ----------------------------------------
 .byte   PATT
  .word Label_01112D31
@  #12 @168   ----------------------------------------
 .byte   PATT
  .word Label_01112D4D
@  #12 @169   ----------------------------------------
 .byte   PATT
  .word Label_01112D81
@  #12 @170   ----------------------------------------
 .byte   PATT
  .word Label_01112D9D
@  #12 @171   ----------------------------------------
 .byte   PATT
  .word Label_01112DD1
@  #12 @172   ----------------------------------------
 .byte   PATT
  .word Label_01112CAD
@  #12 @173   ----------------------------------------
 .byte   PATT
  .word Label_01112CE1
@  #12 @174   ----------------------------------------
 .byte   PATT
  .word Label_01112CFD
@  #12 @175   ----------------------------------------
 .byte   PATT
  .word Label_01112D31
@  #12 @176   ----------------------------------------
 .byte   PATT
  .word Label_01112D4D
@  #12 @177   ----------------------------------------
 .byte   PATT
  .word Label_01112D81
@  #12 @178   ----------------------------------------
 .byte   PATT
  .word Label_01112D9D
@  #12 @179   ----------------------------------------
 .byte   PATT
  .word Label_01112DD1
@  #12 @180   ----------------------------------------
 .byte   W96
@  #12 @181   ----------------------------------------
 .byte   PATT
  .word Label_01112E0E
@  #12 @182   ----------------------------------------
 .byte   W96
@  #12 @183   ----------------------------------------
 .byte   PATT
  .word Label_01112E19
@  #12 @184   ----------------------------------------
 .byte   W96
@  #12 @185   ----------------------------------------
 .byte   W96
@  #12 @186   ----------------------------------------
 .byte   W96
@  #12 @187   ----------------------------------------
 .byte   W96
@  #12 @188   ----------------------------------------
 .byte   W96
@  #12 @189   ----------------------------------------
 .byte   W96
@  #12 @190   ----------------------------------------
 .byte   PATT
  .word Label_01112E27
@  #12 @191   ----------------------------------------
 .byte   PATT
  .word Label_01112E5B
@  #12 @192   ----------------------------------------
 .byte   PATT
  .word Label_01112E8D
@  #12 @193   ----------------------------------------
 .byte   PATT
  .word Label_01112EB2
@  #12 @194   ----------------------------------------
 .byte   PATT
  .word Label_01112EDD
@  #12 @195   ----------------------------------------
 .byte   PATT
  .word Label_01112EF2
@  #12 @196   ----------------------------------------
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W08
 .byte   N11 ,Cs1 ,v064
 .byte   N11 ,Gs3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,As3
 .byte   W12
 .byte   Cs2
 .byte   N11 ,Bn3
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Cs4
 .byte   W12
@  #12 @197   ----------------------------------------
 .byte   PATT
  .word Label_01112F12
@  #12 @198   ----------------------------------------
 .byte   PATT
  .word Label_01112EB2
@  #12 @199   ----------------------------------------
 .byte   PATT
  .word Label_01112EDD
@  #12 @200   ----------------------------------------
 .byte   PATT
  .word Label_01112EF2
@  #12 @201   ----------------------------------------
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W08
 .byte   N11 ,Cs1 ,v064
 .byte   W12
 .byte   N11
 .byte   N11 ,Cs4
 .byte   W12
 .byte   Cs2
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Cs1
 .byte   N11 ,Gs4
 .byte   W12
@  #12 @202   ----------------------------------------
 .byte   PATT
  .word Label_01112F5A
@  #12 @203   ----------------------------------------
 .byte   PATT
  .word Label_01112F7F
@  #12 @204   ----------------------------------------
 .byte   PATT
  .word Label_01112FAA
@  #12 @205   ----------------------------------------
 .byte   PATT
  .word Label_01112FDF
@  #12 @206   ----------------------------------------
 .byte   PATT
  .word Label_01112FFE
@  #12 @207   ----------------------------------------
 .byte   PATT
  .word Label_01113024
@  #12 @208   ----------------------------------------
 .byte   EOT
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Cn1 ,v064
 .byte   N32 ,Bn3
 .byte   W12
 .byte   N11 ,Cn1
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   Cn1
 .byte   TIE ,En3
 .byte   TIE ,Gs3
 .byte   TIE ,Bn3
 .byte   TIE ,En4
 .byte   W12
@  #12 @209   ----------------------------------------
 .byte   PATT
  .word Label_01113046
@  #12 @210   ----------------------------------------
 .byte   PATT
  .word Label_01113059
@  #12 @211   ----------------------------------------
 .byte   EOT
 .byte   En3 ,v068
 .byte   Bn3 ,v076
 .byte   W11
@  #12 @212   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @213   ----------------------------------------
 .byte   PATT
  .word Label_01113085
@  #12 @214   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @215   ----------------------------------------
 .byte   PATT
  .word Label_0111309D
@  #12 @216   ----------------------------------------
 .byte   PATT
  .word Label_011130B0
@  #12 @217   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @218   ----------------------------------------
 .byte   PATT
  .word Label_011130C8
@  #12 @219   ----------------------------------------
 .byte   PATT
  .word Label_011130DB
@  #12 @220   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @221   ----------------------------------------
 .byte   PATT
  .word Label_01113085
@  #12 @222   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @223   ----------------------------------------
 .byte   PATT
  .word Label_0111309D
@  #12 @224   ----------------------------------------
 .byte   PATT
  .word Label_011130B0
@  #12 @225   ----------------------------------------
 .byte   PATT
  .word Label_01113072
@  #12 @226   ----------------------------------------
 .byte   PATT
  .word Label_011130C8
@  #12 @227   ----------------------------------------
 .byte   PATT
  .word Label_011130C8
@  #12 @228   ----------------------------------------
 .byte   PATT
  .word Label_01113085
@  #12 @229   ----------------------------------------
 .byte   PATT
  .word Label_01113085
@  #12 @230   ----------------------------------------
 .byte   PATT
  .word Label_01113120
@  #12 @231   ----------------------------------------
 .byte   PATT
  .word Label_0111313B
@  #12 @232   ----------------------------------------
 .byte   PATT
  .word Label_01113120
@  #12 @233   ----------------------------------------
 .byte   PATT
  .word Label_0111313B
@  #12 @234   ----------------------------------------
 .byte   PATT
  .word Label_01113120
@  #12 @235   ----------------------------------------
 .byte   PATT
  .word Label_0111313B
@  #12 @236   ----------------------------------------
 .byte   PATT
  .word Label_01113120
@  #12 @237   ----------------------------------------
 .byte   PATT
  .word Label_0111313B
@  #12 @238   ----------------------------------------
 .byte   PATT
  .word Label_01113176
@  #12 @239   ----------------------------------------
 .byte   PATT
  .word Label_01113191
@  #12 @240   ----------------------------------------
 .byte   PATT
  .word Label_01113176
@  #12 @241   ----------------------------------------
 .byte   PATT
  .word Label_01113191
@  #12 @242   ----------------------------------------
 .byte   PATT
  .word Label_01113176
@  #12 @243   ----------------------------------------
 .byte   PATT
  .word Label_01113191
@  #12 @244   ----------------------------------------
 .byte   PATT
  .word Label_01113176
@  #12 @245   ----------------------------------------
 .byte   PATT
  .word Label_011131C6
@  #12 @246   ----------------------------------------
 .byte   W96
@  #12 @247   ----------------------------------------
 .byte   W84
 .byte   W01
 .byte   EOT
 .byte   As2 ,v060
 .byte   Cs3 ,v065
 .byte   Gn3
 .byte   W10
 .byte   FINE

@**************** Track 13 (Midi-Chn.12) ****************@

.align 2, 0
song07_013:
@  #13 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 49
 .byte   VOL , 80*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   PAN , c_v+0
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
Label_0111343A:
 .byte   N44 ,As3 ,v052
 .byte   W48
 .byte   Bn3
 .byte   W48
 .byte   PEND 
@  #13 @009   ----------------------------------------
Label_01113441:
 .byte   N44 ,Cs4 ,v052
 .byte   W48
 .byte   Bn3
 .byte   W48
 .byte   PEND 
@  #13 @010   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @011   ----------------------------------------
Label_0111344D:
 .byte   N44 ,Cs4 ,v052
 .byte   W48
 .byte   Fs4
 .byte   W48
 .byte   PEND 
@  #13 @012   ----------------------------------------
 .byte   W96
@  #13 @013   ----------------------------------------
Label_01113455:
 .byte   TIE ,Fs3 ,v052
 .byte   TIE ,Ds4
 .byte   W96
 .byte   PEND 
@  #13 @014   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v075
 .byte   W01
@  #13 @015   ----------------------------------------
Label_01113462:
 .byte   N80 ,Gs3 ,v052
 .byte   N80 ,Ds4
 .byte   W84
 .byte   TIE ,Fn3
 .byte   TIE ,Cs4
 .byte   W12
 .byte   PEND 
@  #13 @016   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fn3 ,v073
 .byte   W01
@  #13 @017   ----------------------------------------
Label_01113474:
 .byte   N80 ,An3 ,v052
 .byte   N80 ,En4
 .byte   W84
 .byte   TIE ,Gs3
 .byte   TIE ,Ds4
 .byte   W12
 .byte   PEND 
@  #13 @018   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v075
 .byte   W01
@  #13 @019   ----------------------------------------
Label_01113486:
 .byte   N80 ,Fn3 ,v052
 .byte   N80 ,Cs4
 .byte   W84
 .byte   TIE ,Gn3
 .byte   TIE ,Ds4
 .byte   W12
 .byte   PEND 
@  #13 @020   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gn3 ,v075
 .byte   W01
@  #13 @021   ----------------------------------------
 .byte   PATT
  .word Label_01113455
@  #13 @022   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v075
 .byte   W01
@  #13 @023   ----------------------------------------
 .byte   PATT
  .word Label_01113462
@  #13 @024   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fn3 ,v073
 .byte   W01
@  #13 @025   ----------------------------------------
 .byte   PATT
  .word Label_01113474
@  #13 @026   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v075
 .byte   W01
@  #13 @027   ----------------------------------------
 .byte   PATT
  .word Label_01113486
@  #13 @028   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gn3 ,v075
 .byte   W01
@  #13 @029   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @030   ----------------------------------------
 .byte   PATT
  .word Label_01113441
@  #13 @031   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @032   ----------------------------------------
 .byte   PATT
  .word Label_0111344D
@  #13 @033   ----------------------------------------
 .byte   W96
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
 .byte   PATT
  .word Label_01113455
@  #13 @042   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v075
 .byte   W01
@  #13 @043   ----------------------------------------
 .byte   PATT
  .word Label_01113462
@  #13 @044   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fn3 ,v073
 .byte   W01
@  #13 @045   ----------------------------------------
 .byte   PATT
  .word Label_01113474
@  #13 @046   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v075
 .byte   W01
@  #13 @047   ----------------------------------------
 .byte   PATT
  .word Label_01113486
@  #13 @048   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gn3 ,v075
 .byte   W01
@  #13 @049   ----------------------------------------
 .byte   PATT
  .word Label_01113455
@  #13 @050   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v075
 .byte   W01
@  #13 @051   ----------------------------------------
 .byte   PATT
  .word Label_01113462
@  #13 @052   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fn3 ,v073
 .byte   W01
@  #13 @053   ----------------------------------------
 .byte   PATT
  .word Label_01113474
@  #13 @054   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v075
 .byte   W01
@  #13 @055   ----------------------------------------
 .byte   PATT
  .word Label_01113486
@  #13 @056   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gn3 ,v075
 .byte   W01
@  #13 @057   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @058   ----------------------------------------
 .byte   PATT
  .word Label_01113441
@  #13 @059   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @060   ----------------------------------------
 .byte   PATT
  .word Label_0111344D
@  #13 @061   ----------------------------------------
 .byte   W96
@  #13 @062   ----------------------------------------
 .byte   W96
@  #13 @063   ----------------------------------------
 .byte   W96
@  #13 @064   ----------------------------------------
 .byte   W96
@  #13 @065   ----------------------------------------
Label_01113550:
 .byte   N44 ,As3 ,v052
 .byte   W48
 .byte   Bn3
 .byte   W18
 .byte   W09
 .byte   W10
 .byte   W09
 .byte   W02
 .byte   PEND 
@  #13 @066   ----------------------------------------
Label_0111355B:
 .byte   N44 ,Cs4 ,v056
 .byte   W07
 .byte   W09
 .byte   W10
 .byte   W09
 .byte   W09
 .byte   W04
 .byte   Bn3 ,v060
 .byte   W05
 .byte   W10
 .byte   W09
 .byte   W09
 .byte   W09
 .byte   W06
 .byte   PEND 
@  #13 @067   ----------------------------------------
Label_0111356D:
 .byte   N44 ,As3 ,v064
 .byte   W04
 .byte   W09
 .byte   W09
 .byte   W09
 .byte   W10
 .byte   W07
 .byte   Bn3 ,v072
 .byte   W02
 .byte   W09
 .byte   W09
 .byte   W10
 .byte   W09
 .byte   W09
 .byte   PEND 
@  #13 @068   ----------------------------------------
Label_0111357F:
 .byte   N44 ,Cs4 ,v076
 .byte   W09
 .byte   W10
 .byte   W09
 .byte   W09
 .byte   W09
 .byte   W02
 .byte   Fs4 ,v080
 .byte   W48
 .byte   PEND 
@  #13 @069   ----------------------------------------
Label_0111358C:
 .byte   W24
 .byte   N32 ,Cs4 ,v064
 .byte   N32 ,En4
 .byte   N32 ,Gs4
 .byte   W36
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   N56 ,Fs3
 .byte   N56 ,Bn3
 .byte   N56 ,Ds4
 .byte   W12
 .byte   PEND 
@  #13 @070   ----------------------------------------
Label_011135A2:
 .byte   W48
 .byte   N11 ,Bn3 ,v064
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N92 ,Fs3
 .byte   TIE ,Gs3
 .byte   TIE ,Cs4
 .byte   W12
 .byte   PEND 
@  #13 @071   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn3
 .byte   W12
@  #13 @072   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W01
 .byte   N11 ,Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
@  #13 @073   ----------------------------------------
 .byte   PATT
  .word Label_0111358C
@  #13 @074   ----------------------------------------
 .byte   PATT
  .word Label_011135A2
@  #13 @075   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn3 ,v064
 .byte   W12
@  #13 @076   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W13
 .byte   N11
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
@  #13 @077   ----------------------------------------
Label_011135E1:
 .byte   W24
 .byte   N32 ,Fs4 ,v064
 .byte   N32 ,An4
 .byte   N32 ,Cs5
 .byte   W36
 .byte   N11 ,Bn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N56 ,Bn3
 .byte   N56 ,En4
 .byte   N56 ,Gs4
 .byte   W12
 .byte   PEND 
@  #13 @078   ----------------------------------------
Label_011135F7:
 .byte   W48
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   N68 ,Bn3
 .byte   N68 ,Cs4
 .byte   N68 ,Fs4
 .byte   W12
 .byte   PEND 
@  #13 @079   ----------------------------------------
Label_01113608:
 .byte   W60
 .byte   N11 ,Cs4 ,v064
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   N32 ,An3
 .byte   N32 ,Cs4
 .byte   N32 ,Gs4
 .byte   W12
 .byte   PEND 
@  #13 @080   ----------------------------------------
Label_01113617:
 .byte   W24
 .byte   N11 ,An4 ,v064
 .byte   W12
 .byte   N32 ,Gs4
 .byte   W36
 .byte   N23 ,An3
 .byte   N23 ,Cs4
 .byte   N23 ,Fs4
 .byte   W24
 .byte   PEND 
@  #13 @081   ----------------------------------------
Label_01113627:
 .byte   N68 ,Bn3 ,v064
 .byte   N36 ,Dn4
 .byte   N23 ,En4
 .byte   W24
 .byte   N11 ,Fs4
 .byte   W12
 .byte   TIE ,Dn4
 .byte   W36
 .byte   N68 ,Gn3
 .byte   N68 ,Bn3
 .byte   W24
 .byte   PEND 
@  #13 @082   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn4
 .byte   W01
 .byte   N32 ,Bn3
 .byte   W36
 .byte   TIE ,En3
 .byte   TIE ,Gs3
 .byte   TIE ,Bn3
 .byte   TIE ,En4
 .byte   W12
@  #13 @083   ----------------------------------------
 .byte   W96
@  #13 @084   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En3 ,v068
 .byte   Bn3 ,v076
 .byte   W01
@  #13 @085   ----------------------------------------
Label_01113655:
 .byte   N32 ,Fs4 ,v064
 .byte   N32 ,An4
 .byte   N32 ,Dn5
 .byte   W36
 .byte   An4
 .byte   W36
 .byte   N23 ,Fs4
 .byte   W24
 .byte   PEND 
@  #13 @086   ----------------------------------------
Label_01113663:
 .byte   N23 ,An3 ,v064
 .byte   N23 ,Cs4
 .byte   N23 ,En4
 .byte   W24
 .byte   An3
 .byte   W24
 .byte   An4
 .byte   W24
 .byte   N11 ,Gn4
 .byte   W12
 .byte   TIE ,An3
 .byte   TIE ,Dn4
 .byte   TIE ,Fs4
 .byte   W12
 .byte   PEND 
@  #13 @087   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   An3 ,v074
 .byte   Fs4
 .byte   W01
@  #13 @088   ----------------------------------------
Label_01113681:
 .byte   W60
 .byte   N11 ,Bn3 ,v064
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N32 ,Gn3
 .byte   N32 ,Bn3
 .byte   N32 ,Dn4
 .byte   W12
 .byte   PEND 
@  #13 @089   ----------------------------------------
Label_01113690:
 .byte   W24
 .byte   N11 ,Cs4 ,v064
 .byte   W12
 .byte   Dn4
 .byte   W24
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N32 ,Fs3
 .byte   N32 ,An3
 .byte   N32 ,Dn4
 .byte   W12
 .byte   PEND 
@  #13 @090   ----------------------------------------
Label_011136A3:
 .byte   W24
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Dn4
 .byte   W24
 .byte   N11
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   PEND 
@  #13 @091   ----------------------------------------
Label_011136B1:
 .byte   N44 ,Bn3 ,v064
 .byte   N44 ,Dn4
 .byte   N44 ,Gn4
 .byte   W60
 .byte   N11 ,Fs4
 .byte   W12
 .byte   En4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   PEND 
@  #13 @092   ----------------------------------------
Label_011136C1:
 .byte   N32 ,Bn3 ,v064
 .byte   N32 ,Cs4
 .byte   N32 ,Fs4
 .byte   W36
 .byte   N11 ,En4
 .byte   W12
 .byte   N23 ,As3
 .byte   N23 ,Cs4
 .byte   N23 ,En4
 .byte   W24
 .byte   N11 ,Fs4
 .byte   W12
 .byte   Cs5
 .byte   W12
 .byte   PEND 
@  #13 @093   ----------------------------------------
 .byte   PATT
  .word Label_01113655
@  #13 @094   ----------------------------------------
 .byte   PATT
  .word Label_01113663
@  #13 @095   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   An3 ,v074
 .byte   Fs4
 .byte   W01
@  #13 @096   ----------------------------------------
 .byte   PATT
  .word Label_01113681
@  #13 @097   ----------------------------------------
 .byte   PATT
  .word Label_01113690
@  #13 @098   ----------------------------------------
Label_011136F4:
 .byte   W24
 .byte   N11 ,En4 ,v064
 .byte   W12
 .byte   Dn4
 .byte   W24
 .byte   An3
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   N32 ,Gn3
 .byte   N32 ,Bn3
 .byte   N32 ,Dn4
 .byte   W12
 .byte   PEND 
@  #13 @099   ----------------------------------------
Label_01113707:
 .byte   W24
 .byte   N23 ,Dn4 ,v064
 .byte   W24
 .byte   En4
 .byte   W24
 .byte   Fs4
 .byte   W24
 .byte   PEND 
@  #13 @100   ----------------------------------------
Label_01113711:
 .byte   N23 ,Gn4 ,v064
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   An4
 .byte   W24
 .byte   Bn4
 .byte   W24
 .byte   PEND 
@  #13 @101   ----------------------------------------
Label_0111371C:
 .byte   N92 ,Dn4 ,v064
 .byte   TIE ,En4
 .byte   TIE ,Gn4
 .byte   TIE ,An4
 .byte   W96
 .byte   PEND 
@  #13 @102   ----------------------------------------
Label_01113727:
 .byte   N44 ,Cs4 ,v064
 .byte   W44
 .byte   W03
 .byte   PEND 
 .byte   EOT
 .byte   En4 ,v079
 .byte   An4
 .byte   W13
 .byte   N11 ,Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W12
 .byte   TIE ,Fs3
 .byte   TIE ,Fs4
 .byte   W12
@  #13 @103   ----------------------------------------
 .byte   W96
@  #13 @104   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v078
 .byte   W48
 .byte   W01
@  #13 @105   ----------------------------------------
 .byte   W96
@  #13 @106   ----------------------------------------
Label_01113749:
 .byte   W48
 .byte   N11 ,An2 ,v064
 .byte   N11 ,An3
 .byte   W12
 .byte   Dn3
 .byte   N11 ,Dn4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W12
 .byte   TIE ,Fs3
 .byte   TIE ,Fs4
 .byte   W12
 .byte   PEND 
@  #13 @107   ----------------------------------------
 .byte   W96
@  #13 @108   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v078
 .byte   W48
 .byte   W01
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
 .byte   GOTO
  .word Label_0111343A
@  #13 @130   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @131   ----------------------------------------
 .byte   PATT
  .word Label_01113441
@  #13 @132   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @133   ----------------------------------------
 .byte   PATT
  .word Label_0111344D
@  #13 @134   ----------------------------------------
 .byte   W96
@  #13 @135   ----------------------------------------
 .byte   PATT
  .word Label_01113455
@  #13 @136   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v075
 .byte   W01
@  #13 @137   ----------------------------------------
 .byte   PATT
  .word Label_01113462
@  #13 @138   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fn3 ,v073
 .byte   W01
@  #13 @139   ----------------------------------------
 .byte   PATT
  .word Label_01113474
@  #13 @140   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v075
 .byte   W01
@  #13 @141   ----------------------------------------
 .byte   PATT
  .word Label_01113486
@  #13 @142   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gn3 ,v075
 .byte   W01
@  #13 @143   ----------------------------------------
 .byte   PATT
  .word Label_01113455
@  #13 @144   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v075
 .byte   W01
@  #13 @145   ----------------------------------------
 .byte   PATT
  .word Label_01113462
@  #13 @146   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fn3 ,v073
 .byte   W01
@  #13 @147   ----------------------------------------
 .byte   PATT
  .word Label_01113474
@  #13 @148   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v075
 .byte   W01
@  #13 @149   ----------------------------------------
 .byte   PATT
  .word Label_01113486
@  #13 @150   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gn3 ,v075
 .byte   W01
@  #13 @151   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @152   ----------------------------------------
 .byte   PATT
  .word Label_01113441
@  #13 @153   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @154   ----------------------------------------
 .byte   PATT
  .word Label_0111344D
@  #13 @155   ----------------------------------------
 .byte   W96
@  #13 @156   ----------------------------------------
 .byte   W96
@  #13 @157   ----------------------------------------
 .byte   W96
@  #13 @158   ----------------------------------------
 .byte   W96
@  #13 @159   ----------------------------------------
 .byte   W96
@  #13 @160   ----------------------------------------
 .byte   W96
@  #13 @161   ----------------------------------------
 .byte   W96
@  #13 @162   ----------------------------------------
 .byte   W96
@  #13 @163   ----------------------------------------
 .byte   PATT
  .word Label_01113455
@  #13 @164   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v075
 .byte   W01
@  #13 @165   ----------------------------------------
 .byte   PATT
  .word Label_01113462
@  #13 @166   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fn3 ,v073
 .byte   W01
@  #13 @167   ----------------------------------------
 .byte   PATT
  .word Label_01113474
@  #13 @168   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v075
 .byte   W01
@  #13 @169   ----------------------------------------
 .byte   PATT
  .word Label_01113486
@  #13 @170   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gn3 ,v075
 .byte   W01
@  #13 @171   ----------------------------------------
 .byte   PATT
  .word Label_01113455
@  #13 @172   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v075
 .byte   W01
@  #13 @173   ----------------------------------------
 .byte   PATT
  .word Label_01113462
@  #13 @174   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fn3 ,v073
 .byte   W01
@  #13 @175   ----------------------------------------
 .byte   PATT
  .word Label_01113474
@  #13 @176   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v075
 .byte   W01
@  #13 @177   ----------------------------------------
 .byte   PATT
  .word Label_01113486
@  #13 @178   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gn3 ,v075
 .byte   W01
@  #13 @179   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @180   ----------------------------------------
 .byte   PATT
  .word Label_01113441
@  #13 @181   ----------------------------------------
 .byte   PATT
  .word Label_0111343A
@  #13 @182   ----------------------------------------
 .byte   PATT
  .word Label_0111344D
@  #13 @183   ----------------------------------------
 .byte   W96
@  #13 @184   ----------------------------------------
 .byte   W96
@  #13 @185   ----------------------------------------
 .byte   W96
@  #13 @186   ----------------------------------------
 .byte   W96
@  #13 @187   ----------------------------------------
 .byte   PATT
  .word Label_01113550
@  #13 @188   ----------------------------------------
 .byte   PATT
  .word Label_0111355B
@  #13 @189   ----------------------------------------
 .byte   PATT
  .word Label_0111356D
@  #13 @190   ----------------------------------------
 .byte   PATT
  .word Label_0111357F
@  #13 @191   ----------------------------------------
 .byte   PATT
  .word Label_0111358C
@  #13 @192   ----------------------------------------
 .byte   PATT
  .word Label_011135A2
@  #13 @193   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn3 ,v064
 .byte   W12
@  #13 @194   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W01
 .byte   N11 ,Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cs4
 .byte   W12
@  #13 @195   ----------------------------------------
 .byte   PATT
  .word Label_0111358C
@  #13 @196   ----------------------------------------
 .byte   PATT
  .word Label_011135A2
@  #13 @197   ----------------------------------------
 .byte   W84
 .byte   N56 ,Fn3 ,v064
 .byte   W12
@  #13 @198   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v073
 .byte   W13
 .byte   N11
 .byte   W12
 .byte   Fs4
 .byte   W12
 .byte   Gs4
 .byte   W12
@  #13 @199   ----------------------------------------
 .byte   PATT
  .word Label_011135E1
@  #13 @200   ----------------------------------------
 .byte   PATT
  .word Label_011135F7
@  #13 @201   ----------------------------------------
 .byte   PATT
  .word Label_01113608
@  #13 @202   ----------------------------------------
 .byte   PATT
  .word Label_01113617
@  #13 @203   ----------------------------------------
 .byte   PATT
  .word Label_01113627
@  #13 @204   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Dn4
 .byte   W01
 .byte   N32 ,Bn3 ,v064
 .byte   W36
 .byte   TIE ,En3
 .byte   TIE ,Gs3
 .byte   TIE ,Bn3
 .byte   TIE ,En4
 .byte   W12
@  #13 @205   ----------------------------------------
 .byte   W96
@  #13 @206   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   En3 ,v068
 .byte   Bn3 ,v076
 .byte   W01
@  #13 @207   ----------------------------------------
 .byte   PATT
  .word Label_01113655
@  #13 @208   ----------------------------------------
 .byte   PATT
  .word Label_01113663
@  #13 @209   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   An3 ,v074
 .byte   Fs4
 .byte   W01
@  #13 @210   ----------------------------------------
 .byte   PATT
  .word Label_01113681
@  #13 @211   ----------------------------------------
 .byte   PATT
  .word Label_01113690
@  #13 @212   ----------------------------------------
 .byte   PATT
  .word Label_011136A3
@  #13 @213   ----------------------------------------
 .byte   PATT
  .word Label_011136B1
@  #13 @214   ----------------------------------------
 .byte   PATT
  .word Label_011136C1
@  #13 @215   ----------------------------------------
 .byte   PATT
  .word Label_01113655
@  #13 @216   ----------------------------------------
 .byte   PATT
  .word Label_01113663
@  #13 @217   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   An3 ,v074
 .byte   Fs4
 .byte   W01
@  #13 @218   ----------------------------------------
 .byte   PATT
  .word Label_01113681
@  #13 @219   ----------------------------------------
 .byte   PATT
  .word Label_01113690
@  #13 @220   ----------------------------------------
 .byte   PATT
  .word Label_011136F4
@  #13 @221   ----------------------------------------
 .byte   PATT
  .word Label_01113707
@  #13 @222   ----------------------------------------
 .byte   PATT
  .word Label_01113711
@  #13 @223   ----------------------------------------
 .byte   PATT
  .word Label_0111371C
@  #13 @224   ----------------------------------------
 .byte   PATT
  .word Label_01113727
@  #13 @225   ----------------------------------------
 .byte   EOT
 .byte   En4 ,v079
 .byte   An4
 .byte   W13
 .byte   N11 ,Dn3 ,v064
 .byte   N11 ,Dn4
 .byte   W12
 .byte   En3
 .byte   N11 ,En4
 .byte   W12
 .byte   TIE ,Fs3
 .byte   TIE ,Fs4
 .byte   W12
 .byte   W96
@  #13 @226   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v078
 .byte   W48
 .byte   W01
@  #13 @227   ----------------------------------------
 .byte   W96
@  #13 @228   ----------------------------------------
 .byte   PATT
  .word Label_01113749
@  #13 @229   ----------------------------------------
 .byte   W96
@  #13 @230   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fs3 ,v078
 .byte   W48
 .byte   W01
@  #13 @231   ----------------------------------------
 .byte   W96
@  #13 @232   ----------------------------------------
 .byte   W96
@  #13 @233   ----------------------------------------
 .byte   W96
@  #13 @234   ----------------------------------------
 .byte   W96
@  #13 @235   ----------------------------------------
 .byte   W96
@  #13 @236   ----------------------------------------
 .byte   W96
@  #13 @237   ----------------------------------------
 .byte   W96
@  #13 @238   ----------------------------------------
 .byte   W96
@  #13 @239   ----------------------------------------
 .byte   W96
@  #13 @240   ----------------------------------------
 .byte   W96
@  #13 @241   ----------------------------------------
 .byte   W96
@  #13 @242   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 14 (Midi-Chn.13) ****************@

.align 2, 0
song07_014:
@  #14 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 45
 .byte   VOL , 52*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 52*song07_mvl/mxv
 .byte   PAN , c_v+0
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
Label_011139A4:
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
Label_011139A9:
 .byte   N11 ,Fs2 ,v036
 .byte   N11 ,Gs2
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Gs2
 .byte   W36
 .byte   Fs2
 .byte   N11 ,Gs2
 .byte   W24
 .byte   Fs2
 .byte   N11 ,Gs2
 .byte   W12
 .byte   PEND 
@  #14 @014   ----------------------------------------
Label_011139BC:
 .byte   W24
 .byte   N11 ,Fs2 ,v036
 .byte   N11 ,Gs2
 .byte   W36
 .byte   Fs2
 .byte   N11 ,Gs2
 .byte   W36
 .byte   PEND 
@  #14 @015   ----------------------------------------
Label_011139C8:
 .byte   N11 ,Gs2 ,v036
 .byte   N11 ,Bn2
 .byte   W24
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   W36
 .byte   Gs2
 .byte   N11 ,Bn2
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   W12
 .byte   PEND 
@  #14 @016   ----------------------------------------
Label_011139DB:
 .byte   W24
 .byte   N11 ,Fn2 ,v036
 .byte   N11 ,Gs2
 .byte   W36
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   W36
 .byte   PEND 
@  #14 @017   ----------------------------------------
Label_011139E7:
 .byte   N11 ,An2 ,v036
 .byte   N11 ,Bn2
 .byte   W24
 .byte   An2
 .byte   N11 ,Bn2
 .byte   W36
 .byte   An2
 .byte   N11 ,Bn2
 .byte   W24
 .byte   Gs2
 .byte   N11 ,As2
 .byte   W12
 .byte   PEND 
@  #14 @018   ----------------------------------------
Label_011139FA:
 .byte   W24
 .byte   N11 ,Gs2 ,v036
 .byte   N11 ,As2
 .byte   W36
 .byte   Gs2
 .byte   N11 ,As2
 .byte   W36
 .byte   PEND 
@  #14 @019   ----------------------------------------
Label_01113A06:
 .byte   N11 ,Fn2 ,v036
 .byte   N11 ,Gs2
 .byte   W24
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   W36
 .byte   Fn2
 .byte   N11 ,Gs2
 .byte   W24
 .byte   Gn2
 .byte   N11 ,As2
 .byte   W12
 .byte   PEND 
@  #14 @020   ----------------------------------------
Label_01113A19:
 .byte   W24
 .byte   N11 ,Gn2 ,v036
 .byte   N11 ,As2
 .byte   W72
 .byte   PEND 
@  #14 @021   ----------------------------------------
 .byte   PATT
  .word Label_011139A9
@  #14 @022   ----------------------------------------
 .byte   PATT
  .word Label_011139BC
@  #14 @023   ----------------------------------------
 .byte   PATT
  .word Label_011139C8
@  #14 @024   ----------------------------------------
 .byte   PATT
  .word Label_011139DB
@  #14 @025   ----------------------------------------
 .byte   PATT
  .word Label_011139E7
@  #14 @026   ----------------------------------------
 .byte   PATT
  .word Label_011139FA
@  #14 @027   ----------------------------------------
 .byte   PATT
  .word Label_01113A06
@  #14 @028   ----------------------------------------
 .byte   PATT
  .word Label_01113A19
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
 .byte   PATT
  .word Label_011139A9
@  #14 @042   ----------------------------------------
 .byte   PATT
  .word Label_011139BC
@  #14 @043   ----------------------------------------
 .byte   PATT
  .word Label_011139C8
@  #14 @044   ----------------------------------------
 .byte   PATT
  .word Label_011139DB
@  #14 @045   ----------------------------------------
 .byte   PATT
  .word Label_011139E7
@  #14 @046   ----------------------------------------
 .byte   PATT
  .word Label_011139FA
@  #14 @047   ----------------------------------------
 .byte   PATT
  .word Label_01113A06
@  #14 @048   ----------------------------------------
Label_01113A78:
 .byte   W24
 .byte   N11 ,Gn2 ,v036
 .byte   N11 ,As2
 .byte   W36
 .byte   As1
 .byte   N11 ,Ds2
 .byte   W12
 .byte   Cs2
 .byte   N11 ,Gn2
 .byte   W12
 .byte   Fn2
 .byte   N11 ,As2
 .byte   W12
 .byte   PEND 
@  #14 @049   ----------------------------------------
 .byte   PATT
  .word Label_011139A9
@  #14 @050   ----------------------------------------
 .byte   PATT
  .word Label_011139BC
@  #14 @051   ----------------------------------------
 .byte   PATT
  .word Label_011139C8
@  #14 @052   ----------------------------------------
 .byte   PATT
  .word Label_011139DB
@  #14 @053   ----------------------------------------
 .byte   PATT
  .word Label_011139E7
@  #14 @054   ----------------------------------------
 .byte   PATT
  .word Label_011139FA
@  #14 @055   ----------------------------------------
 .byte   PATT
  .word Label_01113A06
@  #14 @056   ----------------------------------------
 .byte   PATT
  .word Label_01113A78
@  #14 @057   ----------------------------------------
 .byte   W96
@  #14 @058   ----------------------------------------
 .byte   W96
@  #14 @059   ----------------------------------------
 .byte   W96
@  #14 @060   ----------------------------------------
 .byte   W96
@  #14 @061   ----------------------------------------
 .byte   W96
@  #14 @062   ----------------------------------------
 .byte   W96
@  #14 @063   ----------------------------------------
 .byte   W96
@  #14 @064   ----------------------------------------
 .byte   W96
@  #14 @065   ----------------------------------------
 .byte   W96
@  #14 @066   ----------------------------------------
 .byte   W96
@  #14 @067   ----------------------------------------
 .byte   W96
@  #14 @068   ----------------------------------------
 .byte   W96
@  #14 @069   ----------------------------------------
Label_01113AC0:
 .byte   W24
 .byte   N32 ,Gs3 ,v080
 .byte   W36
 .byte   N11 ,Fs3
 .byte   W12
 .byte   En3
 .byte   W12
 .byte   N56 ,Ds3
 .byte   W12
 .byte   PEND 
@  #14 @070   ----------------------------------------
Label_01113ACE:
 .byte   W48
 .byte   N11 ,Bn2 ,v080
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   TIE ,Cs3
 .byte   W12
 .byte   PEND 
@  #14 @071   ----------------------------------------
 .byte   W96
@  #14 @072   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11 ,Gs2
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #14 @073   ----------------------------------------
 .byte   PATT
  .word Label_01113AC0
@  #14 @074   ----------------------------------------
 .byte   PATT
  .word Label_01113ACE
@  #14 @075   ----------------------------------------
 .byte   W96
@  #14 @076   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Cs3
 .byte   W13
 .byte   N11 ,Cs2 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
@  #14 @077   ----------------------------------------
Label_01113B0A:
 .byte   W24
 .byte   N32 ,Cs3 ,v080
 .byte   W36
 .byte   N11 ,Bn2
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N56 ,Gs2
 .byte   W12
 .byte   PEND 
@  #14 @078   ----------------------------------------
Label_01113B18:
 .byte   W48
 .byte   N11 ,En2 ,v080
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   Gs2
 .byte   W12
 .byte   N92 ,Fs2
 .byte   W12
 .byte   PEND 
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
Label_01113B32:
 .byte   W72
 .byte   N11 ,Fs2 ,v080
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   PEND 
@  #14 @093   ----------------------------------------
Label_01113B3A:
 .byte   N32 ,Dn3 ,v080
 .byte   W36
 .byte   An2
 .byte   W36
 .byte   N23 ,Fs2
 .byte   W24
 .byte   PEND 
@  #14 @094   ----------------------------------------
Label_01113B44:
 .byte   N23 ,En2 ,v080
 .byte   W24
 .byte   An1
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   N11 ,Gn2
 .byte   W12
 .byte   TIE ,Fs2
 .byte   W12
 .byte   PEND 
@  #14 @095   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #14 @096   ----------------------------------------
Label_01113B57:
 .byte   W60
 .byte   N11 ,Bn1 ,v080
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   N32 ,Dn2
 .byte   W12
 .byte   PEND 
@  #14 @097   ----------------------------------------
Label_01113B62:
 .byte   W24
 .byte   N11 ,Cs2 ,v080
 .byte   W12
 .byte   Dn2
 .byte   W24
 .byte   An1
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   N32 ,Dn2
 .byte   W12
 .byte   PEND 
@  #14 @098   ----------------------------------------
Label_01113B71:
 .byte   W24
 .byte   N11 ,En2 ,v080
 .byte   W12
 .byte   Dn2
 .byte   W24
 .byte   An1
 .byte   W12
 .byte   Cs2
 .byte   W12
 .byte   N32 ,Dn2
 .byte   W12
 .byte   PEND 
@  #14 @099   ----------------------------------------
Label_01113B80:
 .byte   W24
 .byte   N23 ,Dn2 ,v080
 .byte   W24
 .byte   En2
 .byte   W24
 .byte   Fs2
 .byte   W24
 .byte   PEND 
@  #14 @100   ----------------------------------------
Label_01113B8A:
 .byte   N23 ,Gn2 ,v080
 .byte   W24
 .byte   Dn2
 .byte   W24
 .byte   An2
 .byte   W24
 .byte   Bn2
 .byte   W24
 .byte   PEND 
@  #14 @101   ----------------------------------------
 .byte   TIE ,An2
 .byte   W96
@  #14 @102   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W13
 .byte   N11 ,Dn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   TIE ,Fs2
 .byte   W12
@  #14 @103   ----------------------------------------
 .byte   W96
@  #14 @104   ----------------------------------------
Label_01113BA5:
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
 .byte   PEND 
@  #14 @105   ----------------------------------------
Label_01113BC6:
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
 .byte   PEND 
@  #14 @106   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fs2
 .byte   W01
 .byte   N11 ,An1 ,v080
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   TIE ,Fs2
 .byte   W12
@  #14 @107   ----------------------------------------
 .byte   W96
@  #14 @108   ----------------------------------------
 .byte   PATT
  .word Label_01113BA5
@  #14 @109   ----------------------------------------
 .byte   PATT
  .word Label_01113BC6
@  #14 @110   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fs2
 .byte   W48
 .byte   W01
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
 .byte   GOTO
  .word Label_011139A4
@  #14 @130   ----------------------------------------
 .byte   W96
@  #14 @131   ----------------------------------------
 .byte   W96
@  #14 @132   ----------------------------------------
 .byte   W96
@  #14 @133   ----------------------------------------
 .byte   W96
@  #14 @134   ----------------------------------------
 .byte   W96
@  #14 @135   ----------------------------------------
 .byte   PATT
  .word Label_011139A9
@  #14 @136   ----------------------------------------
 .byte   PATT
  .word Label_011139BC
@  #14 @137   ----------------------------------------
 .byte   PATT
  .word Label_011139C8
@  #14 @138   ----------------------------------------
 .byte   PATT
  .word Label_011139DB
@  #14 @139   ----------------------------------------
 .byte   PATT
  .word Label_011139E7
@  #14 @140   ----------------------------------------
 .byte   PATT
  .word Label_011139FA
@  #14 @141   ----------------------------------------
 .byte   PATT
  .word Label_01113A06
@  #14 @142   ----------------------------------------
 .byte   PATT
  .word Label_01113A19
@  #14 @143   ----------------------------------------
 .byte   PATT
  .word Label_011139A9
@  #14 @144   ----------------------------------------
 .byte   PATT
  .word Label_011139BC
@  #14 @145   ----------------------------------------
 .byte   PATT
  .word Label_011139C8
@  #14 @146   ----------------------------------------
 .byte   PATT
  .word Label_011139DB
@  #14 @147   ----------------------------------------
 .byte   PATT
  .word Label_011139E7
@  #14 @148   ----------------------------------------
 .byte   PATT
  .word Label_011139FA
@  #14 @149   ----------------------------------------
 .byte   PATT
  .word Label_01113A06
@  #14 @150   ----------------------------------------
 .byte   PATT
  .word Label_01113A19
@  #14 @151   ----------------------------------------
 .byte   W96
@  #14 @152   ----------------------------------------
 .byte   W96
@  #14 @153   ----------------------------------------
 .byte   W96
@  #14 @154   ----------------------------------------
 .byte   W96
@  #14 @155   ----------------------------------------
 .byte   W96
@  #14 @156   ----------------------------------------
 .byte   W96
@  #14 @157   ----------------------------------------
 .byte   W96
@  #14 @158   ----------------------------------------
 .byte   W96
@  #14 @159   ----------------------------------------
 .byte   W96
@  #14 @160   ----------------------------------------
 .byte   W96
@  #14 @161   ----------------------------------------
 .byte   W96
@  #14 @162   ----------------------------------------
 .byte   W96
@  #14 @163   ----------------------------------------
 .byte   PATT
  .word Label_011139A9
@  #14 @164   ----------------------------------------
 .byte   PATT
  .word Label_011139BC
@  #14 @165   ----------------------------------------
 .byte   PATT
  .word Label_011139C8
@  #14 @166   ----------------------------------------
 .byte   PATT
  .word Label_011139DB
@  #14 @167   ----------------------------------------
 .byte   PATT
  .word Label_011139E7
@  #14 @168   ----------------------------------------
 .byte   PATT
  .word Label_011139FA
@  #14 @169   ----------------------------------------
 .byte   PATT
  .word Label_01113A06
@  #14 @170   ----------------------------------------
 .byte   PATT
  .word Label_01113A78
@  #14 @171   ----------------------------------------
 .byte   PATT
  .word Label_011139A9
@  #14 @172   ----------------------------------------
 .byte   PATT
  .word Label_011139BC
@  #14 @173   ----------------------------------------
 .byte   PATT
  .word Label_011139C8
@  #14 @174   ----------------------------------------
 .byte   PATT
  .word Label_011139DB
@  #14 @175   ----------------------------------------
 .byte   PATT
  .word Label_011139E7
@  #14 @176   ----------------------------------------
 .byte   PATT
  .word Label_011139FA
@  #14 @177   ----------------------------------------
 .byte   PATT
  .word Label_01113A06
@  #14 @178   ----------------------------------------
 .byte   PATT
  .word Label_01113A78
@  #14 @179   ----------------------------------------
 .byte   W96
@  #14 @180   ----------------------------------------
 .byte   W96
@  #14 @181   ----------------------------------------
 .byte   W96
@  #14 @182   ----------------------------------------
 .byte   W96
@  #14 @183   ----------------------------------------
 .byte   W96
@  #14 @184   ----------------------------------------
 .byte   W96
@  #14 @185   ----------------------------------------
 .byte   W96
@  #14 @186   ----------------------------------------
 .byte   W96
@  #14 @187   ----------------------------------------
 .byte   W96
@  #14 @188   ----------------------------------------
 .byte   W96
@  #14 @189   ----------------------------------------
 .byte   W96
@  #14 @190   ----------------------------------------
 .byte   W96
@  #14 @191   ----------------------------------------
 .byte   PATT
  .word Label_01113AC0
@  #14 @192   ----------------------------------------
 .byte   PATT
  .word Label_01113ACE
@  #14 @193   ----------------------------------------
 .byte   W96
@  #14 @194   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Cs3
 .byte   W01
 .byte   N11 ,Gs2 ,v080
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Cs3
 .byte   W12
@  #14 @195   ----------------------------------------
 .byte   PATT
  .word Label_01113AC0
@  #14 @196   ----------------------------------------
 .byte   PATT
  .word Label_01113ACE
@  #14 @197   ----------------------------------------
 .byte   W96
@  #14 @198   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Cs3
 .byte   W13
 .byte   N11 ,Cs2 ,v120
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Fs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
 .byte   Gs2
 .byte   W03
 .byte   W01
 .byte   W01
 .byte   W07
@  #14 @199   ----------------------------------------
 .byte   PATT
  .word Label_01113B0A
@  #14 @200   ----------------------------------------
 .byte   PATT
  .word Label_01113B18
@  #14 @201   ----------------------------------------
 .byte   W96
@  #14 @202   ----------------------------------------
 .byte   W96
@  #14 @203   ----------------------------------------
 .byte   W96
@  #14 @204   ----------------------------------------
 .byte   W96
@  #14 @205   ----------------------------------------
 .byte   W96
@  #14 @206   ----------------------------------------
 .byte   W96
@  #14 @207   ----------------------------------------
 .byte   W96
@  #14 @208   ----------------------------------------
 .byte   W96
@  #14 @209   ----------------------------------------
 .byte   W96
@  #14 @210   ----------------------------------------
 .byte   W96
@  #14 @211   ----------------------------------------
 .byte   W96
@  #14 @212   ----------------------------------------
 .byte   W96
@  #14 @213   ----------------------------------------
 .byte   W96
@  #14 @214   ----------------------------------------
 .byte   PATT
  .word Label_01113B32
@  #14 @215   ----------------------------------------
 .byte   PATT
  .word Label_01113B3A
@  #14 @216   ----------------------------------------
 .byte   PATT
  .word Label_01113B44
@  #14 @217   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Fs2
 .byte   W01
@  #14 @218   ----------------------------------------
 .byte   PATT
  .word Label_01113B57
@  #14 @219   ----------------------------------------
 .byte   PATT
  .word Label_01113B62
@  #14 @220   ----------------------------------------
 .byte   PATT
  .word Label_01113B71
@  #14 @221   ----------------------------------------
 .byte   PATT
  .word Label_01113B80
@  #14 @222   ----------------------------------------
 .byte   PATT
  .word Label_01113B8A
@  #14 @223   ----------------------------------------
 .byte   TIE ,An2 ,v080
 .byte   W96
@  #14 @224   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W13
 .byte   N11 ,Dn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   TIE ,Fs2
 .byte   W12
@  #14 @225   ----------------------------------------
 .byte   W96
@  #14 @226   ----------------------------------------
 .byte   PATT
  .word Label_01113BA5
@  #14 @227   ----------------------------------------
 .byte   PATT
  .word Label_01113BC6
@  #14 @228   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fs2
 .byte   W01
 .byte   N11 ,An1 ,v080
 .byte   W12
 .byte   Dn2
 .byte   W12
 .byte   En2
 .byte   W12
 .byte   TIE ,Fs2
 .byte   W12
@  #14 @229   ----------------------------------------
 .byte   W96
@  #14 @230   ----------------------------------------
 .byte   PATT
  .word Label_01113BA5
@  #14 @231   ----------------------------------------
 .byte   PATT
  .word Label_01113BC6
@  #14 @232   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   Fs2
 .byte   W48
 .byte   W01
@  #14 @233   ----------------------------------------
 .byte   W96
@  #14 @234   ----------------------------------------
 .byte   W96
@  #14 @235   ----------------------------------------
 .byte   W96
@  #14 @236   ----------------------------------------
 .byte   W96
@  #14 @237   ----------------------------------------
 .byte   W96
@  #14 @238   ----------------------------------------
 .byte   W96
@  #14 @239   ----------------------------------------
 .byte   W96
@  #14 @240   ----------------------------------------
 .byte   W96
@  #14 @241   ----------------------------------------
 .byte   W96
@  #14 @242   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@**************** Track 15 (Midi-Chn.14) ****************@

.align 2, 0
song07_015:
@  #15 @000   ----------------------------------------
 .byte   KEYSH , song07_key+0
 .byte   VOICE , 44
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   VOL , 42*song07_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W96
@  #15 @001   ----------------------------------------
 .byte   W96
@  #15 @002   ----------------------------------------
 .byte   W96
@  #15 @003   ----------------------------------------
 .byte   W96
@  #15 @004   ----------------------------------------
Label_01113DB4:
 .byte   N23 ,Gs1 ,v052
 .byte   W72
 .byte   N23
 .byte   W24
 .byte   PEND 
@  #15 @005   ----------------------------------------
Label_01113DBB:
 .byte   W48
 .byte   N23 ,Gs1 ,v052
 .byte   W36
 .byte   N32
 .byte   W12
 .byte   PEND 
@  #15 @006   ----------------------------------------
 .byte   W72
 .byte   N23
 .byte   W24
@  #15 @007   ----------------------------------------
 .byte   W48
 .byte   N23
 .byte   W48
@  #15 @008   ----------------------------------------
Label_01113DC9:
 .byte   W96
@  #15 @009   ----------------------------------------
 .byte   W96
@  #15 @010   ----------------------------------------
 .byte   W96
@  #15 @011   ----------------------------------------
 .byte   W96
@  #15 @012   ----------------------------------------
 .byte   W96
@  #15 @013   ----------------------------------------
 .byte   W96
@  #15 @014   ----------------------------------------
 .byte   W96
@  #15 @015   ----------------------------------------
 .byte   W96
@  #15 @016   ----------------------------------------
 .byte   W96
@  #15 @017   ----------------------------------------
 .byte   W96
@  #15 @018   ----------------------------------------
 .byte   W96
@  #15 @019   ----------------------------------------
 .byte   W96
@  #15 @020   ----------------------------------------
 .byte   W96
@  #15 @021   ----------------------------------------
 .byte   W96
@  #15 @022   ----------------------------------------
 .byte   W96
@  #15 @023   ----------------------------------------
 .byte   W96
@  #15 @024   ----------------------------------------
 .byte   W96
@  #15 @025   ----------------------------------------
 .byte   W96
@  #15 @026   ----------------------------------------
 .byte   W96
@  #15 @027   ----------------------------------------
 .byte   W96
@  #15 @028   ----------------------------------------
 .byte   W96
@  #15 @029   ----------------------------------------
 .byte   W96
@  #15 @030   ----------------------------------------
 .byte   W96
@  #15 @031   ----------------------------------------
 .byte   W96
@  #15 @032   ----------------------------------------
 .byte   W96
@  #15 @033   ----------------------------------------
 .byte   W96
@  #15 @034   ----------------------------------------
 .byte   W96
@  #15 @035   ----------------------------------------
 .byte   W96
@  #15 @036   ----------------------------------------
 .byte   W96
@  #15 @037   ----------------------------------------
 .byte   PATT
  .word Label_01113DB4
@  #15 @038   ----------------------------------------
 .byte   PATT
  .word Label_01113DBB
@  #15 @039   ----------------------------------------
 .byte   W72
 .byte   N23 ,Gs1 ,v052
 .byte   W24
@  #15 @040   ----------------------------------------
 .byte   W48
 .byte   N23
 .byte   W48
@  #15 @041   ----------------------------------------
Label_01113DF8:
 .byte   W24
 .byte   N32 ,Bn1 ,v080
 .byte   W36
 .byte   N11 ,Cs2
 .byte   W12
 .byte   Ds2
 .byte   W12
 .byte   N44 ,As2
 .byte   W12
 .byte   PEND 
@  #15 @042   ----------------------------------------
Label_01113E06:
 .byte   W36
 .byte   N32 ,Gs2 ,v080
 .byte   W36
 .byte   N23 ,Ds2
 .byte   W24
 .byte   PEND 
@  #15 @043   ----------------------------------------
Label_01113E0F:
 .byte   N23 ,Cs2 ,v080
 .byte   W24
 .byte   N11 ,Ds2
 .byte   W12
 .byte   N80 ,Gs1
 .byte   W60
 .byte   PEND 
@  #15 @044   ----------------------------------------
Label_01113E1A:
 .byte   W48
 .byte   N11 ,Gs1 ,v080
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   N23 ,Bn1
 .byte   W24
 .byte   PEND 
@  #15 @045   ----------------------------------------
Label_01113E25:
 .byte   N23 ,Cs2 ,v080
 .byte   W24
 .byte   N11 ,Ds2
 .byte   W12
 .byte   N32 ,Gs1
 .byte   W36
 .byte   N11 ,Gs2
 .byte   W12
 .byte   N32 ,Fs2
 .byte   W12
 .byte   PEND 
@  #15 @046   ----------------------------------------
Label_01113E36:
 .byte   W24
 .byte   N11 ,Ds2 ,v080
 .byte   W12
 .byte   N32 ,Cs2
 .byte   W36
 .byte   N11 ,Bn1
 .byte   W12
 .byte   N44 ,Cs2
 .byte   W12
 .byte   PEND 
@  #15 @047   ----------------------------------------
Label_01113E45:
 .byte   W36
 .byte   N11 ,Gs1 ,v080
 .byte   W12
 .byte   N23
 .byte   W24
 .byte   N11 ,Bn1
 .byte   W12
 .byte   TIE ,As1
 .byte   W12
 .byte   PEND 
@  #15 @048   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #15 @049   ----------------------------------------
 .byte   PATT
  .word Label_01113DF8
@  #15 @050   ----------------------------------------
 .byte   PATT
  .word Label_01113E06
@  #15 @051   ----------------------------------------
 .byte   PATT
  .word Label_01113E0F
@  #15 @052   ----------------------------------------
 .byte   PATT
  .word Label_01113E1A
@  #15 @053   ----------------------------------------
 .byte   PATT
  .word Label_01113E25
@  #15 @054   ----------------------------------------
 .byte   PATT
  .word Label_01113E36
@  #15 @055   ----------------------------------------
Label_01113E75:
 .byte   W36
 .byte   N11 ,Gs1 ,v080
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   As1
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   TIE ,Ds2
 .byte   W12
 .byte   PEND 
@  #15 @056   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #15 @057   ----------------------------------------
 .byte   W96
@  #15 @058   ----------------------------------------
 .byte   W96
@  #15 @059   ----------------------------------------
 .byte   W96
@  #15 @060   ----------------------------------------
 .byte   W96
@  #15 @061   ----------------------------------------
 .byte   W96
@  #15 @062   ----------------------------------------
 .byte   W96
@  #15 @063   ----------------------------------------
 .byte   W96
@  #15 @064   ----------------------------------------
 .byte   W96
@  #15 @065   ----------------------------------------
 .byte   W96
@  #15 @066   ----------------------------------------
 .byte   W96
@  #15 @067   ----------------------------------------
 .byte   W96
@  #15 @068   ----------------------------------------
 .byte   W96
@  #15 @069   ----------------------------------------
Label_01113E94:
 .byte   W24
 .byte   N32 ,An2 ,v080
 .byte   W36
 .byte   N11 ,Gs2
 .byte   W12
 .byte   Fs2
 .byte   W12
 .byte   TIE ,Gs2
 .byte   W12
 .byte   PEND 
@  #15 @070   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #15 @071   ----------------------------------------
 .byte   TIE ,Cs2
 .byte   W96
@  #15 @072   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #15 @073   ----------------------------------------
 .byte   PATT
  .word Label_01113E94
@  #15 @074   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #15 @075   ----------------------------------------
 .byte   TIE ,As2 ,v080
 .byte   W96
@  #15 @076   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #15 @077   ----------------------------------------
Label_01113EBF:
 .byte   W24
 .byte   N32 ,Dn2 ,v080
 .byte   W36
 .byte   N11 ,Cs2
 .byte   W12
 .byte   Bn1
 .byte   W12
 .byte   TIE ,Cs2
 .byte   W12
 .byte   PEND 
@  #15 @078   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #15 @079   ----------------------------------------
 .byte   N80 ,Ds2
 .byte   W96
@  #15 @080   ----------------------------------------
 .byte   W96
@  #15 @081   ----------------------------------------
 .byte   W96
@  #15 @082   ----------------------------------------
 .byte   W96
@  #15 @083   ----------------------------------------
 .byte   W96
@  #15 @084   ----------------------------------------
 .byte   W96
@  #15 @085   ----------------------------------------
Label_01113ED9:
 .byte   N11 ,Bn1 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #15 @086   ----------------------------------------
Label_01113EE4:
 .byte   N11 ,Cs2 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #15 @087   ----------------------------------------
Label_01113EEF:
 .byte   N11 ,Dn2 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #15 @088   ----------------------------------------
Label_01113EFA:
 .byte   N11 ,En1 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #15 @089   ----------------------------------------
Label_01113F05:
 .byte   N11 ,Gn1 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #15 @090   ----------------------------------------
Label_01113F10:
 .byte   N11 ,Fs1 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #15 @091   ----------------------------------------
 .byte   PATT
  .word Label_01113EFA
@  #15 @092   ----------------------------------------
 .byte   PATT
  .word Label_01113F10
@  #15 @093   ----------------------------------------
 .byte   PATT
  .word Label_01113ED9
@  #15 @094   ----------------------------------------
 .byte   PATT
  .word Label_01113EE4
@  #15 @095   ----------------------------------------
 .byte   PATT
  .word Label_01113EEF
@  #15 @096   ----------------------------------------
 .byte   PATT
  .word Label_01113EFA
@  #15 @097   ----------------------------------------
 .byte   PATT
  .word Label_01113F05
@  #15 @098   ----------------------------------------
 .byte   PATT
  .word Label_01113F10
@  #15 @099   ----------------------------------------
 .byte   PATT
  .word Label_01113EFA
@  #15 @100   ----------------------------------------
 .byte   PATT
  .word Label_01113EFA
@  #15 @101   ----------------------------------------
Label_01113F4D:
 .byte   N11 ,An1 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   PEND 
@  #15 @102   ----------------------------------------
 .byte   PATT
  .word Label_01113F4D
@  #15 @103   ----------------------------------------
 .byte   W96
@  #15 @104   ----------------------------------------
 .byte   W96
@  #15 @105   ----------------------------------------
 .byte   W96
@  #15 @106   ----------------------------------------
 .byte   W96
@  #15 @107   ----------------------------------------
 .byte   W96
@  #15 @108   ----------------------------------------
 .byte   W96
@  #15 @109   ----------------------------------------
 .byte   W96
@  #15 @110   ----------------------------------------
 .byte   W96
@  #15 @111   ----------------------------------------
 .byte   W96
@  #15 @112   ----------------------------------------
 .byte   W96
@  #15 @113   ----------------------------------------
 .byte   W96
@  #15 @114   ----------------------------------------
 .byte   W96
@  #15 @115   ----------------------------------------
 .byte   W96
@  #15 @116   ----------------------------------------
 .byte   W96
@  #15 @117   ----------------------------------------
 .byte   W96
@  #15 @118   ----------------------------------------
 .byte   W96
@  #15 @119   ----------------------------------------
 .byte   W96
@  #15 @120   ----------------------------------------
 .byte   W96
@  #15 @121   ----------------------------------------
 .byte   W96
@  #15 @122   ----------------------------------------
 .byte   W96
@  #15 @123   ----------------------------------------
 .byte   W96
@  #15 @124   ----------------------------------------
 .byte   W96
@  #15 @125   ----------------------------------------
 .byte   PATT
  .word Label_01113DB4
@  #15 @126   ----------------------------------------
 .byte   PATT
  .word Label_01113DBB
@  #15 @127   ----------------------------------------
 .byte   W72
 .byte   N23 ,Gs1 ,v052
 .byte   W24
@  #15 @128   ----------------------------------------
 .byte   W48
 .byte   N23
 .byte   W48
@  #15 @129   ----------------------------------------
 .byte   GOTO
  .word Label_01113DC9
@  #15 @130   ----------------------------------------
 .byte   W96
@  #15 @131   ----------------------------------------
 .byte   W96
@  #15 @132   ----------------------------------------
 .byte   W96
@  #15 @133   ----------------------------------------
 .byte   W96
@  #15 @134   ----------------------------------------
 .byte   W96
@  #15 @135   ----------------------------------------
 .byte   W96
@  #15 @136   ----------------------------------------
 .byte   W96
@  #15 @137   ----------------------------------------
 .byte   W96
@  #15 @138   ----------------------------------------
 .byte   W96
@  #15 @139   ----------------------------------------
 .byte   W96
@  #15 @140   ----------------------------------------
 .byte   W96
@  #15 @141   ----------------------------------------
 .byte   W96
@  #15 @142   ----------------------------------------
 .byte   W96
@  #15 @143   ----------------------------------------
 .byte   W96
@  #15 @144   ----------------------------------------
 .byte   W96
@  #15 @145   ----------------------------------------
 .byte   W96
@  #15 @146   ----------------------------------------
 .byte   W96
@  #15 @147   ----------------------------------------
 .byte   W96
@  #15 @148   ----------------------------------------
 .byte   W96
@  #15 @149   ----------------------------------------
 .byte   W96
@  #15 @150   ----------------------------------------
 .byte   W96
@  #15 @151   ----------------------------------------
 .byte   W96
@  #15 @152   ----------------------------------------
 .byte   W96
@  #15 @153   ----------------------------------------
 .byte   W96
@  #15 @154   ----------------------------------------
 .byte   W96
@  #15 @155   ----------------------------------------
 .byte   W96
@  #15 @156   ----------------------------------------
 .byte   W96
@  #15 @157   ----------------------------------------
 .byte   W96
@  #15 @158   ----------------------------------------
 .byte   W96
@  #15 @159   ----------------------------------------
 .byte   PATT
  .word Label_01113DB4
@  #15 @160   ----------------------------------------
 .byte   PATT
  .word Label_01113DBB
@  #15 @161   ----------------------------------------
 .byte   W72
 .byte   N23 ,Gs1 ,v052
 .byte   W24
@  #15 @162   ----------------------------------------
 .byte   W48
 .byte   N23
 .byte   W48
@  #15 @163   ----------------------------------------
 .byte   PATT
  .word Label_01113DF8
@  #15 @164   ----------------------------------------
 .byte   PATT
  .word Label_01113E06
@  #15 @165   ----------------------------------------
 .byte   PATT
  .word Label_01113E0F
@  #15 @166   ----------------------------------------
 .byte   PATT
  .word Label_01113E1A
@  #15 @167   ----------------------------------------
 .byte   PATT
  .word Label_01113E25
@  #15 @168   ----------------------------------------
 .byte   PATT
  .word Label_01113E36
@  #15 @169   ----------------------------------------
 .byte   PATT
  .word Label_01113E45
@  #15 @170   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   As1
 .byte   W01
@  #15 @171   ----------------------------------------
 .byte   PATT
  .word Label_01113DF8
@  #15 @172   ----------------------------------------
 .byte   PATT
  .word Label_01113E06
@  #15 @173   ----------------------------------------
 .byte   PATT
  .word Label_01113E0F
@  #15 @174   ----------------------------------------
 .byte   PATT
  .word Label_01113E1A
@  #15 @175   ----------------------------------------
 .byte   PATT
  .word Label_01113E25
@  #15 @176   ----------------------------------------
 .byte   PATT
  .word Label_01113E36
@  #15 @177   ----------------------------------------
 .byte   PATT
  .word Label_01113E75
@  #15 @178   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Ds2
 .byte   W01
@  #15 @179   ----------------------------------------
 .byte   W96
@  #15 @180   ----------------------------------------
 .byte   W96
@  #15 @181   ----------------------------------------
 .byte   W96
@  #15 @182   ----------------------------------------
 .byte   W96
@  #15 @183   ----------------------------------------
 .byte   W96
@  #15 @184   ----------------------------------------
 .byte   W96
@  #15 @185   ----------------------------------------
 .byte   W96
@  #15 @186   ----------------------------------------
 .byte   W96
@  #15 @187   ----------------------------------------
 .byte   W96
@  #15 @188   ----------------------------------------
 .byte   W96
@  #15 @189   ----------------------------------------
 .byte   W96
@  #15 @190   ----------------------------------------
 .byte   W96
@  #15 @191   ----------------------------------------
 .byte   PATT
  .word Label_01113E94
@  #15 @192   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #15 @193   ----------------------------------------
 .byte   TIE ,Cs2 ,v080
 .byte   W96
@  #15 @194   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #15 @195   ----------------------------------------
 .byte   PATT
  .word Label_01113E94
@  #15 @196   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs2
 .byte   W01
@  #15 @197   ----------------------------------------
 .byte   TIE ,As2 ,v080
 .byte   W96
@  #15 @198   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@  #15 @199   ----------------------------------------
 .byte   PATT
  .word Label_01113EBF
@  #15 @200   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Cs2
 .byte   W01
@  #15 @201   ----------------------------------------
 .byte   N80 ,Ds2 ,v080
 .byte   W96
@  #15 @202   ----------------------------------------
 .byte   W96
@  #15 @203   ----------------------------------------
 .byte   W96
@  #15 @204   ----------------------------------------
 .byte   W96
@  #15 @205   ----------------------------------------
 .byte   W96
@  #15 @206   ----------------------------------------
 .byte   W96
@  #15 @207   ----------------------------------------
 .byte   PATT
  .word Label_01113ED9
@  #15 @208   ----------------------------------------
 .byte   PATT
  .word Label_01113EE4
@  #15 @209   ----------------------------------------
 .byte   PATT
  .word Label_01113EEF
@  #15 @210   ----------------------------------------
 .byte   PATT
  .word Label_01113EFA
@  #15 @211   ----------------------------------------
 .byte   PATT
  .word Label_01113F05
@  #15 @212   ----------------------------------------
 .byte   PATT
  .word Label_01113F10
@  #15 @213   ----------------------------------------
 .byte   PATT
  .word Label_01113EFA
@  #15 @214   ----------------------------------------
 .byte   PATT
  .word Label_01113F10
@  #15 @215   ----------------------------------------
 .byte   PATT
  .word Label_01113ED9
@  #15 @216   ----------------------------------------
 .byte   PATT
  .word Label_01113EE4
@  #15 @217   ----------------------------------------
 .byte   PATT
  .word Label_01113EEF
@  #15 @218   ----------------------------------------
 .byte   PATT
  .word Label_01113EFA
@  #15 @219   ----------------------------------------
 .byte   PATT
  .word Label_01113F05
@  #15 @220   ----------------------------------------
 .byte   PATT
  .word Label_01113F10
@  #15 @221   ----------------------------------------
 .byte   PATT
  .word Label_01113EFA
@  #15 @222   ----------------------------------------
 .byte   PATT
  .word Label_01113EFA
@  #15 @223   ----------------------------------------
 .byte   PATT
  .word Label_01113F4D
@  #15 @224   ----------------------------------------
 .byte   PATT
  .word Label_01113F4D
@  #15 @225   ----------------------------------------
 .byte   W96
@  #15 @226   ----------------------------------------
 .byte   W96
@  #15 @227   ----------------------------------------
 .byte   W96
@  #15 @228   ----------------------------------------
 .byte   W96
@  #15 @229   ----------------------------------------
 .byte   W96
@  #15 @230   ----------------------------------------
 .byte   W96
@  #15 @231   ----------------------------------------
 .byte   W96
@  #15 @232   ----------------------------------------
 .byte   W96
@  #15 @233   ----------------------------------------
 .byte   W96
@  #15 @234   ----------------------------------------
 .byte   W96
@  #15 @235   ----------------------------------------
 .byte   W96
@  #15 @236   ----------------------------------------
 .byte   W96
@  #15 @237   ----------------------------------------
 .byte   W96
@  #15 @238   ----------------------------------------
 .byte   W96
@  #15 @239   ----------------------------------------
 .byte   W96
@  #15 @240   ----------------------------------------
 .byte   W96
@  #15 @241   ----------------------------------------
 .byte   W96
@  #15 @242   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   FINE

@******************************************************@
	.align	2

Song_TearingThroughHeaven_SurfingKyogre:
	.byte	15	@ NumTrks
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
	.word	song07_013
	.word	song07_014
	.word	song07_015

	.end
