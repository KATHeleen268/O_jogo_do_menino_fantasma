/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
script_execute(Script5);

if key_pause {
global.vida = 0;
if (room != rm_pause) {
if (instance_exists(obj_pinguim_player)) {
obj_pinguim_player.persistent = false;
isPause = true;
instance_activate_all()
}
room_previous(room)
room_goto(rm_pause);
} else {
room_goto_previous();
instance_deactivate_all(true);
}
}

