
	notesel script
	noteadd "	//stage program"
	noteadd "	if stage_frame>100 and stage_frame<200 {"

	repeat
	noteget ScriptLineData,ScriptLineNumber
	ScriptLineData = strtrim(ScriptLineData,'	',0)
	await 1
	loop