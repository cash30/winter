extends CharacterBody2D
class_name PlayerController

const ICE_LAYER = 1 << 4  # Layer 4
@export var speed= 100.0
@export var jumpPower = -200.0
@export var direction = 0
@export var zoom = 3
var isOnIce = false
var tilemap = null


func _ready() -> void:
	tilemap = get_parent().get_node("TileMap")  # adjust to your TileMap node
	print(tilemap)


func _physics_process(delta: float) -> void:
	
	if position.y > 200:
		Globals.respawn()
	
	# Add the gravity.
	if not is_on_floor() and !Globals.isFlyingBecuaseAdmin:
		velocity += get_gravity() * delta


	if Input.is_action_pressed("up") and is_on_floor():
		velocity.y = jumpPower
	if Input.is_action_pressed("down"):
		set_collision_mask_value(3, false)
	else:
		set_collision_mask_value(3, true)


	if Globals.isFlyingBecuaseAdmin:
		speed = 300
		if Input.is_action_pressed("up"):
			velocity.y = -speed
		elif Input.is_action_pressed("down"):
			velocity.y = speed
		else:
			velocity.y = 0
	else:
		speed = 100
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
	



#func is_on_ice(tilemap: TileMap) -> bool:
	#var cell = tilemap.world_to_map(global_position)
	#var tile_id = tilemap.get_cell(cell.x, cell.y)
	#if tile_id == TileMap.INVALID_CELL:
		#return false
	#var meta = tilemap.tile_get_metadata(tile_id)	
	#return meta == "ice"
