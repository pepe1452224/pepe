function draw_arrow(x1, y1, x2, y2, arrow_size) {
    // Dibuja la línea principal
    draw_line(x1, y1, x2, y2);
    
    // Calcula el ángulo principal de la línea
    var ang = point_direction(x1, y1, x2, y2);
    // Define el ángulo para la cabeza (150° de diferencia en ambos lados)
    var angle1 = ang + 150;
    var angle2 = ang - 150;
    
    // Calcula las posiciones de los dos extremos de la cabeza de la flecha
    var ax = x2 - lengthdir_x(arrow_size, angle1);
    var ay = y2 - lengthdir_y(arrow_size, angle1);
    var bx = x2 - lengthdir_x(arrow_size, angle2);
    var by = y2 - lengthdir_y(arrow_size, angle2);
    
    // Dibuja la cabeza de la flecha
    draw_line(x2, y2, ax, ay);
    draw_line(x2, y2, bx, by);
}
