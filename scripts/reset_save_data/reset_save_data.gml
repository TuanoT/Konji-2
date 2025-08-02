// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_save_data() {
	delete_game(1);
	room = rm_menu;
	global.load_queued = true;
	show_debug_message("nGame is queued to load \n");
}