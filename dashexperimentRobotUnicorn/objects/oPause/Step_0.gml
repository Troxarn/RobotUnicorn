/// @description Insert description here
// You can write your code in this editor

switch (pausestate)
{
	case pausestate.firstmenu:	scr_firstpausemenu(); break;
	case pausestate.gameplay:	scr_gameplay(); break;
	case pausestate.normalpause:	scr_normalpause(); break;
}

