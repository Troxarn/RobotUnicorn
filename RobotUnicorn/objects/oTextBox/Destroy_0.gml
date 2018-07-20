/// @description Insert description here
// You can write your code in this editor

if variable_instance_exists(Creator, "textshown")
{
	Creator.textshown = true;
}

if variable_instance_exists(Creator, "enablerope")
{
	enablerope = false;
	oPlayer.key_button2 = noone
	alarm_set(1,10);
}


//Setting the pausestate back to gameplay
oPause.pausestate = 1;
