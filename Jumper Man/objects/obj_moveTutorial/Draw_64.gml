if (global.tutorialFase != -1) {

    draw_set_halign(fa_center);
    draw_set_font(display_get_gui_width() >= 720 ? obj_font : obj_font_small);

    var cx = display_get_gui_width()  * 0.5;
    var cy = display_get_gui_height() / 3;
	
	if(global.tutorialFase != 4 && global.tutorialFase != 5  && global.tutorialFase != 6){
		draw_text(cx, cy - 10, "Fase Tutorial");
	}else if(global.tutorialFase = 4){
		draw_set_colour(c_red);
	}else if(global.tutorialFase = 6){
		
		draw_set_colour(c_yellow);
		draw_text(cx, cy - 10, "WINNNEERRR!!!");
		draw_set_colour(c_white);
	}else{
		draw_set_colour(c_yellow);
		draw_text(cx, cy - 10, "Jumper Man");
		draw_set_colour(c_white);
	}

    var textos = [
        [
            "Teste a movimentacao",
            "CIMA, ESQUERDA, DIREITA e ESPACO",
            "obs: este jogo permite salto duplo!"
        ],
        [
            "HMMMMMM Voce pegou uma OxyGEM!!!!!!!!",
            "Quanto mais OxyGEM's mais tempo para completar a fase!!",
            "obs: O timer e o contador de GEM's estao no topo direito da tela."
        ],
        [
            "Parabens por passar o primeiro nivel!!!",
            "Bob, agora voce precisa tomar muito cuidado com os inimigos e com os buracos.",
            "obs: Eles nao matam, mas podem te atrapalhar MUITOOOO!!!!"
        ],
        [
            "OPS!!",
            "Bob, caindo no buraco voce pode acabar voltando no inicio da jornada."
        ],
		[
            "Game Over!"
        ],
		[
            "Start Game!!",
			"Aperte [ENTER] para comecar o jogo."
        ],
		[
			"PARABENS!!!!",
			"Bob concluiu sua missao e encontrou seu sinalizador,",
			"agora voltara para casa em seguranca!"
        ]
    ];

    var fase = global.tutorialFase;
    if (fase < array_length(textos)) {

        for (var i = 0; i < array_length(textos[fase]); i++) {
            draw_text(cx, cy + 10 + i * 20, textos[fase][i]);
        }
    }
}
