/// @description Insert description here
// You can write your code in this editor
/*
startangling = point_direction(x,y,mouse_x,mouse_y) + 30;
angling = point_direction(x,y,mouse_x,mouse_y) + 30;


startangling = point_direction(x,y,x+ (dcos(point_direction(oPlayer.x,oPlayer.y, x+dcos(oWeaponParent.image_angle)*(sprite_width/2), y-dsin(oWeaponParent.image_angle)*(sprite_width/2))) * 10),y- (dsin(point_direction(oPlayer.x,oPlayer.y, x+dcos(oWeaponParent.image_angle)*(sprite_width/2), y-dsin(oWeaponParent.image_angle)*(sprite_width/2))) * 10)) + 30;
angling = point_direction(x,y,x+ (dcos(point_direction(oPlayer.x,oPlayer.y, x+dcos(oWeaponParent.image_angle)*(sprite_width/2), y-dsin(oWeaponParent.image_angle)*(sprite_width/2))) * 10),y- (dsin(point_direction(oPlayer.x,oPlayer.y, x+dcos(oWeaponParent.image_angle)*(sprite_width/2), y-dsin(oWeaponParent.image_angle)*(sprite_width/2))) * 10)) + 30;
*/

startangling = oWeaponParent.image_angle;
angling = oWeaponParent.image_angle;

image_angle = angling;

damage = 1;

xrelation = x - oPlayer.x;
yrelation = y - oPlayer.y;

//input