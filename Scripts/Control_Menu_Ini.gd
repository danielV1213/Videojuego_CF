extends Control

var button_pressed : int = 0
#Funciones para programar las señales de los botones.
func _on_Btn_Jugar_pressed():
	get_tree().change_scene("res://Escenas/Perfiles_Selecc.tscn")

func _on_Btn_Puntaje_pressed():
	print("Aqui Score");
	
func _on_Btn_Ajustes_pressed():
	print("Aqui Configuración");

func _on_Btn_Salir_pressed():
	get_tree().quit()

func _input(event):
	if Input.is_action_pressed("Adelante") || Input.is_action_pressed("Abajo"):
			if Input.is_action_pressed("Adelante"):
				if button_pressed == 0:
					$VBoxBotones/Btn_Jugar.grab_focus()
				elif button_pressed == 1:
					$VBoxBotones/Btn_Jugar.grab_focus()
					button_pressed = 0
				elif button_pressed == 2:
					$VBoxBotones/Btn_Puntaje.grab_focus()
					button_pressed = 1
				elif button_pressed == 3:
					$VBoxBotones/Btn_Ajustes.grab_focus()
					button_pressed = 2
			print(button_pressed)
			if Input.is_action_pressed("Abajo"):
				if button_pressed == 0:
					$VBoxBotones/Btn_Puntaje.grab_focus()
					button_pressed = 1
				elif button_pressed == 1:
					$VBoxBotones/Btn_Ajustes.grab_focus()
					button_pressed = 2
				elif button_pressed == 2:
					$VBoxBotones/Btn_Salir.grab_focus()
					button_pressed = 3
				elif button_pressed == 3:
					$VBoxBotones/Btn_Salir.grab_focus()

			print(button_pressed)
			
	if event.is_action_pressed("Aceptar"):
		if $VBoxBotones/Btn_Jugar.has_focus():
			_on_Btn_Jugar_pressed()
		elif $VBoxBotones/Btn_Puntaje.has_focus():
			_on_Btn_Puntaje_pressed()
		elif $VBoxBotones/Btn_Ajustes.has_focus():
			_on_Btn_Ajustes_pressed()
