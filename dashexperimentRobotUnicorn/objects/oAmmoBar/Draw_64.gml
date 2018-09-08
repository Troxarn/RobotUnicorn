/// @description Insert description here
// You can write your code in this editor

x = 16;
y = 16;
draw_self();

var i
i = 0
for (i = 0; i < (round((sprite_width - 4)/fillerwidth)) * (oVariableChecker.active_weapon.ammo / oVariableChecker.active_weapon.maxammo); i++) 
{
	draw_sprite(fillersprite,-1, x+2+(fillerwidth*i), y+(2));
}

