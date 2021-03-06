/// @description Insert description here
// You can write your code in this editor

instance_create_layer(1, 1, "Bullets", oWeaponTemplate);

//Gamepad deadzone
gamepad_set_axis_deadzone(0, 0.3);

//Creating support objects
instance_create_layer(1, 1, layer, oVariableChecker);
/*if gamepad_is_connected(0)
{
	instance_create_layer(x + 180, y, layer, oCrosshair);
}*/

//Melee
meleeitem = oSword;
meleecooldown = 0;
meleecooldownmax = 100;

supermeleecountdownmax = 100;
supermeleecountdown = supermeleecountdownmax;

supermeleecooldownmax = 200;
supermeleecooldown = 0;

walkspeedmultiplier_charging = 0.5;

//Sprite draw variables
maxflash = 20
flash = maxflash

//Movementcontrolvariable
movex = 0;
movey = 0;
old_movex = 0;
old_movey = 0;

//Horizontal speed
hsp = 0;

//Vertical speed
vsp = 0;

//Walkspeed
walkspmax = 2.5 //Use this to change default walking speed
walksp = walkspmax; //dont touch
//HP
hp = 20;
allowdamage = true; //use this to turn on and off damage to the player. If buggy, check the collisions with monsters, bullets etc.

//Jumping
jumpcd = 0;
maxjumpcd = 1*room_speed;
jumpduration = 0;
maxjumpduration = 1*room_speed;
jumpstart = false;
jumpstop = false;

//Dashin
dashing = false;
dashfactor_max = 3; //the number to factor in the movespeed calculation (hsp & vsp)
dashfactor_default = 1;  //default factor in the multiplication of movespeed(hsp & vsp)
dashfactor = dashfactor_default;
maxdashcounter = 15 //number of steps the dash is active
dashcounter = maxdashcounter
dashcd = 0;
maxdashcd = room_speed //dash cooldown after finishing a dash
allowdash = true;

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

//Invincibility frames
max_invinc_frames = 100;
invinc_frames = max_invinc_frames;
invincibility = false;

//ROBIN TEST//
global.BadPoints = 0