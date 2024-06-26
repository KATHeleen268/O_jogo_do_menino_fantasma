//controlando player
var _chao = place_meeting(x, y + 1, obj_chao_lulu);

switch(estado)
{
	case "normal":
	   estado_normal();
	   break;
	   
	case "dead":
     mudando_sprite(spr_player_deadl);
	 
	 timer_reinicia--;
	 
	 if (timer_reinicia <= 0)
	 {
		 global.vida =  global.max_vida;
		 room_restart();
	 }
	 
	 //ficando visivel
	 if (image_alpha < 1)
	 {
		 image_alpha += 0.01;
	 }
	 
	 if (image_index > image_number -1)
	 {
		 image_speed = 0;
		 image_index = image_number -1; 
	 }
	break;
}

#region
if distance_to_object(obj_porta) <=10{
	if keyboard_check_pressed(ord("P")){
		instance_destroy(global.vida);
		room_goto(rm_mapa_principal);}
}
#endregion
