/// @description OriginalNPC dont touch

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