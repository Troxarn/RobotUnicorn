/// @description Insert description here
// You can write your code in this editor


if !colliding_choice == 0
{
	//draw_text(16,16, string(colliding_choice.choiceguix))
	selectguix = colliding_choice.choiceguix;
	selectguiy = colliding_choice.choiceguiy;
}

if waittime <= 0
{
	draw_sprite(sprite_index, -1, selectguix, selectguiy);
}
else
{
	waittime --
}