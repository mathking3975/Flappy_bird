extends MarginContainer

@onready var score_counter = $HBoxContainer/ScoreCounter
# Called when the node enters the scene tree for the first time.

func update_score(value):
	score_counter.display_digits(value)
	
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
