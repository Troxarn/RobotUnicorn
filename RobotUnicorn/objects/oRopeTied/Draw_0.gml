/// @description Insert description here
// You can write your code in this editor


distans = distance_to_object(tiedpole2)

if global.debug = true
{
	draw_text(x+50, y+50, string(distans/256));
	draw_text(x+60, y+60, string((point_direction(x, y, tiedpole2.x, tiedpole2.y))));
	draw_text(x+10, y+10, string(tiedpole2));
}

//draw_self()


draw_sprite_ext(sprite_index, 0, x, y, distans/32, 1, (point_direction(x, y, tiedpole2.x, tiedpole2.y)), -1, 1);

