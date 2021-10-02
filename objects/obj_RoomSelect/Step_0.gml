/// @description Insert description here
// You can write your code in this editor
menu_move = keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);

if(menu_control){
	menu_cursor += menu_move 
	if(menu_cursor >= menu_itens) menu_cursor = 0;
	if(menu_cursor <0) menu_cursor = menu_itens-1;
	
	if(keyboard_check_pressed(vk_enter)){
		menu_comitted = menu_cursor;
		menu_control = false;
	}
}

if(menu_comitted != -1){
	switch(menu_comitted){
		case 2: room_goto(rm_Game01) break;
		case 1: room_goto(rm_Game02) break;
		case 0: game_end(); break;

	}
}
