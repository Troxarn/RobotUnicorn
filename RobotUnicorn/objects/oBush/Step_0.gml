
//if already used
if picked = true
{
	image_index = 1;
	if myTextBox = noone
	{
		myText[0] = "This bush's jimmies is already rustled"
	}
}

//Stops functionality if there is a pickupable item in the vicinity or inventory is open to avoid conflict. otherobjectwithinreach is declared in begin_step
if otherobjectwithinreach == false && !instance_exists(oInventoryBase)
{

//Withinreach
if collision_circle(x, y, 25, oPlayer, false, true)
{
	WithinReach = true
} 
else 
{
	WithinReach = false
}

//Textbox & actions
if WithinReach = true 
{	

	if oPlayer.key_button2 
	{

		if myTextBox == noone 
		{
			myTextBox = instance_create_layer(x,y,"Text",oTextBox)
				myTextBox.Creator = self
				myTextBox.Text = myText
				myTextBox.Name = myName
				picked = true;
		}
		if  runonce = false 

		{
			script_execute(ThrowingItems, oBerry, 35, 0.8);
			runonce = true;
		}
	}	
} 
else 
{
	if myTextBox != noone 
	{
		instance_destroy(myTextBox)
		myTextBox = noone
	}
}

}