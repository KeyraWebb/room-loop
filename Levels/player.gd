extends CharacterBody2D


@export var SPEED : float
var target
var moving = false

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	#point and click
	if moving:
		if global_position.x != target.x:
			global_position.x = move_toward(global_position.x, target.x, SPEED)
		else:
			moving = false
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Interact"):
		target = get_global_mouse_position()
		moving = true
