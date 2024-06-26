/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x = lerp(x, meux * 128, 0.1);

#region
 
 
 if distance_to_object(obj_pai_sushi) <= 4 {
	image_index = 1;
	 
 }else{
	 image_index = 0;
 }
 #endregion
 var _pontuacao {
	 if (place_meeting(x, y, obj_criadordesushis)){
	pontos += 5;
instance_destroy(obj_criadordesushis)
}
}
