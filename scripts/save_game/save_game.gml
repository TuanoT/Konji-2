// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(_save_slot=1) {
	
	// Open ini file
	var _dir = "Savedata/save_" + string(_save_slot) + ".ini"
	ini_open(_dir);
	show_debug_message("Saving:\n" + game_save_id + _dir + "\n");
	
	// Save Inventory slots
	if instance_exists(obj_inventory_slot) {
		with obj_inventory_slot {
			ini_write_real("inventory", string(slot_id), item);	
		}
	} else {
		show_debug_message("Failed: couldn't find inventory slot objects\n");
	}
	
	// Save player stats
	ini_write_real("player", "xp", global.xp);	
	ini_write_real("player", "levels", global.levels);
	
	// Load progress
	for (var _i = 0; _i < global.progress_length; _i++) {
		 ini_write_real("progress", string(_i), global.progress_unlocked[_i]);
	}
	
	ini_close();
}