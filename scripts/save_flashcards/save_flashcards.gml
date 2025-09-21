/// save_flashcards()
var path = working_directory + "flashcardsde.ini";
ini_open(path);
ini_write_real("flashcards", "count", ds_list_size(global.tufc));
for (var i = 0; i < ds_list_size(global.tufc); i++) {
    var card = global.tufc[| i];
    var parts = string_split(card, "|");
    ini_write_string("flashcards", "q" + string(i), parts[0]);
    ini_write_string("flashcards", "a" + string(i), parts[1]);
}
ini_close();
