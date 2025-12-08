// TECLAS
k_right = keyboard_check(vk_right);
k_left  = keyboard_check(vk_left);
k_jump  = keyboard_check_pressed(vk_space);

// GRAVIDADE + CHÃO
_onGround = (_movementY >= 0) && place_meeting(x, y + 2, tile_map_ground);

if (_onGround) {
    _movementY = 0;
    maxJumps = 2;
} else {
    _movementY += grav;
}

// PULO
if (k_jump && (_onGround || maxJumps > 0)) {
    if (maxJumps > 1)
        _movementY = -jump_force;
    else
        _movementY = -(jump_force * 0.8);

    maxJumps -= 1;
}

// MOVIMENTO X
_movementX = (k_right - k_left) * move_speed;

if (_movementX != 0) {
    image_xscale = sign(_movementX);
}

if (place_meeting(x + _movementX, y, tile_map_walls)) {
        _movementX = 0;
 }else{
	move_and_collide(_movementX, 0, tile_map_ground, 5);
 }
// AJUSTE COLISÃO PAREDE
if (!_onGround) {
    if (place_meeting(x + 2, y, tile_map_walls) || place_meeting(x - 2, y, tile_map_walls)) {
        _movementX = 0;
		move_and_collide(_movementX, 0, tile_map_ground, 5);

    }
}

// SPRITES
if (!_onGround && _movementY < 0) {
    sprite_index = spr_jumpPlayer;
}
else if (_movementX != 0) {
    sprite_index = spr_movePlayer;
}
else {
    sprite_index = spr_player;
}

// LIMITADOR DE QUEDA
_movementY = clamp(_movementY, -10000, maxFall);

// MOVIMENTO Y
if (_movementY >= 0) {
    move_and_collide(0, _movementY, tile_map_ground, 20);
} else {
    y += _movementY;
}

// DANO E TEMPO
if (!place_meeting(x, y, Enemy)) {
    can_take_damage = true;
}

if(global.tempo <= 0){
	room_goto(GameOver)
}
