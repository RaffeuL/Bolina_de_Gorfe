
audio_play_sound(sn_hitHole,1000,false);

obj_Game.player_2_score = global.strokes;
obj_Game.current_room = global.room_name;
obj_Game.score_trigger = true;


global.strokes = 0;
global.canSpaw = true;

obj_Game.player = obj_ball_bounce;
room_goto(other.target);