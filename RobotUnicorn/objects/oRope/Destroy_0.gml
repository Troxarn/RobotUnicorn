/// @description Insert description here
// You can write your code in this editor
if pole2 != noone
{
	with instance_create_layer(x,y, oPlayer.playerlayerID, oRopeTied)
	{
		tiedpole1 = other.pole1;
		tiedpole2 = other.pole2;
	}
	with pole2
	{
		tiedrope = true;
	}
	if pole1.polemate1 == pole2.poleid || pole1.polemate2 == pole2.poleid
	{
		oQuestTracker.pentapoints ++;
	}
}