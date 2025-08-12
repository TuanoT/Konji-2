/// @description

// Sync with crate
if type == "crate" {
	
	// Deactivate Crate Slots
	if global.current_crate == noone {
		active = false;	
	} else {
		active = true;	
	}
	
	// Get items from crate
	if active {
		item = global.current_crate.items[slot_id];	
	}
}

// Check if occupied
if (item != -1 && !(type == "inventory" || type == "crate")) {
	if global.item_type[item] == type {
		occupied = true;
		occupied_error = false;
	} else {
		occupied = false;
		occupied_error = true;
	}
} else {
	occupied = false;
	occupied_error = false;
}

// Draw Info Box
if  (global.inventory && active) {
	if position_meeting(mouse_x-camera_get_view_x(view_camera[0]), mouse_y-camera_get_view_y(view_camera[0]), self) {
		if item != -1 {
			show_item_info_box(item);
		} else {
			//show_text_info_box(type);	
		}
	}
}