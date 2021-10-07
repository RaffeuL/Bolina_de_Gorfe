audio_play_sound(sn_hitHole,1000,false);

obj_Game.player_1_score = global.strokes;

if(global.multiplayer){
	instance_destroy(self);
	obj_Game.player = obj_ball_bounce_p2;
}else{
	obj_Game.current_room = global.room_name;
	obj_Game.score_trigger = true;

	var strokes = get_strokes(global.room_name, global.strokes);
	save_strokes(global.room_name, strokes);
	room_goto(other.target);
	
}

global.canSpaw = true;
global.strokes = 0;