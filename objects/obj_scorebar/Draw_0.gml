if showScore == true
{
if !surface_exists(score_surf)
    {
    if score_surf == -1
        {
        instance_deactivate_all(true);
        }
    score_surf = surface_create(room_width, room_height);
    surface_set_target(score_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    }
else
    {
    draw_surface(score_surf, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
	draw_text_transformed_colour(room_width / 2, room_height / 2, string(global.room_name), 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	if(global.multiplayer){
		draw_text_transformed_colour(room_width / 2, (room_height / 2) + 30, "Player 1: " + string(player_1_score) + " Player 2: " + string(stroke_player_2),2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	}else{
		draw_text_transformed_colour(room_width / 2, (room_height / 2) + 30, "Player 1: " + string(player_1_score), 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	}
    
    draw_set_halign(fa_left);
    }
}