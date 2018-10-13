/// @description Insert description here
// You can write your code in this editor

var i = 0;

if delaytime == maxdelaytime
	{
	for (i=0;i<=111;i++) 
	{
		lvaluex = lerp(x, oPlayer.x, amt*(i+1))
		lvaluey = lerp(y, oPlayer.y, amt*(i+1))
		draw_rectangle(lvaluex, lvaluey, lvaluex+1, lvaluey+1, false)
		if tilemap_get_at_pixel("CollisionTiles", lvaluex, lvaluey)
		{
			loscheck = true;
			break;
		}
		else
		{
			loscheck = false;
		}
	}
}

draw_text(x,y +20, "loscheck=" + string(loscheck))

image_blend = c_blue;
draw_self();

