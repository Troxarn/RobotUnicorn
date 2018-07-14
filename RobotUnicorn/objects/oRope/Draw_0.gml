/// @description Insert description here
// You can write your code in this editor

if global.debug = true
{
	draw_text(x+50, y+50, string(distans/sprite_width));
	draw_text(x+60, y+60, string((point_direction(x, y, pole1.x, pole1.y))));
}

//draw_self()


draw_sprite_ext(sprite_index, 0, x, y, distans/sprite_width, 1, (point_direction(x, y, pole1.x, pole1.y)), -1, 1);

