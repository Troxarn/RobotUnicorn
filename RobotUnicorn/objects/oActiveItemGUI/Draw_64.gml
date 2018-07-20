/// @description Insert description here
// You can write your code in this editor

//oQuesttracker.Activeitem variable decides which image in the sprite is to be showed and is changed by oInventoryItems use-event

image_index = oQuestTracker.ActiveItem;

x = global.PortWidth / 2 - sprite_width;
y = sprite_height * 3


draw_sprite_stretched(sprite_index, oQuestTracker.ActiveItem, x, y - 64, 64, 64);

if global.debug = true
{
	draw_text((camera_get_view_width(view_camera[0]) / 2), camera_get_view_height(view_camera[0]) + 64, string(oQuestTracker.ActiveItem));
}


