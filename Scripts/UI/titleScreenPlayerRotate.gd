extends Node2D
var currentRotation = -0.1
var maxBackRotation = 0.1
var maxFrontLocation = 0.1

func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	var currentRotation = rotation
	if Globals.isHoveringOverPlay and abs(currentRotation) <= maxBackRotation:
		rotate(-1 * delta)
		
	elif !Globals.isHoveringOverPlay and currentRotation <= 0:
		rotate(1 * delta)

	

func _on_play_pressed() -> void:
	
	rotate(1 * get_process_delta_time())

func reactToPress():
	pass
