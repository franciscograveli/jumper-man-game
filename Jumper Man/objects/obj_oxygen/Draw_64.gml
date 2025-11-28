// texto do timer
var txt = "OxyGem: " + string(global.oxygen);

// medir largura do texto
var tw = string_width(txt);

// posição alinhada à direita
var x_pos = display_get_gui_width() - tw - 100;
var y_pos = 1;

// desenhar
draw_set_color(c_white);
draw_set_font(obj_font);
draw_text(x_pos, y_pos, txt);
