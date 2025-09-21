/// scr_load_flashcards()

global.s = 80; // ancho máximo en caracteres
var path = working_directory + "flashcardsde.ini";

// Leer cuántas tarjetas hay
ini_open(path);
var cnt = ini_read_real("flashcards", "count", -1);
ini_close();

show_debug_message("load_flashcards: count = " + string(cnt));

// Aseguramos existencia y limpieza de global.tufc
if (!variable_global_exists("tufc")) {
    global.tufc = ds_list_create();
} else {
    if (ds_exists(global.tufc, ds_type_list)) {
        ds_list_clear(global.tufc);
    } else {
        global.tufc = ds_list_create(); // por si existía pero se eliminó
    }
}

// Cargar flashcards si existen
if (cnt > 0) {
    ini_open(path);
    for (var i = 0; i < cnt; i++) {
        var q = ini_read_string("flashcards", "q" + string(i), "");
        var a = ini_read_string("flashcards", "a" + string(i), "");
        var fq = scr_format_text(q, global.s);
        var fa = scr_format_text(a, global.s);
        ds_list_add(global.tufc, fq + "|" + fa);
    }
    ini_close();
}

