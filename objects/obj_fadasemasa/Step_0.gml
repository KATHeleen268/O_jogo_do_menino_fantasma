/// @description Inserir descrição aqui

// Você pode escrever seu código neste edi



chao = place_meeting(x, y + 1, obj_chaofada);

var _left, _right, _jump, _jump_s, _run, _dash;

_left = keyboard_check(vk_left);
_right  = keyboard_check(vk_right);
_jump = keyboard_check_pressed(vk_space);
_jump_s = keyboard_check_released(vk_space);
_run = keyboard_check(vk_shift);
_dash = keyboard_check_pressed(ord("Z"));


if(_run)
{
	var _velocidade = velh_cor
}
else
{
	var _velocidade = max_velh;
}




velh = (_right - _left) * max_velh;

//ajustando a direcao que o player olha
if(velh != 0) 
{
	image_xscale = sign(velh);
	
	
	if(_run)
	{
		sprite = spr_playerfadacorre
	}
	else
	{
	sprite = spr_fadaandando;
	}
}
else
{
	sprite = spr_fadasemasa;
}

//pulando se estiver no chao
if (chao)
 {
if (_jump) velv = - max_velv;
 }
 else
 {
	velv +=  grav; 
	
	
	if (_jump_s)
	{ 
		if (velv < 2)
		{
			velv = velv * .5;
		}
 }
 
 //ajustando as sprites do player
 if(velv < 0) sprite = spr_fadapulo;
 else sprite = spr_fadapulodesce;
 
 if (_jump && pulo > 1)
 {
	 velv = - max_velv;
	 pulo --;
 }
 }
 

 
 if (place_meeting(x, y, obj_pai_inimigo_fada)) 
 {
	 _dano = true;
}


if (_dano)
{
	if(controle_dano) 
	{
		velv = -3;
		controle_dano = false;
		dano_dir = sign(velh) * -5;
		image_speed = .1;
		life --;
	}
	sprite = spr_fadadano;
	velh = dano_dir;
	image_blend = c_fuchsia;
	
	dano_timer --;
	
	if(dano_timer <= 0)
	{
		_dano = false;
		dano_timer = room_speed / 2;
		image_blend = c_white;
		controle_dano = true;
		image_speed = .5;
	}
}

 var _dano_inimigo = collision_rectangle(x -  sprite_width/4, y + 1, x + sprite_width / 4, y + 3, obj_pai_inimigo_fada, 1, 1)

if(_dano_inimigo && !_dano)
{
	velv = - max_velv;
	instance_destroy(_dano_inimigo);
	
}


if (place_meeting(x, y, obj_vidaf)){
	life += 1;
	instance_destroy(obj_vidaf);
}


 
 sprite_index = sprite;
 
 #region
if distance_to_object(obj_goodcogumelocomcara) <=10{
	if keyboard_check_pressed(ord("P")){
		room_goto(rm_fada1);}
}
#endregion
 
