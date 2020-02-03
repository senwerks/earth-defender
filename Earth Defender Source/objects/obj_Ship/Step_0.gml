/// @description Ship Actions

if (keyboard_check(vk_left) || abs(min(gamepad_axis_value(obj_Game.controllerID,gp_axislh),0))) {
	image_angle = image_angle + 5;
	ship_moving = "left";
} else if (keyboard_check(vk_right) || max(gamepad_axis_value(obj_Game.controllerID,gp_axislh),0)) {
	image_angle = image_angle - 5;
	ship_moving = "right";
} else if (keyboard_check(vk_up) || abs(min(gamepad_axis_value(obj_Game.controllerID,gp_axislv),0))) {
	motion_add(image_angle, 0.05);
	ship_moving = "up";
} else {
	ship_moving = 0;
}

if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(obj_Game.controllerID,gp_face1)) {
	var x_adj = cos(degtorad(image_angle)) * sprite_width/2;
	var y_adj = -sin(degtorad(image_angle)) * sprite_width/2;
	var inst= instance_create_layer(x + x_adj, y + y_adj, "Instances", obj_Bullet);

	inst.direction = image_angle;
	audio_play_sound(snd_Shoot, 1, false);
}

move_wrap(true, true, sprite_width/2);

// Animation

if (ship_moving == "left") {
	sprite_index = spr_Ship_Left;
} else if (ship_moving == "right") {
	sprite_index = spr_Ship_Right;
} else if (ship_moving == "up") {
	sprite_index = spr_Ship_Up;
} else {
	sprite_index = spr_Ship_Idle;
}

// Sound

if (ship_moving != 0) {
	audio_play_sound(snd_Thrust, 1, false);
}