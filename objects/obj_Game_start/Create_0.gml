if(instance_exists(obj_Game)) then instance_destroy(obj_Game);
global.multiplayer = false;
audio_stop_all();
audio_play_sound(sn_environmentMusic, 1000, true);