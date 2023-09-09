extends CharacterBody2D


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
	move_and_slide()
