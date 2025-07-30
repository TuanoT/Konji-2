// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_egg(_id, _name, _sprite, _tier="Untiered",
					   _proj_sprite=spr_controller, _dmg=10, _range=128,
					   _firerate=1, _proj_speed=4, _sound=snd_throw,
					   _proj_rot=false) {
						   
	create_default(_id);
	
	global.item_type[_id] = "egg";
	global.item_name[_id] = _name;
	global.item_sprite[_id] = _sprite;
	global.item_tier[_id] = _tier;
	global.item_proj_sprite[_id] = _proj_sprite;
	global.item_damage[_id] = _dmg;
	global.item_range[_id] = _range;
	global.item_firerate[_id] = _firerate;
	global.item_proj_speed[_id] = _proj_speed;
	global.item_sound[_id] = _sound;
	global.item_proj_rotate[_id] = _proj_rot;
}