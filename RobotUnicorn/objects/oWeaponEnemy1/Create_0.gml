/// @description Insert description here
// You can write your code in this editor

creator =  noone;

maxfiringdelay = 1*room_speed; //seconds between available shots. inherited from enemy
firingdelay = 0;
stop_trigger = (maxfiringdelay * 0.2); //sets creator.firingstance when firingdelay <= (stop_trigger)
maxbullets = 1; //inherited from enemy
spread = 5; //inherited from enemy
shotgunspread = 15; //inherited from enemy
maxrecoil = 20; //inherited from enemy
recoil = 0; // default is 0, no touchy
recoilfiredelay = false; //if this is true weapon can only fire when the recoil is reset (change maxrecoil for variations)
bulletspeed = 5; //inherited from enemy
allowfire = true; //default is true, no touchy
maxshootingrange = 450; //Pixels from target when this starts shooting, should be higher than attached enemy's "range"-variable.

