	//normal - stage 3
	if stage_frame=10 {
		cnt_t=0
	}
	if stage_frame>100 and stage_frame<500 {
		if stage_frame\100=0 {
			EnemyColorSet 255,0,0
			EnemySet 600,480,0,-1,5,40
		}
		if stage_frame\16=0 {
			repeat 10
			if EnemyInfo(2,cnt)>0 {
				BulletColor 255,0,0
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(cnt_t*10))*3,cos(deg2rad(cnt_t*10))*3,30
			}
			loop
		}
		cnt_t+
	}
	if stage_frame>500 and stage_frame<1000 {
		if stage_frame\100=0 {
			EnemyColorSet 255,0,0
			EnemySet 600,0,0,1,5,40
		}
		if stage_frame\16=0 {
			repeat 10
			if EnemyInfo(2,cnt)>0 {
				BulletColor 0,0,255
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(-cnt_t*10))*3,cos(deg2rad(-cnt_t*10))*3,30
			}
			loop
		}
		cnt_t+
	}
	if stage_frame>1000 and stage_frame<1500 {
		if stage_frame\90=0 {
			EnemyColorSet 255,0,0
			EnemySet 600,0,0,1,5,40
			EnemyColorSet 0,0,255
			EnemySet 600,480,0,-1,5,40
		}
		if stage_frame\15=0 {
			repeat 10
			if EnemyInfo(2,cnt*2+1)>0 {
				BulletColor 255,0,0
				BulletSet EnemyInfo(0,cnt*2+1),EnemyInfo(1,cnt*2+1),sin(deg2rad(cnt_t*10))*3,cos(deg2rad(cnt_t*10))*3,30
			}
			if EnemyInfo(2,cnt*2)>0 {
				BulletColor 0,0,255
				BulletSet EnemyInfo(0,cnt*2),EnemyInfo(1,cnt*2),sin(deg2rad(-cnt_t*10))*3,cos(deg2rad(-cnt_t*10))*3,30
			}
			loop
		}
		cnt_t+
	}
	if stage_frame>1550 and stage_frame<2000 {
		if stage_frame\90=0 {
			EnemyColorSet 255,0,0
			EnemySet 600,0,0,1,5,40
			EnemyColorSet 0,0,255
			EnemySet 600,480,0,-1,5,40
		}
		if stage_frame\15=0 {
			repeat 10
			if EnemyInfo(2,cnt*2+1)>0 {
				BulletColor 255,0,0
				BulletSet EnemyInfo(0,cnt*2+1),EnemyInfo(1,cnt*2+1),sin(deg2rad(cnt_t*10))*3,cos(deg2rad(cnt_t*10))*3,30
			}
			if EnemyInfo(2,cnt*2)>0 {
				BulletColor 0,0,255
				BulletSet EnemyInfo(0,cnt*2),EnemyInfo(1,cnt*2),sin(deg2rad(-cnt_t*10))*3,cos(deg2rad(-cnt_t*10))*3,30
			}
			loop
		}
		cnt_t+
	}
	if stage_frame=2000 {
		cnt_t=0
	}
	if stage_frame>2050 and stage_frame<2500 {
		if stage_frame\10=0 {
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet PlayerInfo(0)+cos(deg2rad(cnt_t*3))*150,PlayerInfo(1)+sin(deg2rad(cnt_t*3))*150,sin(deg2rad(cnt_t*3+180))*2,cos(deg2rad(cnt_t*3+180))*2,30
		}
		cnt_t+
	}
	if stage_frame>2550 and stage_frame<3000 {
		if stage_frame\10=0 {
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet PlayerInfo(0)+cos(deg2rad(-cnt_t*3))*150,PlayerInfo(1)+sin(deg2rad(-cnt_t*3))*150,sin(deg2rad(-cnt_t*3+180))*3,cos(deg2rad(-cnt_t*3+180))*3,30
		}
		cnt_t+
	}
	if stage_frame>3050 and stage_frame<3500 {
		if stage_frame\10=0 {
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
	//中ボス
	if stage_frame=3530 {
		BossColor 255,127,127
		BossSet 320,240,400,1,50
	}
	if stage_frame>3550 and stage_frame<4000 {
		if stage_frame\25=0 {
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+180))*2,cos(deg2rad(cnt_t*3+180))*2,30
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+180))*3,cos(deg2rad(-cnt_t*3+180))*3,30
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+90))*2,cos(deg2rad(cnt_t*3+90))*2,30
			BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
			BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+90))*3,cos(deg2rad(-cnt_t*3+90))*3,30
		}
		if BossInfo(0,0)<=0 {
			stage_frame=4050
		}
		cnt_t+
	}
	if stage_frame=4050 and BossInfo(0,0)>0 {
		BulletReset
		stage_frame=3550
		repeat_cnt=0
		cnt_t=0
	}
	//中ボス終わり

	//この弾幕は繰り返す
	if stage_frame>4100 and stage_frame<4500 {
		if stage_frame\8=0 {
			BulletColor 255,0,0
			BulletSet 600,PlayerInfo(1)-15+rnd(30),-4,0,15
		}
		if stage_frame\20=0 {
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
	if stage_frame>4400 and stage_frame<4500 {
		color 127,0,0
		repeat 8
		line 0,cnt*60,640,cnt*60
		loop
	}
	if stage_frame=4500 {
		BulletReset
	}
	if stage_frame>4500 and stage_frame<4600 {
		if stage_frame\8=0 {
			repeat 8
			BulletColor 255,64,64
			BulletSet rnd(2),cnt*60+rnd(3),15,0,30
			loop 
		}
	}
	if stage_frame=4600 {
		if repeat_cnt<4 {
			stage_frame=4100
			repeat_cnt+
		}else{
			repeat_cnt=0
		}
	}
	if stage_frame>4650 and stage_frame<5000 {
		if stage_frame\8=0 {
			BulletColor 0,0,255
			BulletSet PlayerInfo(0)-15+rnd(30),0,0,4,15
		}
		if stage_frame\20=0 {
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
	if stage_frame>4900 and stage_frame<5000 {
		color 0,0,127
		repeat 10
		line cnt*64,0,cnt*64,480
		loop
	}
	if stage_frame=5000 {
		BulletReset
	}
	if stage_frame>5000 and stage_frame<5100 {
		if stage_frame\6=0 {
			repeat 10
			BulletColor 64,64,255
			BulletSet cnt*64+rnd(3),rnd(2),0,15,30
			loop 
		}
	}
	if stage_frame=5200 {
		if repeat_cnt<4 {
			stage_frame=4650
			repeat_cnt+
		}else{
			repeat_cnt=0
		}
	}
	//ボス発生
	if stage_frame=5250 {
		BossColor 255,127,127
		BossSet 600,240,400,1,50
	}
	//通常攻撃
	if stage_frame>5300 and stage_frame<5700 {
		if BossInfo(0,0)>300 {
			if stage_frame\10=0 {
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+180))*2,cos(deg2rad(cnt_t*3+180))*2,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+180))*3,cos(deg2rad(-cnt_t*3+180))*3,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+90))*2,cos(deg2rad(cnt_t*3+90))*2,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+90))*3,cos(deg2rad(-cnt_t*3+90))*3,30
			}
			if stage_frame\100=0 {
				BossReplace 0,600,120+rnd(240)
			}
		}else{
			stage_frame=5700
		}
		cnt_t+
	}
	if stage_frame=5700 and BossInfo(0,0)>300 {
		stage_frame=5300
	}
	//スターレーザー
	if stage_frame>5700 and stage_frame<6400 {
		if BossInfo(0,0)>200 {
			if stage_frame\10=0 and stage_frame<6300 {
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+180))*2,cos(deg2rad(cnt_t*3+180))*2,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+180))*3,cos(deg2rad(-cnt_t*3+180))*3,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+90))*2,cos(deg2rad(cnt_t*3+90))*2,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+90))*3,cos(deg2rad(-cnt_t*3+90))*3,30
			}
			if stage_frame\100=0 {
				BossReplace 0,600,120+rnd(240)
			}
			if stage_frame>6200 and stage_frame<6300 {
				color 127,0,0
				repeat 8
				line 0,cnt*60,640,cnt*60
				loop
			}
			if stage_frame=6300 {
				BulletReset
			}
			if stage_frame>6300 {
				if stage_frame\7=0 {
					repeat 8
					BulletColor 255,64,64
					BulletSet rnd(2),cnt*60+rnd(3),15,0,30
					loop 
				}
			}
			BulletReflect
		}else{
			stage_frame=6400
		}
		cnt_t+
	}
	if stage_frame=6400 and BossInfo(0,0)>200 {
		stage_frame=5700
	}
	//通常攻撃2
	if stage_frame>6400 and stage_frame<6800 {
		if BossInfo(0,0)>150 {
			if stage_frame\10=0 {
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+180))*2,cos(deg2rad(cnt_t*3+180))*2,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+180))*3,cos(deg2rad(-cnt_t*3+180))*3,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+90))*2,cos(deg2rad(cnt_t*3+90))*2,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+90))*3,cos(deg2rad(-cnt_t*3+90))*3,30
			}
			if stage_frame\100=0 {
				BossReplace 0,600,120+rnd(240)
			}
		}else{
			stage_frame=6800
		}
		cnt_t+
	}
	if stage_frame=6800 and BossInfo(0,0)>150 {
		stage_frame=6400
	}
	if stage_frame=6801 {
		BulletReset
	}
	//ファイナルスターレーザー
	if stage_frame>6800 and stage_frame<7500 {
		if BossInfo(0,0)>0 {
			if stage_frame\10=0 and stage_frame<7400 {
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+180))*2,cos(deg2rad(cnt_t*3+180))*2,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+180))*3,cos(deg2rad(-cnt_t*3+180))*3,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(cnt_t*3))*250,sin(deg2rad(cnt_t*3+90))*2,cos(deg2rad(cnt_t*3+90))*2,30
				BulletColor 127+sin(deg2rad(cnt_t*10))*127,127+sin(deg2rad(cnt_t*10+120))*127,127+sin(deg2rad(cnt_t*10+240))*127
				BulletSet BossInfo(0,3)+cos(deg2rad(-cnt_t*3))*250,BossInfo(0,4)+sin(deg2rad(-cnt_t*3))*250,sin(deg2rad(-cnt_t*3+90))*3,cos(deg2rad(-cnt_t*3+90))*3,30
			}
			if stage_frame\100=0 {
				BossReplace 0,600,120+rnd(240)
			}
			if stage_frame>7300 and stage_frame<7400 {
				color 127,0,0
				repeat 8
				line 0,cnt*60,640,cnt*60
				loop
				color 0,0,127
				repeat 10
				line cnt*64,0,cnt*64,480
				loop
			}
			if stage_frame=7400 {
				BulletReset
			}
			if stage_frame>7400 {
				if stage_frame\7=0 {
					repeat 8
					BulletColor 255,64,64
					BulletSet rnd(2),cnt*60+rnd(3),15,0,30
					loop
					repeat 10
					BulletColor 64,64,255
					BulletSet cnt*64+rnd(3),rnd(2),0,15,30
					loop 
				}
			}
			BulletReflect
		}else{
			stage_frame=7500
		}
		cnt_t+
	}
	if stage_frame=7500 and BossInfo(0,0)>0 {
		stage_frame=6800
	}
	//ステージクリア
	if stage_frame=7600 {
		stage_frame=0
		stage_number+
	}
