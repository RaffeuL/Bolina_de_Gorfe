obj_Game.game_paused = false;
instance_activate_all();
surface_free(obj_Game.paused_surf);
obj_Game.paused_surf = -1;
obj_Game.game_free = true;