/// @description Insert description here
// You can write your code in this editor
if global.debug = true
{
draw_set_font(fText)

draw_text(32, 8, string(fps) + "\n" + string(fps_real));

draw_text(32, 100,"Portsize: " + string(view_wport[0]) + "x" + string(view_hport[0]));

//draw_text(32, 150,"Camsize: " + string(oMainMenu.CamWidth) + "x" + string(oMainMenu.CamHeight));

//draw_text(32, 200, "Val: " + string(oInventorySetup.val) + "\ninstanceid: " + string(oInventorySetup.instanceid));

//draw_text(32,296, instance_number(oInventoryItems));
//draw_text(32,328, string(camera_get_active()));
//draw_text(32,360, string(instance_id_get(oInventoryMarker)));
draw_set_font(-1)
}


