//----------overall game setup

//-----window/camera

//set window size to be larger despite the 128x128 camera
window_set_size(640,640);

//-----upgrade variables

global.maxSpd = .5;
global.spdAccel = .005;
global.maxAng = 4;
global.angAccel = .1;

global.timerMax = 120;

global.upgrades = [0, 0];

global.upgradeCosts = [
[1, 2, 4, 8, 16, 32],
[2, 4, 6, 8, 10, 12]
];

global.upgradeAmounts = [
[60, 120, 300, 600, 1200, 2400],
[.5, .5, .5, .5, .5, .5]
];

global.materials = 0;

//-----material destroy setup
global.destroyList = ds_list_create();