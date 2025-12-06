m_speed = 3
m_dir = choose(-1,1);
_movementX = 0
tile_map_walls = layer_tilemap_get_id("WallsTiles")

stopped = false;
stop_time = int64(random_range(30, 60));

alarm[0] = -1;
