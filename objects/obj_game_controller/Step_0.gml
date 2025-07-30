/// @description

// Load game
if global.load_queued {
	global.load_queued = false;
	load_game();
}


// INVENTORY //
if !global.paused {

	// Find hovered slot
	if global.inventory {
		global.hovered_slot = instance_position(mouse_x - camera_get_view_x(view_camera[0]), mouse_y - camera_get_view_y(view_camera[0]), obj_inventory_slot);
	} else {
		global.hovered_slot = noone;	
	}

	// Pick up item
	if (mouse_check_button_pressed(mb_left) && global.hovered_slot != noone && global.hovered_slot.active) {
		global.held_item = global.hovered_slot.item;
		global.hovered_slot.item = -1;
		global.prev_slot = global.hovered_slot;
	
		// Remove from crate
		if global.hovered_slot.type == "crate" {
			global.current_crate.items[global.hovered_slot.slot_id] = -1;
		}
	}

	// Place item
	if (mouse_check_button_released(mb_left) && global.held_item != -1) {
	
		// Place in new slot
		if global.hovered_slot != noone && global.hovered_slot.active {
		
			// Move Item to previous slot
			if global.hovered_slot.item != -1 {
				if global.prev_slot != global.hovered_slot {
					global.prev_slot.item = global.hovered_slot.item;
					// Add to existing crate
					if global.prev_slot.type == "crate" && global.current_crate != noone {
						global.current_crate.items[global.prev_slot.slot_id] = global.prev_slot.item;
					} else {
						// Move item that was in the way to a new crate
						//create_crate(obj_player.x, obj_player.y, [global.prev_slot.item, -1, -1, -1]);
					}
				} else {
					// Move item that was in the way to a new crate
					create_crate(obj_player.x, obj_player.y, [global.prev_slot.item, -1, -1, -1]);
				}
			}
		
			global.hovered_slot.item = global.held_item;
			// Add to existing crate
			if global.hovered_slot.type == "crate" {
				global.current_crate.items[global.hovered_slot.slot_id] = global.hovered_slot.item;
			}
			global.held_item = -1;
		} else {
		
			// Drop into the world
			if global.current_crate == noone {
				// Make a new crate
				create_crate(obj_player.x, obj_player.y, [global.held_item, -1, -1, -1]);
			} else {
				// Find slot in existing crate
				if find_free_slot(global.current_crate) != -1 {
					global.current_crate.items[find_free_slot(global.current_crate)] = global.held_item;
				} else {
					// Make a new crate
					create_crate(obj_player.x, obj_player.y, [global.held_item, -1, -1, -1])
				}
			}
		
			global.held_item = -1;
		}
	}

	// Find if the mouse is free
	if (global.hovered_slot == noone && global.held_item == -1) {
		global.free_mouse = true;	
		cursor_sprite = spr_crosshair;
	} else {
		global.free_mouse = false;	
		cursor_sprite = spr_cursor;
	}
}

// If they player doesn't exist we're in a menu
if !instance_exists(obj_player) {
	cursor_sprite = spr_cursor;	
}