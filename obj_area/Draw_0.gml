draw_self()
image_xscale=r/50
image_yscale=r/50
draw_set_font(fnt_normal)
draw_text(32,32,"¿Cuál es el área de un círculo con radio="+string(r)+"cm?")
draw_set_font(fnt_text)
draw_set_color(c_black)

draw_set_color(c_black)
draw_text(64,650,"Presiona Enter para saltar a un nuevo ejercicio\nPresiona R para ver la respuesta y explicación.")
draw_set_font(fnt_normal)
draw_text(64,200,answer)