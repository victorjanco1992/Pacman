/// @description termina el poder

if (global.Power) exit; //verifica si la variable poder es cierta

with(obj_enemy) //establece al enemigo
	{
		image_speed = 0;
		sprite_index = spr_enemy;
		image_index = col;
		speed = 4;
		v = 4;
	}

