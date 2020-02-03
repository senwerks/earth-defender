/// @description Bullet Hits Rock

score += 10;

audio_play_sound(snd_Explosion, 1, false);

instance_destroy();

with (other) {
	instance_destroy();
	
	if (sprite_index == spr_Rock_Large) {
		repeat(2) {
			var new_rock = instance_create_layer(x, y, "Instances", obj_Rock);
			new_rock.sprite_index = spr_Rock_Medium;
		}
	} else if (sprite_index == spr_Rock_Medium) {
		repeat(2) {
			var new_rock = instance_create_layer(x, y, "Instances", obj_Rock);
			new_rock.sprite_index = spr_Rock_Small;
		}
	}
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_Debris);
	} 
}