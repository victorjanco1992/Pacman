/// @description crear las variables del juego
// You can write your code in this editor

audio_play_sound(snd_intro,10,false); //sonido,prioridad,repeticion
instance_deactivate_object(obj_enemy);


global.Puntos = 0; //score|puntos
global.Vidas = 3;
global.Power = false;
global.Bonos = false;
global.Golpe = false;

alarm[0] = room_speed * 10;
