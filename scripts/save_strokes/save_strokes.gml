// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_strokes(hole, strokes){
	ini_open("data.sav");
	ini_write_real(hole, "Strokes", strokes);
	ini_close();

}