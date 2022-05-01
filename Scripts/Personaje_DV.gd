extends KinematicBody2D

var movimiento = Vector2()
var velocidad = 100

func _physics_process(delta):
	
	movimiento = Vector2(0,0)
	
	if Input.is_action_pressed("Izquierda"):
		movimiento.x = -velocidad
	if Input.is_action_pressed("Derecha"):
		movimiento.x = velocidad
	if Input.is_action_pressed("Adelante"):
		movimiento.y = -velocidad
	if Input.is_action_pressed("Abajo"):
		movimiento.y = velocidad
		
	movimiento = move_and_slide(movimiento)	
