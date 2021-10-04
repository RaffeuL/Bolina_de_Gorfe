// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sprite_golfclub(_vecx, _vecy){
	_vecx = abs(_vecx);
	_vecy = abs(_vecy);
	//var point = sqrt(sqr(_vecx) + sqr(_vecy));
	if( _vecx > 54 or _vecy > 54){
		return cub10;
	}
	if(_vecx > 44 or _vecy > 44){
		return cub_9;
	}
	if(_vecx > 34  or  _vecy > 34){
		return cub_7;
	}
	if( _vecx > 24 or _vecy > 24){
		return cub_5;
	}
	if(_vecx > 14 or _vecy > 14){
		return  cub_3;
	}
	return cub_1;

}
