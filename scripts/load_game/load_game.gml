// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game(_save_slot=1) {
	
	// Open ini file
	var _dir = "Savedata/save_" + string(_save_slot) + ".ini"
	ini_open(_dir);
	show_debug_message("Loading:\n" + game_save_id + _dir + "\n");
	
	// Save Inventory slots
	if instance_exists(obj_inventory_slot) {
		with obj_inventory_slot {
			item = ini_read_real("inventory", string(slot_id), -1);
			
			// Set stick as default weapon
			if type == "weapon" {
				item = ini_read_real("inventory", string(slot_id), 1);	
			}
		}
	} else {
		show_debug_message("Failed: couldn't find inventory slot objects\n");
	}
	
	// Save player stats
	global.xp = ini_read_real("player", "xp", 0);	
	global.levels = ini_read_real("player", "levels", 0);
	
	// Load progress
	for (var _i = 0; _i < global.progress_length; _i++) {
		global.progress_unlocked[_i] = ini_read_real("progress", string(_i), false);
	}
	
	// Close file
	ini_close();
}