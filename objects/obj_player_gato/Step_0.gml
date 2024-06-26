var _chao = place_meeting(x, y + 1, obj_chao_gato);

var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);


if (timer_dano <= 0){
velh = (_right - _left ) * vel;
}

if (_chao){

if (_jump)
{
	velv = -vel_jump;
  }
  
if (velh !=0)
{	
	sprite_index = spr_player_run;
	image_xscale = sign(velh);
}
else 
{
	sprite_index = spr_player_idle;
}

}
else
{
	sprite_index = spr_player_jump;

var _inimigo = instance_place(x, y + 5, obj_inimigo_pai_gato);

if (_inimigo){
	dano = false;
	
	if (_inimigo.morto == false){
	velv = -vel_jump;	
	
	_inimigo.dano = true;
	}
}

	velv +=grav;
	
	if(velh != 0)
	{
		image_xscale = sign(velh);
	}
}

//dano no player

if (dano){
	
	sprite_index = spr_player_dano;
}	

if (timer_dano > 0){
	timer_dano--;
}

else{
	dano = false;
}

if (inv_timer >0){
	
	inv_timer--;
	
	image_alpha = .5;
}

else{
	image_alpha = 1;
}

//dano

var _inimigo = instance_place(x, y, obj_inimigo_pai_gato);

if (_inimigo && inv_timer <= 0){
	
	if (_inimigo.morto == false){
	dano = true;
	
	timer_dano = tempo_dano;
	inv_timer = inv_tempo;
	}
}



#region
if distance_to_object(obj_arvore_sair) <=10{
	if keyboard_check_pressed(ord("P")){
		room_goto(rm_mapa_principal);}
}
#endregion
