	VarSet 0
	SetSelectMax 8
	SetSelectMin 0
	SelectColor 255,64,64,64,64,64
	font msmincho,24,0

	repeat
	stick key
	if key&2 {
		VarSelect 0
	}
	if key&8 {
		VarSelect 1
	}
	if key&2048 {
		select_music=SelectInfo(0)+1
		if select_music<8 {
			dmmload "res/bgm/stage"+select_music+".ogg",1,1
		}else : if select_music=9 {
			dmmload "res/bgm/title.ogg",1,1
		}else{
			dmmload "res/bgm/ending.ogg",1,1
		}
		dmmplay 1
	}
	if key&4096 {
		break
	}
	redraw 0
	gmode 0
	pos 0,0
	gcopy 1,0,0,640,480
	gmode 3,0,0,127
	color 200,200,255
	grect 320,240,0,640,480
	pos 10,10
	color 0,0,64
	mes "MusicRoom"
	pos 200,30
	SelectMes "1.星の降る夜に",0
	SelectMes "2.地獄の温泉",1
	SelectMes "3.紫立ちたる雲の切れ目",2
	SelectMes "4.星の旅",3
	SelectMes "5.無限に続く青空",4
	SelectMes "6.最後の戦い...ultimate battle.",5
	SelectMes "7.ExtraPower.",6
	SelectMes "8.神々の休息 (エンディングテーマ)",7
	SelectMes "9.神々の遊び (タイトルテーマ)",8
	redraw 1
	await 16
	loop