/// @description Place things in overworld

// Repeat every 64 pixels
for (var _y = 32; _y < room_height; _y += 64) {
	for (var _x = 32; _x < room_width; _x += 64) {
	
		// Place grass tufts
		var _xx = _x - 32 + irandom(64);
		var _yy = _y - 32 + irandom(64);
		repeat irandom(4) {
			var _xxx = _xx - 16 + irandom(32);
			var _yyy = _yy - 16 + irandom(32);
			instance_create_layer(_xxx, _yyy, "World", obj_grass_tuft);
		}
	
	}	
}

// is a coordinate a valid position
function valid_position(_x, _y) {
	
	// Check if in room
	if (_x <= 0 || _y <= 0) return false;
	if (_x >= room_width || _y >= room_height) return false;
	
	return true;
}


// KYS
instance_destroy();