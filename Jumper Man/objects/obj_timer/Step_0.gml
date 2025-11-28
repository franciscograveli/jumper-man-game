acumulador += 1;

if (acumulador >= room_speed) {
    acumulador = 0;

    if (global.tempo > 0) {
        global.tempo -= 1;
    }
}
