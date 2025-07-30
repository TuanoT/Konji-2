/// @description Draw self

if (global.inventory && active) {

	// Find pos on screen
	var _x = x * 2;
	var _y = y * 2;
	
	// Draw Item
	if item != -1 {
		draw_sprite(spr_inventory_slot, occupied_error, _x, _y);
		draw_sprite_ext(global.item_sprite[item], 0, _x, _y, 2, 2, 0, c_white, 1);
	} else {
		draw_sprite(spr_inventory_slot, default_image, _x, _y);
	}
}