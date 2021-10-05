
audio_play_sound(sn_hitHole,1000,false);
obj_Game.stroke_player_1 = global.strokes;

global.strokes = 0;
global.canSpaw = true;

obj_Game.player = obj_ball_bounce;
room_goto(other.target);