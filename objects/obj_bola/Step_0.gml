/// @description Insert description here
// You can write your code in this editor

switch(state){
	case BallState.STOP:
		if(held){
			pow = min(percent*point_distance(x,y,mouse_x,mouse_y)/100,max_power);
			dir = point_direction(mouse_x,mouse_y,x,y);
		}
		if(mouse_check_button_released(mb_left)){
			global.strokes += 1;
			spd = pow;
			m_dir = dir;
			held = false;
			pow = 0;
			state = BallState.MOVEMENT;
		}
	break;
	case BallState.MOVEMENT:
		if(spd > 0){
			x+=lengthdir_x(spd,m_dir);
			y+=lengthdir_y(spd,m_dir);
			if(spd - frict >= 0){
				spd -= frict;
			}
			else{
				spd = 0;
			}		
		}
		if(spd == 0){
			state = BallState.STOP;
		}
		break;
}

if(place_meeting(x,y+1,obj_paredeH)){
	m_dir = m_dir * -1;
}