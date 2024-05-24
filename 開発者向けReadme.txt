開発者向けReadme

・ステージデータの作成方法
<example>
	if stage_frame>100 and stage_frame<200 {
		if stage_frame\2=0 {
			BulletColor 255,0,0
			BulletSet 320,240,cos(deg2rad(cnt_t))*3,sin(deg2rad(cnt_t))*3,20
		}
	}

stage_frame : ステージのフレーム数です。どのぐらい進んだかを管理する変数みたいな感じのとらえ方でOKです。
stage_frameは変数です。

BulletColor : これはColor命令を同じ感じです。RGB値で指定してください。
BulletColor R,G,B

BulletSet : 弾幕配置命令です。
BulletSet 初期X座標,初期Y座標,X座標方向の移動量,Y座標方向の移動量,弾のサイズ

BulletReflect : 弾幕を壁に当たったら跳ね返るようにする命令です。なるべく1フレームに一回実行するようにしてください。
この命令には特に引数は必要ありません。

BulletReset : 弾幕をすべて消去します。
この命令も特に引数は必要ありません。

BulletInfo(~~) : 玉の情報を返す関数です。必要になりそうなシーンがあったら直接Maple(Comet)に聞いてください。
この関数には引数が必要です。

BulletDel : 一つ弾を消します。
BulletDel 消したい弾のインデックス番号
この命令は使用頻度が低いので詳細はMaple(Comet)まで。

・スクリプトの大まかな書き方の流れ

例えば、
	if stage_frame>100 and stage_frame<200 {
		//ここに実行したいプログラムを入れろ()
	}
のようなスクリプトを記述した場合、この記述の意味は
	stage_frameが100から200の間に{}の中を実行
という感じになります。
そして、この塊を並べていくことによってステージデータを作成していきます。

ステージデータは(難易度)_stage(ステージ番号).asのような形式でstageフォルダーの中に配置してください。
例　Lunatic_stage1.as

systemフォルダーやmoduleフォルダーは編集非推奨です。(というかいじくらないでください。正常な動作が保証できません。)

・Boss系命令について

BossInfo([ボスのインデックス(通常は0)],[指定パラメータ])
ボスの状態を取得する関数です。よく使うのは
	Boss(0,0)		//BossのHP取得
	Boss(0,3)		//BossのX座標
	Boss(0,4)		//BossのY座標
です。

BossColor R, G, B
BulletColorとほぼ同じです。

BossSet [初期X座標],[初期Y座標],[HP],[移動するときの素早さ],[ボスのサイズ]

BossReset
ボスの消去　引数なしです。

BossReplace [ボスのインデックス(通常は0です。)],[X座標],[Y座標]
ボスを移動させます。指定したX,Y座標に移動します。

・Enemy系

EnemyColorSet ←命令名入力ミス注意 EnemyColorではない。
BossColorとかBulletColorと同じ感じで指定してください。

EnemySet [初期X座標],[初期Y座標],[X座標方向の移動量],[Y座標方向の移動量],[HP],[敵のサイズ]

基本的には以上のものを知っておけば大丈夫です。

最後にプログラム例を示しておきます。

参照元：Lunatic_stage1.as

	//lunatic - stage1
	if stage_frame<1300 {
		if stage_frame\10=0 {
			repeat 6
			BulletColor 127+sin(deg2rad(stage_frame))*127,127+sin(deg2rad(stage_frame+120))*127,127+sin(deg2rad(stage_frame+240))*127
			BulletSet 600,480-stage_frame/2,cos(deg2rad(-stage_frame+cnt*60))*3,sin(deg2rad(-stage_frame+cnt*60))*3,20
			BulletSet 600,stage_frame/2,cos(deg2rad(stage_frame+cnt*60))*3,sin(deg2rad(stage_frame+cnt*60))*3,20
			loop
		}
	}
	if stage_frame>1300 and stage_frame<2000 {
		if stage_frame\20=0 {
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
		if stage_frame\25=0 {
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
		if stage_frame\15=0 {
			repeat 8
			BulletColor 0,200,200
			BulletSet bullet_x_start,240,cos(deg2rad(-stage_frame/10+cnt*30))*4,sin(deg2rad(-stage_frame/5+cnt*30))*4,20
			loop
		}
		BulletReflect
		bullet_x_start--
	}
	//中ボスIN
	if stage_frame=3700 {
		BossColor 255,127,127
		BossSet 600,240,150,4,50
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
		if stage_frame\20=0 {
			repeat 16
			BulletColor 127,127,0
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(cnt*24+cnt_t))*(cnt/2+2),sin(deg2rad(cnt*24+cnt_t))*(cnt/2+2),20
			loop
			cnt_t+15
		}
	}
	if (stage_frame>4500 and stage_frame<5000) {
		if stage_frame\20=0 {
			repeat 16
			BulletColor 127,0,127
			BulletSet BossInfo(0,3),BossInfo(0,4),cos(-deg2rad(cnt*24+cnt_t))*(cnt/2+2),sin(-deg2rad(cnt*24+cnt_t))*(cnt/2+2),20
			loop
			cnt_t+15
		}
	}
	if stage_frame=5000 {
		cnt_t=0
	}
	if stage_frame>5000 and stage_frame<5300 {
		if stage_frame\10=0 {
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
		if stage_frame\100=0 {
			EnemyColorSet 255,255,255
			EnemySet 600,0,0,3,5,10
			EnemyColorSet 255,255,255
			EnemySet 600,480,0,-3,5,10
		}
		repeat 20
		if EnemyInfo(2,cnt)>0 and stage_frame\10=0 {
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
		if stage_frame\80=0 {
			EnemyColorSet 255,255,255
			EnemySet 600,0,0,4,5,10
			EnemyColorSet 255,255,255
			EnemySet 600,480,0,-4,5,10
		}
		repeat 20
		if EnemyInfo(2,cnt)>0 and stage_frame\10=0 {
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
		if stage_frame\80=0 {
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
		if EnemyInfo(2,cnt)>0 and stage_frame\20=0 {
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
		if stage_frame\10=0 {
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
		if stage_frame\40=0 {
			repeat 20
			BulletColor 255,0,0
			BulletSet BossInfo(0,3),cnt*30+sin(deg2rad(cnt_t*2))*5,-3,0,15
			loop
		}
		if stage_frame\30=0 {
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
		if stage_frame\30=0 {
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
		if stage_frame\30=0 {
		repeat 8
		BulletColor 127+sin(deg2rad(cnt_t*15))*127,127+sin(deg2rad(cnt_t*15+120))*127,127+sin(deg2rad(cnt_t*15+240))*127
		TempX=640
		TempY=rnd(480)
		TempDeg = atan(PlayerInfo(1)-TempY,PlayerInfo(0)-TempX)
		BulletSet TempX,TempY,cos(TempDeg)*4,sin(TempDeg)*4,25
		BulletReflect
		loop
		repeat 16
		BulletColor 255,255,0
		BulletSet BossInfo(0,3),BossInfo(0,4),cos(deg2rad(cnt*24+cnt_t))*2,sin(deg2rad(cnt*24+cnt_t))*2,15
		BulletColor 0,255,255
		BulletSet BossInfo(0,3),BossInfo(0,4),-cos(deg2rad(cnt*24+cnt_t))*2,-sin(deg2rad(cnt*24+cnt_t))*2,15
		loop
		cnt_t+
		}
		if BossInfo(0,0)<10 {
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

・・・以上
