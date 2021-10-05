can_click = true;

rightLimit = x + (sprite_get_width(spr_soundbar)/2 - 20);
leftLimit = x - (sprite_get_width(spr_soundbar)/2) + 20;


slider = instance_create_depth(x, y, depth - 1, obj_soundController);
slider.image_xscale = 1;
slider.image_yscale = 1;
slider.barlenght = sprite_get_width(spr_soundcontroler);
slider.rightLimit = rightLimit;
slider.leftLimit = leftLimit;
slider.percent = obj_Music.music_volume * 100;

slider.x = slider.leftLimit + ((slider.percent/100) * (slider.rightLimit - slider.leftLimit));
slider.clicked = false;