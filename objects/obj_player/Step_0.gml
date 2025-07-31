 /// @description Move and More

event_inherited();

// Find direction to move
var _xdir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ydir = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _dir = point_direction(0, 0, _xdir, _ydir);

// Update x
if _xdir != 0 {
	var _x = lengthdir_x(spd, _dir);
	if !place_meeting(x + _x, y, obj_solid) {
		x += _x;
	} else {
		
		// Step towards solid
		while !place_meeting(x + sign(_x), y, obj_solid) {
			x += sign(_x);	
		}
	}
	
	// Flip x scale
	image_xscale = _xdir;
}

// Update y
if _ydir != 0 {
	var _y = lengthdir_y(spd, _dir);
	if !place_meeting(x, y + _y, obj_solid) {
		y += _y;
	} else {
		
		// Step towards solid
		while !place_meeting(x, y + sign(_y), obj_solid) {
			y += sign(_y);	
		}
	}
}


// Find Current Crate
global.current_crate = instance_place(x, y, obj_crate);


// Reset Stats
defence = 0;
spd = base_spd;
vitality = base_vit;
wisdom = base_wis;

// Find weapon stats
if (weapon_slot.item != -1 && global.item_type[weapon_slot.item] == "weapon") {
	var _i = weapon_slot.item;
	defence += global.item_defence[_i];	
	spd += global.item_speed[_i]/4;
	vitality += global.item_vitality[_i];
	wisdom += global.item_wisdom[_i];
}

// Find util stats
if (utility_slot.item != -1 && global.item_type[utility_slot.item] == "utility") {
	var _i = utility_slot.item;
	defence += global.item_defence[_i];	
	spd += global.item_speed[_i]/4;
	vitality += global.item_vitality[_i];
	wisdom += global.item_wisdom[_i];
}

// Find Helmet stats
if (helmet_slot.item != -1 && global.item_type[helmet_slot.item] == "helmet") {
	var _i = helmet_slot.item;
	defence += global.item_defence[_i];	
	spd += global.item_speed[_i]/4;
	vitality += global.item_vitality[_i];
	wisdom += global.item_wisdom[_i];
}

// Find Ring stats
if (ring_slot.item != -1 && global.item_type[ring_slot.item] == "ring") {
	var _i = ring_slot.item;
	defence += global.item_defence[_i];	
	spd += global.item_speed[_i]/4;
	vitality += global.item_vitality[_i];
	wisdom += global.item_wisdom[_i];
}

// Find ring egg stats and create pets
if (pet_slot.item != -1 && global.item_type[pet_slot.item] == "egg") {
	if !instance_exists(obj_pet_parent) {
		create_pet(pet_slot.item);	
	}
} else {
	instance_destroy(obj_pet_parent);
}


// Draw Mr. Konji info box
var _in_box = point_in_rectangle(mouse_x, mouse_y, x-8, y-32, x+8, y);
if (_in_box && global.inventory && global.free_mouse) {
	show_player_info_box();
}


// Increment level
if global.xp >= 100 {
	global.levels += 1;
	global.xp = 0;
}


// Regen Iq
if wisdom != 0 {
	if iq < max_iq {
		iq += wisdom / 60;
	} else {
		iq = max_iq;	
	}
}