////////////////////X/////////////////////// Robins Accel/decelkod
//Accelerate PLUS
if movex = 1
{
	walkspeedaccX += walkspeedAccel
}

if walkspeedaccX >= 1
{
	walkspeedaccX = walkspeedaccMax
}

//Break on key release
if hsp > 0 && movex = 0
{
	walkspeedaccX -= walkspeedDecel
}

if hsp >= 4 && movex = 1
{
	walkspeedaccX = walkspeedaccMax
}


//Accelerate MINUS
if movex = -1
{
	walkspeedaccX += -walkspeedAccel
}

//Break on key release
if hsp < 0 && movex = 0
{
	walkspeedaccX += walkspeedDecel
}

if hsp <= -4 && movex = -1
{
	walkspeedaccX = -walkspeedaccMax
}
/////////////////////Y////////////////////////

//Accelerate PLUS
if movey = 1
{
	walkspeedaccY += walkspeedAccel
}

//Break on key release
if vsp > 0 && movey = 0
{
	walkspeedaccY -= walkspeedDecel
}

if vsp >= 4 && movey = 1
{
	walkspeedaccY = walkspeedaccMax
}

//Accelerate MINUS
if movey = -1
{
	walkspeedaccY -= walkspeedAccel
}

//Break on key release
if vsp < 0 && movey = 0
{
	walkspeedaccY += walkspeedDecel
}

if vsp <= -4 && movey = -1
{
	walkspeedaccY = -walkspeedaccMax
}


//Final movement

hsp = walkspeedaccX * walksp;
vsp = walkspeedaccY * walksp;


