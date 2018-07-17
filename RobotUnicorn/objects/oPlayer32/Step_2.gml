/// @description Storing variables & Final movement
// You can write your code in this editor


//Storing variables
if positionsavestate = 0 && !place_meeting(x,y,oCollisionBlock)
{
	positionsavex = x;
	positionsavey = y;
	positionsavestate = 60;
}
else
{
	positionsavestate --;
}

//Storing variables old movement
old_movex = movex;
old_movey = movey;



//Turns on movementmechanics in accel/decel 
//movementstart = true;

