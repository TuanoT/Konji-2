/// @description 

// Draw info card above door
var _x = x - camera_get_view_x(view_camera[0]);
var _y = y - camera_get_view_y(view_camera[0]) + 16;
show_info_card(name, _x, _y);

if (keyboard_check_pressed(vk_space)) {
	if locked {
		
		// Attempt to unlock portal
		if global.levels >= unlock_cost {
			locked = false;
			global.levels -= unlock_cost;
			audio_play_sound(snd_purchase, 1, false);
			if progress_id != -1 {
				global.progress_unlocked[progress_id] = true;
			}
		}
	} else {
		
		// Enter portal
		room = level;
		audio_play_sound(snd_nexus, 1, false);
	}
}