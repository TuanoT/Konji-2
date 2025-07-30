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
ycenter = -16;

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