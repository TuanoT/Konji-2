
/// @description Collide with object

// Destory on solid objects
if place_meeting(x, y, obj_solid) {
	instance_destroy();	
}

// Hit enemies
if (place_meeting(x, y, obj_life_form) && can_damage) {
	var _i = instance_place(x, y, obj_life_form);
	if _i.team != team {
		
		// Damage Life form 
		_i.take_damage(damage);
		
		// Destory proj
		if !piercing {
			instance_destroy();
		} else {
			can_damage = false;
			alarm[0] = piercing_time;
		}
	}
}

// Destory if to far away (optimisable)
if point_distance(xstart, ystart, x, y) > range {
	instance_destroy();
}

// Rotate
if rotate {
	image_angle -= 15;	
}

// Change Depth
depth = -y;