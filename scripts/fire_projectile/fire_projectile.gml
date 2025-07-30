
function fire_projectile(_x, _y, _team, _dir, _sprite, _dmg=1, _spd=4, _range=128, _rot=false, _piercing=false) {
	
	var _p = instance_create_depth(_x, _y, depth, obj_projectile);
	
	_p.team = _team;
	_p.direction = _dir;
	_p.image_angle = _dir;
	_p.sprite_index = _sprite;
	_p.damage = _dmg;
	_p.speed = _spd;
	_p.range = _range;
	_p.rotate = _rot;
	_p.piercing = _piercing;
}