if (morto) {
	sprite_index = spr_escor_inimigo_dead;
 if (image_speed <= 0){
	 
	 image_alpha -= 0.01;
 }

if (image_alpha <=0){
	instance_destroy();
}

exit;

}
//gravidade
var _chao = place_meeting(x, y + 1, obj_chao_gato);
if (_chao){
	
	tempo_decidir_andar -=1;
	
	if(tempo_decidir_andar <=0){
	
	andando = choose(true, false);
	
	if (andando){
	   
	   velh = choose(vel, -vel);
	}
else {
velh = 0;		
}	
	tempo_decidir_andar = room_speed * 3;
	}

if (velh !=0 && dano == false){
	sprite_index = spr_escor_inimigo_run;
	image_xscale = sign(velh);
}	

else {
	sprite_index = spr_escor_inimigo_idle;
	}	
	
	if (place_meeting(x + velh, y, obj_chao_gato)){
	
	velh *= -1;
	}
	if (pode_cair == false)
	{
	   if (place_meeting(x + (velh* 10) , y +1, obj_chao_gato) == false) {
	   velh *= -1;
	   
	   }
	}
}	
else {
	
	velv += grav;
	//velh = 0;
	
	if (velh !=0){
	image_xscale = sign(velh);	
	}
}	

//dano

if (dano && morto == false){
	sprite_index = spr_escor_inimigo_dano;
	velh = 0;
}





