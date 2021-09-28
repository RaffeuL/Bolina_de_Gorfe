if(mouse_check_button_pressed(mb_left)){
	if(phy_speed = 0){
		mouse_click_x = mouse_x;
		mouse_click_y = mouse_y;

		heldding = true;
	}
}

#region Rampa
if(place_meeting(phy_position_x,phy_position_y,obj_relevo)){
	phy_linear_damping = 8;
	
	if(phy_position_yprevious > phy_position_y){
		var dif = -0.2;
	}
	if(phy_position_yprevious < phy_position_y){
		var dif = +0.2;
	}
	
	phy_speed_x -= 0.1;
	phy_speed_y += dif		
}
#endregion


#region Gosma
if(place_meeting(phy_position_x,phy_position_y,obj_gosma)){
	phy_linear_damping = 10;	
}
#endregion

isfree(); //Verifica se a bola está livre para voltar a resistencia padrão;