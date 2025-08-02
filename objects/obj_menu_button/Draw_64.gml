/// @description Draw text

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_title_high_res);
draw_set_color(c_white);

var _x = (x - camera_get_view_x(view_camera[0])) * 2;
var _y = (y - camera_get_view_y(view_camera[0])) * 2;
var _text = text;

// Set text is double check stage is active
if double_check_stage == 1 {
	_text = "Confirm"
	draw_set_color(c_red);
}

draw_text(_x, _y, _text);