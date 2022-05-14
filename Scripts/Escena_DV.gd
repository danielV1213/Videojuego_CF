extends Node2D
var Puntaje

func _ready():
	randomize()
	
func nuevo_juego():
	Puntaje = 0
	#$Personaje_DV.inicio
