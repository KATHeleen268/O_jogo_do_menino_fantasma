/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//CONTROLANDO O PLAYER
var _chao = place_meeting(x, y + 1, obj_chao_ovo)

var _left, _right, _jump;
_left  = keyboard_check(inputs.left)
_right = keyboard_check(inputs.right)
_jump  = keyboard_check_pressed(inputs.jump)

velh  = (_right - _left) * vel;



//pulando 
if (_chao)
{
      if (_jump)
     {
	    velv = -vel_jump;
     }
	 
	 //se eu estou no e me movendo
	 if (velh != 0)
	 {
		 //mudo a sprite
		 sprite_index = Spr_player_runo;
		 
		 
		 //faça ele olhar pra onde estou indo
		 image_xscale = sign(velh);
	 }
	 else
	 {
		 sprite_index = player;
	 }
}
else  //nao estou no chão
{
	//mudando a sprite
	sprite_index = Spr_player_jumpo;
	
  //aplicando a gravidade
  velv += grav;
  if (velh != 0)
  {
	  image_xscale = sign(velh);
  }
}


#region
if distance_to_object(obj_galinha) <=10{
	if keyboard_check_pressed(ord("P")){
		room_goto(rm_mapa_principal);}
}
#endregion
