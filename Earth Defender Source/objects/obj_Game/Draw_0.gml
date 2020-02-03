/// @description Score and Lives

switch (room) {
	case rm_Game:
		draw_set_alpha(0.3);
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "LIVES: "+string(lives));
		draw_set_alpha(1);
		break;
	
	case rm_Start:
		draw_set_halign(fa_center);

		var text = "EARTH DEFENDER";
		draw_text_transformed_color(room_width/2+2, 100, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		draw_text_transformed_color(room_width/2-2, 100, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		draw_text_transformed_color(room_width/2, 100+2, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);		
		draw_text_transformed_color(room_width/2, 100-2, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);		

		draw_text_transformed_color(room_width/2, 100, "EARTH DEFENDER", 3, 3, 0, c_yellow, c_yellow, c_green, c_green, 1);

		var text = "SAVE THE EARTH!";
		// Outline
		draw_text_transformed_color(room_width/2+1, 200, text, 2, 2, 0, c_black, c_black, c_black, c_black, 1);
		draw_text_transformed_color(room_width/2-1, 200, text, 2, 2, 0, c_black, c_black, c_black, c_black, 1);
		draw_text_transformed_color(room_width/2, 200+1, text, 2, 2, 0, c_black, c_black, c_black, c_black, 1);
		draw_text_transformed_color(room_width/2, 200-1, text, 2, 2, 0, c_black, c_black, c_black, c_black, 1);
		// Text
		draw_text_transformed_color(room_width/2, 200, text, 2, 2, 0, c_red, c_orange, c_red, c_orange, 1);
			 
		var text = "Arrows to move\nSpace to shoot\nENTER TO START";
		draw_set_color(c_black);
		draw_text(room_width/2+1, 300, text);
		draw_text(room_width/2-1, 300, text);
		draw_text(room_width/2, 300+1, text);
		draw_text(room_width/2, 300-1, text);
		draw_set_color(c_white);
		draw_text(room_width/2, 300, text);	
		
		draw_set_halign(fa_left);
		
		break;
		
	case rm_Win:
		var c1 = c_green;
		var c2 = c_black;
		
		draw_set_halign(fa_center);

		var text = "YOU WON!";
		// Outline
		draw_text_transformed_color(room_width/2+2, 50, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		draw_text_transformed_color(room_width/2-2, 50, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		draw_text_transformed_color(room_width/2, 50+2, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		draw_text_transformed_color(room_width/2, 50-2, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		// Text
		draw_text_transformed_color(room_width/2, 50, text, 3, 3, 0, c_yellow, c_yellow, c_green, c_green, 1);

		var textcolor = c_white;
		var shadowcolor = c_black;

		text = "SCORE: "+string(score)+"\nENTER TO RESTART";
 		draw_set_color(shadowcolor);
		draw_text(room_width/2+1, 400, text);
		draw_text(room_width/2-1, 400, text);
		draw_text(room_width/2, 400+1, text);
		draw_text(room_width/2, 400-1, text);
		
		draw_set_color(textcolor);
		draw_text(room_width/2, 400, text);	
		
		draw_set_halign(fa_left);
		break;
		
	case rm_Lose:
		draw_set_halign(fa_center);
		
		var text = "YOU LOSE!";
		// Outline
		draw_text_transformed_color(room_width/2+2, 50, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		draw_text_transformed_color(room_width/2-2, 50, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		draw_text_transformed_color(room_width/2, 50+2, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		draw_text_transformed_color(room_width/2, 50-2, text, 3, 3, 0, c_black, c_black, c_black, c_black, 0.5);
		// Text
		draw_text_transformed_color(room_width/2, 50, text, 3, 3, 0, c_red, c_red, c_orange, c_orange, 1);

		var textcolor = c_white;
		var shadowcolor = c_black;

		text = "SCORE: "+string(score)+"\nENTER TO RESTART";
 		draw_set_color(shadowcolor);
		draw_text(room_width/2+1, 400, text);
		draw_text(room_width/2-1, 400, text);
		draw_text(room_width/2, 400+1, text);
		draw_text(room_width/2, 400-1, text);
		
		draw_set_color(textcolor);
		draw_text(room_width/2, 400, text);	
		
		draw_set_halign(fa_left);
		break;
}