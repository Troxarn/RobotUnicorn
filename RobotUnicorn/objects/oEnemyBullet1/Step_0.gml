/// @description Insert description here
// You can write your code in this editor
var bbox_side;

if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top+5) != 0 || tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom-5) != 0 )
{
	instance_destroy();
}

if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side + vsp) != 0 || tilemap_get_at_pixel(tilemap,bbox_right,bbox_side + vsp) != 0 )
{
	instance_destroy();
}