/// @description Insert description here
// You can write your code in this editor

var i = 0;

//Use tilemap information to draw a Line of Sight (LoS) line to the player
if delaytime == maxdelaytime
	{
	for (i=0;i<=111;i++) 
	{
		lvaluex = lerp(x, oPlayer.x, amt*(i+1))
		lvaluey = lerp(y, oPlayer.y, amt*(i+1))
		draw_rectangle(lvaluex, lvaluey, lvaluex+1, lvaluey+1, false)
		if tilemap_get_at_pixel(tilemap, lvaluex, lvaluey)
		{
			loscheck = false;
			break;
		}
		else
		{
			loscheck = true;
		}
	}
}

draw_text(x,y +20, "loscheck = " + string(loscheck))

draw_self();