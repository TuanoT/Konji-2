/// @description Init

// Inherit from Lifeform
event_inherited();

hp = 60;
max_hp = 60;
spd = 1;
xp = 15;

behaviour = enemy_wander;

// Proj vars
proj_range[0] = 128;  // 0 turns off firing
proj_sprite[0] = spr_proj_spider;
proj_damage[0] = 20;
proj_speed[0] = 3;
shoot_time_min[0] = 30;
shoot_time_max[0] = 60;
ycenter = -8;


// Loot variables
drop_chance = .25;
loot_table = 1;
loot_amount = 1;