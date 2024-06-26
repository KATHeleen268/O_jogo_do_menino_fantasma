/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (morto)
{
	sprite_index = spr_inimigo_porco_morto;
	
	//sumindo se  acabou a minha animaçao
	if (image_speed <= 0)
	{
		image_alpha -= 0.01;
	}
	//se eu sumi totalmente eu me destruo
	if (image_alpha <=0)
	{
		instance_destroy();
	}
	
    exit; 
}
	
//checando se o porco esta no chao
var _chao = place_meeting(x, y + 1, obj_chao_lulu);

if (_chao)
{   
	//vou diminuir o tempo de decidir andar
	tempo_decidir_andar -= 1;
	
	//se o tempo acabou< eu decido se eu vou andar
	if (tempo_decidir_andar <= 0)
	{
		andando = choose(true, false, true);
		
		
		
		//escolhendo direçao se ele decidiu andar
		if (andando)
		{
			velh = choose(vel, -vel);
		}
		else
		{ 
			velh = 0;
		}
		
		//resetando o tempo
		tempo_decidir_andar = room_speed * 3;
	}
	
	
	
	
	//controlando a animacao do inimigo
	if (velh != 0 && dano == false)
	{
		sprite_index = spr_inimigo_porco_run
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_imigo_porco_idle
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
}
else
{ //se eu estou no chao eu aplico a gravidade
	velv += grav;
	
	//velh = 0;
	
	if (velh != 0)
	{ 
		image_xscale = sign(velh);
	}
}

//checando se eu estou tomando dano
if (dano && morto == false)
{
	sprite_index = spr_inimigo_porco_dano;
	velh =0;
}


