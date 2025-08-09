/// @description Drop Loot

// Drop Loot
if random(1) <= drop_chance {
	
	var _items = []
	
	for (var _i = 0; _i < loot_amount; _i++) {
		
		// Find Items
		var _table = global.loot_table[loot_table];
		var _item_index = _table[irandom(array_length(_table) - 1)];
		_items[_i] = _item_index;
	}
	create_crate(x, y, _items);
}

// Give xp
var _obj = instance_create_depth(x, y+ycenter, depth, obj_xp_text);
_obj.xp = xp;