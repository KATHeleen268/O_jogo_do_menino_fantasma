// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_textos(){
	switch npc_nome{
		case "Pinguim Jack":
		   ds_grid_add_text("Oii eu sou o Pinguim Jack", spr_pinguim_retrato, 0, "Pinguim Jack");
		   ds_grid_add_text("Olá sou o Fantasminha", spr_fantasminha_retrato, 1, "Fantasminha");
		   ds_grid_add_text("Que legal prazer te conhecer, quer me ajudar a apanhar sushis? Eu estou faminto!", spr_pinguim_retrato, 0, "Pinguim Jack");
				
		  
		break;
		case "Fada Daisy":
		ds_grid_add_text("Oii eu me chamo Daisy e sou uma fada", spr_fada_retrato, 0, "Fada Daisy");
		ds_grid_add_text("hey que nome legal, eu sou o Fantasminha", spr_fantasminha_retrato,1, "Fantasminha");
		ds_grid_add_text("Mas se voçê é uma fada, onde estão suas asas?", spr_fantasminha_retrato, 0, "Fantasminha");
		ds_grid_add_text("Eu tinha asas, mas elas foram roubadas por uma bruxa má que mora no bosque", spr_fada_retrato, 1, "Fada Daisy");
		ds_grid_add_text("Quer me ajudar a recuperar minhas asas?", spr_fada_retrato, 0, "Fada Daisy");
		break;
		
		case "Árvore Robert":
		ds_grid_add_text("Eii, pirralho deixe eu te contar uma história", spr_arvore_retrato, 0, "Árvore Robert");
		ds_grid_add_text("Que legal, conte-me", spr_fantasminha_retrato, 1, "Fantasminha");
		ds_grid_add_text("Há muito tempo essa pequena vila, era na verdade uma ilha com rei e tudo.", spr_arvore_retrato, 0,  "Árvore Robert");
		ds_grid_add_text("Os porcos queriam invadir e o rei com seu exercito nunca deixavam.", spr_arvore_retrato, 1,  "Árvore Robert");
		ds_grid_add_text("Após muito tempo só sobrevivemos eu, o Rei, e os porcos me invadiram para planejar atacar novamente", spr_arvore_retrato, 0,  "Árvore Robert");
		ds_grid_add_text("Quer ajudar o rei a expulsá-los?", spr_arvore_retrato, 1,  "Árvore Robert"); 
		break;
		
		case "Gatuno":
		ds_grid_add_text("Olá Gatuno.", spr_fantasminha_retrato, 1, "Fantasminha");
		ds_grid_add_text("MIAU Miauu", spr_gato_retrato, 0, "Gatuno");
		break;
		
		case "Ovolino":
		ds_grid_add_text("Oii eu sou Ovolino", spr_ovo_retrato, 0, "Ovolino");
		ds_grid_add_text ("Olá que nome maneiro combina bem com voçê", spr_fantasminha_retrato, 1, "Fantasminha");
		ds_grid_add_text( "Obrigada", spr_ovo_retrato,0, "Ovolino");
		ds_grid_add_text( "Quer procurar a minha mãe comigo?", spr_ovo_retrato, 1, "Ovolino");
		break;
	}

}

function ds_grid_add_row(){
	//argumento da grid
	
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text(){
	//@argumento texto
	//@argumento retrato
	//@argumento lado
	
	var _grid = textos_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}

