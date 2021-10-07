if(keyboard_check_pressed(ord("P"))){
	game_free = !game_free;
	game_paused = !game_paused;
	if game_paused == false{
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;
	}
}
if(game_paused == true){
	alarm[0]++;
	alarm[1]++;
}


#region Score
if(score_trigger){
	if(mouse_check_button_released(mb_left)){
		showScore = false;
		score_trigger = false;
		game_free = true;
	}else{
		game_free = false;
		showScore = true;
	}
	if showScore == false{
		instance_activate_all();
		surface_free(score_surf);
		score_surf = -1;

	}
	if showScore == true{
		alarm[0]++;
		alarm[1]++;
	}
	
}
#endregion