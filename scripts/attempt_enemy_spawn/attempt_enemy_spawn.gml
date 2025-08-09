function attempt_enemy_spawn(_x, _y) {
	
	var _obj = noone;
	
	switch room {
		
		case rm_overworld_1:
			_obj = obj_ant;
			break;
			
		case rm_overworld_2:
			_obj = choose(obj_spider, obj_spider, obj_purple_spider);
			break;
	}
	
	instance_create_layer(_x, _y, "World", _obj);
}