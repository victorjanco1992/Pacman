/// @description controlar todo el nivel

//activar los enemigos nuevamente

if !(audio_is_playing(snd_intro))
	{
		instance_activate_object(obj_enemy);
	}
