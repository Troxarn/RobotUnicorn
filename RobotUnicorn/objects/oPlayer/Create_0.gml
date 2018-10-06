/// @description Insert description here
// You can write your code in this editor


//Gamepad deadzone
gamepad_set_axis_deadzone(0, 0.3);

//Creating support objects
instance_create_layer(1, 1, layer, oVariableChecker);
/*if gamepad_is_connected(0)
{
	instance_create_layer(x + 180, y, layer, oCrosshair);
}*/

//Meleeitem
meleeitem = oSword;

//Movementcontrolvariable
movex = 0;
movey = 0;

//Horizontal speed
hsp = 0;

//Vertical speed
vsp = 0;

//Walkspeed
walksp = 4;

//HP
hp = 1000;

//Jumping
jumpcd = 0;
maxjumpcd = 1*room_speed;
jumpduration = 0;
maxjumpduration = 1*room_speed;
jumpstart = false;
jumpstop = false;

//Dashin
allowdash = true;
dashing = false;
maxdashcd = room_speed;
dashcd = 0;

//Safe Coordinates
safetyx = x;
safetyy = y;
safetytimermax = room_speed;
safetytimer = safetytimermax;

//Decel/accel variables
acceleration = false;
walkspeedAccel = 0.09 //How fast player accelerates while holding key
walkspeedDecel = 0.1 //How fast player decelerates after releasing key
walkspeedaccX = 0
walkspeedaccY = 0
walkspeedaccMax = 1 // Dont change, basicly just fucks up movement
walkspeedaccXsign = 1
walkspeedaccYsign = 1

//ROBIN TEST//
global.BadPoints = 0