extends Button


func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass


func _on_pressed() -> void:
	Globals.gameMode = "framework"
	Globals.changeScene(Globals.level1)
	Globals.shouldMusicBePlaying = true
	Globals.shouldClink = true
	
	
func _on_2_pressed() -> void:
	Globals.gameMode = "framework"
	Globals.changeScene(Globals.level2)
	Globals.shouldMusicBePlaying = true
	Globals.shouldClink = true
	

func _on_3_pressed() -> void:
	Globals.gameMode = "winter"
	Globals.changeScene(Globals.level3)
	Globals.shouldMusicBePlaying = true
	Globals.shouldClink = true


func _on_4_pressed() -> void:
	Globals.gameMode = "winter"
	Globals.changeScene(Globals.level4)
	Globals.shouldMusicBePlaying = true
	Globals.shouldClink = true





#func _on_mouse_entered() -> void:
	#Globals.isHoveringOverPlay = true
#
#
#
#func _on_mouse_exited() -> void:
	#Globals.isHoveringOverPlay = false
#
#
#func _on_how_mouse_entered() -> void:
	#Globals.isHoveringOverPlay = true
#
#
#
#func _on_how_mouse_exited() -> void:
	#Globals.isHoveringOverPlay = false
#
#
#func _on_level_select_mouse_exited() -> void:
	#Globals.isHoveringOverPlay = false
#
#
#
#func _on_level_select_mouse_entered() -> void:
	#Globals.isHoveringOverPlay = true
