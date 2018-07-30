/// @description Insert description here
// You can write your code in this editor

/*
x = oPlayer.x+ (dcos(point_direction(oPlayer.x,oPlayer.y, x+dcos(oWeaponParent.image_angle)*(sprite_width/2), y-dsin(oWeaponParent.image_angle)*(sprite_width/2))) * 10);
y = oPlayer.y- (dsin(point_direction(oPlayer.x,oPlayer.y, x+dcos(oWeaponParent.image_angle)*(sprite_width/2), y-dsin(oWeaponParent.image_angle)*(sprite_width/2))) * 10);
*/

image_angle = angling;
angling -= 7;

if angling > (startangling -125) && angling < (startangling-115)
{
	instance_destroy();
}
