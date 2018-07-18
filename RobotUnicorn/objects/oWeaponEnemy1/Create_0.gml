/// @description Insert description here
// You can write your code in this editor

creator =  noone;

maxfiringdelay = 1*room_speed; //seconds between available shots
firingdelay = 0;
maxbullets = 1;
spread = 5;
shotgunspread = 15;
maxrecoil = 20;
recoil = 0;
recoilfiredelay = false; //if this is true weapon can only fire when the recoil is reset (change maxrecoil for variations)
bulletspeed = 5;
allowfire = true;
maxshootingrange = 450; //Pixels from target when this starts shooting, should be higher than attached enemy's "range"-variable.