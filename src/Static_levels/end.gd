extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var hank = get_node("Hank")
	var walter = get_node("Walter")
	if hank.position.x <= 30:
		hank.position.x += 2
		walter.position.x -= 2
		


func _on_button_pressed():
	get_tree().change_scene_to_file("res://src/Static_levels/title.tscn")
