/// @description Init

// Inherit form world object
event_inherited();

team = "player";
healthbar_length = 16;

hp = 100;
max_hp = 100;
spd = 0;
defence = 0;
vitality = 0;
impact_sound = snd_flesh_impact;
ycenter = -16;
particle_sprite = spr_part_blood;

// Effect timers
healing_timer = -1;

// Take damage function
function take_damage(_dmg) {
	
	// 10% of damage ignores defence
	if (_dmg - defence > _dmg * .1) {
		_dmg -= defence;
	} else { 
		_dmg *= .1;	
	}
	
	// Deal damage
	if hp - _dmg >= 0 {
		hp -= _dmg;
	} else {
		hp = 0;	
	}
		
	// Play sound
	var _snd = impact_sound;
	var _pitch = random_range(.8, 1.2);
	audio_play_sound(_snd, 1, false, global.gain, 0, _pitch);
	
	// Create damage text
	var _text = instance_create_layer(x, y+ycenter, "GUI", obj_damage_text);
	_text.text = string(_dmg);
	
	// Create particles
	repeat 4 {
		var _part = instance_create_depth(x, y, depth, obj_particle);
		_part.init_particle(20, 30, spr_part_blood, random(360));
	}
}