/// @description Insert description here
// You can write your code in this editor

//Direction setter
dircooldown --;

if dircooldown <= 0
{
	bugdir = irandom(8);
	dircooldown = 15;
}

if x <= (xorigin - 300)
{
	bugdir = irandom_range(5,7);
}

if x >= (xorigin + 300)
{
	bugdir = irandom_range(1,3);
}

if y <= (yorigin - 150)
{
	bugdir = choose(7,0,1)
}

if y >= (yorigin + 150)
{
	bugdir = irandom_range(3,5)
}

//Direction code

if bugdir = 0
{
	x -= bugspeed * 0;
	y += bugspeed * 1;
}

if bugdir = 1
{
	x -= bugspeed * 1;
	y += bugspeed * 1;
}

if bugdir = 2
{
	x -= bugspeed * 1;
	y += bugspeed * 0;
}

if bugdir = 3
{
	x -= bugspeed * 1;
	y -= bugspeed * 1;
}

if bugdir = 4
{
	x += bugspeed * 0;
	y -= bugspeed * 1;
}

if bugdir = 5
{
	x += bugspeed * 1;
	y -= bugspeed * 1;
}

if bugdir = 6
{
	x += bugspeed * 1;
	y += bugspeed * 0;
}


if bugdir = 7
{
	x += bugspeed * 1;
	y += bugspeed * 1;
}

if bugdir = 8
{
	x += bugspeed * 0;
	y -= bugspeed * 0;
}