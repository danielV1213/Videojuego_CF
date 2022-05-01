extends ParallaxBackground

var dir = Vector2(-1,0)
var speed = 90

func _physics_process(delta):
	scroll_base_offset +=  dir*speed*delta
