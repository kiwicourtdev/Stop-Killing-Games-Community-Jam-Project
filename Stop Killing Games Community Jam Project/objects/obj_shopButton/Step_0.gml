//----------finish behavior
if type = 2 || global.upgrades != array_length(global.upgradeAmounts){
	if progress = progressMax{
	
		//reset timer and start cooldown
		progress = 0;
	
		alarm[0] = 60;
	
		//-----specific behaviors
	
		//continue button
		if type = 2{
			global.dead = false;
			room_goto(rm_level);
			exit;
		}else{//others
			if global.materials >= global.upgradeCosts[global.upgrades]{
				if global.upgrades % 2 = 0{//time upgrade
					global.timerMax += global.upgradeAmounts[global.upgrades];
				}else{//speed upgrade
					global.maxSpd += global.upgradeAmounts[global.upgrades];
					global.spdAccel += global.upgradeAmounts[global.upgrades]/150;
					global.angAccel += global.upgradeAmounts[global.upgrades]/20;
					global.maxAng += global.upgradeAmounts[global.upgrades]/2;
				};
		
				//increase upgrade amount and remove materials
		
				global.materials -= global.upgradeCosts[global.upgrades];
		
				global.upgrades++;
		
			}else{//failed upgrade
				alarm[1] = 20;
				image_blend = c_red;
			};
		};
	};
};