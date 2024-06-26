velh        = 0;
velv        = 0;
vel         = 3;
grav        = 0.3;
vel_jump    = 8;

posso_perder_vida = true;
dano        = false;
tempo_dano  = room_speed * 0.5;
timer_dano  = 0;

tempo_reinicia = room_speed * 4;
timer_reinicia = tempo_reinicia;

inv_tempo   = room_speed * 2;
inv_timer   = 0;

estado = "normal"


inputs = {
	    left   : ord("A"),
	    right  : ord("D"),
	    jump   : ord("K")
}

estado_normal = function()
{
	var _chao = place_meeting(x, y + 1, obj_chao_lulu);
	
	var _left, _right, _jump;
	_left    = keyboard_check(inputs.left);
	_right   = keyboard_check(inputs.right);
	_jump    = keyboard_check_pressed(inputs.jump);

	//so posso controlar se o timer de dano esta zerado
	if (timer_dano <= 0)
	{
	    velh     = (_right - _left) * vel;
	}


	//Pulando 
	if (_chao)
	{
		if (_jump)
		{
			velv = -vel_jump;
		}
	
		//Se eu estou no chao e em movendo
		if (velh != 0)
		{
			//mudo sprite
			sprite_index = spr_player_runlu;
			//faço ele olhar para onde eu estou indo
			image_xscale = sign(velh);
		}
		else
		{
			sprite_index = spr_player_idlelu;
		}
	}
	else //nao estou no chao
	{
		//mudando a sprite
		if (velv < 0)
		{
			sprite_index = spr_player_jumplu;
		}
		else
		{
			sprite_index = spr_player_falllu;
		
			//se eu estou indo para baixo, ai eu posso cair na cabeça do inimigo
			var _inimigo = instance_place(x, y + 5, obj_inimigo_pai_lulu);
		
			//se eu cai no inimigo
			if (_inimigo)
			{
				dano = false;
				//se o inimigo nao esta morto
				if (_inimigo.morto == false)
				{
				    //subo no ar novamente!
			
			    	velv = -vel_jump;
			
			    	//avisando para o inimigo que eu acertei ele que ele tomou dano!
				    _inimigo.dano = true;
				}
			}
		}
		//aplicando a gravidade 
		velv += grav;
		if (velh != 0)
		{
			image_xscale = sign(velh);
		}
	}


	if (dano)
	{

		sprite_index = spr_player_danol;
		velh = 0;
		if (posso_perder_vida)
		{
				global.vida--;
				if (global.vida <= 0)
				{
					estado = "dead";
				}
				else
				{
					posso_perder_vida = false;
				}
				
		}

	}

	//se o timer dano e maior que zero, eu diminuo ele
	if (timer_dano > 0)
	{
		timer_dano--;
	}
	else
	{
		//acabou o timer do dano
		dano = false;
		posso_perder_vida = true;
	}
	if (inv_timer > 0)
	{
		inv_timer--;
	
	    image_alpha = .5;
	
	}
	else
	{
		image_alpha = 1
	}

	//tomando dano
	var _inimigo = instance_place(x, y, obj_inimigo_pai_lulu)

	if (_inimigo && inv_timer <= 0)
	{

		if (_inimigo.morto  == false && _inimigo.dano == false)
		{
			dano = true;
			timer_dano = tempo_dano;
			inv_timer  = inv_tempo;
		}
    }
}

