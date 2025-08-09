function spawn_enemy(_x, _y) {
	
	var _obj = noone;
	
	switch room {
		
		case rm_overworld_1:
			_obj = random_weighted(obj_ant, 4, obj_green_slime, 2);
			break;
			
		case rm_overworld_2:
			_obj = random_weighted(obj_spider, 4, obj_purple_spider, 2);
			break;
	}
	
	instance_create_layer(_x, _y, "World", _obj);
}