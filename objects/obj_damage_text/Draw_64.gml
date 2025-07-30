/// @description Draw text

var _x = (x - camera_get_view_x(view_camera[0])) * 2;
var _y = (y - camera_get_view_y(view_camera[0])) * 2;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(colour);
draw_set_font(font);

draw_text(_x, _y, text);