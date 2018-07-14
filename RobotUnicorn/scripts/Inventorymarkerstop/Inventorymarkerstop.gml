//You are swimming out of picture InventoryMarker //makes sure inventorymarker doesn't move out of the inventory
if (global.posx > oInventorySetup.inventorycolumn - 1)
{
	global.posx = oInventorySetup.inventorycolumn - 1;
}

if (global.posx < 0)
{
	global.posx = 0;
}

if (global.posy > oInventorySetup.inventoryrow - 1)
{
	global.posy = oInventorySetup.inventoryrow - 1;
}

if (global.posy < 0)
{
	global.posy = 0;
}




