/// @description

event_inherited();

// Die
if hp == 0 {
	instance_destroy();	
}

// Regen Health
if vitality != 0 {
	if hp < max_hp {
		if healing_timer == -1 {
			hp += vitality / 60;
		} else {
			hp += (vitality / 60) * 5;
		}
	} else {
		hp = max_hp;	
	}
}

// Count down effect timers
if healing_timer > -1 healing_timer--;