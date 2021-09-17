/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMenu);
draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_set_color(c_black);
draw_text(xx,yy,"Hole: " + string(global.hole));
draw_text(xx,yy+30,"Strokes: " + string(global.strokes));