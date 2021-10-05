draw_sprite_ext(spr_soundcontroler, 0, x, y, 1, 1, 0, c_white, 1);

draw_set_color(c_green);
draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(obj_soundBar.x, obj_soundBar.y + 40, string(percent) + "%");