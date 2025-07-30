
function show_player_info_box() {
	if instance_exists(obj_info_box) {
		
		var _e = [];
		var _c = [];
	
		array_push(_e, "title");
		array_push(_c, "Mr. Konji");
		
		array_push(_e, "content");
		array_push(_c, "Speed: " + string(round(spd*4)));
		
		array_push(_e, "content");
		array_push(_c, "Defence: " + string(round(defence)));
		
		array_push(_e, "content");
		array_push(_c, "Vitality: " + string(round(vitality)));
		
		array_push(_e, "content");
		array_push(_c, "Wisdom: " + string(round(wisdom)));
		
		obj_info_box.visible = true;
		obj_info_box.elements = _e;
		obj_info_box.contents = _c;
	}
}