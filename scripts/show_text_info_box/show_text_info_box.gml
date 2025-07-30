
function show_text_info_box(_text) {
	if instance_exists(obj_info_box) {
		
		var _e = [];
		var _c = [];
	
		array_push(_e, "title");
		array_push(_c, _text);
		
		obj_info_box.visible = true;
		obj_info_box.elements = _e;
		obj_info_box.contents = _c;
	}
}