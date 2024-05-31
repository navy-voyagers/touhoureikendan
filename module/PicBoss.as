#module
#deffunc PicBossInit
	BOSS_TOTAL=32
	ddim PicBossX,BOSS_TOTAL
	ddim PicBossY,BOSS_TOTAL
	dim PicBossHp,BOSS_TOTAL
	dim PicBossExist,BOSS_TOTAL
	buffer 30
	gsel 0,0
	return

#deffunc PicBossReset
	repeat BOSS_TOTAL
	PicBossExist(cnt)=0
	loop
	return

#deffunc PicBossPicReset
	gsel 30,0
	color 0,0,0
	boxf
	gsel 0,0
	return

#deffunc PicBossPicLoad str PicBossPicPrm1 , int PicBossPicLoadPrm2
	gsel 30,0
	pos PicBossPicLoadPrm2*50,0
	picload PicBossPicPrm1,1
	gsel 0,0
	return

#deffunc PicBossSet
	return

#deffunc PicBossCalc
	return

#deffunc PicBossDraw
	return

#global

	//buffer 30を使用 背景は黒 ボスのサイズは(50×50)pix固定