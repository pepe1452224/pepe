
function load_stats() {
    if (file_exists("stats.ini")) {
        ini_open("stats.ini");
        global.stats = [];
        // Cargar estadísticas para cada dificultad (1, 2 y 3 dígitos)
        for (var d = 1; d <= 3; d++) {
            global.stats[d] = {
                best: ini_read_real("Stats", "Best" + string(d), 0),
                attempts: ini_read_real("Stats", "Attempts" + string(d), 0)
            };
        }
        ini_close();
    } else {
        // Inicializar estadísticas en cero si no existe el archivo
        global.stats = [];
        for (var d = 1; d <= 3; d++) {
            global.stats[d] = { best: 0, attempts: 0 };
        }
    }
}
