global.spawn_x = other.x;
global.spawn_y = 50;
var t = instance_create_layer(0, 0, "ChangeRoom", obj_transitionDown);
t.next_room = RoomTutorial;