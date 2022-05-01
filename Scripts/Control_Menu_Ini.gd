extends Control

func _process(delta): #Función para programar funcionalidad.
	if Input.is_action_pressed("Izquierda"):
		_on_Btn_Jugar_pressed()
	if Input.is_action_pressed("Adelante"):
		_on_Btn_Puntaje_pressed()
	if Input.is_action_pressed("Derecha"):
		_on_Btn_Ajustes_pressed()
		
#Funciones para programar las señales de los botones.
func _on_Btn_Jugar_pressed():
	get_tree().change_scene("res://Escenas/Perfiles_Selecc.tscn")

func _on_Btn_Puntaje_pressed():
	pass # Replace with function body.
	
func _on_Btn_Ajustes_pressed():
	pass # Replace with function body.
