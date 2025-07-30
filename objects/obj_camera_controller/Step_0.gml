/// @description Move to the player

// Destory if there is no player to follow
if !instance_exists(obj_player) {
	instance_destroy();	
}

x += (obj_player.x - x) * camera_speed;
y += (obj_player.y - y) * camera_speed;