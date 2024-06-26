/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//ficando trnasparente quando o player passar atras
//checando se o player existe 
if (instance_exists(obj_player_mapa))
{
	//checando se o player esta mais alto doque eu
	if (obj_player_mapa.y < y)
	{
	//checando se oplayer esta mais ou menos atras
	if ( point_in_rectangle(obj_player_mapa.x, obj_player_mapa.y, bbox_left - 10, bbox_top - 30, bbox_right, bbox_top))
     {
		 //ficando transparente
		 image_alpha = lerp(image_alpha, .5, .05);
	 }
	 else
	 {
		 image_alpha = lerp(image_alpha, 1, .1);
	 }
	}
}



