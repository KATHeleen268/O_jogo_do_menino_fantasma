/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

chao = place_meeting(x, y + 1,obj_colisaoenemyfada);
parede = place_meeting(x + sign(velh) , y, obj_colisaoenemyfada);

 
if (parede) velh *= -1;

if(velh != 0 ) image_xscale = sign(velh);


//gravidade
if(!chao)
{
	velv += grav;
}
