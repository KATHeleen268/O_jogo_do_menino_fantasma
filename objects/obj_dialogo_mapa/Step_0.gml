/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if inicializar == false{
	scr_textos();
	inicializar = true;
	
}

if mouse_check_button_pressed(mb_left){
	if caractere < string_length(textos_grid[# INFOS.TEXTO,pagina]){
		 caractere = string_length(textos_grid[# INFOS.TEXTO,pagina]);
	}else{
		alarm[0] = 2;
		caractere = 0;
	
	if pagina < ds_grid_height(textos_grid) - 1{
		pagina ++;
	}else {
		global.dialogo = false;
		instance_destroy(); 
	}
	}
}
