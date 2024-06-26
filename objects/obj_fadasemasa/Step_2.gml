/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
repeat(abs(velh))
{
	// subindo e descendo rampas
	// subindo
	if(place_meeting(x + sign(velh), y , obj_chaofada) && !place_meeting(x + sign(velh), y - 1, obj_chaofada)) y--;
	
	
	//descendo
	if (!place_meeting( x + sign(velh), y, obj_chaofada) &&
	    !place_meeting(x + sign(velh), y + 1, obj_chaofada) &&
		place_meeting(x + sign(velh), y + 2, obj_chaofada)) y++;
	
	
	
	if(!place_meeting(x + sign(velh), y, obj_chaofada))
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
	if(!place_meeting(x, y + sign(velv), obj_chaofada))
	{
		y += sign(velv);
	}
	else
	{
		
		velv = 1;
		break;
	}
}


