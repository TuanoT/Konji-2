/// @description Attempt to load game is a load is queued

if (global.load_queued && instance_exists(obj_inventory_slot)) {
	global.load_queued = false;
	load_game();
}