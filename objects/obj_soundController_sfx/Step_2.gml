/*
if(obj_Music.control){
	if(!held){
		image_xscale = 1.0;
		x = lerp(200, room_width - 200, obj_Music.music_volume);
		y = 300;
		if(collision_point(mouse_x, mouse_y, object_index, false, false) != noone){
			held = true;
		}
	}else{
		image_xscale = 0.7;
		x = clamp(mouse_x, 200, room_width - 200);
		with(obj_Music){
			music_volume = (other.x-200) / (room_width-400);
			audio_group_set_gain(sn_environmentMusic, music_volume, 0);
		}
		if(!mouse_check_button(mb_left)) held = false;
	}
}

image_yscale = image_xscale;
*/