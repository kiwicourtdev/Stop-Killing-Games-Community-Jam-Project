//----------overall game setup

//-----window/camera

//set window size to be larger despite the 128x128 camera
window_set_size(640,640);
window_set_position(display_get_width()/2-320,display_get_height()/2-320);

//-----upgrade variables

global.maxSpd = .5;
global.spdAccel = .005;
global.maxAng = 4;
global.angAccel = .1;

global.timerMax = 120;

global.upgrades = 0;

global.upgradeCosts = [1, 2, 2, 4, 4, 6, 8, 8, 10, 12];

global.upgradeAmounts = [60, .5, 120, .5, 300, .5, 600, .5, 1200, .5];

global.materials = 0;

//-----level setup
global.destroyList = ds_list_create();

global.dead = false;