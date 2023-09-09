extends CharacterBody2D
@onready var camera = get_node("Camera2D")
var waterphyisics = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _physics_process(delta):
	if Input:
		if Input.is_action_pressed("W"):
			velocity.y -= 1
		if Input.is_action_pressed("S"):
			velocity.y += 1
		if Input.is_action_pressed("A"):
			velocity.x -= 1
		if Input.is_action_pressed("D"):
			velocity.x += 1
	
	var collision = move_and_collide(velocity * delta)
	if collision:
		var collider = collision.get_collider()
		if collider.has_meta("Plastic"):
			death()
	
	camera.global_position.x = 0
			

		

func death():
	print("death")

