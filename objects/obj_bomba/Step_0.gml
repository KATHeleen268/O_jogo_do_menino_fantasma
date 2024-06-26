/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


velv += grav;
if (place_meeting(x, y + 1, obj_chao_lulu))
{
	if (velh != 0)
	{
		velh *= .92;
	}
}
else
{
	velh *= .995;
}

if (momento == "off")
{
	//codigo do off
	sprite_index = spr_bomba;
}
else if (momento == "on")
{
	//codigo do on
	sprite_index = spr_bomba_on;
	
	//rodando o boom timer
	if (boom_timer > 0)
	{
		boom_timer--;
	}
	else
	{
		//se o boom timer for 0 ou menos
		momento  = "boom";
	}	
}
else if (momento == "boom")
{
	//codigo do boom
	
	//checando se ela ja mudou de sprite 
	if (sprite_index != spr_bomba_boom)
	{
		//ou seja, eu acabei de chegar nesse momento
		//mudo de sprite
		sprite_index = spr_bomba_boom;
		//começo a animaçao do 0
		image_index = 0;
	}
	
	
	//se eu terminar a animaçao eu me destruo
	if (image_index >= image_number-1)
	{
		instance_destroy();
	}

	//checando se estou colidindo com o player
	var _player = instance_place(x, y, obj_player_rei);
	if (_player)
	{
		with(_player)
		{
	           dano = true;
			//Dando valor do timer dano
	        timer_dano = tempo_dano;
	        inv_timer  = inv_tempo;
	
		}
	}
}


