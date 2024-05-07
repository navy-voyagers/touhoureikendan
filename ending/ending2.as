	//easy-hard ending
	buffer 10
	picload "res/pic/player_pre.png"
	gsel 0,0
	repeat
	stick key
	if key&2048 {
		break
	}
	redraw 0
	color 0,0,64
	gmode 3,0,0,64
	grect 320,240,0,640,480
	gmode 4,0,0,255
	color 0,255,0
	pos 0,0
	gcopy 10,0,0,369,480
	color 255,255,255
	pos 10,10
	mes "Thank you for your playing!!"
	pos 400,300
	switch level
	case 0
		mes "Easy"
		swbreak
	case 1
		mes "Normal"
		swbreak
	case 2
		mes "Hard"
		swbreak
	case 3
		mes "Lunatic"
		swbreak
	case 4
		mes "Extra"
		swbreak
	swend
	color 255,200,200
	mes "MissCounter : "+MissSum
	redraw 1
	await 16
	loop

	mode="End"