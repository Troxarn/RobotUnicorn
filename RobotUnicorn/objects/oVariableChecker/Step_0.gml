/// @description Insert description here
// You can write your code in this editor
if shieldgained == true
{
	instance_create_layer(oPlayer.x+30, oPlayer.y, layer, oShield);
	shieldgained = false;
}