extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var label = get_node("text_turtle")
	label.position.y -= 1;
	
	
func _on_start_pressed():
	get_tree().change_scene_to_file("res://src/level.tscn")
