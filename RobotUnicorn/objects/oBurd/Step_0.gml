/// @description Insert description here
// You can write your code in this editor
if collision_circle(x, y, playercheck, oPlayer, false, true)
{
	with oBurd
	{
		if group = other.group
		{
			startflight = true;
		}
	}
}

if startflight = true && countdowntodeath > 0
{
	sprite_index = sBirdieanim;
	image_speed = 1;
	if oPlayer.x < x
	{
		x += 6;
	}
	else
	{
		x -=6;
	}
	y -=4;
	countdowntodeath --;
}
if countdowntodeath = 0
{
	instance_destroy();
}

ic = instance_count