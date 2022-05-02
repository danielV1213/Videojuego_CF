extends Area2D
export (int) var Velocidad #añadir variable al inspector.
var Movimiento = Vector2()
var limite

func _ready():
	limite = get_viewport_rect().size
	
func _process(delta):
	Movimiento = Vector2()
	if Input.is_action_pressed("Izquierda"):
		Movimiento.x -= 1
	if Input.is_action_pressed("Adelante"):
		Movimiento.y -= 1
	if Input.is_action_pressed("Derecha"):
		Movimiento.x += 1
	if Input.is_action_pressed("Abajo"):
		Movimiento.y += 1
	if Movimiento.length() > 0:
		Movimiento = Movimiento.normalized() * Velocidad
	position += Movimiento * delta
	position.x = clamp(position.x, 0, limite.x)
	position.y = clamp(position.y, 0, limite.y)
	
	if Movimiento.x != 0:
		$AnimatedSprite.animation = "lado"
		$AnimatedSprite.flip_h = Movimiento.x < 0 
	elif Movimiento.y < 0:
		$AnimatedSprite.animation = "atras"	
	elif Movimiento.y > 0:
		$AnimatedSprite.animation = "frente"
	else:
		$AnimatedSprite.animation = "Idle"
