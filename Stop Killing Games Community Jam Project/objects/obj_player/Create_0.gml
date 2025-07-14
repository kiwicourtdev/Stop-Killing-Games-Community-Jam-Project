//----------setup

//-----movement variables
angAccel = .1;
angVel = 0;
maxAng = 2;
spdAccel = .005;
spdVel = 0;
maxSpd = .5;

//-----keys

global.keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
global.keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));