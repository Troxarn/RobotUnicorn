/// @description Insert description here
// You can write your code in this editor

//Updates targetcoordinates (to playerposition)
xorigin = oPlayer.x;
yorigin = oPlayer.y;

//He ded
if hp <= 0
{
	instance_destroy();
}


NpcMovement();
TileEnemyCollision();

//Angle toward player
image_angle = point_direction(x,y,oPlayer.x,oPlayer.y) - 90;

