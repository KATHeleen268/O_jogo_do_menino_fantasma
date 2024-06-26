// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Script2(){

}
randomize();


global.max_vida  = 3;
global.vida      = global.max_vida;

function mudando_sprite(_sprite)
{
	//checar se eu estou com a sprite certa
	if (sprite_index != _sprite)
	{
		sprite_index = _sprite;
		image_index  = 0;
	}
	
}
