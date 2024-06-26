/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

repeat(abs(velh))
{
	// subindo e descendo rampas
	// subindo
	if(place_meeting(x + sign(velh), y , obj_colisaoenemyfada) && !place_meeting(x + sign(velh), y - 1, obj_colisaoenemyfada)) y--;
	
	
	//descendo
	if (!place_meeting( x + sign(velh), y, obj_colisaoenemyfada) &&
	    !place_meeting(x + sign(velh), y + 1, obj_colisaoenemyfada) &&
		place_meeting(x + sign(velh), y + 2, obj_colisaoenemyfada)) y++;
	
	
	
	if(!place_meeting(x + sign(velh), y, obj_colisaoenemyfada))
	{
		x += sign(velh);
	}
	else
	{
		velh = 0;
		break;
	}
}



//colusao vertical
repeat(abs(velv))

{
	if(!place_meeting(x, y + velv, obj_colisaoenemyfada))
	{
		y += sign(velv);
	}
	else
	{
		
		velv = 0;
		break;
	}
}

