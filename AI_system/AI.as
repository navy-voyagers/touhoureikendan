	//AI_MODULE

	#module
	#deffunc AI_INIT
		dim AI_DATA,1024
		return

	#deffunc AI_RUN
		if AI_INIT_SW=0 {
			dialog "INIT�����Ă��܂���B\n�G���[���������܂����B",1,"system error"
			end
		}
		return

	#global