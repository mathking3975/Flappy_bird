extends Area2D
signal died
@onready var screensize = get_viewport_rect().size
# Called when the node enters the scene tree for the first time.

func _ready():
	self.position = Vector2(screensize.x / 2, screensize.y / 2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
@export var speed = -500
func _process(delta):
	position.y += speed * delta
	if position.y >= screensize.y - 28:
		game_over()
	speed += 6

func _input(event):
	if event.is_action_pressed('click'):
		speed = -500
		
func _on_area_entered(area):
	if area.name == 'pipe':
		game_over()
	
func game_over():
	died.emit()
	set_process(false)
	

