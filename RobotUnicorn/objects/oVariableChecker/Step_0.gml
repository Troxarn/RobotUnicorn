/// @description Insert description here
// You can write your code in this editor
if global.shieldgained == true
{
	instance_create_layer(oPlayer.x+30, oPlayer.y, layer, oShield);
	global.shieldgained = false;
}

//Checking right stick
global.hraxis = gamepad_axis_value(0, gp_axisrh);
global.vraxis = gamepad_axis_value(0, gp_axisrv);