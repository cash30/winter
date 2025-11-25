extends Button


func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass


func _on_pressed() -> void:
	Globals.changeScene(Globals.levelSelectScene)
	#Globals.shouldMusicBePlaying = true
	Globals.shouldClink = true
	
	
