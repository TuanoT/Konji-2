/// @description Update world

alarm[0] = global.world_update_time;

// Load and Unload world objects
if !global.paused {
	activate_region();
}