	if stage_frame=30 {
		repeat_flag=0
	}

	if stage_frame>100 and stage_frame<200 {
		if stage_frame\2=0 {
			BulletColor 255,0,255-(repeat_flag*50)
			repeat 5
			BulletSet 600,rnd(480),cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
			loop
		}
	}

	if stage_frame=200 {
		BulletSpeedChange 0.1
	}

	if stage_frame=250 {
		BulletSpeedChange -10
	}

	if stage_frame=300 {
		BulletSpeedChange -0.1
	}

	if stage_frame=350 {
		BulletSpeedChange 10
	}

	if stage_frame=400 {
		if repeat_flag<4 {
			repeat_flag++
			stage_frame=50
		}else{
			repeat_flag=0
		}
	}

	if stage_frame=700 {
		BulletReset
	}

	if stage_frame>750 and stage_frame<800 {
		if stage_frame\2=0 {
			BulletColor 255,0,0
			BulletSet 320,240,cos(deg2rad(cnt_t))*5,sin(deg2rad(cnt_t))*5,15
			BulletColor 0,0,255
			BulletSet 320,240,cos(deg2rad(cnt_t*2))*5,sin(deg2rad(cnt_t*2))*5,30
			cnt_t+16
		}
		if cnt_t>3600 {
			cnt_t=0
		}
	}

	if stage_frame>850 and stage_frame<900 {
		if stage_frame\2=0 {
			BulletColor 255,0,0
			BulletSet 320,240,cos(deg2rad(-cnt_t))*5,sin(deg2rad(-cnt_t))*5,15
			BulletColor 0,0,255
			BulletSet 320,240,cos(deg2rad(-cnt_t*2))*5,sin(deg2rad(-cnt_t*2))*5,30
			cnt_t+16
		}
		if cnt_t>3600 {
			cnt_t=0
		}
	}

	if stage_frame=900 {
		temp=0
		cnt_t=0
	}

	if stage_frame>900 and stage_frame<1000 {
		if stage_frame\2=0 {
			BulletColor 255,0,0
			BulletSet 320,240,cos(deg2rad(temp))*2,sin(deg2rad(temp))*2,20
			BulletColor 0,0,255
			BulletSet 320,240,cos(deg2rad(temp*2+15))*3,sin(deg2rad(temp*2+15))*3,30
			temp+15
		}
		if temp>3600 {
			temp=0
		}
	}

	if stage_frame>1000 and stage_frame<1100 {
		if stage_frame\2=0 {
			BulletColor 255,0,0
			BulletSet 320,240,cos(deg2rad(-temp))*2,sin(deg2rad(-temp))*2,20
			BulletColor 0,0,255
			BulletSet 320,240,cos(deg2rad(-temp*2+15))*3,sin(deg2rad(-temp*2+15))*3,30
			temp+15
		}
		if temp>3600 {
			temp=0
		}
	}

	//中ボス戦
	if stage_frame=1150 {
		BulletReset
		Bullet2Reset
		BossColor 255,127,127
		BossSet 520,240,150,4,50
	}

	if stage_frame>1150 and stage_frame<1200 {
		TempX=BossInfo(0,3)
		TempY=BossInfo(0,4)
		TempDeg=atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
		repeat 8
		BulletColor 255,127,127
		BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*45))*3,sin(TempDeg+deg2rad(cnt*45))*3,25
		loop
		if BossInfo(0,0)<=100 {
			stage_frame=1220
		}
	}
	if stage_frame=1220 {
		if BossInfo(0,0)>100 {
			stage_frame=1151
		}else{
			cnt_t=0
		}
	}

	if stage_frame>1250 and stage_frame<1350 {
		if stage_frame\2=0 {
			TempDeg=cnt_t*35
			BulletColor 255,0,0
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(TempDeg))*0.2,sin(deg2rad(TempDeg))*0.1,30
			BulletColor 0,0,255
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(TempDeg))*0.1,sin(deg2rad(TempDeg))*0.2,30
			cnt_t+
			if cnt_t>360 {
				cnt_t=0
			}
		}
		if BossInfo(0,0)<=0 {
			stage_frame=1400
		}
	}
	if stage_frame>1350 and stage_frame<1400 {
		if stage_frame\2=0 {
			BulletSpeedChange 1.15
		}
		if BossInfo(0,0)<=0 {
			stage_frame=1400
		}
	}
	if stage_frame=1400 {
		if BossInfo(0,0)>0 {
			stage_frame=1250
		}else{
			BulletReset
			cnt_t=0
		}
	}

	//中ボス戦終わり

	if stage_frame>1400 and stage_frame<1600 {
		if stage_frame\2=0 {
			TempX=PlayerInfo(0)+cos(deg2rad(cnt_t))*150
			TempY=PlayerInfo(1)+sin(deg2rad(cnt_t))*150
			TempDeg=atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			BulletColor 255,0,127
			BulletSet TempX,TempY,cos(TempDeg)*2,sin(TempDeg)*2,15
			BulletColor 127,0,255
			BulletSet TempX,TempY,-cos(TempDeg)*2,-sin(TempDeg)*2,15
			cnt_t+7
		}
		if cnt_t>3600 {
			cnt_t=0
		}
	}

	if stage_frame>1600 and stage_frame<1700 {
		if stage_frame\3=0 {
			BulletColor 127,255,255
			BulletSet 320,240,cos(deg2rad(cnt_t*15)),sin(deg2rad(cnt_t*15)),30
			cnt_t++
		}
	}

	if stage_frame>1700 and stage_frame<1900 {
		if stage_frame\6=0 {
			repeat 8
			BulletColor 0,255,127
			BulletSet 320,240,cos(deg2rad(cnt_t+cnt*45)),sin(deg2rad(cnt_t+cnt*45)),30
			loop
			if stage_frame<1800 {
				cnt_t+7
			}else{
				cnt_t-7
			}
		}
	}

	if stage_frame>2100 and stage_frame<2400 {
		if stage_frame\10=0 {
			repeat 8
			TempDeg=rnd(360)
			BulletColor 127+sin(deg2rad(TempDeg))*127,127+sin(deg2rad(TempDeg+120))*127,127+sin(deg2rad(TempDeg+240))*127
			BulletSet PlayerInfo(0)+cos(deg2rad(TempDeg))*150,PlayerInfo(1)+sin(deg2rad(TempDeg))*150,cos(deg2rad(180+TempDeg))*3,sin(deg2rad(180+TempDeg)),15
			loop
		}
	}

	if stage_frame=2400 {
		TempDeg=0
	}

	if stage_frame>2400 and stage_frame<2600 {
		if stage_frame\3=0 {
			repeat
			TempX=rnd(640)
			TempY=rnd(480)
			if LengthCheck(TempX,TempY,PlayerInfo(0),PlayerInfo(1))<25000 {
				continue
			}else{
				break
			}
			loop
			repeat 3
			BulletColor 255,0,0
			BulletSetVector TempX,TempY,3.5,TempDeg+cnt*120,15
			loop
			TempDeg+15
		}
	}

	if stage_frame>2700 and stage_frame<2900 {
		if stage_frame\3=0 {
			repeat
			TempX=rnd(640)
			TempY=rnd(480)
			if LengthCheck(TempX,TempY,PlayerInfo(0),PlayerInfo(1))<25000 {
				continue
			}else{
				break
			}
			loop
			repeat 3
			BulletColor 255,0,255
			BulletSetVector TempX,TempY,3.5,TempDeg+cnt*120,15
			loop
			TempDeg+15
		}
	}

	if stage_frame=3000 {
		cnt_t=0
	}

	if stage_frame>3000 and stage_frame<3300 {
		TempX=620
		TempY=cnt_t
		repeat 3
		BulletColor 255,0,255
		BulletSetVector TempX,TempY,3.5,TempDeg+cnt*120,15
		loop
		TempDeg+15
		cnt_t++
	}

	if stage_frame=3300 {
		cnt_t=0
	}

	if stage_frame>3300 and stage_frame<3600 {
		TempX=620
		TempY=480-cnt_t
		repeat 3
		BulletColor 100,255,0
		BulletSetVector TempX,TempY,3.5,TempDeg+cnt*120,15
		loop
		TempDeg+15
		cnt_t++
	}

	if stage_frame=3600 {
		cnt_t=0
	}

	if stage_frame>3600 and stage_frame<3900 {
		TempX=620
		TempY=cnt_t
		repeat 3
		BulletColor 255,0,255
		BulletSetVector TempX,TempY,3.5,TempDeg+cnt*120,15
		BulletColor 100,255,0
		BulletSetVector TempX,640-TempY,3.5,TempDeg+cnt*120,15
		loop
		TempDeg+15
		cnt_t++
	}

	if stage_frame=3900 {
		cnt_t=0
		repeat_flag=0
	}

	if stage_frame>3900 and stage_frame<4000 {
		if stage_frame\5=0 {
			TempX=rnd(60)+500
			TempY=rnd(480)
			TempColor=rnd(360)
			repeat 8
			BulletColor sin(deg2rad(TempColor))*127+127,sin(deg2rad(TempColor+120))*127+127,sin(deg2rad(TempColor+240))*127+127
			BulletSetVector TempX,TempY,0.1*(3+(cnt\2)),TempDeg+cnt*45,20
			loop
			TempDeg+30
		}
	}

	if stage_frame>4000 and stage_frame<4010 {	
		if stage_frame\3=0 {
			BulletSpeedChange 2.4
		}
	}

	if stage_frame=4050 {
		if repeat_flag<4 {
			repeat_flag++
			stage_frame=3901
		}else{
			repeat_flag=0
		}
	}

	if stage_frame=4100 {
		BossColor 255,127,127
		BossSet 520,240,350,4,50
	}

	if stage_frame>4200 and stage_frame<4300 {
		if stage_frame\5=0 {
			TempX=rnd(60)+500
			TempY=rnd(480)
			TempColor=rnd(360)
			repeat 8
			BulletColor sin(deg2rad(TempColor))*127+127,sin(deg2rad(TempColor+120))*127+127,sin(deg2rad(TempColor+240))*127+127
			BulletSetVector TempX,TempY,3,TempDeg+cnt*45,20
			loop
			TempDeg+30
		}
		if BossInfo(0,0)<300 {
			stage_frame=4300
		}
	}

	if stage_frame=4300 {
		if BossInfo(0,0)>=300 {
			stage_frame=4201
		}
	}

	if stage_frame>4300 and stage_frame<4390 {
		if stage_frame\5=0 {
			TempX=590+rnd(20)
			TempY=cnt_t*4+5
			TempColor=rnd(360)
			repeat 8
			BulletColor sin(deg2rad(TempColor))*127+127,sin(deg2rad(TempColor+120))*127+127,sin(deg2rad(TempColor+240))*127+127
			BulletSetVector TempX,TempY,0.1*(3+(cnt\2)),TempDeg+cnt*45,20
			BulletColor sin(deg2rad(TempColor))*127+127,sin(deg2rad(TempColor+120))*127+127,sin(deg2rad(TempColor+240))*127+127
			BulletSetVector TempX,480-TempY,0.1*(3+(cnt\2)),TempDeg+cnt*45,20
			loop
			TempDeg+25
		}
		cnt_t++
		if BossInfo(0,0)<200 {
			stage_frame=4400
		}
	}

	if stage_frame>4390 and stage_frame<4400 {
		if stage_frame\3=0 {
			BulletSpeedChange 2.8
		}
	}

	if stage_frame=4400 {
		cnt_t=0
		if BossInfo(0,0)>=200 {
			stage_frame=4301
		}
	}

	if stage_frame>4400 and stage_frame<4490 {
		if stage_frame\3=0 {
			TempX=590+rnd(20)
			TempY=cnt_t*4+5
			TempColor=rnd(360)
			repeat 8
			BulletColor sin(deg2rad(TempColor))*127+127,sin(deg2rad(TempColor+120))*127+127,sin(deg2rad(TempColor+240))*127+127
			BulletSetVector TempX-cnt_t,TempY,0.1*(3+(cnt\2)),TempDeg+cnt*45,20
			BulletColor sin(deg2rad(TempColor))*127+127,sin(deg2rad(TempColor+120))*127+127,sin(deg2rad(TempColor+240))*127+127
			BulletSetVector TempX-cnt_t,480-TempY,0.1*(3+(cnt\2)),TempDeg+cnt*45,20
			loop
			TempDeg+25
			cnt_t+4
		}
		if BossInfo(0,0)<150 {
			stage_frame=4500
		}
	}

	if stage_frame>4490 and stage_frame<4500 {
		if stage_frame\3=0 {
			BulletSpeedChange 2.8
		}
	}

	if stage_frame=4500 {
		cnt_t=0
		if BossInfo(0,0)>=150 {
			stage_frame=4401
		}
	}

	if stage_frame>4500 and stage_frame<4690 {
		if stage_frame\10=0 {
			repeat 8
			TempX=double(540+cos(deg2rad(cnt_t+cnt*45))*cnt_t)
			TempY=double(240+sin(deg2rad(cnt_t+cnt*45))*cnt_t)
			TempDeg=rnd(360)
			TempColor=rnd(360)
			repeat 8
			BulletColor sin(deg2rad(TempColor))*127+127,sin(deg2rad(TempColor+120))*127+127,sin(deg2rad(TempColor+240))*127+127
			BulletSetVector TempX,TempY,0.1*(3+(cnt\2)),TempDeg+cnt*45,20
			loop
			loop
			cnt_t+16
		}
		if BossInfo(0,0)<=0 {
			stage_frame=4800
		}
	}

	if stage_frame>4690 and stage_frame<4700 {
		if stage_frame\3=0 {
			BulletSpeedChange 1.9
		}
	}

	if stage_frame=4800 {
		cnt_t=0
		if BossInfo(0,0)>0 {
			stage_frame=4501
		}
	}

	if stage_frame>4800 and stage_frame<4830 {
		await 8
	}

	if stage_frame=4900 {
		BulletReset
		stage_number++
		stage_frame=0
	}