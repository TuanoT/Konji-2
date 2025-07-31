/// @description Init

event_inherited();

spd = 1;
ycenter = -8;
player_distance = 32;   // The distance where he will begin to move if he's outside
animation_speed = .1;	// Image speed when moving
shoot_time[0] = 60;		// Time between shots
shoot_alarm[0] = 0;
proj_range[0] = 256;
proj_sprite[0] = spr_proj_pet_ant;
proj_damage[0] = 10;
proj_speed[0] = 8;
sight_multiplier[0] = 1.25;