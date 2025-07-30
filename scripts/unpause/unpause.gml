// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unpause() {
	instance_destroy(obj_menu_button);
	instance_activate_all();
	global.paused = false;
}