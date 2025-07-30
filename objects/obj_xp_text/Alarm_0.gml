/// @description Destory

// Create damage Text
var _text = instance_create_layer(x, y, "GUI", obj_damage_text);
_text.colour = c_lime;
_text.text = string(xp) + " xp";

// Give xp
if instance_exists(obj_player)
	global.xp += xp;

instance_destroy();