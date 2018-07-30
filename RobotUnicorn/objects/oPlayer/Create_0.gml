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
hp = 10000