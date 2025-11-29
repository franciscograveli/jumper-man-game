// comportamento
if (stopped) {
    _movementX = 0;
    sprite_index = spr_idleEnemy;
} 
else {
    _movementX = m_speed * m_dir;
}

if (!stopped && _movementX != 0) {
    image_xscale = sign(_movementX);
    sprite_index = spr_runEnemy;
}

x += _movementX;
