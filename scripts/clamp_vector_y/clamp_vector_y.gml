// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clamp_vector_y(vector_x, vector_y, max_lenght){
	var vec_x = vector_x;
	var vec_y = vector_y;
	var lenght = vector_lenght(vec_x, vec_y);
	
	if(lenght != 0){
		vec_y /= lenght;
	}
	
	var new_lenght = min(max_lenght, lenght);
	return(vec_y * new_lenght);
}