/// @description Init

// Inherit from Lifeform
event_inherited();

hp = 40;
max_hp = 40;
spd = 1;
xp = 10;

behaviour = enemy_wander;

// Proj vars
proj_range[0] = 128;  // 0 turns off firing
proj_sprite[0] = spr_proj_ant;
proj_damage[0] = 15;
proj_speed[0] = 3;
shoot_time_min[0] = 30;
shoot_time_max[0] = 60;
ycenter = -8;


// Loot variables
drop_chance = .25;
loot_table = 1;
loot_amount = 1;