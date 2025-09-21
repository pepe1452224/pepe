/// scr_format_text(text_input, max_chars)
var text_input = argument0;
var max_chars  = argument1;
var formatted  = "";
var words      = string_split(text_input, " ");
var line       = "";

for (var i = 0; i < array_length(words); i++) {
    var test = line + words[i] + " ";
    if (string_length(test) > max_chars) {
        formatted += line + "\n";
        line = words[i] + " ";
    } else {
        line = test;
    }
}
formatted += line;
return formatted;
