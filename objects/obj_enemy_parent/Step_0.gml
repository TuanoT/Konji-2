/// @description Behave

event_inherited();

// Execute behaviour script
script_execute(behaviour);

// SHOOT PROJECTILES //
for (var _i = 0; _i < array_length(proj_range); _i++) {
	if (shoot_alarm[_i] == 0 && proj_range[_i] != 0) {
		
		// Check in sight
		if point_distance(x, y+ycenter, obj_player.x, obj_player.y) < proj_range[_i]*sight_multiplier[_i] {
			
			// Find direction to shoot in
			var _dir = 0
			if shoot_at_player[_i] {
				_dir = point_direction(x, y+ycenter, obj_player.x, obj_player.y+obj_player.ycenter);
			} else {
				_dir = shot_direction[_i]	
			}
			
			// Fire projectile(s)
			var _d = 0;
			if proj_amount[_i] > 1 {
				_d = (proj_amount[_i] - 1) * proj_angle_increment[_i] / 2 * -1;
			}
			for (var _j = 0; _j < proj_amount[_i]; _j++) {
				fire_projectile(x, y+ycenter, team, _dir+_d, proj_sprite[_i],
												  proj_damage[_i],
												  proj_speed[_i], 
												  proj_range[_i]
				);
				_d += proj_angle_increment[_i];
			}
			shoot_alarm[_i] = random_range(shoot_time_min[_i], shoot_time_max[_i]);
			
			// Increase shot angle
			shot_direction[_i] += proj_direction_rotate_increment[_i];
		}
	}
	
	// Decrement alarm
	if shoot_alarm[_i] > 0 {
		shoot_alarm[_i]--;
	} else {
		shoot_alarm[_i] = 0;	
	}
}