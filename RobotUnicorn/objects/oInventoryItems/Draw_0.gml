/// @description Insert description here
// You can write your code in this editor

if instance_exists(oDebug) && global.debug = true
{
	draw_self()
}
else
{
}


/*var runonce = false
{
	adaptivex = oInventorySetup.inventoryxpadding + oInventoryParent.inventorycolumn * (oInventorySetup.inventoryypadding + oInventoryItems.sprite_width);
	adaptivey = oInventorySetup.inventoryypadding + oInventoryParent.inventoryrow * (oInventorySetup.inventoryypadding + oInventoryItems.sprite_height);
	posx = (camera_get_view_width(view_camera[0]) / 2) - (sprite_width / 2);
	posy = camera_get_view_height(view_camera[0]) - adaptivey - middleoffset;
	runonce = true;
}



draw_sprite_stretched(sprite_index, -1, posx , posy, adaptivex, adaptivey);


