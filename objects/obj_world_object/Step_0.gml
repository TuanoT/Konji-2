/// @description Change Depth

// Update depth
if moveable depth = -y;

// Fade out and despawn
if fade_out {
	fade_out_time--;
	if fade_out_time <= 0 {
		image_alpha -= 0.01;
		if image_alpha <= 0 instance_destroy();
	}
}