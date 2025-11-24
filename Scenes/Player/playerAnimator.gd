extends Node2D
@export var playerController : PlayerController
@export var animationPlayer : AnimationPlayer
@export var sprite : Sprite2D
var isJumping = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	isJumping = abs(playerController.velocity.y) > 0
	if playerController.direction > 0:
		pass
		sprite.flip_h = false
	elif playerController.direction < 0:
		pass
		sprite.flip_h = true
	pass

	if abs(playerController.velocity.x) > 0 and !isJumping:
		animationPlayer.play("run")
	else:
		animationPlayer.play("idle")
	

	if isJumping:
		animationPlayer.play("jump")
