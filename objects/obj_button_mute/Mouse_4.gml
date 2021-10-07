muted = !muted;
if(muted){
	image_index = 1;
	volume = obj_Music.music_volume;
	obj_Music.music_volume = 0
}else{
	image_index = 0;
	obj_Music.music_volume = volume;
}