/// @description

// Draw Debug info
if global.show_debug_info {

	// Background
	draw_set_alpha(.5);
	draw_set_color(c_black);
	draw_rectangle(8, 8, 184, 72, false);

	// Draw Text
	draw_set_alpha(1);
	draw_set_font(fnt_small);
	draw_set_color(c_white);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_text(12, 32, "FPS: " + string(fps) + "/60");
	draw_text(12, 48, "Possible FPS: " + string(real_fps_smooth));
	draw_text(12, 16, "Version: " + global.game_version);
	draw_text(12, 64, "Mobs: " + string(instance_number(obj_enemy_parent)));
}

// Draw Held Item
if global.held_item != -1 {
	var _x = (mouse_x - camera_get_view_x(view_camera[0])) * 2;
	var _y = (mouse_y - camera_get_view_y(view_camera[0])) * 2;
	draw_sprite_ext(global.item_sprite[global.held_item], 0, _x, _y, 2, 2, 0, c_white, 1);
}