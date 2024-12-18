extends CharacterBody2D

const SPEED = 50.0

func _physics_process(delta: float) -> void:
	# Get input directions for both X and Y axes
	var direction := Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)

	# Normalize direction to maintain consistent speed in all directions
	if direction.length() > 0:
		direction = direction.normalized()
		
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("walk_left")
		# print("walk left")
	elif Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("walk_left")
		# print("walk right")
	else:
		$AnimatedSprite2D.play("idle")
		
		

	# Set velocity based on the direction and speed
	velocity = direction * SPEED

	# Move the character
	move_and_slide()
