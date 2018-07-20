/// @description Insert description here
// You can write your code in this editor

//Direction setter
//Randomizer
dircooldown --;

if dircooldown <= 0 && stoprandom = false
{
	npcdir = irandom(8);
	dircooldown = maxdircooldown;
}

//If outside of range
var diagonalposcheck = false;
for(i=0;i<=3;i++) {
	if diagonalposition[i] == true 
	{
		diagonalposcheck = true;
		break;
    }
	else
	{
		diagonalposcheck = false;
	}
}

if x <= (xorigin - range) && diagonalposcheck = false
{
	npcdir = 6;
	stoprandom = true;
}
else
{
	stoprandom = false;
}

if x >= (xorigin + range) && diagonalposcheck = false
{
	npcdir = 2;
	stoprandom = true;
}
else
{
	stoprandom = false;
}


if y <= (yorigin - range) && diagonalposcheck = false
{
	npcdir = 0;
	stoprandom = true;
}
else
{
	stoprandom = false;
}

if y >= (yorigin + range)  && diagonalposcheck = false
{
	npcdir = 4;
	stoprandom = true;
}
else
{
	stoprandom = false;
}

//if object is out of range diagonally

{
	//Too far right & up
	if x >= (xorigin + range) && y <= (yorigin - range)
	{
		npcdir = 1
		diagonalposition[0] = true;
	}
	else
	{
		 diagonalposition[0] = false;
	}
	//Too far right & down
	if x >= (xorigin + range) && y >= (yorigin + range)
	{
		npcdir = 3;
		diagonalposition[1] = true;
	}
	else
	{
		 diagonalposition[1] = false;
	}
	//Too far left & down
	if x <= (xorigin - range) && y >= (yorigin + range)
	{
		npcdir = 5;
		diagonalposition[2] = true;
	}
	else
	{
		 diagonalposition[2] = false;
	}
	//Too far left & up
	if x <= (xorigin - range) && y <= (yorigin - range)
	{
		npcdir = 7;
		diagonalposition[3] = true;
	}
	else
	{
		 diagonalposition[3] = false;
	}
}



//Direction code

if npcdir = 0
{
	hsp =- npcspeed * 0;
	vsp =+ npcspeed * 1;
}

if npcdir = 1
{
	hsp =- npcspeed * 1;
	vsp =+ npcspeed * 1;
}

if npcdir = 2
{
	hsp =- npcspeed * 1;
	vsp =+ npcspeed * 0;
}

if npcdir = 3
{
	hsp =- npcspeed * 1;
	vsp =- npcspeed * 1;
}

if npcdir = 4
{
	hsp =+ npcspeed * 0;
	vsp =- npcspeed * 1;
}

if npcdir = 5
{
	hsp =+ npcspeed * 1;
	vsp =- npcspeed * 1;
}

if npcdir = 6
{
	hsp =+ npcspeed * 1;
	vsp =+ npcspeed * 0;
}


if npcdir = 7
{
	hsp =+ npcspeed * 1;
	vsp =+ npcspeed * 1;
}

if npcdir = 8
{
	hsp =+ npcspeed * 0;
	vsp =- npcspeed * 0;
}

if horizontalmovement = true
{
	x += hsp;
}
if verticalmovement = true
{
	y += vsp;
}