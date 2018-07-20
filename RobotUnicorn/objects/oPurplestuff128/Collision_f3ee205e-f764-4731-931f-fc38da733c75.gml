/// @description Insert description here
// You can write your code in this editor


//Problem pga key_button2 är key_pressed check, behöver ev remake på kontrollsystemet.
if holdbutton == true && areaid.delay == areaid.maxdelay
{
	with oPlayer
	{ 
		if key_button2
		{
			other.holdtimer --;
		}
	}

} 
if holdtimer < maxholdtimer 
	{
		with oPlayer
		{
			if key_button2
			{
				other.holdtimer --
			}
			else
			{
				other.holdtimer = other.maxholdtimer;
			}
		}
	}

if areaid.delay = areaid.maxdelay && holdbutton == false
{
	with oPlayer
	{
		if key_button2 
		{
			instance_destroy(other.creator);
		}
	}
}

if holdtimer <= 0
{
	instance_destroy(creator);
}

oPlayer.inputdelay = 0;