/// @description Init

// Inherit from Lifeform
event_inherited();

hp = 40;
max_hp = 40;
spd = .5;
xp = 10;

behaviour = enemy_wander;
particle_sprite = spr_part_green_slime;

// Proj vars
proj_range[0] = 128;  // 0 turns off firing
proj_sprite[0] = spr_proj_green_slime;
proj_damage[0] = 12;
proj_speed[0] = 3;
shoot_time_min[0] = 30;
shoot_time_max[0] = 30;
shoot_at_player[0] = false;
proj_angle_increment[0] = 90;
proj_direction_rotate_increment[0] = 10;
proj_amount[0] = 4;
ycenter = -14;


// Loot variables
drop_chance = .5;
loot_table = 0;
loot_amount = 1;