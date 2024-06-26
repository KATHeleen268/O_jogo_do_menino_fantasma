/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//desenhando a quantidade de vidas
//draw_text(20, 20, global.vida);

var _x = 20;
var _y = 40;
var _qtd = 40;
//desenhando um coraçao por vida
repeat(global.vida)
{
	desenha_coracao(_x, _y);
	
	_x += _qtd ;
}
 




