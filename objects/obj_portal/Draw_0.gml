/// @description Draw Self

event_inherited();
draw_self();

// Draw lock if locked
if locked {
	draw_sprite(spr_portal_lock, 0, x, y);
	draw_xp_cost(unlock_cost);
}