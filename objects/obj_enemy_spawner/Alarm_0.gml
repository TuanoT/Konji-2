/// @description Spawn Enemy Attempt

// Reset Alarm
alarm[0] = spawn_time;

if instance_number(obj_enemy_parent) < global.mob_cap {

	// Find position to attempt spawn
	var _view_x = camera_get_view_x(view_camera[0]);
	var _view_y = camera_get_view_y(view_camera[0]);
	var _width = camera_get_view_width(view_camera[0]);
	var _height = camera_get_view_height(view_camera[0]);
	var _x; var _y;
	if choose(true, false) {
		_x = choose(random_range(_view_x - border_size, _view_x), random_range(_view_x + _width, _view_x + _width + border_size));
		_y = random_range(_view_y - border_size, _view_y + _height + border_size);
	} else {
		_x = random_range(_view_x - border_size, _view_x + _width + border_size);
		_y = choose(random_range(_view_y - border_size, _view_y), random_range(_view_y + _height, _view_y + _height + border_size));
	}
	
	// Validate position
	if (_x < 0 || _y < 0) {
		exit;
	}
	if (_x > room_width || _y > room_height) {
		exit;
	}

	// Create Enemy
	attempt_enemy_spawn(_x, _y);
}