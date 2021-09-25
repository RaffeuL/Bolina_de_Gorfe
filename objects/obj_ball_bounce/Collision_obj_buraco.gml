/// @description Insert description here
// You can write your code in this editor
var strokes = get_strokes(global.room_name, global.strokes);
save_strokes(global.hole, strokes);
global.strokes = 0;
game_restart();