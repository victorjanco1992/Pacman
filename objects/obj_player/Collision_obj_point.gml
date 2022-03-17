/// @description obtener el punto

global.Puntos += 10; //sumar puntos

audio_play_sound(snd_comiendo,10,false); //sonido,prioridad,repeticion

with(other)
	{
		instance_destroy();
	}
