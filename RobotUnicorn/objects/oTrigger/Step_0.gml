/*if place_meeting(x,y,oPlayer)
{
	Colliding = true
} else {Colliding = false}

if !(place_meeting(x,y,oPlant))
{
	OpenDoor1 = true
}
*/

if collision_rectangle(x,y,(x+sprite_width),(y+sprite_height),TriggeredBy,false,true)
{
	OpenDoor1 = false
} else {OpenDoor1 = true}

if OpenDoor1 = true 
{
	with Door1
	{
		if DoorID = other.DoorNumber
		{
			plzopen = true
		}
	}
}



