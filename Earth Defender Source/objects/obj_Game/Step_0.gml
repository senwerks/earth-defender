/// @description Room Logic

if (keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(controllerID,gp_start)) {
	switch (room) {
		case rm_Start:
			room_goto(rm_Game);
			break;
		case rm_Win:
		case rm_Lose:
			game_restart();
			break;
	}
}

if (room == rm_Game) {
	if (score >= 1000) {
		room_goto(rm_Win);
		audio_play_sound(snd_Win, 1, false);
	}

	if (lives <= 0) {
		room_goto(rm_Lose);
		audio_play_sound(snd_Win, 1, false);
	}
}