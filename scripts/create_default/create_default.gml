// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_default(_id) {
	global.item_type[_id] = "item";
	global.item_name[_id] = "Default";
	global.item_sprite[_id] = spr_item_iron_knife;
	global.item_proj_sprite[_id] = spr_controller;
	global.item_damage[_id] = 0;
	global.item_range[_id] = 0;
	global.item_firerate[_id] = -1;
	global.item_proj_speed[_id] = 0;
	global.item_defence[_id] = 0;
	global.item_speed[_id] = 0;
	global.item_vitality[_id] = 0;
	global.item_wisdom[_id] = 0;
	global.item_dexterity[_id] = 0;
	global.item_iq_cost[_id] = -1;
	global.item_tier[_id] = "Untiered";
	global.item_sound[_id] = snd_throw;
	global.item_proj_rotate[_id] = false;
	global.item_piercing[_id] = false;
	global.item_proj_amount[_id] = 1;
	global.item_proj_angle[_id] = 0;
	global.item_subtype[_id] = "default";
	global.item_effects[_id] = [];
	global.item_effect_amounts[_id] = []
	global.item_pet_sprite[_id] = -1;
}