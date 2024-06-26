/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if inicializar == true{
if caractere < string_length(textos_grid[# INFOS.TEXTO,pagina]){
	var _snd = choose (snd_dialogo_mapa, snd_dialogo_mapa1);
	audio_play_sound(_snd, 1, 0.5,1);
	caractere ++;
	alarm[0] = 2;
} else {
        audio_stop_all();
}
}
