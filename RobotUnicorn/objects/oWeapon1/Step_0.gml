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


//Firing gun
firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1)

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = maxfiringdelay;
	with (instance_create_layer(x+dcos(image_angle)*(sprite_width/2),y-dsin(image_angle)*(sprite_width/2),"Bullets",oBullet))
	{
		speed = other.bulletspeed;
		direction = other.image_angle + random_range (-3,3); //Random spread
		image_angle = direction;
	}
	/*with (oPlayer)
	{
		hsp = hsp + (sign(image_xscale) * 4)
	}*/
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}

} // end of playercheck