/// @description

if (room == rm_Game) {	
	
	if(audio_is_playing(snd_Music)) {
		audio_stop_sound(snd_Music);
	}
	audio_play_sound(snd_Music, 2, true);

	repeat(6) {
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);
		instance_create_layer(xx, yy, "Instances", obj_Rock);
	}
	
	alarm[1] = 60;
}