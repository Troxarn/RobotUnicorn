/// @description Insert description here
// You can write your code in this editor

//Setting positionvalues
if runonceflag = false
{
	xoffset = oInventorySetup.inventoryxpadding + (oInventorySetup.inventoryxpadding + sprite_width) * columnid;
	yoffset = oInventorySetup.inventoryypadding + (oInventorySetup.inventoryypadding + sprite_height) * rowid;
	runonceflag = true;
}


//Refers to the item stored in the oinventorySetup array oInventorySetup.inventory

itemid = oInventorySetup.inventory[inventoryid];

image_index = itemid;

