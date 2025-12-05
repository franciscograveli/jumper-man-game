// texto do timer
var txt = "OxyGem: ";

// medir largura do texto
var tw = string_width(txt);

// posição alinhada à direita

// desenhar
draw_set_color(c_white);
draw_set_font(obj_font_small);

if( display_get_gui_width() >= 720 ){
draw_set_font(obj_font);
}

var x_pos = display_get_gui_width() - 60;
var y_pos = 40;

draw_text(x_pos, y_pos, txt);

var gem = string(global.oxygen);

draw_set_color(c_blue);

draw_text(x_pos + tw/2 + 5, y_pos, gem);