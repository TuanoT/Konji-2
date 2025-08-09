/// @description 

// Draw info card above door
var _x = x - camera_get_view_x(view_camera[0]);
var _y = y - camera_get_view_y(view_camera[0]) + 16;
show_info_card(name, _x, _y);

if (keyboard_check_pressed(vk_space) && !locked) {
	room = level;
}