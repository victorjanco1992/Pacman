/// @description verificar la animacion de la muerte

if sprite_index == spr_player_dead
	{
		direction = 0;
		image_speed = 0;
		x = xstart;
		y = ystart;
		sprite_index = spr_player_right;
		image_index = 0;
		
		global.Golpe = false;
		
		//iniciar nuevamente
		audio_play_sound(snd_intro,10,false); //sonido,prioridad,repeticion
		instance_deactivate_object(obj_enemy);
	}