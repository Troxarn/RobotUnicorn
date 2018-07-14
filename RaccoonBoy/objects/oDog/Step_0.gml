/// @description
if !collision_circle(x, y, collisionradius, oCarpenter, false, true)
{

if collision_circle(x, y, collisionradius, oPlayer, false, true) {
	WithinReach = true
} else {
	WithinReach = false
}

//om svarsbox ska spawna i slutet på första konversationen
if runonce == false && answerbox[1] == true
{
	askforanswer = true;
	runonce = true;
}

//Stops functionality if there is a pickupable item in the vicinity or inventory is open to avoid conflict. otherobjectwithinreach is declared in begin_step
if otherobjectwithinreach == false && !instance_exists(oInventoryBase)
{
	
if WithinReach = true {	
	if oPlayer.key_button2 {	
		if myTextBox == noone {
			myTextBox = instance_create_layer(x,y,"Text",oTextBox)
				myTextBox.Creator = self
				myTextBox.Text = myText
				myTextBox.Name = myName
				oQuestTracker.dogfollow = true;
			}
		}	
} else {
	if myTextBox != noone {
		instance_destroy(myTextBox)
		myTextBox = noone
	}
}

//Secondtext
if textprogress = 2 && textshown = true
{
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(secondtext); i += 1)
	{
		myText[i] = secondtext[i];
	}
	textshown = false;
	textprogress ++;
	//om svarsbox ska spawna i slutet på andra konversationen
	if answerbox[2] == true
	{
		askforanswer = true;
	}
}

//thirdtext
if textprogress = 3 && textshown = true
{
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(thirdtext); i += 1)
	{
		myText[i] = thirdtext[i];
	}
	textshown = false;
	textprogress ++;
	//om svarsbox ska spawna i slutet på tredje konversationen
	if answerbox[3] == true
	{
		askforanswer = true;
	}
}


//Event or questspecific text. Note that this overrides other texts
if textstate = 1
{
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext1); i += 1)
	{
		myText[i] = eventtext1[i];
	}
	textshown = false;
	textstate = 0;
	//om svarsbox ska spawna i slutet på fjärde konversationen
	if answerbox[4] == true
	{
		askforanswer = true;
	}
}

if textstate = 2
{
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext2); i += 1)
	{
		myText[i] = eventtext2[i];
	}
	textshown = false;
	textstate = 0;
	//om svarsbox ska spawna i slutet på femte konversationen
	if answerbox[5] == true
	{
		askforanswer = true;
	}
}

//End of vicinity & inventorycheck
}

if answershown == true && myTextBox = noone
{
	answeramount = secondansweramount;
	answer[0] = secondaryanswer[0];
	answer[1] = secondaryanswer[1];
	answer[2] = secondaryanswer[2];
	answer[3] = secondaryanswer[3];
	answernumber ++;
	answershown = false;
}

if !lastanswer > -1 && answernumber == 0
{
	variable_instance_set(oQuestTracker.questtrackerid,variabletochange[lastanswer], variablevalue[lastanswer]);
	//textnumber
}

if !lastanswer > -1 && answernumber == 1
{
	variable_instance_set(oQuestTracker.questtrackerid,secondvariabletochange[lastanswer], secondvariablevalue[lastanswer]);
	//textnumber
}

if myTextBox = noone && oQuestTracker.dogfollow = true
{
	script_execute(NpcMovement,0);
	xorigin = oPlayer.x;
	yorigin = oPlayer.y;
}

}

//debug funktion
if keyboard_check_pressed(ord("B")) && global.debug = true
{
	if oQuestTracker.dogfollow = true
	{
		oQuestTracker.dogfollow = false;
	}
	else
	{
		oQuestTracker.dogfollow = true;
	}
}

if oQuestTracker.dogfollow = false && collision_circle(x, y, 500, oCarpenter, false, true)
{
	//If dog is too far to the right of carpenter
	if x > (oCarpenter.x - 32)
	{
		x -= npcspeed * 1;
	}
	//If dog is too far to the left of carpenter
	if x < (oCarpenter.x -32)
	{
		x += npcspeed * 1;
	}
	//If dog is below of carpenter
	if y > (oCarpenter.y)
	{
		y -= npcspeed * 1;
	}
	//If dog is above of carpenter
	if y < (oCarpenter.y)
	{
		y += npcspeed * 1;
	}
	
}
if oQuestTracker.dogfollow = true
{
	TilePlayerCollision();
}

//if dog is outside of view
if x > (oPlayer.x + 1000) || x < (oPlayer.x - 1000) || y < (oPlayer.y - 1000) || y > (oPlayer.y + 1000)
{
	if oQuestTracker.dogfollow == true
	{
		x = oPlayer.x + (global.PortWidth / 2);
		y = oPlayer.y + (global.PortHeight / 2);
	}
}
