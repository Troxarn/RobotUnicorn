/// @description Skapar knappar
// You can write your code in this editor

if oPause.activeroom != noone
{
	instance_create_depth(x, y - sprite_height - 10, depth, oContinue);
}

instance_create_depth(x, y + sprite_height + 10, depth, oOptions);
instance_create_depth(x, y + sprite_height * 2 + 20, depth, oExit);
instance_create_depth(x, y, depth, oMenuselector);