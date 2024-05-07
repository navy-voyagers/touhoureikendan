	if level=4 {
		//extra stage
		color 64,0,0
		boxf
	}else{
		if stage_number=1 {
			if stage_frame=10 {
				BackScreenLoad "res/pic/stage1.png",1
				BackScreenMoveSet 1,0,0
			}else{
				BackScreenMove 1
				BackScreenDraw 1
			}
		}
		if stage_number=2 {
			if stage_frame=10 {
				BackScreenLoad "res/pic/stage2.png",1
				BackScreenMoveSet 1,0,0
			}else{
				BackScreenMove 1
				BackScreenDraw 1
			}
		}
		if stage_number=3 {
			if stage_frame=10 {
				BackScreenLoad "res/pic/stage3.png",1
				BackScreenMoveSet 1,0,0
			}else{
				BackScreenMove 1
				BackScreenDraw 1
			}
		}
		if stage_number=4 {
			if stage_frame=10 {
				BackScreenLoad "res/title/menu.png",1
				BackScreenMoveSet 1,0,0
			}else{
				BackScreenMove 1
				BackScreenDraw 1
			}
		}
		if stage_number=5 {
			if stage_frame=10 {
				BackScreenLoad "res/title/menu.png",1
				BackScreenMoveSet 1,0,0
			}else{
				BackScreenMove 1
				BackScreenDraw 1
			}
		}
		if stage_number=6 {
			if stage_frame=10 {
				BackScreenLoad "res/pic/stage6.png",1
				BackScreenMoveSet 1,0,0
			}else{
				BackScreenMove 1
				BackScreenDraw 1
			}
		}
	}