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

//movement
NpcMovement();

//Angle toward player
image_angle = point_direction(x,y,oPlayer.x,oPlayer.y) - 90;


//shooting
if shooting = true && runonce = false
{
	with (instance_create_layer(x,y,"Instances",oWeaponEnemy1))
	{
		creator = other.id;
		other.children = id;
	}
	runonce = true;
}