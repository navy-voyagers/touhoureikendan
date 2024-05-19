	//easy - stage1
	if stage_frame<1300 {
		if stage_frame\50=0 {
			repeat 6
			BulletColor 127+sin(deg2rad(stage_frame))*127,127+sin(deg2rad(stage_frame+120))*127,127+sin(deg2rad(stage_frame+240))*127
			BulletSet 600,480-stage_frame/2,cos(deg2rad(-stage_frame+cnt*60))*3,sin(deg2rad(-stage_frame+cnt*60))*3,20
			BulletSet 600,stage_frame/2,cos(deg2rad(stage_frame+cnt*60))*3,sin(deg2rad(stage_frame+cnt*60))*3,20
			loop
		}
	}
	if stage_frame>1300 and stage_frame<2000 {
		if stage_frame\50=0 {
			repeat 6
			BulletColor 127+sin(deg2rad(stage_frame))*127,127+sin(deg2rad(stage_frame+120))*127,127+sin(deg2rad(stage_frame+240))*127
			BulletSet 600,240,cos(deg2rad(-stage_frame/30+cnt*60))*3,sin(deg2rad(-stage_frame/50+cnt*60))*3,20
			loop
		}
		BulletReflect
	}
	if stage_frame=2300 {
		BulletReset
		bullet_y_start=0
	}
	if stage_frame>2300 and stage_frame<2800 {
		if stage_frame\70=0 {
			repeat 12
			BulletColor 255,0,0
			BulletSet 600,bullet_y_start,cos(deg2rad(-stage_frame/10+cnt*30))*4,sin(deg2rad(-stage_frame/5+cnt*30))*4,20
			loop
		}
		BulletReflect
		bullet_y_start++
	}
	if stage_frame=3000 {
		BulletReset
		bullet_y_start=0
		bullet_x_start=640
	}
	if stage_frame>3000 and stage_frame<3500 {
		if stage_frame\70=0 {
			repeat 8
			BulletColor 0,200,200
			BulletSet bullet_x_start,240,cos(deg2rad(-stage_frame/10+cnt*30))*4,sin(deg2rad(-stage_frame/5+cnt*30))*4,20
			loop
		}
		BulletReflect
		bullet_x_start--
	}
	if stage_frame=3550 {
		stage_frame=3700
	}
	//中ボスIN
	if stage_frame=3700 {
		//ここに中ボスを出す命令か、なんか作る。
		BossColor 255,127,127
		BossSet 600,240,150,4,50
		stage_frame=4000
	}
	//ボスが倒された場合、ループを抜ける
	if stage_frame>3700 and stage_frame<5300 {
		if BossInfo(0,0)<=0 {
			stage_frame=5300
		}
	}
	//ボス弾幕パターン
	if stage_frame=4000 {
		BulletReset
		cnt_t=0
	}
	if (stage_frame>4000 and stage_frame<4500) {
		if stage_frame\50=0 {
			repeat 8
			BulletColor 127,127,0
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(cnt*48+cnt_t))*(cnt/2+2),sin(deg2rad(cnt*48+cnt_t))*(cnt/2+2),20
			loop
			cnt_t+15
		}
	}
	if (stage_frame>4500 and stage_frame<5000) {
		if stage_frame\50=0 {
			repeat 8
			BulletColor 127,0,127
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(-deg2rad(cnt*48+cnt_t))*(cnt/2+2),sin(-deg2rad(cnt*48+cnt_t))*(cnt/2+2),20
			loop
			cnt_t+15
		}
	}
	if stage_frame=5000 {
		cnt_t=0
	}
	if stage_frame>5000 and stage_frame<5300 {
		if stage_frame\50=0 {
			repeat 16
			BulletColor 255,255,0
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(cnt*24+cnt_t))*5,sin(deg2rad(cnt*24+cnt_t))*5,15
			BulletColor 0,255,255
			BulletSet BossInfo(0,3),BossInfo(0,4),-cos(deg2rad(cnt*24+cnt_t))*5,-sin(deg2rad(cnt*24+cnt_t))*5,15
			loop
			cnt_t+15
		}
	}
	//ボスが倒されてない場合、ループさせる
	if BossInfo(0,0)>0 and stage_frame>5300 and stage_frame<6000 {
		BossReplace 0,600,rnd(480)
		stage_frame=4001
	}

	//中ボス戦後のステージ

	if stage_frame=5400 {
		EnemyReset
		cnt_t=0
	}
	if stage_frame>5400 and stage_frame<6000 {
		if stage_frame\200=0 {
			EnemyColorSet 255,255,255
			EnemySet 600,0,0,3,5,10
			EnemyColorSet 255,255,255
			EnemySet 600,480,0,-3,5,10
		}
		repeat 20
		if EnemyInfo(2,cnt)>0 and stage_frame\50=0 {
			cnt_s=cnt
			repeat 3
			BulletColor 0,255,0
			BulletSet EnemyInfo(0,cnt_s),EnemyInfo(1,cnt_s),cos(deg2rad(cnt*120+cnt_t))*3,sin(deg2rad(cnt*120+cnt_t))*3,30
			loop
			cnt_t+
		}
		loop
	}

	if stage_frame>6000 and stage_frame<7000 {
		if stage_frame\160=0 {
			EnemyColorSet 255,255,255
			EnemySet 600,0,0,4,5,10
			EnemyColorSet 255,255,255
			EnemySet 600,480,0,-4,5,10
		}
		repeat 20
		if EnemyInfo(2,cnt)>0 and stage_frame\50=0 {
			cnt_s=cnt
			repeat 3
			BulletColor 0,127,255
			BulletSet EnemyInfo(0,cnt_s),EnemyInfo(1,cnt_s),cos(deg2rad(cnt*120-cnt_t))*3,sin(deg2rad(cnt*120-cnt_t))*3,30
			loop
			cnt_t+
		}
		loop
	}

	if stage_frame>7300 and stage_frame<9000 {
		if stage_frame\160=0 {
			EnemyColorSet 255,255,255
			EnemySet 600,0,0,4,5,10
			EnemyColorSet 255,255,255
			EnemySet 600,480,0,-4,5,10
			EnemyColorSet 255,255,255
			EnemySet 600,0,0,4,5,10
			EnemyColorSet 255,255,255
			EnemySet 600,480,0,-4,5,10
		}
		repeat 5
		if EnemyInfo(2,cnt)>0 and stage_frame\150=0 {
			cnt_s=cnt
			repeat 3
			BulletColor 0,127,255
			BulletSet EnemyInfo(0,cnt_s),EnemyInfo(1,cnt_s),cos(deg2rad(cnt*120-cnt_t))*3,sin(deg2rad(cnt*120-cnt_t))*3,30
			loop
			repeat 3
			BulletColor 0,255,0
			BulletSet EnemyInfo(0,cnt_s),EnemyInfo(1,cnt_s),cos(deg2rad(cnt*120+cnt_t))*3,sin(deg2rad(cnt*120+cnt_t))*3,30
			loop
			cnt_t+
		}
		loop
	}

	//ここから、一面ボス

	if stage_frame=9100 {
		BulletReset
		BossReset
		BossColor 255,0,0
		BossSet 600,240,450,4,50
	}

	if stage_frame>9100 and stage_frame<9250 {
		if stage_frame\50=0 {
			repeat 16
			BulletColor 255,255,0
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(cnt*24+cnt_t))*5,sin(deg2rad(cnt*24+cnt_t))*5,15
			BulletColor 0,255,255
			BulletSet BossInfo(0,3),BossInfo(0,4),-cos(deg2rad(cnt*24+cnt_t))*5,-sin(deg2rad(cnt*24+cnt_t))*5,15
			loop
			cnt_t+15
		}
		if BossInfo(0,0)<400 {
			stage_frame=9300
		}
	}
	if stage_frame>9300 and BossInfo(0,0)>400 and stage_frame<9350 {
		stage_frame=9101	//セット命令に、はいらないようにする。
	}
	if stage_frame=9330 {
		BulletReset
		cnt_t=0
	}
	if stage_frame>9350 and stage_frame<9700 {
		if stage_frame\100=0 {
			repeat 20
			BulletColor 255,0,0
			BulletSet BossInfo(0,3),cnt*30+sin(deg2rad(cnt_t*2))*5,-3,0,15
			loop
		}
		if stage_frame\100=0 {
			repeat 16
			BulletColor 255,255,0
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(cnt*24+cnt_t))*2,sin(deg2rad(cnt*24+cnt_t))*2,15
			BulletColor 0,255,255
			BulletSet BossInfo(0,3),BossInfo(0,4),-cos(deg2rad(cnt*24+cnt_t))*2,-sin(deg2rad(cnt*24+cnt_t))*2,15
			loop
		}
		cnt_t+5
		if BossInfo(0,0)<300 {
			BulletReset
			stage_frame=9700
		}
	}
	if stage_frame>9700 and BossInfo(0,0)>300 and stage_frame<9750 {
		stage_frame=9350
	}
	if stage_frame>9800 and stage_frame<12000 {
		if stage_frame\100=0 {
		repeat 16
		BulletColor 127+sin(deg2rad(cnt_t*15))*127,127+sin(deg2rad(cnt_t*15+120))*127,127+sin(deg2rad(cnt_t*15+240))*127
		TempX=640
		TempY=rnd(480)
		TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
		BulletSet TempX,TempY,cos(TempDeg)*3,sin(TempDeg)*3,25
		BulletReflect
		loop
		cnt_t+
		}
		if BossInfo(0,0)<250 {
			stage_frame=12100
		}
	}
	if stage_frame>12000 and BossInfo(0,0)>250 and stage_frame<12050 {
		stage_frame=9800
	}
	if stage_frame>12100 and BossInfo(0,0)>0 {
		if stage_frame\160=0 {
		repeat 8
		BulletColor 127+sin(deg2rad(cnt_t*15))*127,127+sin(deg2rad(cnt_t*15+120))*127,127+sin(deg2rad(cnt_t*15+240))*127
		TempX=640
		TempY=rnd(480)
		TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
		BulletSet TempX,TempY,cos(TempDeg)*3,sin(TempDeg)*3,25
		BulletReflect
		loop
		repeat 8
		BulletColor 255,255,0
		BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(cnt*24+cnt_t))*2,sin(deg2rad(cnt*24+cnt_t))*2,15
		BulletColor 0,255,255
		BulletSet BossInfo(0,3),BossInfo(0,4),-cos(deg2rad(cnt*24+cnt_t))*2,-sin(deg2rad(cnt*24+cnt_t))*2,15
		loop
		cnt_t+15
		}
		if BossInfo(0,0)<5 {
			//ボス撃破スロー演出
			await 16
		}
	}
	if stage_frame>12100 and BossInfo(0,0)=0 {
		BulletReset
	}
	if stage_frame>12100 and BossInfo(0,0)<=0 {
		//ステージクリア
		stage_number+
		stage_frame=0
	}