function save_stats_2() {
    ini_open("stats2.ini");
    // Guardar datos para cada dificultad
    for (var d = 1; d <= 3; d++) {
        ini_write_real("Stats", "Best" + string(d), global.stats2[d].best);
        ini_write_real("Stats", "Attempts" + string(d), global.stats2[d].attempts);
    }
    ini_close();
}
