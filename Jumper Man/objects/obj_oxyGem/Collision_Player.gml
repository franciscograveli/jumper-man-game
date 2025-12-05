//
if (variable_global_exists("oxygen")) {
    global.oxygen += 1;
	global.tempo += 15;
	instance_destroy()
}

if (room_get_name(room) == "RoomTutorial") {
    global.tutorialFase = 1;
} else {
    global.tutorialFase = -1;
}
