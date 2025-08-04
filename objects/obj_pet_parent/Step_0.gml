/// @description Follow player and do other shit

event_inherited();

if point_distance(x, y, obj_player.x, obj_player.y) > player_distance {
	
	// Move towards player
	var _dir = point_direction(x, y, obj_player.x, obj_player.y);
	x += lengthdir_x(spd, _dir);
	y += lengthdir_y(spd, _dir);
	
	image_speed  = animation_speed;
} else {
	image_speed = 0;	
}


// Face the player
if (x > obj_player.x) {
	image_xscale = -1;	
} else {
	image_xscale = 1;	
}


// SHOOT PROJECTILES //
for (var _i = 0; _i < array_length(proj_range); _i++) {
	if (shoot_alarm[_i] == 0 && proj_range[_i] != 0) {
		
		// Find target
		var _target = instance_nearest(x, y, obj_enemy_parent);
		if _target != noone {
		
			// Check in sight
			if point_distance(x, y+ycenter, _target.x, _target.y) < proj_range[_i]*sight_multiplier[_i] {
				var _dir = point_direction(x, y+ycenter, _target.x, _target.y+_target.ycenter);
				fire_projectile(x, y+ycenter, "player", _dir, proj_sprite[_i],
												  proj_damage[_i],
												  proj_speed[_i], 
												  proj_range[_i]
				);
				shoot_alarm[_i] = shoot_time[0];
				
				// Play sound
				var _snd = proj_sound[_i];
				var _pitch = random_range(.9, 1.1);
				audio_play_sound(_snd, 1, false, global.gain, 0, _pitch);
			}
		}
	}
	
	// Decrement alarm
	if shoot_alarm[_i] > 0 {
		shoot_alarm[_i]--;
	} else {
		shoot_alarm[_i] = 0;	
	}
}