/// @description Behave

event_inherited();

// Execute behaviour script
script_execute(behaviour);

// SHOOT PROJECTILES //
for (var _i = 0; _i < array_length(proj_range); _i++) {
	if (shoot_alarm[_i] == 0 && proj_range[_i] != 0) {
		
		// Check in sight
		if point_distance(x, y+ycenter, obj_player.x, obj_player.y) < proj_range[_i]*sight_multiplier[_i] {
			var _dir = point_direction(x, y+ycenter, obj_player.x, obj_player.y+obj_player.ycenter);
			fire_projectile(x, y+ycenter, team, _dir, proj_sprite[_i],
											  proj_damage[_i],
											  proj_speed[_i], 
											  proj_range[_i]
			);
			shoot_alarm[_i] = random_range(shoot_time_min[_i], shoot_time_max[_i]);
		}
	}
	
	// Decrement alarm
	if shoot_alarm[_i] > 0 {
		shoot_alarm[_i]--;
	} else {
		shoot_alarm[_i] = 0;	
	}
}