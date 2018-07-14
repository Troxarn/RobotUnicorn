/// @description Insert description here
// You can write your code in this editor


xoffset = oInventorySetup.inventoryxpadding + (oInventorySetup.inventoryxpadding + sprite_width) * global.posx;
yoffset = oInventorySetup.inventoryypadding + (oInventorySetup.inventoryypadding + sprite_height) * global.posy;


x = oInventoryBase.x + oInventorySetup.inventoryxpadding + global.posx * (oInventorySetup.inventoryxpadding + sprite_width);
y = oInventoryBase.y + oInventorySetup.inventoryypadding + global.posy * (oInventorySetup.inventoryypadding + sprite_width);

if oPlayer.key_select_right
{
	global.posx ++;
		
}

if oPlayer.key_select_left 
{
	global.posx --;
	
	
}


if oPlayer.key_select_down 
{
	global.posy ++;
	
	
}

if oPlayer.key_select_up 
{
	global.posy --;
	
	
}

script_execute(Inventorymarkerstop)

//flash
if (flash > 0)
{
	flash--;
	image_alpha = 0.2;
	draw_self();
}
else
{
	image_alpha = 1;	
}


