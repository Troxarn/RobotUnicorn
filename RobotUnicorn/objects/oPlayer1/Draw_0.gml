/// @description Modellfunktioner
// You can write your code in this editor

//Utan denna linen ritas ej spriten! rör endast i nödfall
draw_self()

if oPause.pausestate != 1
{
	image_speed = 0;
}

//om pausestate.gameplay i oPause är true kör detta
if oPause.pausestate = 1
{

if hsp == 0 && vsp == 0 {
	image_speed = 0
	image_index = 0
}

if key_down = true
{
	image_speed = 1
	sprite_index = sPlayerFront;
}

if key_up = true
{
	image_speed = 1
	sprite_index = sPlayerBack;
}

if key_left = true
{	
	image_xscale = 1
	image_speed = 1
	sprite_index = sPlayerSide;
}

if key_right = true {
	image_speed = 1
	image_xscale = -1	
	sprite_index = sPlayerSide
}

//Debug
//draw_text(x+20,y+20, string(oPurplestuff128.holdtimer))
if global.debug = true
{
draw_text(x+20,y+20, string(key_button2))
}
}