/// @description Insert description here
// You can write your code in this editor

	//Horizontal collision
if (place_meeting(x+hsp,y,oRoadBlock))
{
	while (!place_meeting(x+sign(hsp),y,oRoadBlock))
	{
			x = x+sign(hsp);
	}
	hsp = 0;
}	

//Vertical collision
if (place_meeting(x,y+vsp,oRoadBlock))
{
	while (!place_meeting(x,y+sign(vsp),oRoadBlock))
	{
			y = y+sign(vsp);
	}
	vsp = 0;	
}	
