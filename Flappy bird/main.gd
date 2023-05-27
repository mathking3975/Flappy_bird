extends Node2D

var pipe = preload('res://pipe.tscn')
@export var score = 0


func _ready():
	get_node('pipe/pipe').hide()
	get_node('pipe/pipe/Sprite2D').hide()
	get_node('VBoxContainer').hide()
	get_node('Player').died.connect(_on_died)


func _on_clear(value):
	score += value
 
func _on_died():
	get_node('VBoxContainer/Label').text ='Game Over!\nScore : %d' % score
	get_node('VBoxContainer/RestartButton').disabled = false
	get_node('VBoxContainer').show()
	
func _on_restart_button_pressed():
	get_node('VBoxContainer/RestartButton').disabled = true	
	get_tree().change_scene_to_file("res://menu.tscn")
