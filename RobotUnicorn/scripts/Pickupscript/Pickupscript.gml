var i = 0;
var minvalue = -1;
var inventorylength = array_length_1d(oInventorySetup.inventory);

// Loop through each array element
for (i = 0; i < inventorylength; i++)
{
    // Check if this is smaller than our stored one
    if (oInventorySetup.inventory[i] = 0)
    {
        // Save this as the largest
        //minvalue = i;
		oInventorySetup.inventory[i] = itemid;
		break;
    }
}
