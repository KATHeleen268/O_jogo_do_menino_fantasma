/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//se eu estou usando a sprite de dano e a animaçao acabou  eu morro
if (sprite_index == spr_inimigo_porco_dano)
{
	morto = true;
}
if (sprite_index == spr_inimigo_porco_morto)
{
	image_speed = 0;
	image_index = 3;
}