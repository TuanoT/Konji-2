
function show_item_info_box(_item) {
	if instance_exists(obj_info_box) {
		
		var _e = [];
		var _c = [];
	
		array_push(_e, "title");
		array_push(_c, global.item_name[item]);
		array_push(_e, "sub");
		array_push(_c, global.item_tier[item] + " " + global.item_type[item]);
		
		if global.item_iq_cost[item] != -1 {
			array_push(_e, "content");
			array_push(_c, "IQ Cost: " + string(global.item_iq_cost[item]));	
		}
		
		if global.item_damage[item] != 0 {
			array_push(_e, "content");
			array_push(_c, "Damage: " + string(global.item_damage[item]));	
		}
		
		if global.item_firerate[item] != -1 {
			array_push(_e, "content");
			array_push(_c, "Firerate: " + string(global.item_firerate[item]));	
		}
		
		if global.item_proj_speed[item] != 0 {
			array_push(_e, "content");
			array_push(_c, "Projectile Speed: " + string(global.item_proj_speed[item] * 4));	
		}
		
		if global.item_range[item] != 0 {
			array_push(_e, "content");
			array_push(_c, "Range: " + string(global.item_range[item] div 32) + " tiles");	
		}
		
		if global.item_defence[item] != 0 {
			array_push(_e, "content");
			array_push(_c, "Defence: +" + string(global.item_defence[item]));	
		}
		
		if global.item_speed[item] != 0 {
			array_push(_e, "content");
			array_push(_c, "Speed: +" + string(global.item_speed[item]));	
		}
		
		if global.item_vitality[item] != 0 {
			array_push(_e, "content");
			array_push(_c, "Vitality: +" + string(global.item_vitality[item]));	
		}
		
		if global.item_wisdom[item] != 0 {
			array_push(_e, "content");
			array_push(_c, "Wisdom: +" + string(global.item_wisdom[item]));	
		}
		
		if global.item_dexterity[item] != 0 {
			array_push(_e, "content");
			array_push(_c, "Dexterity: +" + string(global.item_dexterity[item]) + "%");	
		}
		
		if global.item_piercing[item] {
			array_push(_e, "content");
			array_push(_c, "Piercing");	
		}
		
		// List item effects
		if global.item_effects[item] != [] {
			for (var _i = 0; _i < array_length(global.item_effects[item]); _i++)	{
				var _effect = global.item_effects[item][_i];
				var _amount = string(global.item_effect_amounts[item][_i] div 60);
				var _secs = " seconds";
				if _amount == "1" _secs = " second";
				array_push(_e, "content");
				array_push(_c, _effect + " for " + _amount + _secs);		
			}
		}
		
		obj_info_box.visible = true;
		obj_info_box.elements = _e;
		obj_info_box.contents = _c;
	}
}