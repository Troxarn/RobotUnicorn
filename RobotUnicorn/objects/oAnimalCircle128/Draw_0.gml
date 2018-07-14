/// @description Insert description here
// You can write your code in this editor
draw_self();

if showdelaytimer = true
{
	draw_set_color(c_yellow);
	draw_rectangle(oPlayer.x + 10, oPlayer.y + 5, oPlayer.x +10 + (delay), oPlayer.y + 10, false);
	draw_set_color(c_white);
}
