
function load_stats_1() {
    if (file_exists("stats1.ini")) {
        ini_open("stats1.ini");
        global.stats1 = [];
        // Cargar estadísticas para cada dificultad (1, 2 y 3 dígitos)
        for (var d = 1; d <= 3; d++) {
            global.stats1[d] = {
                best: ini_read_real("Stats", "Best" + string(d), 0),
                attempts: ini_read_real("Stats", "Attempts" + string(d), 0)
            };
        }
        ini_close();
    } else {
        // Inicializar estadísticas en cero si no existe el archivo
        global.stats1 = [];
        for (var d = 1; d <= 3; d++) {
            global.stats1[d] = { best: 0, attempts: 0 };
        }
    }
}
