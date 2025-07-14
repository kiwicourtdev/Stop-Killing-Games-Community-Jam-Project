//----------finish behavior
if type = 2 || global.upgrades[type] != 6{
	if progress = progressMax{
	
		//reset timer and start cooldown
		progress = 0;
	
		alarm[0] = 60;
	
		//-----specific behaviors
	
		//continue button
		if type = 2{
			room_goto(rm_level);
			exit;
		};
	
		//others
		if global.materials >= global.upgradeCosts[type,global.upgrades[type]]{
			switch(type){
				case 0: //time upgrade
					global.timerMax += global.upgradeAmounts[type,global.upgrades[type]];
				break;
	
				case 1: //speed upgrade
					global.maxSpd += global.upgradeAmounts[type,global.upgrades[type]];
					global.spdAccel += global.upgradeAmounts[type,global.upgrades[type]]/150;
					global.angAccel += global.upgradeAmounts[type,global.upgrades[type]]/40;
				break;
			};
		
			//increase upgrade amount and remove materials
		
			global.materials -= global.upgradeCosts[type,global.upgrades[type]];
		
			global.upgrades[type]++;
		
		};

	};
};