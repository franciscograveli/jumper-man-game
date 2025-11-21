//TECLAS
k_right = keyboard_check(vk_right);
k_left  = keyboard_check(vk_left);
k_space = keyboard_check(vk_space);
k_jump  = keyboard_check_pressed(vk_space);


//GRAVIDADE E SALTO
_onGround = (_movementY >= 0) && place_meeting(x, y + 2, collisions);

if (_onGround) {
    _movementY = 0;
    maxJumps = 2;
} else {
    _movementY += grav;
}

if (k_jump && (_movementY == 0 || maxJumps > 0)) {
    if (maxJumps > 1)
        _movementY = -jump_force;
    else
        _movementY = -(jump_force * 0.8);

    maxJumps -= 1;
}


//MOVIMENTO X
_movementX = (k_right - k_left) * move_speed;

if (_movementX != 0) {
    _movementX += _movementX;
    image_xscale = sign(_movementX);
}

move_and_collide(_movementX, 0, collisions, 5);


//SELEÇÃO DE SPRITE
if (!_onGround && _movementY < 0) {
    sprite_index = spr_jumpPlayer;
}
else if (_movementX != 0) {
    sprite_index = spr_movePlayer;
}
else {
    sprite_index = spr_player;
}

//MOVIMENTO E COLISÃO Y
if (_movementY >= 0) {
    move_and_collide(0, _movementY, collisions, 20);
} else {
    y += _movementY;
}