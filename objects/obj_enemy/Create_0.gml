/// @description configurar el enemigo
// You can write your code in this editor

sprite_index = spr_enemy;
image_speed = 0;

//iniciar movimiento aleatorio

v = 4;
direction = choose(0,90,180,270);
motion_set(direction,v);

