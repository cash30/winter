extends Control
var onScene    : PackedScene = load("res://Scenes/UI/Title.tscn")
var titleScene : PackedScene = load("res://Scenes/UI/Title.tscn")
var howScene   : PackedScene = load("res://Scenes/UI/how.tscn")
var pauseScene : PackedScene = load("res://Scenes/UI/pause.tscn")

var level1     : PackedScene = load("res://Scenes/levels/level1.tscn")
var level2     : PackedScene = load("res://Scenes/levels/level2.tscn")
var lastLevel  : PackedScene = load("res://Scenes/levels/lastLevel.tscn")

var shouldMusicBePlaying = false
var shouldClink = false


var isHoveringOverPlay = false
var didStart = false
var nailsCollected = 0

func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		get_tree()
	
	
func changeScene(scene : PackedScene):
	get_tree().change_scene_to_packed(scene)
	onScene = scene
	pass


###-DONT LOOK AT THE LOGIC IN THIS FUNCTION-###
func nextLevel():
	print("moving to next level - Globals.gd")
	if onScene == level1:
		changeScene(level2)
		#
	elif onScene == level2:
		changeScene(lastLevel)
		#
	#if onScene == level3:
		#changeScene(level4)
