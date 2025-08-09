/// @description Init

// Inherit from Lifeform
event_inherited();
image_speed = 0;
alarm[0] = global.update_time;

team = "enemy";

behaviour = nothing;
can_despawn = true;
despawn_range = 256;
xp = 0;

// Projectile vars
proj_range[0] = 64;							// 0 turns off firing
proj_sprite[0] = spr_proj_ant;
proj_damage[0] = 1;
proj_speed[0] = 1;
shoot_at_player[0] = true;
shoot_time_min[0] = 60;
shoot_time_max[0] = 60;
shoot_alarm[0] = 0;
sight_multiplier[0] = 1.5;
proj_angle_increment[0] = 0;				// The angle between each projectile
proj_direction_rotate_increment[0] = 0;		// The amount the direction changes after every shot
proj_amount[0] = 1;							// The amount of projectiles per shot
shot_direction[0] = 0;						// The direction of the projectile if shoot_at_player = false
ycenter = 0;

in_view = false;

// Loot variables
drop_chance = 1;
loot_table = 0;
loot_amount = 2;