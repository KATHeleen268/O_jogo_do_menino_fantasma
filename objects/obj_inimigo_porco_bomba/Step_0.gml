/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


velv += grav;

//se eu ainda nao levei dano e levei dano eu vou para o esstado de dano
if (dano && !tomei_dano)
{
	estado = "hit";
	tomei_dano = true;
}

switch(estado)
{
	case "idle":
		muda_sprite(spr_porco_bomba_idle);
		
		velh = 0;
		
		ver_o_player();
		
		//diminuindo o timer do estado
		timer_estado--;
		if (timer_estado <= 0)
		{
			estado = choose("run", "idle");
			timer_estado = tempo_estado;
			
			//se ele for para o estado de run ele anda
			if (estado == "run")
			{
				velh = choose(-vel / 3, vel / 3);
			}
		}
		
	break;
	
	case "run":
	
		ver_o_player();	
		muda_sprite(spr_porco_bomba_run);
		
		//olhando para o lado certo
		if (velh != 0)
		{
			image_xscale = sign(velh);
		}
		
		//mudando de direçao ao bater na parade
		if (place_meeting(x + velh * 5, y, obj_chao_lulu))
		{
			velh *= -1;
		}
		
		
		timer_estado--;
		if (timer_estado <= 0)
		{
			estado = choose("run", "idle",);
			timer_estado = tempo_estado;
		}
		
	break;
	
	case "joga":
		muda_sprite(spr_porco_joga);
		
		//se eu terminei a animaçao, eu viro o porco normal
		if (image_index >= image_number - 1)
		{
			//jogando a bomba
			var _bomba = instance_create_layer(x, y - 14, "projeteis", obj_bomba);
			_bomba.velh = 3 * image_xscale;
			_bomba.velv = -3;
			_bomba.momento = "on";
			
			instance_change(obj_imigo_porco, true);
		}
		
	break;
	
	case "hit":
		muda_sprite(spr_inimigo_porco_dano);
		
		if (image_index >= image_number - 1)
		{
			estado = "dead";
		}
	break;
	
	case "dead":
		muda_sprite(spr_inimigo_porco_morto);
		
		if (image_index >= image_number - 1)
		{
			instance_destroy()
		}
	
	break;
	
}

//se eu bater na parede eu mudo de direçao
	if (place_meeting(x + velh, y, obj_chao_lulu))
	{
		velh *= -1;
	}
	
	//se eu nao nao posso cair, entao quando eu for cair eu mudo de direçao
	if ( pode_cair == false)
	{
		if (place_meeting(x + (velh * 10), y +1, obj_chao_lulu) == false)
		{
			//se eu nao posso cair e nao estou tocando no chao na minha frente
			//entao eu mudo de direçao
			velh *= -1;
		}
			
	}
	


