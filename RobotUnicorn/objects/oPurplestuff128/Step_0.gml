/// @description Insert description here
// You can write your code in this editor

image_angle = angling;
if turndir = 1
{
	angling -= anglespeed;
}
else
{
	angling += anglespeed
}

if runonce = false
{
	areaid = creator.children[1];
	runonce = true;
}

x = creator.x;
y = creator.y;

if dirrandomizer == true && forced_dir_change == false
{
	randomizerdelay --;
	if randomizerdelay <= 0
	{
		turndir = irandom_range(0,1);
		randomizerdelay = maxrandomizerdelay;
	}
}

if forced_dir_change = true
{
	forced_delay --;
	if forced_delay <= 0
	{
		anglespeed = -anglespeed;
		forced_delay = max_forced_delay;
	}
}