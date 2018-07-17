if oPlayer.pausebutton
{
	if runoncegame == false
	{
		activeroom = room;
		runoncegame = true;
	}
	room_goto(pauseroom);
	pausestate = pausestate.normalpause;
}