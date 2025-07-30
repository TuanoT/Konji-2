/// @description Init Global vars

global.game_version = "dev 0.1.0";
global.show_debug_info = false;
global.free_mouse = true;			// Is the mouse hovering over a GUI element?
global.mob_cap = 20;				// The amount of mobs before spawning stops
global.update_time = 30;			// The time between enemy updates
global.world_update_time = 30;		// The time between updates world objects like details
global.gain = .7;
global.levels = 0;
global.xp = 0;
global.load_queued = false;
global.paused = false;
global.player_hp = 0;
global.player_iq = 0;

// Inventory
global.inventory = false;
global.held_item = -1;
global.hovered_slot = noone;
global.prev_slot = noone;
global.current_crate = noone;

initialize_items();
initialize_loot_tables();
initialize_enemy_tables();
randomize();

// Load Game
load_game();

depth = -1000;
real_fps_smooth = 0;
alarm[10] = 30;  // Smooth FPS timer
alarm[0] = global.world_update_time;

// Create Particle System
global.p_system = part_system_create();
part_system_depth(global.p_system, -10000)  // Must be deeper than the largest room

// Find open slot in crate
function find_free_slot(_crate) {
	if _crate.items[0] == -1 return 0;
	if _crate.items[1] == -1 return 1;
	if _crate.items[2] == -1 return 2;
	if _crate.items[3] == -1 return 3;
	return -1;
}