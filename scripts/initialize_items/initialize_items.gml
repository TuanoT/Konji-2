// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initialize_items() {
	create_weapon(0, "Debugger", spr_item_temp, "God Tier", spr_proj_ant, 100, 128, 10, 4, , , 3, 45);
	create_weapon(1, "Stick", spr_item_stick, "Tier 0", spr_proj_stick, 8, 64, 2, 3, snd_throw);
	create_weapon(2, "Iron Knife", spr_item_iron_knife, "Tier 1", spr_proj_iron_knife, 10, 64, 2, 4, snd_knife_fire);
	create_utility(3, "Iron Shuriken", spr_item_iron_shuriken, "Tier 1", 25, spr_proj_iron_shuriken, 25, 128, 4, true, , snd_shuriken_throw);
	create_helmet(4, "Iron Helmet", spr_item_iron_helmet, "Tier 1", 3, 0, 0, 0);
	create_ring(5, "Copper Vitality Ring", spr_item_copper_vitality_ring, "Tier 1", 0, 0, 1, 0);
	create_ring(6, "Copper Wisdom Ring", spr_item_copper_wisdom_ring, "Tier 1", 0, 0, 0, 1);
	create_ring(7, "Copper Speed Ring", spr_item_copper_speed_ring, "Tier 2", 0, 1);
	create_tome(8, "Paper tome", spr_item_paper_tome, "Tier 1", 20, , ["Healing"], [60]);
	create_egg(9, "Ant Egg", spr_item_ant_egg, "Tier 1", spr_proj_pet_ant, 10, 96, 1, 6, , false, spr_pet_ant);
	create_weapon(10, "Bone Knife", spr_item_bone_knife, "Tier 2", spr_proj_bone_knife, 15, 64, 2, 4, snd_knife_fire);
	create_helmet(11, "Studded Iron Helmet", spr_item_studded_helmet, "Tier 2", 5, 0, 0, 0);
	create_utility(12, "Iron Shuriken", spr_item_bone_shuriken, "Tier 2", 25, spr_proj_bone_shuriken, 25, 160, 4, true, , snd_shuriken_throw);
}