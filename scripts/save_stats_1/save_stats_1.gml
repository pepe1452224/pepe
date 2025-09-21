function save_stats_1() {
    ini_open("stats1.ini");
    // Guardar datos para cada dificultad
    for (var d = 1; d <= 3; d++) {
        ini_write_real("Stats", "Best" + string(d), global.stats1[d].best);
        ini_write_real("Stats", "Attempts" + string(d), global.stats1[d].attempts);
    }
    ini_close();
}
