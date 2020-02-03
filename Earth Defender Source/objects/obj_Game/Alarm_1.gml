/// @description Spawn New Asteroids

if (room != rm_Game) {
	exit;
}

if (choose(0,1) == 0) {
	// Spawn on one side
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	// Spawn on top or bottom
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Instances", obj_Rock);

alarm[1] = 4 * room_speed;