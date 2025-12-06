grav = 0.5
move_speed = 2
_movementY = 0
_movementX = 0
jump_force = 8.5
maxJumps = 0
maxFall = 5;

tile_map_ground = layer_tilemap_get_id("Platforms")
tile_map_walls = layer_tilemap_get_id("WallsTiles")

collisions = [tile_map_ground, tile_map_walls]

//globals
can_take_damage = true;
global.tempo = 30;

global.oxygen = 0;
global.tutorialFase = -1;
if (!variable_global_exists("spawn_x")) {
    global.spawn_x = x;
}
if (!variable_global_exists("spawn_y")) {
    global.spawn_y = y;
}
x = global.spawn_x;
y = global.spawn_y;

//ajustar tela proporcionalmente
window_w = 1280;
window_h = 720;
//window_set_size(window_w, window_h);
display_set_gui_size(window_get_width(), window_get_height());
window_center();

draw_set_font(obj_font_small);