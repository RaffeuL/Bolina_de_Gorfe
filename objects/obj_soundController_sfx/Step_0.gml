if(!mouse_check_button(mb_left)){
	grab = false;
}


if(grab == false) && (clicked == false){
	exit;
}else{
	
	if((mouse_x + xx) > leftLimit) && ((mouse_x + xx < rightLimit)){
		x = mouse_x + xx;
	}else if((mouse_x + xx) < leftLimit){
		x = leftLimit;
	}else if((mouse_x + xx) > rightLimit){
		x = rightLimit;
	}
}
percent = round(((x - leftLimit) / (rightLimit - leftLimit)) * 100);
obj_Music.sfx_volume = percent/100;

clicked = false;