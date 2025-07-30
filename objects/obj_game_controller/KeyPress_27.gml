/// @description Toggle Pause

// Pause Game
if (!global.paused && instance_exists(obj_player)) {
	
	// Drop held item
	if global.held_item != -1 {
		// Move item that was in the way to a new crate
		create_crate(obj_player.x, obj_player.y, [global.held_item, -1, -1, -1]);
		global.held_item = -1;
	}
	
	// Deactivate all
	instance_deactivate_all(true);
	
	// Create Pause Menu
	var _x = camera_get_view_x(view_camera[0]);
	var _y = camera_get_view_y(view_camera[0]);
	var _resume_button = instance_create_depth(_x+256, _y+160, depth-1, obj_menu_button);
	_resume_button.text = "Resume";
	_resume_button.func = unpause;
	var _menu_button = instance_create_depth(_x+256, _y+224, depth-1, obj_menu_button);
	_menu_button.text = "Main Menu";
	_menu_button.func = main_menu;
	
	global.paused = true;
	exit;
}

// Resume Game
if (global.paused) {
	unpause();
}