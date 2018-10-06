//Horizontal collision
if (place_meeting(x+hsp,y,Collisionparent))
{
	while (!place_meeting(x+sign(hsp),y,Collisionparent))
	{
			x = x+sign(hsp);
	}
	hsp = 0;
}	

//Vertical collision
if (place_meeting(x,y+vsp,Collisionparent))
{
	while (!place_meeting(x,y+sign(vsp),Collisionparent))
	{
			y = y+sign(vsp);
	}
	vsp = 0;	
}	