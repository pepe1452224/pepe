// Este código revisa si el nivel del agua es menor que el limite.
if (global.capa > -55) {
    // Y si el nivel no ha llegado, crea una sola partícula de agua (obj_agua_in)
    instance_create_layer(x + random_range(-5, 5), y + random_range(0, 5), layer, obj_agua_in);
}