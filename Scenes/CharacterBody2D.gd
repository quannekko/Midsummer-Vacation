extends CharacterBody2D

const MOTION_SPEED = 320 #Pixels per second.

func _physics_process(delta: float) -> void:
	var previous_pos = position
	var move: Vector2 = Input.get_vector(&"move_left", &"move_right", &"move_up", &"move_down")
	move.y /= 2
	move = move.normalized()
  
	if move_and_collide(move * MOTION_SPEED * delta):
# Collision
		position = previous_pos

