/// @description Use util

if (global.free_mouse && can_shoot && utility_slot.occupied) {
	
	var _util = utility_slot.item;
	
	// Use if there is enough iq
	if iq >= global.item_iq_cost[_util] {
		
		// Drain iq
		iq -= global.item_iq_cost[_util];
		
		switch global.item_subtype[_util] {
			
			// Create Projectile
			case "projectile":
				var _dir = point_direction(x, y+ycenter, mouse_x, mouse_y);
				var _x = lengthdir_x(16, _dir);
				var _y = lengthdir_y(16, _dir);
				fire_projectile(x+_x, y+_y-16, team, _dir, 
								global.item_proj_sprite[_util],
								global.item_damage[_util],
								global.item_proj_speed[_util],
								global.item_range[_util],
								global.item_proj_rotate[_util],
								global.item_piercing[_util]
				);
				break;
				
			// Use Tome
			case "tome":
				var _e = global.item_effects[_util];
				var _a = global.item_effect_amounts[_util];
				apply_lifeform_effects(_e, _a, self);
				break;
		}
		
		// Play sound
		var _snd = global.item_sound[_util];
		var _pitch = random_range(.9, 1.1);
		audio_play_sound(_snd, 1, false, global.gain, 0, _pitch);
	}
}