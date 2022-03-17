/// @description controlar todo el nivel


#region //activar los enemigos nuevamente
if !(audio_is_playing(snd_intro))
	{
		instance_activate_object(obj_enemy);
	}
#endregion

#region//destruir todo al morir
if global.Vidas == 0
	{
		with(obj_enemy)
			{
				instance_destroy();
			}
		with(obj_player)
			{
				instance_destroy();
			}
		with(obj_point)
			{
				instance_destroy();
			}
		with(obj_powerpoint)
			{
				instance_destroy();
			}
		with(obj_bono)
			{
				instance_destroy();
			}
	}
#endregion

//verificar si nivel es completado o si player muere

if instance_number(obj_point) == 0 and instance_number(obj_powerpoint)== 0 && global.Vidas !=0
	{
		if room_next(room) != -1  //verifica si hay un nuevo nivel
			{
				audio_stop_all();
				room_goto_next();
			}
		else
			{
				audio_stop_all();
				room_goto(rm_gameover);
				instance_destroy();
			}
	}