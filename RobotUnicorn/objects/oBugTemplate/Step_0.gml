/// @description Insert description here
// You can write your code in this editor

if runonce = false
{
	//Creations
	with instance_create_depth(x, y, depth +1, hitboxobject)
	{
		creator = other.id;
		anglespeed = other.anglespeed;
		turndir = other.turndir;
		dirrandomizer = other.randomize_direction;
		maxrandomizerdelay = other.secondstorandomize * room_speed;
		forced_dir_change = other.force_direction_change;
		max_forced_delay = other.dir_change_delay * room_speed;
		other.children[0] = id;
		other.childrenamount ++;
	}
	with instance_create_depth(x, y, depth +2, areaobject)
	{
		creator = other.id;
		other.children[1] = id;
		other.childrenamount ++;
	}
	runonce = true;
}


//Movement
NpcMovement();

TilePlayerCollision();