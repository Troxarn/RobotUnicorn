/// @description Insert description here
// You can write your code in this editor

x = 16;
y = 16;
draw_self();

var i
i = 0
for (i = 0; i < (round((sprite_width - 4)/fillerwidth)) * (oWeaponTemplate.ammo / oWeaponTemplate.maxammo); i++) //oPlayer.sanity * 100-parter
{
	draw_sprite(fillersprite,-1, x+2+(fillerwidth*i), y+(2));
}

