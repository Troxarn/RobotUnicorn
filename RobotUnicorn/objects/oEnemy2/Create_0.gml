/// @description Insert description here
// You can write your code in this editor
hp = 2;
damage = 1

debris_time_to_live = 10;
debris_speed = 7;
debris_amount = 6;

//Movement variables
npcdir = 0;
dircooldown = noone;
maxdircooldown = noone;
npcspeed = 2;
hsp = 0;
vsp = 0;
range = 250;
horizontalmovement = true;
verticalmovement = true;
stoprandom = true;
xorigin = oPlayer.x;
yorigin = oPlayer.y;

//Shooting
shooting = true;
bullet = "oEnemyBullet1"
bulletspeed = 3;
maxshotdelay = 2 * room_speed;
shotdelay = maxshotdelay;
spread = 5;


diagonalposition[0] = false;
diagonalposition[1] = false;
diagonalposition[2] = false;
diagonalposition[3] = false;