/// @description Insert description here
// You can write your code in this editor
draw_self();

if(phy_speed != 0) then exit;
//variaveis para a posição e direção do taco
var golfclub_x, golfclub_y, golfclub_dir;

if(heldding){
	#region Essa parte poderia virar um script, ja que é identica a outra
	var dir_vec_x = x - mouse_click_x;
	var dir_vec_y = y - mouse_click_y;
	var lenght = vector_lenght(dir_vec_x,dir_vec_y);
	
	//Normalizando Vetor
	dir_vec_x /= lenght;
	dir_vec_y /= lenght;
	#endregion
	
	//Vetor do impulso
	var pull_vec_x = mouse_click_x - mouse_x;
	var pull_vec_y = mouse_click_y - mouse_y;
	
	//Projetanto o impulso na direção do vetor
	var dot = dot_product(pull_vec_x, pull_vec_y, dir_vec_x, dir_vec_y);
	var project_vec_x = dir_vec_x * dot;
	var project_vec_y = dir_vec_y * dot;
	
	//'clamp vector'
	var golfclub_vec_x = clamp_vector_x(project_vec_x, project_vec_y, 64);
	var golfclub_vec_y = clamp_vector_y(project_vec_x, project_vec_y, 64);
	
	golfclub_x = x - golfclub_vec_x - (dir_vec_x * 40);
	golfclub_y = y - golfclub_vec_y - (dir_vec_y * 40);
	
	if(mouse_check_button_released(mb_left)){
		physics_apply_impulse(x, y, golfclub_vec_x, golfclub_vec_y);
		heldding = false;
		global.strokes += 1;
	}
	
}
else{
	#region Igual a parte de cima
	//Vetor direcional
	var dir_vec_x = x - mouse_x;
	var dir_vec_y = y - mouse_y;
	var lenght = vector_lenght(dir_vec_x,dir_vec_y);
	//Normalizando Vetor
	dir_vec_x /= lenght;
	dir_vec_y /= lenght;
	#endregion

	//Posição do taco
	golfclub_x = x - (dir_vec_x * 40);
	golfclub_y = y - (dir_vec_y * 40);
}

//Direção do taco
golfclub_dir = point_direction(golfclub_x, golfclub_y, x, y);
draw_sprite_ext(spr_golfclub, 0, golfclub_x, golfclub_y, 1, 1, golfclub_dir, c_white, 1);