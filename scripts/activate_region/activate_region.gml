// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_region() {
	
	if !global.paused {
	
		// Deactivate unimportant world objects
		instance_deactivate_object(obj_world_detail_parent);
	
		var _xcam = camera_get_view_x(view_camera[0]);
		var _ycam = camera_get_view_y(view_camera[0]);
		var _border = 64;
		instance_activate_region(_xcam-_border, _ycam-_border,
								 512+_border, 384+_border, true);
	}
}