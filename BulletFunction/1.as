#deffunc BulletCircleSet double BulletCircleSetPrm1 , double BulletCircleSetPrm2 , double BulletCircleSetPrm3 , double BulletCircleSetPrm4 , int BulletCircleSetPrm5 , int BulletCircleSetPrm6
	//BulletCircleSet x,y,speed,StartDeg,íeêî,BulletSize
	repeat BulletCircleSetPrm5
	BulletSet BulletCircleSetPrm1,BulletCircleSetPrm2,cos(deg2rad((360/BulletCircleSetPrm5)*cnt+BulletCircleSetPrm4))*BulletCircleSetPrm3,sin(deg2rad((360/BulletCircleSetPrm5)*cnt+BulletCircleSetPrm4))*BulletCircleSetPrm3,BulletCircleSetPrm6
	loop
	return

#deffunc BulletWaySet double BulletWaySetPrm1 , double BulletWaySetPrm2 , double BulletWaySetPrm3 , int BulletWaySetPrm4 , int BulletWaySetPrm5 , int BulletWaySetPrm6
	//é©ã@ë_Ç¢Way
	//atanÇ≈äpìxÇåvéZ
	Temp = atan(PlayerInfo(1)-BulletWaySetPrm2,PlayerInfo(0)-BulletWaySetPrm1)
	TempA = rad2deg(rnd(BulletWaySetPrm4))
	switch BulletWaySetPrm5
		case 1
		BulletSet BulletWaySetPrm1,BulletWaySetPrm2,cos(Temp+TempA)*BulletWaySetPrm3,sin(Temp+TempA)*BulletWaySetPrm3,BulletWaySetPrm6
		swbreak
		case 2
		repeat 2
		BulletSet BulletWaySetPrm1,BulletWaySetPrm2,cos(Temp+TempA+deg2rad(cnt*30-15))*BulletWaySetPrm3,sin(Temp+TempA+deg2rad(cnt*30-15))*BulletWaySetPrm3,BulletWaySetPrm6
		loop
		swbreak
		case 3
		repeat 3
		BulletSet BulletWaySetPrm1,BulletWaySetPrm2,cos(Temp+TempA+deg2rad(cnt*30-30))*BulletWaySetPrm3,sin(Temp+TempA+deg2rad(cnt*30-30))*BulletWaySetPrm3,BulletWaySetPrm6
		loop
		swbreak
	swend
	return

#deffunc BulletLaserSet double BulletLaserSetPrm1 , double BulletLaserSetPrm2 , double BulletLaserSetPrm3 , double BulletLaserSetPrm4 , int BulletLaserSetPrm5
	//if stage_frame\~=0ÇÕÇ¢ÇÁÇ»Ç¢ Ç¬ÇØÇƒÇ‡if stage_frame\2=0ÇÆÇÁÇ¢Ç‹Ç≈
	Temp = atan(BulletLaserSetPrm2-BulletLaserSetPrm4,BulletLaserSetPrm1,BulletLaserSetPrm3)
	BulletSetVector BulletLaserSetPrm1,BulletLaserSetPrm2,rad2deg(Temp),10,BulletLaserSetPrm5
	return

#defcfunc AimPlayerRad double AimPlayerRadPrm1 , double AimPlayerRadPrm2
	return atan(PlayerInfo(1)-AimPlayerRadPrm2,PlayerInfo(0)-AimPlayerRadPrm1)

#defcfunc AimPlayerDeg double AimPlayerDegPrm1 , double AimPlayerDegPrm2
	return rad2deg(atan(PlayerInfo(1)-AimPlayerDegPrm2,PlayerInfo(0)-AimPlayerDegPrm1))
