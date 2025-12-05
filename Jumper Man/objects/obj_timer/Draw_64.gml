// texto do timer
var txt = "Time: " + string(global.tempo);


// desenhar
draw_set_color(c_white);
draw_set_font(obj_font_small);

if( display_get_gui_width() >= 720 ){
draw_set_font(obj_font);
}

// medir largura do texto
var tw = string_width(txt);

// posição alinhada à direita
var x_pos = display_get_gui_width() - 60;
var y_pos = 20;

draw_text(x_pos, y_pos, txt);
