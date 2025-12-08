if (other.can_take_damage) {

    other.can_take_damage = false;

    if (global.oxygen > 0) {
        global.oxygen -= 1;
    }
	
	if(global.tempo - 15 < 0){
		global.tempo = 0;
	}else{
		global.tempo -= 15;
	}
    var dir = sign(other.x - x) * -1;

    var acrescimo = 30 * dir;

    if (!place_meeting(other.x + acrescimo, other.y, tile_map_walls)) {
        other.x += acrescimo;
    }

    other.y -= 15;
}
