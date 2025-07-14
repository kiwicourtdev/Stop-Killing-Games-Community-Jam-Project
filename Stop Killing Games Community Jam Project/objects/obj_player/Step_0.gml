//----------keys

global.keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
global.keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));

//----------movement

//-----turns

//right
if global.keyRight && angVel > -maxAng
angVel -= angAccel;

//left
if global.keyLeft && angVel < maxAng
angVel += angAccel;

//friction
if angVel != 0 && ((!global.keyRight && !global.keyLeft) || (global.keyRight && global.keyLeft))
angVel -= angAccel * sign(angVel) / 2;

//apply
direction += angVel;
image_angle = direction;

//-----movement

//forward
if global.keyUp && spdVel < maxSpd
spdVel += spdAccel;

//back
if global.keyDown && spdVel > -maxSpd
spdVel -= spdAccel;

//friction
if spdVel != 0 && ((!global.keyUp && !global.keyDown) || (global.keyUp && global.keyDown))
spdVel -= spdAccel * sign(spdVel) / 2;

//apply
speed = spdVel;