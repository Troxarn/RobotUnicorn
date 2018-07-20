/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

//If Player ded
if !instance_exists(oPlayer)
{
	instance_destroy();
}

//start check if player exists
if instance_exists(oPlayer) 
{

//Gun position
x = oPlayer.x;
y = oPlayer.y;

//Gun angle
image_angle = point_direction(x,y,mouse_x,mouse_y);


//decreasing firingdelay and recoil...?
firingdelay = firingdelay - 1;
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

//checking ammo
if ammo <= 0
{
	allowfire = false;
}
else
{
	allowfire = true;
}

//Firing gun
if (mouse_check_button(mb_left)) && (firingdelay < 0) && allowfire = true
{
	recoil = maxrecoil;
	firingdelay = maxfiringdelay;
	ammo --;

	var leftspreadmultiplier = 1;
	var i;
	for (i = 0; i < other.maxbullets; i ++)
	{
		if i <= (maxbullets/2)
		{
			with (instance_create_layer(x+dcos(image_angle)*(sprite_width/2),y-dsin(image_angle)*(sprite_width/2),"Bullets",bulletobject))
			{
				speed = other.bulletspeed;
				direction = other.image_angle + (-other.shotgunspread * i) + random_range (-other.spread,other.spread); //Random spread
				image_angle = direction;
			}
		}
		else
		{
			with (instance_create_layer(x+dcos(image_angle)*(sprite_width/2),y-dsin(image_angle)*(sprite_width/2),"Bullets",bulletobject))
			{
				speed = other.bulletspeed;
				direction = other.image_angle + (other.shotgunspread * leftspreadmultiplier) + random_range (-other.spread,other.spread); //Random spread
				image_angle = direction;
				leftspreadmultiplier ++;
			}
		}
	}
}


//reload
if oPlayer.key_button3 && firingdelay < 0
{
	ammo = maxammo;
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





} // end of playercheck