/// @description Insert description here
// You can write your code in this editor
if shieldgained == true
{
	instance_create_layer(oPlayer.x+30, oPlayer.y, layer, oShield);
	shieldgained = false;
}

//Checking right stick
hraxis = gamepad_axis_value(0, gp_axisrh);
vraxis = gamepad_axis_value(0, gp_axisrv);