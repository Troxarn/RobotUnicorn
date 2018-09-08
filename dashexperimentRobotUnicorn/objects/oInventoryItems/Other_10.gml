/// @description On use event
// You can write your code in this editor


if oInventorySetup.inventory[inventoryid] = 1 && layer_exists(oPlayer.playerlayerID)
{
	instance_create_layer(oPlayer.x,oPlayer.y, oPlayer.playerlayerID, oApple)
	oInventorySetup.inventory[inventoryid] = 0;
}

if oInventorySetup.inventory[inventoryid] = 2
{
	if itemactivated = false
	{
		with oInventoryItems
		{
			itemactivated = false;
		}
		itemactivated = true;
	}
	else
	{
		itemactivated = false;
	}
}

if oInventorySetup.inventory[inventoryid] = 3
{
	if itemactivated = false
	{
		with oInventoryItems
		{
			itemactivated = false;
		}
		itemactivated = true;
	}
	else
	{
		itemactivated = false;
	}
}

if oInventorySetup.inventory[inventoryid] = 4
{
	if itemactivated = false
	{
		with oInventoryItems
		{
			itemactivated = false;
		}
		itemactivated = true;
	}
	else
	{
		itemactivated = false;
	}
}

if oInventorySetup.inventory[inventoryid] = 5
{
	if itemactivated = false
	{
		with oInventoryItems
		{
			itemactivated = false;
		}
		itemactivated = true;
	}
	else
	{
		itemactivated = false;
	}
}

if oInventorySetup.inventory[inventoryid] = 6
{
	if instance_exists(oPergament)
	{
		with oPergament
		{
			instance_destroy()
		}
	}
	else
	{
	instance_create_layer(1, 1, oPlayer.playerlayerID, oPergament)
	}
}


//If this item is activated, send itemid to oQuestTracker.ActiveItem to show in the GUI
if itemactivated = true
{
	oQuestTracker.ActiveItem = itemid;
}
