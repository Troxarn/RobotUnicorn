/// @description Insert description here
// You can write your code in this editor


if hsp > 0
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}

draw_self();

if global.debug = true
{
	draw_rectangle(xorigin - 300, yorigin - 150, xorigin + 300, yorigin + 150, true);
}


