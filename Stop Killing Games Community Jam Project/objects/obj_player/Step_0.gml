//----------keys

global.keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
global.keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
global.keySpace = keyboard_check(vk_space);

//----------movement

//-----turns

//right
if global.keyRight && angVel > -global.maxAng
angVel -= global.angAccel;

//left
if global.keyLeft && angVel < global.maxAng
angVel += global.angAccel;

//friction
if angVel != 0 && ((!global.keyRight && !global.keyLeft) || (global.keyRight && global.keyLeft))
angVel -= global.angAccel * sign(angVel) / 2;

//apply
direction += angVel;
image_angle = direction;

//-----movement

//forward
if global.keyUp && spdVel < global.maxSpd
spdVel += global.spdAccel;

//back
if global.keyDown && spdVel > -global.maxSpd
spdVel -= global.spdAccel;

//friction
if spdVel != 0 && ((!global.keyUp && !global.keyDown) || (global.keyUp && global.keyDown))
spdVel -= global.spdAccel * sign(spdVel) / 2;

//apply
speed = spdVel;

//correction
x = clamp(x, 16, room_width - 16);
y = clamp(y, 16, room_height - 16);

//force stop
if global.keySpace
speed = 0;