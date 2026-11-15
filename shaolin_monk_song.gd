extends AudioStreamPlayer


func _ready():
	if $ShaolinMonkSong.playing == false: 
		print_debug("HI")
		$ShaolinMonkSong.play()
