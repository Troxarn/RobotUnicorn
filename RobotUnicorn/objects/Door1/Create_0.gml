/// @description Insert description here
// You can write your code in this editor

//Controls door status
plzopen = false;

//destroy door upon opening?
doordestroy = false;
animationdestroy = true; //Run animation first?
animationspeed = 1; //animationframes per step (if unsure, leave 1)

//Opening direction, keep only one true.
openleft = false;
openright = false;
openup = false;
opendown = true;

//Opening speed of the door. Pixel per step.
openspeed = 1;

//How far the door moves when opening. Measured in pixels.
//Horizontally
xopen = sprite_width;
//Vertically
yopen = sprite_height;


image_speed = 0;
