extends AudioStreamPlayer


func _ready() -> void:
	stream = load("res://Music/clink.mp3")

func _process(_delta: float) -> void:
	
	if Globals.shouldClink:
		play()
		Globals.shouldClink = false
		
