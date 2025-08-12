/// @description Press button

if (!double_check || double_check_stage == 1) {
	if position_meeting(mouse_x, mouse_y, self) {
		
		// Execute the function
		script_execute(func);
		audio_play_sound(snd_tick, 1, false, global.gain);
		double_check_stage = 0
		obj_game_controller.alarm[11] = 30;  // Prevents shooting on entering the nexus
	} else {
		
		// Reset the double check stage
		double_check_stage = 0;
		image_blend = c_white;
	}
} else if double_check {
	
	// Progress the double check stage
	if position_meeting(mouse_x, mouse_y, self) {
		double_check_stage = 1;
		image_blend = c_red;
	}
}