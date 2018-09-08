/* OLD COLLISION

var bbox_side;


if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top) != 0 || tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom) != 0 )
{
	if (hsp > 0) x = x - (x mod 32) + 31 - (bbox_right -x);
	else x = x - (x mod 32) - (bbox_left -x);
	hsp = 0;
}

if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side + vsp) != 0 || tilemap_get_at_pixel(tilemap,bbox_right,bbox_side + vsp) != 0 )
{
	if (vsp > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) - (bbox_top - y);
	vsp = 0;
}
*/

var bbox_side;


if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top+5) != 0 || tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom-5) != 0 )
{
	if (hsp > 0) x = x - (x mod 32) + 31 - (bbox_right -x);
	else x = x - (x mod 32) - (bbox_left -x);
	//hsp = 0;
}

if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side + vsp) != 0 || tilemap_get_at_pixel(tilemap,bbox_right,bbox_side + vsp) != 0 )
{
	if (vsp > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) - (bbox_top - y);
	//vsp = 0;
}