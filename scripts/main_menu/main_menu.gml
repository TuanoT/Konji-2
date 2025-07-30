// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function main_menu() {
	if room != rm_menu {
		
		// Save game before inventory slots are destroyed
		instance_activate_object(obj_inventory_slot);
		save_game();
		instance_destroy(obj_inventory_slot)
		
		room = rm_menu;
		global.paused = false;
	}
}