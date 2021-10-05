if(audio_group_is_loaded(audio_music)){
	audio_play_sound(music_playing, 1000, true);
	control = false;
}

if(audio_group_is_loaded(audio_sfx)){
	sfx_loaded = true;
}