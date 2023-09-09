extends CharacterBody2D


func _physics_process(delta):
	velocity.y += 1
	position += velocity