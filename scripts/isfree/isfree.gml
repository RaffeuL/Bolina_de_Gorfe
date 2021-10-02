// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isfree(){
	with(obj_ball_bounce){
		if(!place_meeting(phy_position_x,phy_position_y,obj_envelope_ramp)){
			if(!place_meeting(phy_position_x,phy_position_y,obj_fluid_a)){ 
				phy_linear_damping = linear_damping;
			}
		}
	}
}