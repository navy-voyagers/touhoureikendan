	if stage_number=1 {
		switch TalkNumber()
		case 0
		emes "��������Ă�낤����Ȃ�������B"
		swbreak
		case 1
		TalkEnd
		TalkReset
		swbreak
		swend
	}
	if stage_number=2 {
		switch TalkNumber()
		case 0
		emes "�����͂ǂ�������H"
		swbreak
		case 1
		emes "���������[��"
		swbreak
		case 2
		emes "���񂽂͒N��H"
		swbreak
		case 3
		emes "���񂽁A���ĂЂǁ[��"
		swbreak
		case 4
		emes "���O�́H"
		swbreak
		case 5
		emes "�������ȁ[��"
		swbreak
		case 6
		emes "�͂��A�|���܁[��"
		swbreak
		swend
	}