/// @description Initalise

image_speed = 0;
rotation_speed = 5;
rotation_direction = choose(-1, 1);

function init_particle(_lifetime_min, _lifetime_max, _sprite, _dir) {
	
	// Set death timer
	alarm[0] = random_range(_lifetime_min, _lifetime_max)
	
	// Set sprite
	sprite_index = _sprite;
	image_index = random(image_number)
	
	direction = _dir;
	speed = 2;
	gravity = .1;
}