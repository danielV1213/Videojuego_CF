extends Control

var mostrar = false

func _input(event):
	if Input.is_action_pressed("Escape"):
		_on_Btn_Menu_pressed()

func _on_Btn_Menu_pressed():
	if mostrar == true:
		mostrar = false
		$efecto.interpolate_property($Control, "rect_position", $Control.rect_position, $Control.rect_position-Vector2(250,0), 0, Tween.TRANS_BACK, Tween.EASE_IN)
		$efecto.start()
	else:
		mostrar = true
		$efecto.interpolate_property($Control, "rect_position", $Control.rect_position, $Control.rect_position+Vector2(250,0), 0, Tween.TRANS_BACK, Tween.EASE_IN)
		$efecto.start()
