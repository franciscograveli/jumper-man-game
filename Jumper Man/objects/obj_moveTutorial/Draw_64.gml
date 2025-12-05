// Draw GUI
if(global.tutorialFase != -1){
	
	draw_set_halign(fa_center);
	draw_set_font(obj_font_small);
	
	if( display_get_gui_width() >= 720 ){
		draw_set_font(obj_font);
	}
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 - 10, "Fase Tutorial");
	if(global.tutorialFase == 0){
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + 10, "Teste a movimentacao");
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + 30, "CIMA, ESQUERDA, DIREITA e ESPACO");
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + 50, "obs: este jogo permite salto duplo!");
	}

	if(global.tutorialFase == 1){
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + 10, "HMMMMMM Voce pegou uma OxyGEM!!!!!!!!");
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + 30, "Quanto mais OxyGEM's mais tempo para completar a fase!!");
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + 50, "obs: O timer e o contador de GEM's estao no topo direito da tela.");
	}

	if(global.tutorialFase == 2){
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + 10, "Parabens por passar o primeiro nível!!!");
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + 30, "Bob, agora voce precisa tomar muito cuidado com os inimigos.");
		draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + 50, "obs: Eles não matam, mas podem te atrapalhar MUITOOOO!!!!");
	}
}
