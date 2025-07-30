/// @description Draw Info

if visible {

	var _height = 0;
	var _width = 128;
	var _x = (mouse_x - camera_get_view_x(view_camera[0])) * 2;
	var _y = (mouse_y - camera_get_view_y(view_camera[0])) * 2 - 4;

	// Find height
	for (var _i = 0; _i < array_length(elements); ++_i) {
		if elements[_i] == "title" {
			_height += 24;
			
			// Set Width from title
			draw_set_font(fnt_title);
			_width = max(128, string_width(contents[_i]) + 8);
		} else {
			_height += 16;	
		}
	}
	
	// Move box to fit on screen
	if _x > 512 {
		_x -= _width
	}

	// Draw Box
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_rectangle(_x, _y-_height, _x+_width, _y, false);

	// Draw Text
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	var _h = 0;
	for (var _i = 0; _i < array_length(elements); ++_i) {
		switch elements[_i] {
			case "title":
				draw_set_font(fnt_title);
				draw_text(_x+4, _y-_height+_h+12, contents[_i]);
				_y += 24;
				break;
			
			case "sub":
				draw_set_font(fnt_small_bold);
				draw_text(_x+4, _y-_height+_h+8, contents[_i]);
				_y += 16;
				break;
			
			case "content":
				draw_set_font(fnt_small);
				draw_text(_x+4, _y-_height+_h+8, contents[_i]);
				_y += 16;
				break;
		}
	}
}