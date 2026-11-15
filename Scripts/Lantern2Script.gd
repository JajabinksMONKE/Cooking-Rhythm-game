extends Sprite2D

func _ready():
	var tween = create_tween()
	tween.set_loops()

	tween.tween_property(self, "position:y", position.y - 12, 2.0)
	tween.tween_property(self, "position:y", position.y, 2.0)
