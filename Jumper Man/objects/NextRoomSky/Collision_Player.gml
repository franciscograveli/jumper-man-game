global.spawn_x = other.x; 
global.spawn_y = room_height - sprite_get_height(spr_player) - 32;
var t = instance_create_layer(0, 0, "ChangeRoom", obj_transitionUp);
t.next_room = RoomEnemies;