/// @description Fire Projectile

if (global.free_mouse && can_shoot && weapon_slot.occupied && obj_game_controller.alarm[11] == -1) {
	
	var _weapon = weapon_slot.item;
	
	// Reset firing alarm
	can_shoot = false;
	alarm[0] = 60 / global.item_firerate[_weapon];
	
	// Create Projectile(s)
	var _amount = global.item_proj_amount[_weapon];
	var _angle_inc = global.item_proj_angle[_weapon];
	var _angle = -((_amount - 1) * _angle_inc / 2);
	for (var _i = 0; _i < _amount; _i++) {
		var _dir = point_direction(x, y+ycenter, mouse_x, mouse_y) + _angle;
		var _x = lengthdir_x(16, _dir);
		var _y = lengthdir_y(16, _dir);
		fire_projectile(x+_x, y+_y-16, team, _dir, 
						global.item_proj_sprite[_weapon],
						global.item_damage[_weapon],
						global.item_proj_speed[_weapon],
						global.item_range[_weapon],
						global.item_proj_rotate[_weapon],
						global.item_piercing[_weapon]
		);
		_angle += _angle_inc;
	}
	
	// Play sound
	var _snd = global.item_sound[_weapon];
	var _pitch = random_range(.9, 1.1);
	audio_play_sound(_snd, 1, false, global.gain, 0, _pitch);
}