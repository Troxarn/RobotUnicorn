/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor


//Gun position
x = creator.x;
y = creator.y;

//Gun angle
image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);

//Check if Line of sight


//decreasing firingdelay and recoil...?
firingdelay --;
recoil = max(0,recoil - 1)

//Checking recoilfiredelay and making shooting possible after recoil is completed.
if recoilfiredelay == true
{
	if recoil == 0
	{
		allowfire = true;
	}
	else
	{
		allowfire = false;
	}
}
else
{
	allowfire = true;
}

//checking line of sight
if creator.loscheck = false
{
	allowfire = false;
}

if firingdelay <= (stop_trigger) &&  allowfire == true && (point_distance(x,y,oPlayer.x,oPlayer.y) < maxshootingrange)
{
	creator.firingstance = true;
}

//Firing gun
if (firingdelay < 0) && allowfire == true && (point_distance(x,y,oPlayer.x,oPlayer.y) < maxshootingrange)
{
	recoil = maxrecoil;
	firingdelay = maxfiringdelay;
	

	var leftspreadmultiplier = 1;
	var i;
	for (i = 0; i < other.maxbullets; i ++)
	{
		if i <= (maxbullets/2)
		{
			with (instance_create_layer(x+dcos(image_angle)*(sprite_width/2),y-dsin(image_angle)*(sprite_width/2),"Bullets",oEnemyBullet1))
			{
				speed = other.bulletspeed;
				direction = other.image_angle + (-other.shotgunspread * i) + random_range (-other.spread,other.spread); //Random spread
				image_angle = direction;
			}
		}
		else
		{
			with (instance_create_layer(x+dcos(image_angle)*(sprite_width/2),y-dsin(image_angle)*(sprite_width/2),"Bullets",oEnemyBullet1))
			{
				speed = other.bulletspeed;
				direction = other.image_angle + (other.shotgunspread * leftspreadmultiplier) + random_range (-other.spread,other.spread); //Random spread
				image_angle = direction;
				leftspreadmultiplier ++;
			}
		}
	}
}
	

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);


//Makes sure the sprite can be seen from all angles.
if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}