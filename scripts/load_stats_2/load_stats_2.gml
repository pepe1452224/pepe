
function load_stats_2() {
    if (file_exists("stats2.ini")) {
        ini_open("stats2.ini");
        global.stats2 = [];
        // Cargar estadísticas para cada dificultad (1, 2 y 3 dígitos)
        for (var d = 1; d <= 3; d++) {
            global.stats2[d] = {
                best: ini_read_real("Stats", "Best" + string(d), 0),
                attempts: ini_read_real("Stats", "Attempts" + string(d), 0)
            };
        }
        ini_close();
    } else {
        // Inicializar estadísticas en cero si no existe el archivo
        global.stat2 = [];
        for (var d = 1; d <= 3; d++) {
            global.stats2[d] = { best: 0, attempts: 0 };
        }
    }
}
