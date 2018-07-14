/// @description Insert description here
// You can write your code in this editor
if waittime <= 0
	{
	x = guix
	y = guiy
	}
else
	{
		waittime --;
		x = - 3000;
	}


draw_sprite_ext(sprite_index, -1, x, y, 1, yscaling, 0, c_white, 1);
//draw_text(x -64,y,string(yscaling))


