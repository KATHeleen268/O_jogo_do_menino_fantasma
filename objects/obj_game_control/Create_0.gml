/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//metodo de desenhar um coracao
desenha_coracao = function(_x, _y)
{
	draw_sprite_ext(spr_coracao, 8 * (get_timer() / 1000000), _x, _y, 3, 3, 0, c_white, 1);
}


