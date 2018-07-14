//withinreach

if collision_circle(x, y, 75, oPlayer, false, true) {
	WithinReach = true
} else {
	WithinReach = false
}

//Stops functionality if there is a pickupable item in the vicinity or inventory is open to avoid conflict. otherobjectwithinreach is declared in begin_step
if otherobjectwithinreach == false && !instance_exists(oInventoryBase)
{

//Textbox & actions
if WithinReach = true && oQuestTracker.ActiveItem = 2
{	
	if oPlayer.key_button2 {	
		if myTextBox == noone {
			myTextBox = instance_create_layer(x,y,"Text",oTextBox)
				myTextBox.Creator = self;
				myTextBox.Text = myText;
				myTextBox.Name = myName;
				grownplant = true;
			}
		}	
} else {
	if myTextBox != noone {
		instance_destroy(myTextBox)
		myTextBox = noone
	}
}

if grownplant = true
{
	image_index = 1;
}

//Ends check for items in vicinity & inventory
}