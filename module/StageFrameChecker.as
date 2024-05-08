#module
//SFC‚ÍStageFrameCheck‚Ì—ª‚Å‚·B
#defcfunc SFCPoint int SFCPointPrm1
	if SFCPointPrm1=FrameInfo() {
		return 0	//true
	}else{
		return 1	//false
	}
	return 2	//error

#defcfunc SFCRange int SFCRangePrm1 , int SFCRangePrm2
	if SFCRangePrm1<FrameInfo() and FrameInfo()<SFCRangePrm2 {
		return 0
	}else{
		return 1
	}
	return 2	//error

#global