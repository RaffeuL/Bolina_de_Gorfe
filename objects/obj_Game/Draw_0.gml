/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMenu);
draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_set_color(c_black);
draw_text(xx,yy, string(global.room_name));
draw_text(xx,yy+30,"Strokes: " + string(global.strokes));

if(global.canSpaw){
	var pos = chose_spaw(obj_spaw1, obj_spaw2, obj_spaw3);
	draw_sprite_ext(Bola_de_gorfe,0,pos.x,pos.y,1,1,0,c_white,1);

	if(mouse_check_button(mb_left)){
		instance_create_layer(pos.x, pos.y, "Solid_Objects", obj_ball_bounce);
		global.canSpaw = false;
	}
}