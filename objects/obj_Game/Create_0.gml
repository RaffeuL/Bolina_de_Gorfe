global.strokes = 0;
xx = 120;
yy = 100;

global.canSpaw = true;
game_free = true;

player = obj_ball_bounce;

#region Pause
game_paused = false;
paused_surf = -1;
#endregion

#region Score
current_room = noone;
showScore = false;
score_trigger = false;
score_surf = -1;

player_1_score = 0;
player_2_score = 0;
#endregion