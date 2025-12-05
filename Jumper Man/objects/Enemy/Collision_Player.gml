if (other.can_take_damage) {

    other.can_take_damage = false;

    if (global.oxygen > 0 && global.tempo > 15) {
        global.oxygen -= 1;
        global.tempo -= 15;

    }
	
        // Mover o PLAYER (other) para trás
        other.x -= 60;
        other.y -= 15;
}
