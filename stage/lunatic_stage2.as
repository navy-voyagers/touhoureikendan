	//lunatic - stage 2
	if stage_frame=50 {
		cnt_t=0
	}
	if stage_frame>100 and stage_frame<700 {
		if stage_frame\11=0 {
			repeat 3
			BulletColor 0,0,255
			BulletSet 640,0,sin(deg2rad(cnt_t+120*cnt))*3,cos(deg2rad(cnt_t+120*cnt)),20
			BulletColor 255,0,0
			BulletSet 640,480,sin(deg2rad(-cnt_t-120*cnt))*3,cos(deg2rad(-cnt_t-120*cnt)),20
			loop
		}
		BulletReflect
		cnt_t+
	}
	if stage_frame=750 {
		cnt_t=0
	}
	if stage_frame>800 and stage_frame<1500 {
		if stage_frame\11=0 {
			repeat 3
			BulletColor 0,0,255
			BulletSet 640,0,sin(deg2rad(-cnt_t-120*cnt))*3,cos(deg2rad(-cnt_t-120*cnt)),20
			BulletColor 255,0,0
			BulletSet 640,480,sin(deg2rad(cnt_t+120*cnt))*3,cos(deg2rad(cnt_t+120*cnt)),20
			loop
		}
		BulletReflect
		cnt_t+
	}
	if stage_frame>2000 and stage_frame<2500 {
		if stage_frame\50=0 {
			EnemyColorSet 255,0,0
			EnemySet 600,0,0,2,5,10
			EnemyColorSet 255,0,0
			EnemySet 600,480,0,-2,5,10
		}
		repeat 10
		if stage_frame\20=0 and EnemyInfo(2,cnt)>0 {
			BulletColor 255,255,0
			BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),-3,0,20
		}
		loop
	}
	if stage_frame>2600 and stage_frame<3000 {
		if stage_frame\50=0 {
			EnemyColorSet 255,0,0
			EnemySet 600,0,0,2,5,10
			EnemyColorSet 255,0,0
			EnemySet 600,480,0,-2,5,10
		}
		repeat 10
		if stage_frame\20=0 and EnemyInfo(2,cnt)>0 {
			BulletColor 0,255,255
			BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),3,1,20
		}
		loop
		BulletReflect
	}
	if stage_frame>3000 and stage_frame<3500 {
		if stage_frame\11=0 {
			repeat 3
			BulletColor 0,0,255
			BulletSet 640,0,sin(deg2rad(cnt_t+120*cnt))*3,cos(deg2rad(cnt_t+120*cnt)),20
			BulletColor 255,0,0
			BulletSet 640,480,sin(deg2rad(-cnt_t-120*cnt))*3,cos(deg2rad(-cnt_t-120*cnt)),20
			loop
		}
		if stage_frame\10=0 {
			repeat 10
			BulletColor 255,0,255
			BulletSet 600,240,sin(deg2rad(-cnt_t-36*cnt))*3,cos(deg2rad(-cnt_t-36*cnt))*3,20
			loop
		}
		cnt_t+15
	}
	if stage_frame>3500 and stage_frame<4000 {
		if stage_frame\11=0 {
			repeat 3
			BulletColor 255,0,0
			BulletSet 640,0,sin(deg2rad(cnt_t+120*cnt))*3,cos(deg2rad(cnt_t+120*cnt)),20
			BulletColor 0,0,255
			BulletSet 640,480,sin(deg2rad(-cnt_t-120*cnt))*3,cos(deg2rad(-cnt_t-120*cnt)),20
			loop
		}
		if stage_frame\10=0 {
			repeat 10
			BulletColor 255,0,255
			BulletSet 600,240,sin(deg2rad(cnt_t+36*cnt))*3,cos(deg2rad(cnt_t+36*cnt))*3,20
			loop
		}
		cnt_t+16
	}
	//中ボス
	if stage_frame=4000 {
		BossColor 255,127,255
		BossSet 600,240,50,1,50
	}
	if stage_frame>4000 and stage_frame<4950 {
		if BossInfo(0,0)<=0 {
			stage_frame=5000
		}else{
			if stage_frame\10=0 {
				if stage_frame<4500 {
					repeat 10
					BulletColor 255,0,0
					BulletSet BossInfo(0,3),BossInfo(0,4),sin(deg2rad(cnt_t+36*cnt))*3,cos(deg2rad(cnt_t+36*cnt))*3,20
					BulletColor 0,0,255
					BulletSet BossInfo(0,3),BossInfo(0,4),sin(deg2rad(-cnt_t-36*cnt))*3,cos(deg2rad(-cnt_t-36*cnt))*3,20
					loop
				}else{
					repeat 10
					BulletColor 255,0,255
					BulletSet BossInfo(0,3),BossInfo(0,4),sin(deg2rad(cnt_t+36*cnt))*4,cos(deg2rad(cnt_t+36*cnt))*4,20
					BulletColor 0,255,255
					BulletSet BossInfo(0,3),BossInfo(0,4),sin(deg2rad(-cnt_t-36*cnt))*4,cos(deg2rad(-cnt_t-36*cnt))*4,20
					loop
				}
			}
			if stage_frame\200=0 {
				BossReplace 0,600+rnd(10),120+rnd(240)
			}
			cnt_t+
		}
	}
	if stage_frame=5000 {
		if BossInfo(0,0)>0 {
			stage_frame=4000
		}else{
			cnt_t=0
		}
	}
	//中ボス戦終わり

	if stage_frame>5000 and stage_frame<5500 {
		if stage_frame\70=0 {
			EnemyColorSet 255,0,0
			EnemySet 400,0,-1,1,5,30
			EnemyColorSet 0,0,255
			EnemySet 400,480,-1,-1,5,30
		}
		if stage_frame\30=0 {
			repeat 10
			if EnemyInfo(2,cnt)>0 {
				BulletColor 255,0,0
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(cnt*36+cnt_t)),cos(deg2rad(cnt*36+cnt_t)),20
				BulletColor 0,0,255
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(-cnt*36+cnt_t)),cos(deg2rad(-cnt*36+cnt_t)),20
			}
			loop
		}
		cnt_t+
	}
	if stage_frame>5500 and stage_frame<6000 {
		if stage_frame\70=0 {
			EnemyColorSet 0,0,255
			EnemySet 400,0,-1,1,5,30
			EnemyColorSet 255,0,0
			EnemySet 400,480,-1,-1,5,30
		}
		if stage_frame\30=0 {
			repeat 10
			if EnemyInfo(2,cnt)>0 {
				BulletColor 0,0,255
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(cnt*36+cnt_t)),cos(deg2rad(cnt*36+cnt_t)),20
				BulletColor 255,0,0
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(-cnt*36+cnt_t)),cos(deg2rad(-cnt*36+cnt_t)),20
			}
			loop
		}
		cnt_t+
	}
	if stage_frame>6000 and stage_frame<6900 {
		if stage_frame\30=0 {
			EnemyColorSet 0,255,255
			EnemySet 640,rnd(480),-3,0,5,30
		}
		if stage_frame\15=0 {
			repeat 10
			if EnemyInfo(2,cnt)>0 {
				BulletColor 0,0,255
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(cnt*36+cnt_t)),cos(deg2rad(cnt*36+cnt_t)),20
				BulletColor 255,0,0
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(-cnt*36+cnt_t)),cos(deg2rad(-cnt*36+cnt_t)),20
			}
			loop
		}
		cnt_t+
	}
	if stage_frame=6950 {
		BulletReset
		EnemyReset
		cnt_t=0
	}
	if stage_frame>7000 and stage_frame<7900 {
		if stage_frame\30=0 {
			EnemyColorSet 127,127,255
			EnemySet 640,rnd(480),-4,0,5,30
		}
		if stage_frame\15=0 {
			repeat 10
			if EnemyInfo(2,cnt)>0 {
				BulletColor 127,127,255
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(cnt*36+cnt_t)),cos(deg2rad(cnt*36+cnt_t)),20
				BulletColor 255,127,255
				BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(-cnt*36+cnt_t)),cos(deg2rad(-cnt*36+cnt_t)),20
			}
			loop
		}
		cnt_t+
	}
	if stage_frame=7950 {
		BulletReset
		EnemyReset
		cnt_t=0
	}
	//ボス戦スタート
	if stage_frame=8000 {
		BossColor 255,127,255
		BossSet 600,240,550,1,50
	}
	if (stage_frame>8050 and stage_frame<8750) {
		if BossInfo(0,0)>500 {
			//通常弾幕
			if stage_frame\30=0 {
				EnemyColorSet 127,127,255
				EnemySet 640,rnd(480),-4,0,5,30
			}
			if stage_frame\15=0 {
				repeat 10
				if EnemyInfo(2,cnt)>0 {
					BulletColor 127,127,255
					BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(cnt*36+cnt_t)),cos(deg2rad(cnt*36+cnt_t)),20
					BulletColor 255,127,255
					BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(-cnt*36+cnt_t)),cos(deg2rad(-cnt*36+cnt_t)),20
				}
				loop
			}
			cnt_t+
		}else{
			stage_frame=8750
		}
	}
	if stage_frame=8750 and BossInfo(0,0)>500 {
		BossReplace 0,600,120+rnd(240)
		stage_frame=8050
	}
	if stage_frame=8775 {
		cnt_t=0
	}
	if stage_frame>8800 and stage_frame<9500 {
		//地獄の御礼
		if BossInfo(0,0)>400 {
			if stage_frame\30=0 {
				EnemyColorSet 255,0,0
				EnemySet 640,rnd(480),-4,0,5,30
			}
			if stage_frame\15=0 {
				repeat 10
				if EnemyInfo(2,cnt)>0 {
					BulletColor 255,200,200
					BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(cnt*36+cnt_t)),cos(deg2rad(cnt*36+cnt_t)),15
					BulletColor 255,200,200
					BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(-cnt*36+cnt_t)),cos(deg2rad(-cnt*36+cnt_t)),15
				}
				loop
			}
			cnt_t+
			if stage_frame\150=0 {
				repeat 6
				BulletColor 255,0,0
				BulletSet PlayerInfo(0)+cos(deg2rad(cnt*60))*60,PlayerInfo(1)+sin(deg2rad(cnt*60))*60,sin(deg2rad(cnt*60)),cos(deg2rad(cnt*60)),30
				loop
			}
		}else{
			stage_frame=9500
		}
	}
	if (stage_frame>9600 and stage_frame<10050) {
		if BossInfo(0,0)>300 {
			//通常弾幕
			if stage_frame\30=0 {
				EnemyColorSet 127,127,255
				EnemySet 640,rnd(480),-4,0,5,30
			}
			if stage_frame\20=0 {
				repeat 10
				if EnemyInfo(2,cnt)>0 {
					BulletColor 127,127,255
					BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(cnt*36+cnt_t)),cos(deg2rad(cnt*36+cnt_t)),20
					BulletColor 255,127,255
					BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(-cnt*36+cnt_t)),cos(deg2rad(-cnt*36+cnt_t)),20
				}
				loop
			}
			cnt_t+
		}else{
			stage_frame=10100
		}
	}
	if stage_frame=9600 and BossInfo(0,0)>300 {
		BossReplace 0,600,120+rnd(240)
		stage_frame=9600
	}
	if stage_frame>10100 and stage_frame<13000 {
		if BossInfo(0,0)>0 {
			//神々の襲撃
			if stage_frame\30=0 {
				EnemyColorSet 127+sin(deg2rad(cnt*36+cnt_t))*127,127+sin(deg2rad(cnt*36+cnt_t+120))*127,127+sin(deg2rad(cnt*36+cnt_t+240))*127
				EnemySet 640,rnd(480),-4,0,5,30
			}
			if stage_frame\40=0 {
				repeat 10
				if EnemyInfo(2,cnt)>0 {
					BulletColor 127+sin(deg2rad(cnt*36+cnt_t))*127,127+sin(deg2rad(cnt*36+cnt_t+120))*127,127+sin(deg2rad(cnt*36+cnt_t+240))*127
					BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(cnt*36+cnt_t)),cos(deg2rad(cnt*36+cnt_t)),20
					BulletColor 127+sin(deg2rad(cnt*36+cnt_t+240))*127,127+sin(deg2rad(cnt*36+cnt_t+120))*127,127+sin(deg2rad(cnt*36+cnt_t))*127
					BulletSet EnemyInfo(0,cnt),EnemyInfo(1,cnt),sin(deg2rad(-cnt*36+cnt_t)),cos(deg2rad(-cnt*36+cnt_t)),20
				}
				loop
			}
			if BossInfo(0,0)<10 {
				//ボス撃破演出
				await 16
			}
			cnt_t+
		}else{
			stage_frame=13000
		}
	}
	if stage_frame>13000 and BossInfo(0,0)>0 {
		stage_frame=10100
	}
	if stage_frame>13005 {
		//ステージクリア
		BulletReset
		EnemyReset
		stage_number=3
		stage_frame=0
	}