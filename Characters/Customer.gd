extends Node2D

func move_to_counter(target_position: Vector2):
	var movement_tween = create_tween()
	movement_tween.tween_property(self, "global_position", target_position, 2.0)
	await movement_tween.finished
