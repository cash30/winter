extends CharacterBody2D
class_name PlayerController

const speed= 100.0
const jumpPower = -200.0
@export var direction = 0
@export var zoom = 3

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_pressed("up") and is_on_floor():
		velocity.y = jumpPower

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_pressed("right"):
		direction = 1
		velocity.x = speed
	elif Input.is_action_pressed("left"):
		direction = -1
		velocity.x = -speed
	else:
		direction = 0
		velocity.x = 0

	move_and_slide()
