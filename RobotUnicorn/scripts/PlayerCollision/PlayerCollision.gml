//Horizontal collision
if (place_meeting(x+hsp,y,oCollisionParent))
{
	while (!place_meeting(x+sign(hsp),y,oCollisionParent))
	{
			x = x+sign(hsp);
	}
	hsp = 0;
}	

//Vertical collision
if (place_meeting(x,y+vsp,oCollisionParent))
{
	while (!place_meeting(x,y+sign(vsp),oCollisionParent))
	{
			y = y+sign(vsp);
	}
	vsp = 0;	
}	