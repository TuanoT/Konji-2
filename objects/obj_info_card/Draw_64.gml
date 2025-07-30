/// @description Draw Card

var _x = xx*2;
var _y = yy*2;

// Find Length
draw_set_font(fnt_title);
var _xlen = string_width(text) / 2 + 8;

// Draw Background
draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(_x-_xlen, _y-12, _x+_xlen, _y+12, false);

// Draw Text
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(_x, _y, text);

draw_set_halign(fa_left);