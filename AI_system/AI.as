	//AI_MODULE

	#module
	#deffunc AI_INIT
		dim AI_DATA,1024
		return

	#deffunc AI_RUN
		if AI_INIT_SW=0 {
			dialog "INITをしていません。\nエラーが発生しました。",1,"system error"
			end
		}
		return

	#global