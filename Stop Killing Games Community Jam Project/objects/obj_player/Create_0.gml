//----------setup

//-----movement variables
angAccel = .1;
angVel = 0;
maxAng = 1;
spdVel = 0;

if room = rm_level
direction = 45;
//else
//direction = 90;

image_angle = direction;

//-----keys

global.keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
global.keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
global.keySpace = keyboard_check(vk_space);