/// @description Insert description here
// You can write your code in this editor


if (flash > 0)
{
	flash--;
	image_alpha = 0.2;
	draw_sprite_ext(sprite_index, -1, oInventoryBase.posx + xoffset, oInventoryBase.posy + yoffset, 1, 1, 0, c_white, 0.2)
}
else
{
	draw_sprite(sprite_index, -1, oInventoryBase.posx + xoffset, oInventoryBase.posy + yoffset);
}
