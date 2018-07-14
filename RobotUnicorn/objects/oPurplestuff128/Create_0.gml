/// @description Insert description here
// You can write your code in this editor

//N.B. these options are set in the object which spawns this (aka creator)
//ID storage room
creator = noone; //instance which created this instance
areaid = noone; //instance which shows area of purpldrank function.

//Things regarding rotationspeed
angling = 0;
anglespeed = 0; //Set in creator.
turndir = 0; //Set in creator.
runonce = false;

//Holding options
holdbutton = false; //hold use button to destroy. Not yet implemented.
maxholdtimer = 1 * room_speed; //How long button has to be held.
holdtimer = maxholdtimer;

//Rotation options
dirrandomizer = false; //randomizes direction after "randomizerdelay" seconds Set in creator.
setrandomizerdelay = 0; //seconds to randomizing direction. 
maxrandomizerdelay = setrandomizerdelay * room_speed; //Converts setrandomizerdelay to seconds. Set in creator.
randomizerdelay = maxrandomizerdelay; //dont touch

forced_dir_change = false; ////Forces a rotation-direction change after "forced_delay" seconds. Note that this overrides randomizing the direction.
max_forced_delay = 0; //Seconds until forced rotation-direction change.
forced_delay = max_forced_delay; //dont touch