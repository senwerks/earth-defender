/// @description Spawn Rock

sprite_index = choose(
	spr_Rock_Small,
	spr_Rock_Medium,
	spr_Rock_Large
	);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1;