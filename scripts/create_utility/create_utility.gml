// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_utility(_id, _name, _sprite, _tier="Untiered", _mana=25,
						_proj_sprite=spr_controller, _dmg=10, _range=128,
						_proj_speed=4, _proj_rot=false, _piercing=true,
						_snd=snd_throw, _proj_amount=1, _proj_angle=0) {
							
	create_default(_id);	
	
	global.item_type[_id] = "utility";
	global.item_subtype[_id] = "projectile";
	global.item_name[_id] = _name;
	global.item_sprite[_id] = _sprite;
	global.item_proj_sprite[_id] = _proj_sprite;
	global.item_damage[_id] = _dmg;
	global.item_range[_id] = _range;
	global.item_proj_speed[_id] = _proj_speed;
	global.item_iq_cost[_id] = _mana;
	global.item_tier[_id] = _tier;
	global.item_sound[_id] = _snd;
	global.item_proj_rotate[_id] = _proj_rot;
	global.item_piercing[_id] = _piercing;
	global.item_proj_amount[_id] = _proj_amount;
	global.item_proj_angle[_id] = _proj_angle;
}