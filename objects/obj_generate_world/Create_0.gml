/// @description Place things in overworld
/// This needs to be cleaned up this code sucks ass

// is a coordinate a valid position
function valid_position(_x, _y) {
	
	// Check if in room
	if (_x <= 0 || _y <= 0)						return false;
	if (_x >= room_width || _y >= room_height)	return false;
	if position_meeting(_x, _y, obj_boulder)	return false;
	
	return true;
}


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


// Repeat every 256 pixels
for (var _y = 128; _y < room_height; _y += 256) {
	for (var _x = 128; _x < room_width; _x += 256) {
		
		switch room {
		
			case rm_overworld_2:
			
				// Place tree
				var _xx = _x - 256 + irandom(512);
				var _yy = _y - 128 + irandom(512);
				if valid_position(_xx, _yy) {
					instance_create_layer(_xx, _yy, "World", obj_tree);
					repeat irandom(2) {
						var _xxx = _xx - 16 + irandom(32);
						var _yyy = _yy - 16 + irandom(32);
						instance_create_layer(_xxx, _yyy, "World", obj_grass_tuft);
					}
				}
				break;
		}
	}
}


// KYS
instance_destroy();