//Pentagramquest complete
if oQuestTracker.pentapoints = 5
{
	myText[0] = "You have completed our task. Thank you!";
//	myText[1] = noone;
//	myText[2] = noone;
}


if collision_circle(x, y, collisionradius, oPlayer, false, true) {
	WithinReach = true
} else {
	WithinReach = false
}

//Stops functionality if there is a pickupable item in the vicinity or inventory is open to avoid conflict. otherobjectwithinreach is declared in begin_step
if otherobjectwithinreach == false && !instance_exists(oInventoryBase)
{
	
if WithinReach = true {	
	if oPlayer.key_button2 {
		
		//if you fail with the minigame, talking to the cultist resets it.
		if oQuestTracker.pentapoints != 5 && oQuestTracker.pentapoints != 0
		{
			myText[0] = "No no no. That is not the sign of our cult \nThe shape escapes my mind, but the schematic should bring light to this issue"	;
			oQuestTracker.pentapoints = 0;
			oPole.runonce = false;
			oPole.tiedrope = false;
			oPole.pole2 = noone;
			oPole.pole1 = noone;
			instance_destroy(oRopeTied);
		}
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

//End of vicinity & inventorycheck
}