extends Node2D
var didGetCollected = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and !didGetCollected:
		$Timer.start()
		didGetCollected = true
		$sound.play()
		Globals.nailsCollected += 1
		hide()
		$Area2D.monitorable = false


func _on_timer_timeout() -> void:
	queue_free()
	pass # Replace with function body.
