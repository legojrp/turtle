extends CharacterBody2D

@export var move_x = true 
@export var move_y = false


var rng = RandomNumberGenerator.new()
var initial = Vector2()
func _ready():
	initial = position

func _physics_process(delta):
	for x in range(10):
		if x == 1:
			velocity.x = rng.randf_range(-1, 1)
			velocity.y = rng.randf_range(-1, 1)
			if !abs((position.x + velocity.x) - initial.x) > abs(initial.x +20) && move_x:
				position.x += velocity.x
			if !abs((position.y + velocity.y) - initial.y)> abs(initial.y +20) && move_y:
				position.y += velocity.y
		
