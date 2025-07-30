/// @description Draw healthbar and shit

var _x = (x - camera_get_view_x(view_camera[0])) * 2;
var _y = (y - camera_get_view_y(view_camera[0])) * 2;

// Draw Healthbar
var _hp = hp / max_hp * 100;
draw_healthbar(_x-healthbar_length, _y+2, _x+healthbar_length, _y+6, _hp, c_black, c_red, c_lime, 0, true, true);

// Draw effects (only healing rn)
if healing_timer != -1 {
	draw_sprite(spr_effect_icon, 0, _x, _y-sprite_height*2-4);	
}