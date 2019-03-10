/// @description Insert description here
// You can write your code in this editor
hp = 2;
damage = 1

debris_time_to_live = 10;
debris_speed = 7;
debris_amount = 6;

//Targeting variables
target_seen = false;
line_of_sight = false;


//Movement variables
npcdir = 0;
dircooldown = noone;
maxdircooldown = noone;
npcspeed = 1.5;
hsp = 0;
vsp = 0;
range = 0;
horizontalmovement = true;
verticalmovement = true;
stoprandom = true;
xorigin = oPlayer.x;
yorigin = oPlayer.y;
firingstance = false;

choice1 = choose(-400,400);
choice2 = choose(-400,400);

diagonalposition[0] = false;
diagonalposition[1] = false;
diagonalposition[2] = false;
diagonalposition[3] = false;


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