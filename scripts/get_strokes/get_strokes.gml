// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_strokes(hole, strokes){
	if(file_exists("data.sav")){
		ini_open("data.sav");
		var best_stroke = ini_read_real(hole, "Strokes", 0);
		ini_close();
		if(strokes > best_stroke) return best_stroke;
		else return strokes;
	}else{
		return strokes;
	}
}