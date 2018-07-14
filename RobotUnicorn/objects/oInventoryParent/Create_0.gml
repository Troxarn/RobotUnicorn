/// @description Insert description here
// You can write your code in this editor

//Inventoryvariables
inventoryrow = oInventorySetup.inventoryrow;
inventorycolumn = oInventorySetup.inventorycolumn; 

//Creating new layers for inventory to make sure it overlaps all other layers.
//Inventorylayer
if !layer_exists("inventorylayer")
{
	//Creating global layerids, consider using another method to avoid creating new layers everytime inventory opens.
	oInventorySetup.inventorylayerID = 0; 
	oInventorySetup.inventorylayerID1 = 0;
	//
    layer_create(-1000,"inventorylayer");
	oInventorySetup.inventorylayerID = layer_get_id("inventorylayer");
}
//Inventorylayer1
if !layer_exists("inventorylayer1")
{
	layer_create(-1100,"inventorylayer1");
	oInventorySetup.inventorylayerID1 = layer_get_id("inventorylayer1");
}
//inventorylayer2
if !layer_exists("inventorylayer2")
{
	layer_create(-1200,"inventorylayer2");
	oInventorySetup.inventorylayerID2 = layer_get_id("inventorylayer2");
}

//Creating inventoryinstances
if layer_exists(oInventorySetup.inventorylayerID) && layer_exists(oInventorySetup.inventorylayerID2)
{
	instance_create_layer(0, 0, oInventorySetup.inventorylayerID, oInventoryBase);
	instance_create_layer(0, 0, oInventorySetup.inventorylayerID2, oInventoryMarker);
}




//Creating inventoryitems
createrow = 0;
createcolumn = 0;
inventoryidcreate = 0;

for (createrow = 0; createrow < inventoryrow; createrow ++)
{
	for (createcolumn = 0; createcolumn < inventorycolumn; createcolumn ++;)
	{
	     with(instance_create_layer(oInventoryBase.x, oInventoryBase.y + 1, oInventorySetup.inventorylayerID1, oInventoryItems))
			{
				inventoryid = oInventoryParent.inventoryidcreate;
				rowid = oInventoryParent.createrow;
				columnid = oInventoryParent.createcolumn;
			}
		inventoryidcreate ++;
	}
}

