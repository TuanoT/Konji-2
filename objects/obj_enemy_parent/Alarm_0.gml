/// @description Regular Update

// Reset Alarm
alarm[0] = global.update_time;

// Check if still in view
var _view_x = camera_get_view_x(view_camera[0]);
var _view_y = camera_get_view_y(view_camera[0]);
var _width = camera_get_view_width(view_camera[0]);
var _height = camera_get_view_height(view_camera[0]);
if (x >= _view_x && x <= _view_x+_width && y >= _view_y && y <= _view_y+_height) {
	in_view = true;	
} else {
	in_view = false;	
}

// Despawn
if (x < _view_x-despawn_range ||
	x > _view_x+_width+despawn_range ||
	y < _view_y-despawn_range ||
	y > _view_y+_height+despawn_range) {
		instance_destroy(self, false);
}