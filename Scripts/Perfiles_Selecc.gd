extends Control

func _process(delta): #Función para programar funcionalidad.
	if Input.is_action_pressed("Izquierda"):
		_on_Btn_DV_pressed()
	if Input.is_action_pressed("Adelante"):
		_on_Btn_CM_pressed()
	if Input.is_action_pressed("Derecha"):
		_on_Btn_DS_pressed()
		

#Funciones para programar las señales de los botones.
func _on_Btn_DV_pressed():
	get_tree().change_scene("res://Escenas/Desarrollo_Videojuegos.tscn")
	
func _on_Btn_CM_pressed():
	get_tree().change_scene("res://Escenas/Contenidos_Multimedia.tscn")

func _on_Btn_DS_pressed():
	get_tree().change_scene("res://Escenas/Desarrollo_Software.tscn")
