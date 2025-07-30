/// @description Mr Konji dead

// Reset stored hp and iq
global.player_hp = 0;
global.player_iq = 0;

reset_inventory();
room = rm_dead;
global.inventory = false;