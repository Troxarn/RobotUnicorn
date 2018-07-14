/// @description 

// NPC-specific code
if oQuestTracker.dogfollow == 1 && runonce[1] == false 
{
	textstate = 2;
	textshown = true;
	runonce[1] = true;
}
if oQuestTracker.dogfollow == 1 && collision_circle(x, y, collisionradius, oPlayer, false, true)
{
	oQuestTracker.dogfollow = 0
}

if collision_circle(x, y, collisionradius, oPlayer, false, true) {
	WithinReach = true
} else {
	WithinReach = false
}


//textstate change
if answershown == true && !(textnumber[lastanswer] < 0)
{
	textstate = textnumber[lastanswer];
}

//om svarsbox ska spawna i slutet på första konversationen
if runonce[0] == false && answerbox[1] == true
{
	askforanswer = true;
	runonce[0] = true;
}

//Stops functionality if there is a pickupable item in the vicinity or inventory is open to avoid conflict. otherobjectwithinreach is declared in begin_step
if otherobjectwithinreach == false && !instance_exists(oInventoryBase)
{

//First text
if WithinReach = true {	
	if oPlayer.key_button2 {	
		if myTextBox == noone {
			myTextBox = instance_create_layer(x,y,"Text",oTextBox)
				myTextBox.Creator = self
				myTextBox.Text = myText
				myTextBox.Name = myName
			}
		}	
} else {
	if myTextBox != noone {
		instance_destroy(myTextBox)
		myTextBox = noone
	}
}

//Secondtext
if textprogress = 2 && textshown = true && textstate <= 0 && !(string_length(secondtext[0]) < 1)
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(secondtext); i += 1)
	{
		myText[i] = secondtext[i];
	}
	textshown = false;
	textprogress ++;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[2] == true
	{
		askforanswer = true;
	}
}

//thirdtext
if textprogress = 3 && textshown = true && textstate <= 0 && !(string_length(thirdtext[0]) < 1)
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(thirdtext); i += 1)
	{
		myText[i] = thirdtext[i];
	}
	textshown = false;
	textprogress ++;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[3] == true
	{
		askforanswer = true;
	}
}

//fourthtext
if textprogress = 4 && textshown = true && textstate <= 0 && !(string_length(fourthtext[0]) < 1)
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(thirdtext); i += 1)
	{
		myText[i] = fourthtext[i];
	}
	textshown = false;
	textprogress ++;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[4] == true
	{
		askforanswer = true;
	}
}

//fifthtext
if textprogress = 5 && textshown = true && textstate <= 0 && !(string_length(fifthtext[0]) < 1)
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(thirdtext); i += 1)
	{
		myText[i] = fifthtext[i];
	}
	textshown = false;
	textprogress ++;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[5] == true
	{
		askforanswer = true;
	}
}

//Event or questspecific text. Note that this overrides other texts
//Textstate 1, part 1
if textstate = 1 && textshown = true && textprogress10 == 0
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	textprogress10 ++;
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext10); i += 1)
	{
		myText[i] = eventtext10[i];
	}
	textshown = false;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[10] == true
	{
		askforanswer = true;
	}
}

//Textstate 1, part 2
if textstate = 1 && textshown = true && textprogress10 = 1
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	textprogress10 ++;
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext11); i += 1)
	{
		myText[i] = eventtext11[i];
	}
	textshown = false;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[11] == true
	{
		askforanswer = true;
	}
}

//Textstate 1, part 3
if textstate = 1 && textshown = true && textprogress10 = 2
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext12); i += 1)
	{
		myText[i] = eventtext12[i];
	}
	textshown = false;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[12] == true
	{
		askforanswer = true;
	}
}

//Textstate 2, part 1
if textstate = 2 && textshown = true && textprogress20 = 0
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	textprogress20 ++;
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext20); i += 1)
	{
		myText[i] = eventtext20[i];
	}
	textshown = false;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[20] == true
	{
		askforanswer = true;
	}
}

//Textstate 2, part 2
if textstate = 2 && textshown = true && textprogress20 = 1
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	textprogress20 ++;
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext21); i += 1)
	{
		myText[i] = eventtext21[i];
	}
	textshown = false;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[21] == true
	{
		askforanswer = true;
	}
}

//Textstate 2, part 3
if textstate = 2 && textshown = true && textprogress20 = 2
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	textprogress20 ++;
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext22); i += 1)
	{
		myText[i] = eventtext22[i];
	}
	textshown = false;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[22] == true
	{
		askforanswer = true;
	}
}

//Textstate 3, part 1
if textstate = 3 && textshown = true && textprogress30 = 0
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	textprogress30 ++;
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext30); i += 1)
	{
		myText[i] = eventtext30[i];
	}
	textshown = false;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[30] == true
	{
		askforanswer = true;
	}
}

//Textstate 3, part 2
if textstate = 3 && textshown = true && textprogress30 = 1
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	textprogress30 ++;
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext30); i += 1)
	{
		myText[i] = eventtext31[i];
	}
	textshown = false;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[31] == true
	{
		askforanswer = true;
	}
}

//Textstate 3, part 3
if textstate = 3 && textshown = true && textprogress30 = 2
{
	for (i = 0; i < 10; i++) //Resetting mytext before setting a new one. Statement within oAnswerbox decides that no string smaller than 1 shall be shown.
	{
		myText[i] = "";
	}
	textprogress30 ++;
	var i;
	i = 0;
	for (i = 0; i < array_length_1d(eventtext32); i += 1)
	{
		myText[i] = eventtext32[i];
	}
	textshown = false;
	//om svarsbox ska spawna i slutet på konversationen
	if answerbox[32] == true
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
}

if !lastanswer > -1 && answernumber == 1
{
	variable_instance_set(oQuestTracker.questtrackerid,secondvariabletochange[lastanswer], secondvariablevalue[lastanswer]);
}

