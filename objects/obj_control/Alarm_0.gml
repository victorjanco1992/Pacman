/// @description crear el bono

if global.Vidas == 0 exit;

instance_create_layer(obj_player.xstart,obj_player.ystart,"ly_top",obj_bono);
alarm[0] = room_speed * 30; //se repite cada 30 seg