extends Node2D
var snowball : PackedScene = load("res://Scenes/elements/snowball.tscn")
var dir = null
var player = 1
func _ready() -> void:
	player = get_tree().get_first_node_in_group("player")
	$Timer.set_wait_time(1)
	$Timer.start(2)
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dir == null:
		dir = (player.global_position - global_position).normalized()

func spawnSnowball():
	var snowballInst = snowball.instantiate()
	add_child(snowballInst)
	dir = (player.global_position - global_position).normalized()
	if dir.x < 0:
		snowballInst.position = $"left spawner".position
	else:
		snowballInst.position = $"right spawner".position
	snowballInst.scale = Vector2(randf_range(0.4, 0.6), randf_range(0.4, 0.6))
	

func _on_timer_timeout() -> void:
	spawnSnowball()
	$Timer.start(randf_range(1, 10))
