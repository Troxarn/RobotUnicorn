/// @description Insert description here
// You can write your code in this editor
distans = distance_to_object(pole1);
if distans > 300
{
	pole1.runonce = false;
	instance_destroy(id, false);
}


x = oPlayer.x;
y = oPlayer.y;