/// @description Insert description here
// You can write your code in this editor

//draw_sprite_ext(sprite_index, -1, x, y, oAnswerChoice.sprite_width / sprite_width, oAnswerChoice.sprite_height / sprite_height, 0, c_white, 1)
draw_set_color(c_black);
//draw_rectangle(x, y, (x + oAnswerChoice.sprite_width), (y + oAnswerChoice.sprite_height), true);
draw_set_color(c_white);

if global.debug = true
{
	draw_text(nearest_down.x + 32, nearest_down.y, string("nearest down"));
	draw_text(nearest_up.x + 32, nearest_up.y, string("nearest up"));
	draw_self();
}