if(score_trigger){
	show_debug_message("Mostra o score cacete");
	showScore = !showScore;
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