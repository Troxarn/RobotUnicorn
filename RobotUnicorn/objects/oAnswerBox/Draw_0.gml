/// @description Insert description here
// You can write your code in this editor
if global.debug = true
{
draw_self();
}
/*
if instance_exists(oAnswerChoice)
{
	yscaling = (padding * answeramount + ypixels) / sprite_height;
	xscaling = (padding * 2 + oAnswerChoice.sprite_width) / sprite_width;
	draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_white, 1);
}
else
{
	draw_self();
}

//Debug
if instance_exists(oAnswerChoice)
{
draw_text(x,y-12,string(oAnswerChoice.sprite_width))
}