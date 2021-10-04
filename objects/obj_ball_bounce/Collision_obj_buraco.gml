/// @description Insert description here
// You can write your code in this editor
var strokes = get_strokes(global.room_name, global.strokes);
save_strokes(global.room_name, strokes);
global.strokes = 0;
global.canSpaw = true;

room_goto(other.target);