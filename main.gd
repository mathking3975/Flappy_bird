extends Node2D

var pipe = preload('res://pipe.tscn')
@export var score = 0

func _ready():
	start()
	
func start():
	var e = pipe.instantiate()
	add_child(e)
	e._ready()
