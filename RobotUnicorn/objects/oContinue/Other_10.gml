/// @description Insert description here
// You can write your code in this editor

if instance_exists(oPause)
{
	oPause.pausestate = 1;
	room_goto(oPause.activeroom);
}
