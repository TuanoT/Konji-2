/// @description Draw Healthbar

event_inherited();

// Background
draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(276, 4, 740, 56, false);
draw_rectangle(512-16, 60, 512+16, 76, false);
draw_set_alpha(1);

// Bars
var _hp = hp / 100 * 100
draw_healthbar(280, 8, 736, 24, _hp, c_black, c_lime, c_lime, 0, true, false);
var _iq = iq / 100 * 100
draw_healthbar(280, 28, 736, 44, _iq, c_black, c_aqua, c_aqua, 0, true, false);
draw_healthbar(280, 48, 736, 52, global.xp, c_black, c_lime, c_lime, 0, true, false);

// Lables
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_small_bold);
draw_set_color(c_green);
draw_text(288, 16, "HP");
draw_set_color(c_blue);
draw_text(288, 36, "IQ");

draw_set_halign(fa_center);
draw_set_color(c_green);
draw_text(512, 16, string(round(hp)) + "/" + string(max_hp));
draw_set_color(c_blue);
draw_text(512, 36, string(round(iq)) + "/" + string(max_iq));
draw_set_color(c_white);
draw_text(512, 68, string(global.levels));