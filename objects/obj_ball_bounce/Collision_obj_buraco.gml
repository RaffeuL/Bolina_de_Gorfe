audio_play_sound(sn_hitHole,1000,false);

if(global.multiplayer){
	show_debug_message("Tem multiplayer");
	obj_Game.stroke_player_1 = global.strokes;
	instance_destroy(self);
	obj_Game.player = obj_ball_bounce_p2;
}else{
	var strokes = get_strokes(global.room_name, global.strokes);
	save_strokes(global.room_name, strokes);
	room_goto(other.target);
}

global.canSpaw = true;
global.strokes = 0;