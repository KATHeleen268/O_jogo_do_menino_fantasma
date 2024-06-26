/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if inicializar == true{
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _xx = 0;
var _yy = _guia - 120;
var _c = c_black;
var _sprite = textos_grid[# INFOS.RETRATO, pagina];
var _texto = string_copy(textos_grid[# INFOS.TEXTO, pagina], 0, caractere);
draw_set_font(fnt_dialogo);

//lado esquerdo
if textos_grid[# INFOS.LADO,pagina] == 0{
draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
draw_text(_xx + 216, _yy - 32, textos_grid[# INFOS.NOME, pagina]);
draw_text_ext(_xx + 232, _yy + 32, _texto, 32, _guil - 264);

draw_sprite_ext(_sprite, 0, 100, _guia, 3, 3, 0, c_white, 1);
}//lado direito
else{
draw_rectangle_color(_xx, _yy, _guil - 200, _guia, _c, _c, _c, _c, false);
var _stgw = string_width(textos_grid[# INFOS.NOME, pagina])
draw_text(_guil - 216 - _stgw, _yy - 32, textos_grid[# INFOS.NOME, pagina]);
draw_text_ext(_xx + 32, _yy + 32, _texto, 32, _guil - 264);

draw_sprite_ext(_sprite, 0, _guil - 100, _guia, -3, 3, 0, c_white, 1);
}
}
