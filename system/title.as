	buffer 1		//背景画像
	picload "res/title/title.png"
	buffer 2
	picload "res/title/logo.png"
	gsel 0,0

	dmmload "res/bgm/title.ogg",20,1
	dmmplay 20

	repeat
	//タイトル画面
	stick key
	if key&1 {
	}
	if key&2 {
		select-
	}
	if key&4 {
	}
	if key&8 {
		select+
	}
	if key&2048 {
		break
	}
	if key&4096 {
		end
	}
	redraw 0

	//背景画像描画
	pos 0,0
	gmode 0
	gcopy 1,0,0,640,480
	color 255,255,255
	gmode 3,0,0,127
	grect 320,240,0,640,480
	gmode 4,0,0,255
	pos 0,0
	gcopy 2,0,0,640,480

	pos 260,350
	color 0,0,0
	mes "Please Push Z Key."

	redraw 1
	await 16
	loop


	//メニュー
*menu_loop
	VarSet 0
	buffer 1
	picload "res/title/Menu.png"
	gsel 0,0

	font msmincho,42,0
	SelectColor 0,0,255,127,127,255
	SetSelectMax 3
	SetSelectMin 0

	repeat

	stick key
	if key&2 {
		VarSelect 0
	}
	if key&8 {
		VarSelect 1
	}
	if key&2048 {
		break
	}

	redraw 0

	pos 0,0
	gcopy 1,0,0,640,480

	repeat 2
	pos 8+cnt*4,10
	color 127,127,255
	mes "東方霊剣談"
	loop
	pos 10,10
	color 0,0,255
	mes "東方霊剣談"

	//menu bar
	SelectMes "Start",0
	SelectMes "ExtraStart",1
	SelectMes "MusicRoom",2
	SelectMes "Exit",3

	redraw 1
	await 16
	loop

	switch SelectInfo(0)
	case 0		//start
	level=1
	swbreak

	case 1		//extra start
	level=4
	swbreak

	case 3		//exit
	chgdisp 0
	end

	swend

	if SelectInfo(0)=2 {
		#include "system/music.as"
		dmmload "res/bgm/title.ogg",20,1
		dmmplay 20
		goto *menu_loop
	}

*mode_loop
	VarSet 1
	SetSelectMax 3
	SetSelectMin 0
	SelectColor 0,0,255,127,127,255
	if level=4 {
		//extraが選択された場合、この処理はスキップする。
		mode="go"
		stage_number=1
		goto *game_loop
	}
	repeat

	stick key
	if key&2 {
		VarSelect 0
	}
	if key&8 {
		VarSelect 1
	}
	if key&2048 {
		mode="go"
		break
	}
	if key&4096 {
		mode="return"
		break
	}

	redraw 0
	//背景画像
	pos 0,0
	gmode 0
	gcopy 1,0,0,640,480
	if cnt<63 {
		gmode 3,0,0,cnt*2
	}else{
		gmode 3,0,0,127
	}
	color 0,0,0
	grect 320,240,0,640,480

	pos 10,10
	color 0,0,255
	mes "難易度選択の刻"

	pos 50,100
	SelectMes "Easy",0
	SelectMes "Normal",1
	SelectMes "Hard",2
	SelectMes "Lunatic",3

	redraw 1
	await 16
	loop

	if mode="return" {
		goto *menu_loop
	}
	mode=""

	level=SelectInfo(0)

	gosub *StageSaveDataLoad
	StageMax=int(stage_number)

	if StageMax>6 {
		StageMax=6
	}
	if level<3 and StageMax>3 {
		StageMax=3
	}
	if ProductMode="体験版" and StageMax>3 {
		StageMax=3
	}

	VarSet 1
	SetSelectMax StageMax
	SetSelectMin 1
	SelectColor 0,0,255,127,127,255

	repeat
	stick key
	if key&2 {
		VarSelect 0
	}
	if key&8 {
		VarSelect 1
	}
	if key&2048 {
		break
	}
	redraw 0
	//背景画像
	pos 0,0
	gmode 0
	gcopy 1,0,0,640,480
	if cnt<63 {
		gmode 3,0,0,cnt*2
	}else{
		gmode 3,0,0,127
	}
	color 0,0,0
	grect 320,240,0,640,480
	pos 10,10
	mes "開始ステージ選択"
	pos 50,100
	repeat StageMax
	cnt_t=cnt+1
	SelectMes "Stage"+cnt_t,cnt_t
	loop
	redraw 1
	await 16
	loop
	stage_number=SelectInfo(0)