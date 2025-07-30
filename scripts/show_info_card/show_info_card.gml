// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_info_card(_text, _x=256, _y=256) {
	if instance_exists(obj_info_card) {
		obj_info_card.visible = true;
		obj_info_card.text = _text;
		obj_info_card.xx = _x;
		obj_info_card.yy = _y;
	}
}