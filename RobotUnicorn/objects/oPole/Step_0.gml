//Textbox adjustments
if oQuestTracker.ActiveItem == 5
{
	if myTextBox = noone
	{
		if runonce = false
		{
			myText[0] = "You tied a rope to the pole.";
		}
		else
		{
			myText[0] = "A rope is already tied to this pole.";
		}
	}
}

if oQuestTracker.ActiveItem != 5
{
	myText[0] = "A sturdy pole.";
}

if instance_exists(oRope) && oRope.pole1 != id
{
	myText[0] = "You tied the other end of the rope to the pole.";
}

if instance_exists(oRopeTied) && tiedrope = true && instance_exists(oRope) && oRope.pole1 != id
{
	myText[0] = "You have already tied a rope to this pole.";
}


//Stops functionality if there is a pickupable item in the vicinity or inventory is open to avoid conflict. otherobjectwithinreach is declared in begin_step
if otherobjectwithinreach == false && !instance_exists(oInventoryBase)
{
	
//if playerobject is within reach
if collision_circle(x, y, 25, oPlayer, false, true) 
{
	WithinReach = true
} 
else 
{
	WithinReach = false
}

//Actions & textbox (Clutterwarning! change to states?)
if WithinReach = true 
{	

	if oPlayer.key_button2
	{
		if oQuestTracker.ActiveItem == 5 && !instance_exists(oRope) && runonce = false && !instance_exists(oTextBox) && enablerope = true
		{
			with instance_create_layer(x, y, oPlayer.playerlayerID, oRope)
			{
				if pole1 == noone
				{
					pole1 = other.id;
					other.runonce = true;
				}				
			}
		}
		if instance_exists(oRope)
		{
			with oRope
			{
				if pole1 != noone
				{
					if instance_exists(oRopeTied)
					{
						if other.tiedrope = false
						{
						pole2 = other.id;
						}
					}
					else
					{
					pole2 = other.id;
					}
				}
			}
		}

			
			
		if myTextBox == noone 
		{
			myTextBox = instance_create_layer(x,y,"Text",oTextBox)
				myTextBox.Creator = self
				myTextBox.Text = myText
				myTextBox.Name = myName
				picked = true;
		}
	}	
} 
else 
{
	if myTextBox != noone {
		instance_destroy(myTextBox)
		myTextBox = noone
	}
}




with oRope
{
	if pole2 != noone && pole2 != pole1
	{	
	instance_destroy()
	}
}

//end of vicinity and inventorycheck
}