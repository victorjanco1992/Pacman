/// @description golpe o ataque?

if (other.sprite_index == spr_enemy_scared)
	{
		global.Puntos += 200;
		audio_play_sound(snd_enemy_muere,10,false); //sonido,prioridad,repeticion
		
		with(other)
			{
				x = xstart;
				y = ystart;
				v = 4;
				speed = v;
				sprite_index = spr_enemy;
				image_index = col; //asignamos el color original 
				image_speed = 0;
			}
	}
else
if !(global.Golpe) && (x = other.x or y = other.y)
	{
		audio_stop_all();
		audio_play_sound(snd_dead,10,false); //sonido,prioridad,repeticion
		//reiniciar velocidad
		room_speed = 50;
		obj_control.alarm[1] = room_speed*15; //error
		
		speed = 0;
		global.Vidas -= 1;
		sprite_index = spr_player_dead;
		image_speed = 1;
		global.Golpe = true;  //cuando recibe golpe
		
		with(obj_bono)
			{
				instance_destroy();
			}
	}
	
