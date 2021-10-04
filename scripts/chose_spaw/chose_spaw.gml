// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chose_spaw(_spawn1, _spawn2, _spawn3){
	var first = point_distance(_spawn1.x, _spawn1.y, mouse_x, mouse_y);
	var second = point_distance(_spawn2.x, _spawn2.y, mouse_x, mouse_y);
	var third = point_distance(_spawn3.x, _spawn3.y, mouse_x, mouse_y);
	
	var spawn = min(first, second, third);
	switch(spawn){
		case first:
			return _spawn1;
		break;
		case second:
			return _spawn2;
		break;
		case third:
			return _spawn3;
		break;
	}
}