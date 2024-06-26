/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//collisions
if place_meeting(x + xspd, y, obj_wall) == true
   {
	xspd = 0;
   }
   if place_meeting(x, y + yspd, obj_wall) == true
   {
	yspd = 0;
   }

x += xspd;
y += yspd;


//set sprite
mask_index = sprite[DOWN];
if yspd == 0
   {
   if xspd > 0 {face = RIGHT};
   if xspd < 0 {face = LEFT};
   }

if xspd == 0
 {
   if yspd > 0 {face = DOWN};
   if yspd < 0 {face = UP};
   }

sprite_index = sprite[face];   

//animate
if xspd == 0 && yspd == 0
    {
     image_index = 0
	}
	
	
	
//depth
depth = -bbox_bottom;


#region dialogo
if distance_to_object(obj_pai_npcs_mapa) <=10 {
	if keyboard_check_pressed(ord("F")) {
		var _npc = instance_nearest( x, y, obj_pai_npcs_mapa);
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo_mapa);
		_dialogo.npc_nome = _npc.nome;
	}
}
#endregion

#region
if distance_to_object(obj_casa_ovo) <=10{
	if keyboard_check_pressed(ord("C")){
		room_goto(rm_fase_ovo);}
}
#endregion

#region
if distance_to_object(obj_casa_arvore) <=10{
	if keyboard_check_pressed(ord("C")){
		global.vida = 3;
		room_goto(Rm_luann);}
}
#endregion

#region
if distance_to_object(obj_casafada) <=10{
	if keyboard_check_pressed(ord("C")){
		room_goto(rm_fada);}
}
#endregion

#region
if distance_to_object(obj_casapinguim) <=10{
	if keyboard_check_pressed(ord("C")){
		room_goto(rm_pinguim);}
}
#endregion

#region
if distance_to_object(obj_casagato2) <=10{
	if keyboard_check_pressed(ord("C")){
		room_goto(rm_gato);}
}
#endregion