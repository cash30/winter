extends Node2D

var speed := 150.0
var player :CharacterBody2D = null
var dir = null

func _ready():
	# Find the player anywhere in the scene tree
	player = get_tree().get_first_node_in_group("player")

func _physics_process(delta):
	if dir == null:
		dir = (player.global_position - global_position).normalized()
	if player == null:
		print("Snowball cannot find player!")
		return
	global_position += dir * speed * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("lol u dead")
		Globals.respawn()
	print("deleting snowball")
	queue_free()


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("deleting snowball")
	queue_free()
