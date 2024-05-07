	if stage_number=1 {
		switch TalkNumber()
		case 0
		emes "さあやってやろうじゃないかしら。"
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
		emes "ここはどこかしら？"
		swbreak
		case 1
		emes "いらっしゃーい"
		swbreak
		case 2
		emes "あんたは誰よ？"
		swbreak
		case 3
		emes "あんた、ってひどーい"
		swbreak
		case 4
		emes "名前は？"
		swbreak
		case 5
		emes "おしえなーい"
		swbreak
		case 6
		emes "はい、倒しまーす"
		swbreak
		swend
	}