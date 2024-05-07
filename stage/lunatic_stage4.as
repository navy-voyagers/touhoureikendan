
	if stage_frame=50 {
		repeat_flag=0
	}

	if stage_frame>100 and stage_frame<150 {
		if stage_frame\7=0 {
			repeat 5
			TempX=600
			TempY=80*cnt+30
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 10
			BulletColor 255,cnt*15,cnt*25
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*36))*4,sin(TempDeg+deg2rad(cnt*36))*4,15
			loop
			loop
		}
	}

	if stage_frame>170 and stage_frame<220 {
		if stage_frame\7=0 {
			repeat 5
			TempX=600
			TempY=80*cnt+30
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 10
			BulletColor cnt*15,cnt*25,255
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*36))*4,sin(TempDeg+deg2rad(cnt*36))*4,15
			loop
			loop
		}
	}

	if stage_frame>250 and stage_frame<400 {
		if stage_frame\3=0 {
			TempX=580+rnd(40)
			TempY=rnd(420)+40
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 10
			BulletColor 127+deg2rad(cnt*36)*127,127+deg2rad(cnt*36+120)*127,127+deg2rad(cnt*36+240)*127
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*36+rnd(10)-5))*3,sin(TempDeg+deg2rad(cnt*36+rnd(10)-5))*3,15
			loop
		}
	}

	if stage_frame=450 {
		if repeat_flag<2 {
			repeat_flag++
			stage_frame=100
		}else{
			repeat_flag=0
		}
	}


	if stage_frame>500 and stage_frame<550 {
		if stage_frame\8=0 {
			repeat 5
			TempX=600
			TempY=80*cnt+30
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 10
			BulletColor 255,cnt*15,cnt*25
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*36))*4,sin(TempDeg+deg2rad(cnt*36))*4,25
			loop
			loop
		}
	}

	if stage_frame>570 and stage_frame<620 {
		if stage_frame\8=0 {
			repeat 5
			TempX=600
			TempY=80*cnt+30
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 10
			BulletColor cnt*15,cnt*25,255
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*36))*4,sin(TempDeg+deg2rad(cnt*36))*4,25
			loop
			loop
		}
	}

	if stage_frame>650 and stage_frame<800 {
		if stage_frame\3=0 {
			TempX=580+rnd(40)
			TempY=rnd(420)+40
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 10
			BulletColor 127+deg2rad(cnt*36)*127,127+deg2rad(cnt*36+120)*127,127+deg2rad(cnt*36+240)*127
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*36+rnd(10)-5))*3,sin(TempDeg+deg2rad(cnt*36+rnd(10)-5))*3,25
			loop
		}
	}

	if stage_frame=850 {
		if repeat_flag<2 {
			repeat_flag++
			stage_frame=500
		}else{
			repeat_flag=0
			cnt_tt=0
		}
	}

	if stage_frame>1000 and stage_frame<1050 {
		if stage_frame\3=0 {
			TempX=580+rnd(40)
			TempY=rnd(420)+40
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 10
			BulletColor 127+deg2rad(cnt*36)*127,127+deg2rad(cnt*36+120)*127,127+deg2rad(cnt*36+240)*127
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*36))*0.1,sin(TempDeg+deg2rad(cnt*36))*0.1,25
			loop
		}
	}

	if stage_frame>1050 and stage_frame<1080 {
		if stage_frame\5=0 {
			BulletSpeedChange (0.2*cnt_t)
		}
		cnt_t++
	}

	if stage_frame>1000 and stage_frame<1100 {
		if stage_frame\3=0 {
			Bullet2Color 255,0,0
			Bullet2Set 600,240,cos(deg2rad(cnt_tt))*2,sin(deg2rad(cnt_tt))*2,20
			Bullet2Color 0,0,255
			Bullet2Set 600,240,cos(deg2rad(-cnt_tt+5))*2,sin(deg2rad(-cnt_tt+5))*2,20
			cnt_tt+65
		}
	}

	if stage_frame=1100 {
		if repeat_flag<4 {
			repeat_flag++
			stage_frame=1000
			cnt_t=0
		}else{
			repeat_flag=0
			cnt_t=0
			cnt_tt=0
		}
	}

	if stage_frame>1150 and stage_frame<1200 {
		if stage_frame\2=0 {
			TempX=580+rnd(40)
			TempY=rnd(420)+40
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 10
			BulletColor 127+deg2rad(cnt*36)*127,127+deg2rad(cnt*36+120)*127,127+deg2rad(cnt*36+240)*127
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*36))*4,sin(TempDeg+deg2rad(cnt*36))*4,25
			loop
		}
	}

	if stage_frame>1100 and stage_frame<1250 {
		if stage_frame\2=0 {
			Bullet2Color 255,0,0
			Bullet2Set 600,240,cos(deg2rad(cnt_tt))*2,sin(deg2rad(cnt_tt))*2,20
			Bullet2Color 0,0,255
			Bullet2Set 600,240,cos(deg2rad(-cnt_tt+5))*2,sin(deg2rad(-cnt_tt+5))*2,20
			cnt_tt+65
		}
	}

	if stage_frame=1250 {
		if repeat_flag<4 {
			repeat_flag++
			stage_frame=1101
			cnt_t=0
		}else{
			repeat_flag=0
		}
	}

	//’†ƒ{ƒXí
	if stage_frame=1500 {
		BossColor 255,127,127
		BossSet 520,240,150,4,50
	}
	if stage_frame>1520 and stage_frame<1580 {
		if stage_frame\2=0 {
			TempX=BossInfo(0,3)
			TempY=BossInfo(0,4)
			TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			repeat 6
			BulletColor 255,0,0
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*60))*5,sin(TempDeg+deg2rad(cnt*60))*5,15
			loop
			Bullet2Color 0,0,255
			Bullet2Set TempX,TempY,cos(deg2rad(cnt_t))*0.1,sin(deg2rad(cnt_t))*0.1,30
			Bullet2Color 0,255,0
			Bullet2Set TempX,TempY,cos(deg2rad(-cnt_t))*0.1,sin(deg2rad(-cnt_t))*0.1,30
			Bullet2SpeedChange 1.1
			if cnt_t>3600 {
				cnt_t=0
			}
			cnt_t+10
		}
	}
	if stage_frame=1600 {
		if BossInfo(0,0)>0 {
			stage_frame=1520
		}else{
			BulletReset
			Bullet2Reset
		}
	}

	if stage_frame>1650 and stage_frame<1750 {
		if stage_frame\5=0 {

			BulletColor 255,0,0
			TempX=638
			TempY=240
			TempDeg=atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt_t*10))*3,sin(TempDeg+deg2rad(cnt_t*10))*3,30
			repeat 6
			Bullet2Color 255,127,127
			Bullet2Set TempX+cos(deg2rad(cnt*60))*30,TempY+sin(deg2rad(cnt*60))*30,cos(TempDeg+deg2rad(cnt_t*10))*3,sin(TempDeg+deg2rad(cnt_t*10))*3,30
			loop

			BulletColor 0,0,255
			BulletSet TempX,TempY,cos(TempDeg-deg2rad(cnt_t*10))*3,sin(TempDeg-deg2rad(cnt_t*10))*3,30
			repeat 6
			Bullet2Color 127,127,255
			Bullet2Set TempX+cos(deg2rad(cnt*60))*30,TempY+sin(deg2rad(cnt*60))*30,cos(TempDeg-deg2rad(cnt_t*10))*3,sin(TempDeg-deg2rad(cnt_t*10))*3,30
			loop

			cnt_t++
			if cnt_t>3600 {
				cnt_t=0
			}
		}
	}
	if stage_frame=1750 {
		if repeat_flag>8 {
			repeat_flag=0
			cnt_t=0
		}else{
			repeat_flag++
			stage_frame=1650
		}
	}

	//’Ç‚¢‚©‚¯’e
	if stage_frame>1800 and stage_frame<3800 {
		if stage_frame\20=0 {
			TempDeg = atan(PlayerInfo(1),PlayerInfo(0))
			BulletColor 255,0,255
			BulletSet 0,0,cos(TempDeg)*3,sin(TempDeg)*3,15
			BulletColor 255,0,255
			TempDeg = atan(PlayerInfo(1),PlayerInfo(0)-640)
			BulletSet 640,0,cos(TempDeg)*3,sin(TempDeg)*3,15
			BulletColor 255,0,255
			TempDeg = atan(PlayerInfo(1)-480,PlayerInfo(0))
			BulletSet 0,480,cos(TempDeg)*3,sin(TempDeg)*3,15
			BulletColor 255,0,255
			TempDeg = atan(PlayerInfo(1)-480,PlayerInfo(0)-640)
			BulletSet 640,480,cos(TempDeg)*3,sin(TempDeg)*3,15
		}
	}
	if stage_frame>1900 and stage_frame<2100 {
		if stage_frame\4=0 {
			Bullet2Color 0,255,0
			Bullet2Set 240,0,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
			Bullet2Color 0,255,0
			Bullet2Set 240,480,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
		}
	}
	if stage_frame>2200 and stage_frame<2500 {
		if stage_frame\3=0 {
			Bullet2Color 0,255,0
			Bullet2Set 240,0,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
			Bullet2Color 0,255,0
			Bullet2Set 240,480,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
		}
	}
	if stage_frame>2600 and stage_frame<2900 {
		if stage_frame\3=0 {
			Bullet2Color 0,255,0
			Bullet2Set 240,0,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
			Bullet2Color 0,255,0
			Bullet2Set 240,480,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
		}
	}
	if stage_frame>2600 and stage_frame<2900 {
		if stage_frame\3=0 {
			Bullet2Color 0,255,0
			Bullet2Set 120,0,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
			Bullet2Color 0,255,0
			Bullet2Set 120,480,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
			Bullet2Color 0,255,0
			Bullet2Set 360,0,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
			Bullet2Color 0,255,0
			Bullet2Set 360,480,cos(deg2rad(rnd(360)))*3,sin(deg2rad(rnd(360)))*3,30
		}
	}
	if stage_frame=3850 {
		BulletReset
		Bullet2Reset
	}
	//ƒ{ƒXí
	if stage_frame=3900 {
		BossColor 255,127,127
		BossSet 580,240,450,4,50
		cnt_t=0
	}
	if stage_frame>3950 and stage_frame<4000 {
		if stage_frame\5=0 {
			TempX = 600+rnd(40)
			TempY = rnd(480)
			TempDeg = atan(PlayerInfo(1)-15+rnd(30)-TempY,PlayerInfo(0)-15+rnd(30)-TempX)
			repeat 4
			BulletColor 255,64,255
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*90))*3,sin(TempDeg+deg2rad(cnt*90))*3,20
			loop
			repeat 8
			BulletColor 255,0,127
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(cnt*45)+cnt_t)*2,sin(deg2rad(cnt*45)+cnt_t)*2,30
			loop
			cnt_t++
		}
		if BossInfo(0,0)<=400 {
			stage_frame=4000
		}
	}

	if stage_frame=4000 and BossInfo(0,0)>400 {
		stage_frame=3950
	}
	if stage_frame>4050 and stage_frame<4400 {
		if stage_frame\20=0 {
			TempX=BossInfo(0,3)
			TempY=BossInfo(0,4)
			TempDeg = atan(PlayerInfo(1)-15+rnd(30)-TempY,PlayerInfo(0)-15+rnd(30)-TempX)
			repeat 36
			BulletColor 0,255,255
			BulletSet TempX,TempY,cos(TempDeg+deg2rad(cnt*10))*2,sin(TempDeg+deg2rad(cnt*10))*2,25
			loop
		}
		if BossInfo(0,0)<=350 {
			stage_frame=4400
		}
	}
	if stage_frame=4400 and BossInfo(0,0)>350 {
		stage_frame=4050
		cnt_t=0
		cnt_tt=0
	}

	if stage_frame>4450 and stage_frame<4500 {
		TempX=BossInfo(0,3)
		TempY=BossInfo(0,4)
		BulletColor 255,0,0
		BulletSet TempX,TempY,cos(deg2rad(cnt_t))*3,sin(deg2rad(cnt_t))*3,30
		cnt_tt++
		cnt_t = cnt_t+cnt_tt
		if cnt_tt>360 {
			cnt_tt=0
		}
		if cnt_t>3600 {
			cnt_t = 0
		}
		if BossInfo(0,0)<=300 {
			stage_frame=4500
		}
	}
	if stage_frame=4500 and BossInfo(0,0)>300 {
		stage_frame=4450
		cnt_t=0
	}

	if stage_frame>4550 and stage_frame<4600 {
		if stage_frame\5=0 {
			TempX=BossInfo(0,3)
			TempY=BossInfo(0,4)
			BulletColor 100,200,50
			BulletSet TempX+cos(deg2rad(cnt_t))*40,TempY+sin(deg2rad(cnt_t))*40,cos(deg2rad(cnt_t+180))*3,sin(deg2rad(cnt_t+180))*3,30
		}
		cnt_t+3
		if cnt_t>3600 {
			cnt_t=0
		}
		if BossInfo(0,0)<=250 {
			stage_frame=4600
		}
	}
	if stage_frame=4600 and BossInfo(0,0)>250 {
		stage_frame=4550
	}

	if stage_frame>4650 and stage_frame<4700 {
		if stage_frame\5=0 {
			TempX=BossInfo(0,3)
			TempY=BossInfo(0,4)
			repeat 4
			BulletColor 127,0,255
			BulletSet TempX+cos(deg2rad(cnt_t+cnt*90))*40,TempY+sin(deg2rad(cnt_t+cnt*90))*40,cos(deg2rad(cnt_t+180+cnt*90))*3,sin(deg2rad(cnt_t+180+cnt*90))*3,30
			BulletColor 255,0,127
			BulletSet TempX+cos(deg2rad(-cnt_t+cnt*90))*40,TempY+sin(deg2rad(-cnt_t+cnt*90))*40,cos(deg2rad(cnt_t+180+cnt*90))*3,sin(deg2rad(cnt_t+180+cnt*90))*3,30
			loop
		}
		cnt_t+3
		if cnt_t>3600 {
			cnt_t=0
		}
		if BossInfo(0,0)<=200 {
			stage_frame=4700
		}
	}
	if stage_frame=4700 and BossInfo(0,0)>200 {
		stage_frame=4650
	}

	//‘å‹Z
	if stage_frame>4750 and stage_frame<4800 {
		if stage_frame\5=0 and stage_frame<4790 {
			TempX=BossInfo(0,3)
			TempY=BossInfo(0,4)
			repeat 4
			BulletColor 127,0,255
			BulletSet TempX+cos(deg2rad(cnt_t+cnt*90))*40,TempY+sin(deg2rad(cnt_t+cnt*90))*40,cos(deg2rad(cnt_t+180+cnt*90))*3,sin(deg2rad(cnt_t+180+cnt*90))*3,30
			BulletColor 255,0,127
			BulletSet TempX+cos(deg2rad(-cnt_t+cnt*90))*40,TempY+sin(deg2rad(-cnt_t+cnt*90))*40,cos(deg2rad(cnt_t+180+cnt*90))*3,sin(deg2rad(cnt_t+180+cnt*90))*3,30
			loop
		}
		if stage_frame=4790 {
			BulletSpeedChange 0.1
		}
		if stage_frame=4799 {
			BulletSpeedChange 10
		}
		cnt_t+3
		if cnt_t>3600 {
			cnt_t=0
		}
		if BossInfo(0,0)<=100 {
			stage_frame=4800
		}
	}
	if stage_frame=4800 and BossInfo(0,0)>100 {
		stage_frame=4750
	}
	if stage_frame=4810 {
		BulletReset
	}

	//‘å‹Z
	if stage_frame>4850 and stage_frame<4900 {
		if stage_frame<4855 {
			TempX=BossInfo(0,3)
			TempY=BossInfo(0,4)
			repeat 16
			BulletColor 127,0,255
			BulletSet TempX+cos(deg2rad(cnt_t+cnt*40))*(cnt+1)*4,TempY+sin(deg2rad(cnt_t+cnt*40))*(cnt+1)*4,cos(deg2rad(cnt_t+180+cnt*30))*0.1,sin(deg2rad(cnt_t+180+cnt*30))*0.1,30
			BulletColor 255,0,127
			BulletSet TempX+cos(deg2rad(-cnt_t+cnt*40))*(cnt+1)*12,TempY+sin(deg2rad(-cnt_t+cnt*40))*(cnt+1)*12,cos(deg2rad(-cnt_t+180+cnt*30))*0.1,sin(deg2rad(-cnt_t+180+cnt*30))*0.1,30
			loop
			cnt_t+12
		}
		if stage_frame=4856 {
			BulletSpeedChange 20
		}
		if stage_frame=4899 {
			BulletSpeedChange 0.05
		}
		if cnt_t>3600 {
			cnt_t=0
		}
		if BossInfo(0,0)<=0 {
			stage_frame=4900
		}
	}
	if stage_frame=4900 and BossInfo(0,0)>0 {
		stage_frame=4850
	}
	if stage_frame=4950 {
		BulletReset
		stage_number++
		stage_frame=0
	}