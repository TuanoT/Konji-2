// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_tome(_id, _name, _sprite, _tier="Untiered",
						_mana=25, _snd=snd_throw,
						_effects=[], _effect_amounts=[]) {
							
	create_default(_id);	
	
	global.item_type[_id] = "utility";
	global.item_subtype[_id] = "tome";
	global.item_name[_id] = _name;
	global.item_sprite[_id] = _sprite;
	global.item_iq_cost[_id] = _mana;
	global.item_tier[_id] = _tier;
	global.item_sound[_id] = _snd;
	global.item_effects[_id] = _effects;
	global.item_effect_amounts[_id] = _effect_amounts;
}