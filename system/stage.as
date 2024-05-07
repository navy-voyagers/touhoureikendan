
	//stage script index

	//musicload
	if level=4 {
		if stage_frame=5 {
			dmmload "res/bgm/stage_extra.ogg",1,1
			dmmplay 1
		}
	}else{
		if stage_frame=5 {
			dmmload "res/bgm/stage"+stage_number+".ogg",1,1
			dmmplay 1
		}
	}

	//easy
	if level=0 {
		if stage_number=1 {
			#addition "stage/easy_stage1.as"
		}
		if stage_number=2 {
			#addition "stage/easy_stage2.as"
		}
		if stage_number=3 {
			#addition "stage/easy_stage3.as"
		}
		if stage_number=4 {
			#addition "stage/easy_stage4.as"
		}
		if stage_number=5 {
			#addition "stage/easy_stage5.as"
		}
		if stage_number=6 {
			#addition "stage/easy_stage6.as"
		}
	}

	//normal
	if level=1 {
		if stage_number=1 {
			#addition "stage/normal_stage1.as"
		}
		if stage_number=2 {
			#addition "stage/normal_stage2.as"
		}
		if stage_number=3 {
			#addition "stage/normal_stage3.as"
		}
		if stage_number=4 {
			#addition "stage/normal_stage4.as"
		}
		if stage_number=5 {
			#addition "stage/normal_stage5.as"
		}
		if stage_number=6 {
			#addition "stage/normal_stage6.as"
		}
	}

	//hard
	if level=2 {
		if stage_number=1 {
			#addition "stage/hard_stage1.as"
		}
		if stage_number=2 {
			#addition "stage/hard_stage2.as"
		}
		if stage_number=3 {
			#addition "stage/hard_stage3.as"
		}
		if stage_number=4 {
			#addition "stage/hard_stage4.as"
		}
		if stage_number=5 {
			#addition "stage/hard_stage5.as"
		}
		if stage_number=6 {
			#addition "stage/hard_stage6.as"
		}
	}

	//lunnatic
	if level=3 {
		if stage_number=1 {
			#addition "stage/lunatic_stage1.as"
		}
		if stage_number=2 {
			#addition "stage/lunatic_stage2.as"
		}
		if stage_number=3 {
			#addition "stage/lunatic_stage3.as"
		}
		if stage_number=4 {
			#addition "stage/lunatic_stage4.as"
		}
		if stage_number=5 {
			#addition "stage/lunatic_stage5.as"
		}
		if stage_number=6 {
			#addition "stage/lunatic_stage6.as"
		}
	}

	//extra
	if level=4 {
		if stage_number=1 {
			#addition "stage/extra_stage1.as"
		}
	}

	if stage_number=-1 {
		//Ending
		#addition "system/ending.as"
	}