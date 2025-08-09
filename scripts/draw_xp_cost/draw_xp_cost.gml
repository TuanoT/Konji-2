/// @function draw_xp_cost(cost)
/// @description Draw a number in green text above the object

function draw_xp_cost(_cost) {
	draw_set_color(c_lime);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_font(fnt_title);
	
	draw_text(x, y-sprite_height, string(_cost));
}