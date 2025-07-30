/// @description

event_inherited();

// Destroy if empty
if array_equals(items, [-1, -1, -1, -1]) {
	instance_destroy();
	global.current_crate = noone;
}