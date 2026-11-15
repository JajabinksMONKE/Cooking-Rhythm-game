extends RichTextLabel

func _process(delta: float) -> void:
	text = TimeManagement.get_time_text()
