	VarSet 0
	SetSelectMax 8
	SetSelectMin 0
	SelectColor 255,64,64,64,64,64
	font msmincho,24,0

	repeat
	stick key
	if key&2 {
		VarSelect 0
	}
	if key&8 {
		VarSelect 1
	}
	if key&2048 {
		select_music=SelectInfo(0)+1
		if select_music<8 {
			dmmload "res/bgm/stage"+select_music+".ogg",1,1
		}else : if select_music=9 {
			dmmload "res/bgm/title.ogg",1,1
		}else{
			dmmload "res/bgm/ending.ogg",1,1
		}
		dmmplay 1
	}
	if key&4096 {
		break
	}
	redraw 0
	gmode 0
	pos 0,0
	gcopy 1,0,0,640,480
	gmode 3,0,0,127
	color 200,200,255
	grect 320,240,0,640,480
	pos 10,10
	color 0,0,64
	mes "MusicRoom"
	pos 200,30
	SelectMes "1.���̍~����",0
	SelectMes "2.�n���̉���",1
	SelectMes "3.����������_�̐؂��",2
	SelectMes "4.���̗�",3
	SelectMes "5.�����ɑ�����",4
	SelectMes "6.�Ō�̐킢...ultimate battle.",5
	SelectMes "7.ExtraPower.",6
	SelectMes "8.�_�X�̋x�� (�G���f�B���O�e�[�})",7
	SelectMes "9.�_�X�̗V�� (�^�C�g���e�[�})",8
	redraw 1
	await 16
	loop