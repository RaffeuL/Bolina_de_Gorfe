if(mouse_check_button_pressed(mb_left)){
	if(phy_speed = 0){
		mouse_click_x = mouse_x;
		mouse_click_y = mouse_y;

		heldding = true;	
	}
}

if(mouse_check_button_released(mb_left)){
	//show_message("Solto")
}

#region Rampa
if(place_meeting(phy_position_x,phy_position_y,obj_envelope_ramp)){
	phy_linear_damping = 6;
	
	if(phy_position_yprevious > phy_position_y){ //Descendo
		var dif = -0.2;
	}
	if(phy_position_yprevious < phy_position_y){ //Subindo
		var dif = +0.2;
	}
	
	phy_speed_x -= 0.1;
	phy_speed_y += dif		
}
#endregion

#region Gosma
if(place_meeting(phy_position_x,phy_position_y,obj_fluid_a)){
	phy_linear_damping = 10;	
}
if(place_meeting(phy_position_x,phy_position_y,obj_fluid_c)){
	phy_linear_damping = 0.1;	
}
if(place_meeting(phy_position_x,phy_position_y,obj_fluid_d)){
	phy_linear_damping = 40;	
}
#endregion

isfree(); //Verifica se a bola está livre para voltar a resistencia padrão;