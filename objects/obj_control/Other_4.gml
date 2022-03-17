/// @description el nivel empieza de nuevo

if room == rm_level1 exit;

audio_play_sound(snd_intro,10,false);
instance_deactivate_object(obj_enemy);

global.Golpe = false;
global.Power = false;
global.Bonos = false;

alarm[0] = room_speed*10; //crea bono
alarm[1] = room_speed*15; //aumentar velocidad
room_speed = 50;