extends Node2D

@onready var fade = $Transition/Fade

func _ready():
	fade.modulate.a = 0

func start_game():
	var tween = create_tween()
	tween.tween_property(fade, "modulate:a", 1.0, 0.7)
	await tween.finished

	get_tree().change_scene_to_file("res://Game.tscn")
