/// @description Inventory


// INVENTORY //
if !global.paused {

	// Find the slot that the cursor is hovering over
	if global.inventory {
		global.hovered_slot = instance_position(mouse_x - camera_get_view_x(view_camera[0]), mouse_y - camera_get_view_y(view_camera[0]), obj_inventory_slot);
	} else {
		global.hovered_slot = noone;	
	}

	// Picking up the held item
	if (mouse_check_button_pressed(mb_left) && global.hovered_slot != noone &&
		global.hovered_slot.active && global.hovered_slot.item != -1) {
		
		// Pick up item on left pressed
		global.held_item = global.hovered_slot.item;
		global.hovered_slot.item = -1;
		global.prev_slot = global.hovered_slot;
	
		// Remove from crate
		if global.hovered_slot.type == "crate" {
			global.current_crate.items[global.hovered_slot.slot_id] = -1;
		}
	}

	// Releasing the held item
	if (mouse_check_button_released(mb_left) && global.held_item != -1) {
		if global.hovered_slot != noone && global.hovered_slot.active {
			if global.hovered_slot.item != -1 {
				
				// The hovered slot has an item in it
				if global.prev_slot != global.hovered_slot {
					if global.prev_slot.item == -1 {
						
						// Put the item in the hovered slot into the prev slot if the prev slot is empty
						global.prev_slot.item = global.hovered_slot.item;
						if global.prev_slot.type == "crate" {
							
							// Simply create a new create if the previous item is in a create slot
							create_crate(obj_player.x, obj_player.y, [global.prev_slot.item, -1, -1, -1]);
						}
						show_debug_message("item in hovered_slot put into prev_slot\n");
					} else {

						// The both previous slot and hovered slots have items in them
						// Simply create a new create with the item in the hovered slot
						create_crate(obj_player.x, obj_player.y, [global.hovered_slot.item, -1, -1, -1]);
					}
					
					// Put the held item into the hovered slot now that the hovered slot is free
					//show_debug_message("The item in the hovered slot (" +
					//					string(global.hovered_slot.item) +
					//					") should be replaced by the held item ( + " +
					//					string(global.held_item.item) + "\n")
					global.hovered_slot.item = global.held_item;
					global.held_item = -1;
				} else {
					
					// Put item into the same slot but now there's a new item in it
					create_crate(obj_player.x, obj_player.y, [global.held_item, -1, -1, -1]);
					global.held_item = -1;
				}
			} else {
		
				// The hovered slot is empty
				global.hovered_slot.item = global.held_item;
				global.held_item = -1;
				
				// Add to existing crate
				if global.hovered_slot.type == "crate" {
					global.current_crate.items[global.hovered_slot.slot_id] = global.hovered_slot.item;
				}
			}
			
		} else {
		
			// Drop into the world
			if global.current_crate == noone {
				
				// Make a new crate
				create_crate(obj_player.x, obj_player.y, [global.held_item, -1, -1, -1]);
				global.held_item = -1;
			} else {
				if find_free_slot(global.current_crate) != -1 {
					
					// There is a free spot in the current create put held item there
					global.current_crate.items[find_free_slot(global.current_crate)] = global.held_item;
					global.held_item = -1;
				} else {
					
					// Make a new crate is no free spot is found
					create_crate(obj_player.x, obj_player.y, [global.held_item, -1, -1, -1])
					global.held_item = -1;
				}
			}
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