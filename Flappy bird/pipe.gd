extends Area2D
signal clear

@onready var screensize = get_viewport_rect().size
var speed = 200


func _ready():
	set_process(false)
	$StartTimer.start()
	await $StartTimer.timeout
	get_node('pipe').show()
	get_node('pipe/Sprite2D').show()
	set_process(true)
	start()
	
func start():
	position = Vector2(screensize.x+35, randi_range(550, 1050))
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed * delta
	if position.x < -35:
		clear.emit(int(speed/150))
		speed += 5
		start()

func _on_player_died():
	set_process(false)
	$EndTimer.start()
	await $EndTimer.timeout
	get_node('pipe').hide()
	get_node('pipe/Sprite2D').hide()
	
