/// @description Insert description here
// You can write your code in this editor

//Saving the pauseroom and currently used room into variables
pauseroom = room;
activeroom = noone;
//Used for a clean pause menu not associated with running gameplay aka. first pause menu
runonce = false;
runoncegame = false;

enum pausestate
{
	firstmenu = 0,
	gameplay = 1 ,
	normalpause = 2,
	stopmovement = 3
	
}

pausestate = pausestate.firstmenu;
