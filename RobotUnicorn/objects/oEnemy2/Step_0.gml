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

//shooting
if shooting = true
{
	if shotdelay = 0
	{
		with (instance_create_layer(x,y,"Bullets",oEnemyBullet1))
		{
			speed = other.bulletspeed;
			direction = point_direction(x,y, oPlayer.x, oPlayer.y) + random_range (-other.spread,other.spread); //Random spread
			image_angle = direction;
		}
		shotdelay = maxshotdelay;
	}
	else
	{
		shotdelay --;
	}
}