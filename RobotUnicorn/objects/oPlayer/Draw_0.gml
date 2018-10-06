/// @description Insert description here
// You can write your code in this editor


draw_self();

if jumpstart == true
{
	image_xscale = image_xscale * 1.5;
	image_yscale = image_yscale * 1.5;
	jumpstart = false
}

if jumpstop == false && jumpduration == 1
{
	jumpstop = true;
}

if jumpstop == true
{
	image_xscale = image_xscale / 1.5;
	image_yscale = image_yscale / 1.5;
	jumpstop = false;
}

draw_text(x,y,hp)
