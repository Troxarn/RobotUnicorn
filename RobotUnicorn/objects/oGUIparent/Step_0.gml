/// @description Insert description here
// You can write your code in this editor
if room != room_first && runonce = false
{
	if !instance_exists(oActiveItemGUI)
	{
	instance_create_layer(0, 0, layer, oActiveItemGUI);
	}

	//Create object oGUIparent
	if !instance_exists(oSanityBar)
	{
	instance_create_layer(0, 0, layer, oSanityBar);
	}
	runonce = true;
}

if oPause.pausestate != 1
{
	visible = false;
}
else
{
	visible = true;
}