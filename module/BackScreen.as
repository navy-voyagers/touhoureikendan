#module BackScreenModule
#deffunc BackScreenInit
	//初期化ぁ。これを入れ忘れると(もれなく)バグります()
	dim BackScreenX,16
	dim BackScreenY,16
	dim BackScreenXChange,16
	dim BackScreenYChange,16
	return

#deffunc BackScreenLoad str BackScreenLoadPrm1 , int BackScreenLoadPrm2
	//一番目に背景画像のパス名、二番目は描画先バッファの設定
	buffer BackScreenLoadPrm2
	picload BackScreenLoadPrm1
	gsel 0,0
	return

#deffunc BackScreenMoveSet int BackScreenMoveSetPrm1 , int BackScreenMoveSetPrm2 , int BackScreenMoveSetPrm3
	//一番目が背景番号、二番目と三番目のパラメータがX,Y座標値
	BackScreenXChange(BackScreenMoveSetPrm1)=BackScreenMoveSetPrm2
	BackScreenYChange(BackScreenMoveSetPrm1)=BackScreenMoveSetPrm3
	return

#deffunc BackScreenMove int BackScreenMovePrm1
	//背景移動実行
	BackScreenX(BackScreenMovePrm1)=BackScreenX(BackScreenMovePrm1)+BackScreenXChange(BackScreenMovePrm1)
	BackScreenY(BackScreenMovePrm1)=BackScreenY(BackScreenMovePrm1)+BackScreenYChange(BackScreenMovePrm1)
	if abs(BackScreenX(BackScreenMovePrm1))>640 {
		BackScreenX(BackScreenMovePrm1)=0
	}
	if abs(BackScreenY(BackScreenMovePrm1))>480 {
		BackScreenY(BackScreenMovePrm1)=0
	}
	return

#deffunc BackScreenDraw int BackScreenDrawPrm1
	//指定した背景の画像をびょーがします。(背景番号で指定しあがれ、このヤロー())
	pos BackScreenX(BackScreenDrawPrm1),BackScreenY(BackScreenDrawPrm1)
	gcopy BackScreenDrawPrm1,0,0,640,480
	if BackScreenX(BackScreenDrawPrm1)>0 {
		pos BackScreenX(BackScreenDrawPrm1)-640,BackScreenY(BackScreenDrawPrm1)
		gcopy BackScreenDrawPrm1,0,0,640,480
	}
	if BackScreenX(BackScreenDrawPrm1)<0 {
		pos BackScreenX(BackScreenDrawPrm1)+640,BackScreenY(BackScreenDrawPrm1)
		gcopy BackScreenDrawPrm1,0,0,640,480
	}
	if BackScreenY(BackScreenDrawPrm1)>0 {
		pos BackScreenX(BackScreenDrawPrm1),BackScreenY(BackScreenDrawPrm1)-480
		gcopy BackScreenDrawPrm1,0,0,640,480
	}
	if BackScreenY(BackScreenDrawPrm1)<0 {
		pos BackScreenX(BackScreenDrawPrm1),BackScreenY(BackScreenDrawPrm1)+480
		gcopy BackScreenDrawPrm1,0,0,640,480
	}
	if BackScreenX(BackScreenDrawPrm1)>0 and BackScreenY(BackScreenDrawPrm1)>0 {
		pos BackScreenX(BackScreenDrawPrm1)-640,BackScreenY(BackScreenDrawPrm1)-480
		gcopy BackScreenDrawPrm1,0,0,640,480
	}
	if BackScreenX(BackScreenDrawPrm1)<0 and BackScreenY(BackScreenDrawPrm1)>0 {
		pos BackScreenX(BackScreenDrawPrm1)+640,BackScreenY(BackScreenDrawPrm1)-480
		gcopy BackScreenDrawPrm1,0,0,640,480
	}
	if BackScreenX(BackScreenDrawPrm1)>0 and BackScreenY(BackScreenDrawPrm1)<0 {
		pos BackScreenX(BackScreenDrawPrm1)-640,BackScreenY(BackScreenDrawPrm1)+480
		gcopy BackScreenDrawPrm1,0,0,640,480
	}
	if BackScreenX(BackScreenDrawPrm1)<0 and BackScreenY(BackScreenDrawPrm1)<0 {
		pos BackScreenX(BackScreenDrawPrm1)+640,BackScreenY(BackScreenDrawPrm1)+480
		gcopy BackScreenDrawPrm1,0,0,640,480
	}
	return

#global