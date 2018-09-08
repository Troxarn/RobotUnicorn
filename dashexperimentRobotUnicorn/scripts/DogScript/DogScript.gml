/// @description Insert description here
// You can write your code in this editor

//Direction setter
//Randomizer
dircooldown --;

if dircooldown <= 0 && stoprandom = false
{
	bugdir = irandom(8);
	dircooldown = 15;
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
	bugdir = 6;
	stoprandom = true;
}
else
{
	stoprandom = false;
}

if x >= (xorigin + range) && diagonalposcheck = false
{
	bugdir = 2;
	stoprandom = true;
}
else
{
	stoprandom = false;
}


if y <= (yorigin - range) && diagonalposcheck = false
{
	bugdir = 0;
	stoprandom = true;
}
else
{
	stoprandom = false;
}

if y >= (yorigin + range)  && diagonalposcheck = false
{
	bugdir = 4;
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
		bugdir = 1
		diagonalposition[0] = true;
	}
	else
	{
		 diagonalposition[0] = false;
	}
	//Too far right & down
	if x >= (xorigin + range) && y >= (yorigin + range)
	{
		bugdir = 3;
		diagonalposition[1] = true;
	}
	else
	{
		 diagonalposition[1] = false;
	}
	//Too far left & down
	if x <= (xorigin - range) && y >= (yorigin + range)
	{
		bugdir = 5;
		diagonalposition[2] = true;
	}
	else
	{
		 diagonalposition[2] = false;
	}
	//Too far left & up
	if x <= (xorigin - range) && y <= (yorigin - range)
	{
		bugdir = 7;
		diagonalposition[3] = true;
	}
	else
	{
		 diagonalposition[3] = false;
	}
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