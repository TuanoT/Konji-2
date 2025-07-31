/// @description Init

// Inherit from Lifeform
event_inherited();

team = "player";
can_shoot = true;
iq = 100;
base_iq = 100;
max_iq = 100;
base_spd = 1.25;
base_vit = 1;
wisdom = 1;
base_wis = 1;
ycenter = -16;		// How far the center is from the origin
pet_instance = -1;  // Create pet instance

// Create Camera Controller
instance_create_depth(x, y, 0, obj_camera_controller);

// Create GUI elements
instance_create_layer(256, 256, "GUI", obj_info_card);
instance_create_layer(256, 256, "GUI", obj_info_box);

// Object ids for equiptment slots
weapon_slot = inst_6458FED8;
utility_slot = inst_7467DAAF;
helmet_slot = inst_696FE1EA;
ring_slot = inst_3542307F;
pet_slot = inst_54686D81;

// Get current hp and iq
if (global.player_hp != 0) {
	hp = global.player_hp;
	iq = global.player_iq;
}

// (re)create Pet
function create_pet(_egg_id) {
	instance_destroy(obj_pet_parent);
	pet_instance = instance_create_depth(x, y, depth, obj_pet_parent);
	
	// Set values
	pet_instance.sprite_index = global.item_pet_sprite[_egg_id];
	pet_instance.proj_damage[0] = global.item_damage[_egg_id];
	pet_instance.proj_range[0] = global.item_range[_egg_id];
	pet_instance.shoot_time[0] = 60 div global.item_firerate[_egg_id];
	pet_instance.proj_sprite[0] = global.item_proj_sprite[_egg_id];
	pet_instance.proj_speed[0] = global.item_proj_speed[_egg_id];
}

// Testing
create_pet(9);