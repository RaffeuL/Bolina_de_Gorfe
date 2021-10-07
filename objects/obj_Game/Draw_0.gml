/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMenu);
draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_set_color(c_white);
draw_text(xx,yy, string(global.room_name));
draw_text(xx,yy+30,"Strokes: " + string(global.strokes));

var back = layer_background_get_id("Message");

if(global.canSpaw) and game_free{
	var pos = chose_spaw(obj_spaw1, obj_spaw2, obj_spaw3);
	draw_sprite_ext(Bola_de_gorfe,0,pos.x,pos.y,1,1,0,c_white,1);
	layer_background_visible(back, true);

	if(mouse_check_button_pressed(mb_left)){
		instance_create_layer(pos.x, pos.y, "Up_layer", player);
		global.canSpaw = false;
		layer_background_visible(back, false);
	}
}

#region Pause
if game_paused == true{
	if !surface_exists(paused_surf){
		if paused_surf == -1{
			instance_deactivate_all(true);
			instance_activate_object(obj_button_mute);
			instance_activate_object(obj_Music);
		}
		paused_surf = surface_create(room_width, room_height);
		surface_set_target(paused_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	}else{
		draw_surface(paused_surf, 0, 0);
		draw_set_alpha(0.5);
		draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		instance_create_depth(190, 320, application_surface, obj_button_continue);
		instance_create_depth(190, 420, application_surface, obj_button_return);
		instance_create_depth(190, 520, application_surface, obj_button_exit);
		
	}
}else{
	if instance_exists(obj_button_continue) then instance_destroy(obj_button_continue);
	if instance_exists(obj_button_return) then instance_destroy(obj_button_return);
	if instance_exists(obj_button_exit) then instance_destroy(obj_button_exit);
}

#endregion

#region Score
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
	draw_text_transformed_colour(room_width / 2, 150, string(current_room), 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	if(global.multiplayer){
		draw_text_transformed_colour(room_width / 2, 250, "Player 1: " + string(player_1_score) + " Strokes",2, 2, 0, c_white, c_white, c_white, c_white, 1);
		draw_text_transformed_colour(room_width / 2, 300, "Player 2: " + string(player_2_score) + " Strokes",2, 2, 0, c_white, c_white, c_white, c_white, 1);
	}else{
		draw_text_transformed_colour(room_width / 2, 250 , "Player 1: " + string(player_1_score) + " Strokes", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	}
    
    draw_set_halign(fa_left);
    }
}
#endregion