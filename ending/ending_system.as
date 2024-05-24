	if level<=2 {
		//easy`hard
		if stage_number>3 {
			dmmload "res/bgm/ending.ogg",1,1
			dmmplay 1
			#addition "ending/ending1.as"
		}
	}else : if level=3 {
		//lunatic
		if stage_number>6 {
			dmmload "res/bgm/ending.ogg",1,1
			dmmplay 1
			#addition "ending/ending2.as"
		}
	}else{
		//extra
		if stage_number>1 {
			dmmload "res/bgm/ending.ogg",1,1
			dmmplay 1
			#addition "ending/ending3.as"
		}
	}