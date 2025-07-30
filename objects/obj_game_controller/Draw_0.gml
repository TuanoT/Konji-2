/// @description Pause Menu

if global.paused {

	var _x = camera_get_view_x(view_camera[0]);
	var _y = camera_get_view_y(view_camera[0]);

	// Background
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_rectangle(_x+32, _y+32, _x+480, _y+352, false);
	draw_set_alpha(1);
	
	// Draw Text
	//draw_sprite(spr_paused_title, 0, _x+256, _y+64)
}