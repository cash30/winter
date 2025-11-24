extends AudioStreamPlayer
var isMusicPlaying = false
@onready var music_timer = Timer.new()


func _ready() -> void:
	stream = load("res://Music/Main theme.mp3")
	add_child(music_timer)
	music_timer.wait_time = 65.0 
	music_timer.one_shot = false
	music_timer.connect("timeout", Callable(self, "_on_timer_timeout"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Globals.shouldMusicBePlaying and !isMusicPlaying:
		play()
		print("starting music")
		isMusicPlaying = true
		music_timer.start()

	elif !Globals.shouldMusicBePlaying and isMusicPlaying:
		stop()
		music_timer.stop()
		isMusicPlaying = false



func _on_timer_timeout() -> void:
	play()
	print("Looping music")

	pass # Replace with function body.
