function save_stats() {
    ini_open("stats.ini");
    // Guardar datos para cada dificultad
    for (var d = 1; d <= 3; d++) {
        ini_write_real("Stats", "Best" + string(d), global.stats[d].best);
        ini_write_real("Stats", "Attempts" + string(d), global.stats[d].attempts);
    }
    ini_close();
}
