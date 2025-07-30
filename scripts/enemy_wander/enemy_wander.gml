// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_wander() {
	
	if alarm[1] == 0 {
		
		if in_view {
		
			// Choose a random behaviour
			var _rand = random(3);
			if _rand < 1 {
				speed = 0;
			} else if _rand < 2 {
				speed = spd;
				direction = random(360);
				alarm[1] = irandom_range(30, 60)
			} else {
				direction = random(360);
				alarm[1] = irandom_range(30, 60)
			}
		
			// Animate
			if speed != 0 {
				image_speed = .1;
			} else {
				image_speed = 0;	
			}
		
			// Flip to face direction
			if (direction > 90 && direction < 270) {
				image_xscale = -1;	
			} else {
				image_xscale = 1;	
			}
		}
		
	} else if alarm[1] == -1 {
		
		// Restart alarm if it is not going
		alarm[1] = 30;
	}
}