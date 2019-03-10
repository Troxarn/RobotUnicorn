/// @function ThrowingItems(TargetToTrack, collisiontilemap, collisionobject)
/// @description Line of sight checking against a target object
/// @arg target The target to track against
/// @arg collisiontilelayer The tilelayer with which you want to check collisions
/// @arg collisionobject The object with which you want to check collisions

var trackingtarget, collisiontilemap, collisionobject;
trackingtarget = argument0;
collisiontilemap = argument1;
collisionobject = argument2;

/*
PUT THIS SCRIPT INTO THE DRAW-EVENT OF THE OBJECT
THESE ARE THE VARIABLES NEEDED TO PUT INTO THE OBJECTS CREATE EVENT:
//Tilemap & collisions
tilemap = layer_tilemap_get_id("CollisionTiles");
collisionobject = oCollisionParent;
bbox_side = 0

//Line of sight
loscheck = false; //dont touch
tracktarget = oPlayer; //This is the object name to track (e.g. oPlayer)
maxdelaytime = room_speed*0.7;
delaytime = maxdelaytime;
engage_movement = false;
engage_runonce = false;

lvaluex = 0;
lvaluey = 0;
amt = (100/112)/100;

debug = true;
*/



//LoS delay
delaytime--;
if delaytime <= 0
{
	delaytime = maxdelaytime;
}


var i = 0;

//Use tilemap information to draw a Line of Sight (LoS) line to the player and also check for 
//some collision objects (see collision_rectangle function below)
if delaytime == maxdelaytime
	{
	for (i=0;i<=111;i++) 
	{
		lvaluex = lerp(x, trackingtarget.x, amt*(i+1))
		lvaluey = lerp(y, trackingtarget.y, amt*(i+1))
		if tilemap_get_at_pixel(collisiontilemap, lvaluex, lvaluey) or collision_rectangle(lvaluex, lvaluey, lvaluex+1, lvaluey+1, collisionobject,false, true)
		{
			loscheck = false;
			break;
		}
		else
		{
			loscheck = true;
		}
		if debug == true
		{
			draw_rectangle(lvaluex, lvaluey, lvaluex+1, lvaluey+1, false) //<<<------- this is only for testing, makes the LoS-line visible. Turn off debug to hide
		}
	}
}
