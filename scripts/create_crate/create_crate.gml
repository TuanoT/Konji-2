
function create_crate(_x, _y, _items) {
	
	// Pad _items array with -1
	while array_length(_items) < 4 {
		array_push(_items, -1);	
	}
	
	// Find a free spot (nasty style)
	if position_meeting(_x, _y, obj_crate) {
		if random(1) % 2 {
			_x += choose(-32, 32);	
		} else {
			_y += choose(-32, 32);		
		}
	}
	
	// Create crate
	var _crate = instance_create_layer(_x, _y, "World", obj_crate);
	_crate.items = _items;
	
	// Play Audio
	var _pitch = random_range(.8, 1);
	audio_play_sound(snd_crate_drop, 1, false, global.gain, 0, _pitch)
}