// Reset Inventory when dead

function reset_inventory() {
	
	with obj_inventory_slot {
		item = -1;
			
		// Set stick as default weapon
		if type == "weapon" {
			item = 1	
		}
	}
	
	// Halve levels
	global.levels = global.levels div 2;
	global.xp = 0;
	
	show_debug_message("Reset Konji\n");
	save_game();
}