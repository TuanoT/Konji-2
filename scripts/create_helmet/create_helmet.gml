// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_helmet(_id, _name, _sprite, _tier="Untiered",
					   _def=0, _spd=0, _vit=0, _wis=0, _dex=0) {
	
	create_default(_id);
	
	global.item_type[_id] = "helmet";
	global.item_name[_id] = _name;
	global.item_sprite[_id] = _sprite;
	global.item_defence[_id] = _def;
	global.item_speed[_id] = _spd;
	global.item_vitality[_id] = _vit;
	global.item_wisdom[_id] = _wis;
	global.item_dexterity[_id] = _dex;
	global.item_tier[_id] = _tier;
	global.item_sound[_id] = snd_throw;
}