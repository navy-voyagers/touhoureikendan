	if stage_frame=30 {
		repeat_flag=0
	}

	if stage_frame>100 and stage_frame<200 {
		if stage_frame\3=0 {
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet PlayerInfo(0)+cos(deg2rad(cnt_t*3))*250,PlayerInfo(1)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+180))*2,cos(deg2rad(cnt_t*3+180))*2,30
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet PlayerInfo(0)+cos(deg2rad(-cnt_t*3))*250,PlayerInfo(1)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+180))*3,cos(deg2rad(-cnt_t*3+180))*3,30
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet PlayerInfo(0)+cos(deg2rad(cnt_t*3))*250,PlayerInfo(1)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+90))*2,cos(deg2rad(cnt_t*3+90))*2,30
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet PlayerInfo(0)+cos(deg2rad(-cnt_t*3))*250,PlayerInfo(1)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+90))*3,cos(deg2rad(-cnt_t*3+90))*3,30
		}
		cnt_t+
	}

	if stage_frame>200 and stage_frame<900 {
		if stage_frame\10=0 {
			BulletColor 255,127,127
			BulletSet 320,240,cos(deg2rad(cnt_t))*2,sin(deg2rad(cnt_t))*2,50
			cnt_t+13
			cnt_tt=0
			repeat BulletInfo(5,0)-950
			repeat Bullet2Info(5,0)-950
			if (BulletInfo(0,cnt_tt)-Bullet2Info(0,cnt))*(BulletInfo(0,cnt_tt)-Bullet2Info(0,cnt))+(BulletInfo(1,cnt_tt)-Bullet2Info(0,cnt))*(BulletInfo(1,cnt_tt)-Bullet2Info(0,cnt))<500 and BulletInfo(4,cnt_tt)=1 and Bullet2Info(4,cnt)=1 {
				BulletDel cnt_tt
				repeat 4
				TempDeg=rnd(360)
				Bullet2Set BulletInfo(0,cnt_tt),BulletInfo(1,cnt_tt),cos(deg2rad(TempDeg))*3,sin(deg2rad(TempDeg))*3,15
				loop
			}
			loop
			cnt_tt++
			loop
		}
		if stage_frame\10=0 {
			TempX=600
			TempY=240
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			Bullet2Color 127,255,127
			Bullet2Set TempX,TempY,cos(TempDeg)*4,sin(TempDeg)*4,20
		}
	}

	if stage_frame=900 {
		BulletReset
		Bullet2Reset
		repeat_flag=0
	}

	if stage_frame>900 and stage_frame<1200 {
		if stage_frame\3=0 {
			BulletSpeedChange 0.985
			TempDeg=rnd(360)
			TempX=rnd(40)+580
			TempY=rnd(480)
			repeat 8
			BulletColor 99,0,255
			BulletSetVector TempX,TempY,5,TempDeg+cnt*45,30
			loop
		}
	}

	if stage_frame=1200 {
		BulletSpeedChange -3
		if repeat_flag<4 {
			repeat_flag++
			stage_frame=901
		}
		TempX=320 : TempY=240
	}

	if stage_frame>1200 and stage_frame<1800 {
		if stage_frame\3=0 {
			BulletColor 127,0,0
			BulletSetVector TempX,TempY,rnd(3)+1,rnd(360),15
		}
	}

	if stage_frame=1800 {
		cnt_t=0
		cnt_tt=0
	}

	if stage_frame>1800 and stage_frame<2100 {
		if stage_frame\3=0 {
			if stage_frame<1900 {
				BulletColor 255,0,0
				BulletCircleSet 320,240,3,cnt_t,15,16
			}else : if stage_frame>=1900 and stage_frame<2000 {
				BulletColor 0,0,255
				BulletCircleSet 320,240,3.5,cnt_t,15,16
			}else{
				BulletColor 255,0,0
				BulletCircleSet 320,240,3,cnt_t,15,16
				BulletColor 0,0,255
				BulletCircleSet 320,240,3.5,cnt_t,15,16
			}
			cnt_t+=cnt_tt
			cnt_tt++
			if cnt_tt>360 {
				cnt_tt=0
			}
			if cnt_t>3600 {
				cnt_t=0
			}
		}
	}

	if stage_frame=2200 {
		BulletReset
		Bullet2Reset
		BossColor 255,127,127
		BossSet 520,240,1000,4,50
	}

	if stage_frame>2200 and stage_frame<2400 {
		//Stella rain
		if stage_frame\2=0 {
			BulletColor 255,255,127
			BulletSetVector 600+rnd(20),rnd(480),rnd(3)+2,160+rnd(40),15
		}
		if stage_frame\10=0 {
			BulletColor 255,200,200
			BulletCircleSet 600,240,2,rnd(360),15,32
		}
		if BossInfo(0,0)<950 {
			stage_frame=2400
		}
	}
	if stage_frame=2400 {
		if BossInfo(0,0)>=950 {
			stage_frame=2200
		}
	}

	if stage_frame>2400 and stage_frame<2600 {
		//star map
		if stage_frame<2550 {
			if stage_frame\3=0 {
				BulletCircleSet rnd(640),rnd(480),0.1,rnd(360),8,8
			}
		}else{
			if stage_frame\10=0 {
				BulletSpeedChange 1.5
			}
		}
		if BossInfo(0,0)<900 {
			stage_frame=2600
		}
	}
	if stage_frame=2600 {
		if BossInfo(0,0)>=900 {
			stage_frame=2400
		}else{
			BulletReset
		}
	}

	if stage_frame>2600 and stage_frame<2800 {
		if stage_frame\4=0 {
			TempX=580+rnd(40)
			TempY=rnd(480)
			BulletColor 255,0,255
			BulletCircleSet TempX,TempY,3,0,8,15
			BulletColor 255,0,127
			BulletCircleSet TempX,TempY,4,3,8,15
			BulletColor 255,0,0
			BulletCircleSet TempX,TempY,5,-3,8,15
		}
		if BossInfo(0,0)<850 {
			stage_frame=2800
		}
	}
	if stage_frame=2800 {
		if BossInfo(0,0)>=850 {
			stage_frame=2600
		}else{
			BulletReset
		}
	}

	if stage_frame>2800 and stage_frame<3100 {
		if stage_frame<3000 {
			if stage_frame\5=0 {
				TempX=580+rnd(40)
				TempY=rnd(480)
				BulletColor 255,0,255
				BulletCircleSet TempX,TempY,0.3,0,8,15
				BulletColor 255,0,127
				BulletCircleSet TempX,TempY,0.4,3,8,15
				BulletColor 255,0,0
				BulletCircleSet TempX,TempY,0.5,-3,8,15
			}
		}else{
			if stage_frame\4=0 {
				BulletSpeedChange 1.1
			}
		}
		if BossInfo(0,0)<750 {
			stage_frame=3100
		}
	}
	if stage_frame=3100 {
		if BossInfo(0,0)>=750 {
			stage_frame=2800
		}else{
			BulletReset
		}
	}

	if stage_frame>3100 and stage_frame<3400 {
		if stage_frame\2=0 {
			TempX=580+rnd(40)
			TempY=rnd(480)
			TempDeg=rnd(360)
			BulletColor 255,0,255
			BulletCircleSet TempX,TempY,3,0+TempDeg,8,15
			BulletColor 255,0,127
			BulletCircleSet TempX,TempY,4,3+TempDeg,8,15
			BulletColor 255,0,0
			BulletCircleSet TempX,TempY,5,-3+TempDeg,8,15
		}
		if BossInfo(0,0)<650 {
			stage_frame=3400
		}
	}
	if stage_frame=3400 {
		if BossInfo(0,0)>=650 {
			stage_frame=3100
		}else{
			BulletReset
		}
	}

	if stage_frame>3400 and stage_frame<3700 {
		if stage_frame\5=0 and stage_frame<3650 {
			repeat 5
			TempX=600
			TempY=80*cnt+30
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 10
			BulletColor 255,cnt*15,cnt*25
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*36))*4,sin(TempDeg+deg2rad(cnt*36))*4,30
			loop
			loop
		}
		if BossInfo(0,0)<550 {
			stage_frame=3700
		}
	}
	if stage_frame=3700 {
		if BossInfo(0,0)>=550 {
			stage_frame=3400
		}else{
			BulletReset
		}
	}

	if stage_frame>3700 and stage_frame<3900 {
		if stage_frame\3=0 {
			TempX=580+rnd(40)
			TempY=rnd(480)
			TempDeg=rnd(360)
			BulletColor 255,0,255
			BulletCircleSet TempX,TempY,3,0+TempDeg,8,15
			BulletColor 255,0,127
			BulletCircleSet TempX,TempY,4,3+TempDeg,8,15
			BulletColor 255,0,0
			BulletCircleSet TempX,TempY,5,-3+TempDeg,8,15
		}
		if stage_frame>3850 {
			TempX=590+rnd(20)
			TempY=rnd(480)
			TempDeg=atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			BulletColor 127,127,255
			BulletCircleSet TempX,TempY,3,rad2deg(TempDeg),8,30
		}
		if BossInfo(0,0)<350 {
			stage_frame=3900
		}
	}
	if stage_frame=3900 {
		if BossInfo(0,0)>=350 {
			stage_frame=3700
		}else{
			BulletReset
		}
	}

	if stage_frame>3900 and stage_frame<4100 {
		if stage_frame\3=0 {
			TempX=580+rnd(40)
			TempY=rnd(480)
			TempDeg=rnd(360)
			BulletColor 0,127,0
			BulletCircleSet TempX,TempY,3,0+TempDeg,8,15
			BulletColor 0,255,127
			BulletCircleSet TempX,TempY,4,3+TempDeg,8,15
			BulletColor 255,0,255
			BulletCircleSet TempX,TempY,5,-3+TempDeg,8,15
		}
		if stage_frame>3950 {
			TempX=590+rnd(20)
			TempY=rnd(480)
			TempDeg=atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			BulletColor 127,127,255
			BulletCircleSet TempX,TempY,3,rad2deg(TempDeg),8,30
		}
		if BossInfo(0,0)<200 {
			stage_frame=4100
		}
	}
	if stage_frame=4100 {
		if BossInfo(0,0)>=200 {
			stage_frame=3900
		}else{
			BulletReset
		}
	}

	if stage_frame>4100 and stage_frame<4400 {
		if stage_frame\3=0 {
			if stage_frame<4200 {
				BulletColor 255,0,0
				BulletCircleSet 320,240,3,cnt_t,15,16
			}else : if stage_frame>=4200 and stage_frame<4300 {
				BulletColor 0,0,255
				BulletCircleSet 320,240,3.5,cnt_t,15,16
			}else{
				BulletColor 255,0,0
				BulletCircleSet 320,240,3,cnt_t,15,16
				BulletColor 0,0,255
				BulletCircleSet 320,240,3.5,cnt_t,15,16
			}
			cnt_t+=cnt_tt
			cnt_tt++
			if cnt_tt>360 {
				cnt_tt=0
			}
			if cnt_t>3600 {
				cnt_t=0
			}
		}
		if BossInfo(0,0)<0 {
			stage_frame=4400
		}
	}
	if stage_frame=4460 {
		if BossInfo(0,0)>0 {
			stage_frame=4100
		}else{
			BulletReset
			TempDeg=0
		}
	}

	if stage_frame>4500 and stage_frame<4600 {
		if stage_frame\5=0 {
			repeat 8
			BulletColor 255,0,0
			BulletSetVector 320+cos(TempDeg+cnt*25)*25,240+sin(TempDeg+cnt*25)*25,0.1,180+TempDeg-cnt*45,15
			loop
			TempDeg+5
		}
		if stage_frame\5=1 {
			repeat 8
			BulletColor 200,55,55
			BulletSetVector 320+cos(TempDeg+cnt*25)*50,240+sin(TempDeg+cnt*25)*50,0.1,180+TempDeg-cnt*45,15
			loop
		}
		if stage_frame\5=2 {
			repeat 8
			BulletColor 0,255,255
			BulletSetVector 320+cos(TempDeg+cnt*25)*75,240+sin(TempDeg+cnt*25)*75,0.1,180+TempDeg-cnt*45,15
			loop
		}
		if stage_frame\5=3 {
			repeat 8
			BulletColor 0,127,255
			BulletSetVector 320+cos(TempDeg+cnt*25)*75,240+sin(TempDeg+cnt*25)*75,0.1,180+TempDeg-cnt*45,15
			loop
		}
		if stage_frame\5=4 {
			repeat 8
			BulletColor 0,0,255
			BulletSetVector 320+cos(TempDeg+cnt*25)*100,240+sin(TempDeg+cnt*25)*100,0.1,180+TempDeg-cnt*45,15
			loop
		}
	}

	if stage_frame>4600 and stage_frame<4700 {
		if stage_frame\5=0 {
			BulletSpeedChange 1.1
			cnt_t=0
		}
	}

	if stage_frame>4900 and stage_frame<5000 {
		TempX=320 : TempY=240
		if stage_frame\4=0 {
			repeat 18
			BulletColor 127,127,0
			BulletCircleSet TempX,TempY,0.01*(cnt+1),cnt*20+cnt_t,8,15
			loop
			cnt_t+3
		}
	}

	if stage_frame>5000 and stage_frame<5100 {
		if stage_frame\5=0 {
			BulletSpeedChange 1.1
		}
	}

	if stage_frame>5150 and stage_frame<7200 {
		if stage_frame\15=0 {
			TempDeg=atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			BulletColor 127,127,255
			BulletCircleSet TempX,TempY,3,rad2deg(TempDeg),16,30
		}
	}

	if stage_frame>7250 and stage_frame<7300 {
		await 8
	}

	if stage_frame=7300 {
		BulletReset
	}

	if stage_frame=7350 {
		stage_frame=0
		stage_number++
	}