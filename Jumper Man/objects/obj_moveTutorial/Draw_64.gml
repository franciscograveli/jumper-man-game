if (global.tutorialFase != -1) {

    draw_set_halign(fa_center);
    draw_set_font(display_get_gui_width() >= 720 ? obj_font : obj_font_small);

    var cx = display_get_gui_width()  * 0.5;
    var cy = display_get_gui_height() / 3;

    draw_text(cx, cy - 10, "Fase Tutorial");

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
        ]
    ];

    var fase = global.tutorialFase;
    if (fase < array_length(textos)) {

        for (var i = 0; i < array_length(textos[fase]); i++) {
            draw_text(cx, cy + 10 + i * 20, textos[fase][i]);
        }
    }
}
