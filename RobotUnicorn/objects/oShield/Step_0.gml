/// @description Insert description here
// You can write your code in this editor

runonce ++;
if global.shield_count < 2 && runonce == 20
{
	instance_create_layer(1, 1, layer, oShield)
	global.shield_count ++;
}

phase += angle;
x = oPlayer.x + radius * dcos(phase);
y = oPlayer.y - radius * dsin(phase);