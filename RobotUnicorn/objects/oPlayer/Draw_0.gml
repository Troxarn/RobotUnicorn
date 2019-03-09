/// @description Insert description here
// You can write your code in this editor


draw_self();


//Upscaling the sprite image during jump
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


//SPRITECHANGE DURING DASHES
if dashing == true
{
	sprite_index = sPlayerDash;
}
else
{
	sprite_index = sPlayer;
}


//Spritecolor during charged stomp
if supermeleecountdown < supermeleecountdownmax && supermeleecountdown > 0
{
	if hp > 0
	{
		shader_set(shRed);
		draw_self();
		shader_reset();
	}
}

draw_text(x,y,hp)

//draw_text(x-200,y,"dashcounter:" + string(dashcounter) + "       dashcd:" + string(dashcd));
/*
draw_text(x+20, y, "supermeleecountdown:" + string(supermeleecountdown));
draw_text(x+20, y+12, "supermeleecocooldown:" + string(supermeleecooldown));
draw_text(x+20, y+24, "meleecooldown:" + string(meleecooldown));
*/