/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor







// Inherit the parent event
event_inherited();

visao = 120;
estado = "idle"; //idle, run, pega, joga

tempo_estado = room_speed * 2;
timer_estado = tempo_estado;

tomei_dano	 =  false;

ver_o_player = function()
{
	var _vi_player = collision_line(x, y - 14, x + visao  * image_xscale, y - 14, obj_player_rei, false, true);
	
	if (_vi_player)
	{
		estado = "joga";
		
		
	}
}


