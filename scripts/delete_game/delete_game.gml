// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function delete_game(_save_slot=1) {
	
	// Delete save data ini
	var _dir = "Savedata/save_" + string(_save_slot) + ".ini";
	file_delete(_dir);
	show_debug_message("Deleted:\n" + game_save_id + _dir + "\n");
}