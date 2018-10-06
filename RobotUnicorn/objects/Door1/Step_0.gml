/// @description Insert description here
// You can write your code in this editor


if plzopen == true
{
	if y > (ystart - sprite_height)
	{
		y = y-1;
	}
	
	
}

if plzopen == false
{
	if y < (ystart)
	{
		y = y+1;
	}
	
}

if keyboard_check_pressed(ord("H"))
{
	if plzopen == false
	{
		plzopen = true;
	}
	else
	{
		plzopen = false;
	}
}