// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function apply_lifeform_effects(_effects, _amounts, _lifeform) {
	for (var _i = 0; _i < array_length(_effects); _i++) {
		switch _effects[_i] {
			
			case "Healing":
				_lifeform.healing_timer = max(_amounts[_i], _lifeform.healing_timer);
				break;
		}
	}
}