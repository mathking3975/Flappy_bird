extends Area2D

@onready var screensize = get_viewport_rect().size
var speed = 200

func _ready():
	position = Vector2(screensize.x+35, randi_range(550, 1050))
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed * delta
	if position.x < -35:
		_ready()
	
