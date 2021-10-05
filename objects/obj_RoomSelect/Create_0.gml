/// @description Insert description here
// You can write your code in this editor
menu_x = room_width/2;
menu_y = room_height/2;

menu_itemheight = font_get_size(fMenu);

menu_comitted = -1;
menu_control = true;

menu[2] = "Map 1";
menu[1] = "Map 2";
menu[0] = "Exit";

menu_itens = array_length(menu);
menu_cursor = 2;