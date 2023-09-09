extends Node2D
var speed = 0.09

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var label = get_node('text_turtle')
	label.position.y -= speed
	var start = get_node('Start')
	if start.position.y >= 95:
		start.position.y -= speed
	var walt = get_node("Walter")
	walt.position.y -= speed
	
	if Input.is_action_pressed("debug") && Input.is_action_pressed("debug2"):
		speed = 20
	else:
		speed = 0.09


func _on_start_pressed():
	get_tree().change_scene_to_file("res://src/map1.tscn")
