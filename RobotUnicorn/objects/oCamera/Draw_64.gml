

//Draw the surface stretched to the window size
draw_surface_stretched(surf, 0, 0, global.window_width, global.window_height);

//Debug: Draw FPS in top left corner
draw_text(10, 10, fps);

draw_text(30,30, instance_number(oInventoryItems));
draw_text(30,60, string(camera_get_active()));

/*
//////DEBUG///////////
if oMainMenu.State = 3 || oMainMenu.State = 3 {

draw_text(oMainMenu.PortWidth/14 ,(oMainMenu.PortHeight / 14) - 40, 

	string(fps) + "\n" + string(fps_real) + "\n" + 

	string("CamRez: ") + string(CamWidthScale) + "x" + string(CamHeightScale) + "\n" +

	string("PortRez: ") + string(PortWidth) + "x" + string(PortHeight)
	
	
	)
}



