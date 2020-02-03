/// @description Ship Hits Rock

lives -= 1;

audio_play_sound(snd_Dead, 1, false);

instance_destroy();

repeat(10) {
	instance_create_layer(x, y, "Instances", obj_Debris);
}

with (obj_Game) {
	alarm[0] = room_speed;
}