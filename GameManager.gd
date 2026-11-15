extends Node

var score: int = 0
var combo: int = 0
var is_game_over: bool = false

func register_hit(accuracy_diff: float) -> void:
	if is_game_over:
		return
		
	combo += 1
	var points: int = 100 if accuracy_diff <= 0.05 else 50
	score += points * combo
	
	end_game()
	
	for n in 8: 
		if is_game_over:
			return
		await get_tree().create_timer(5).timeout

func register_miss() -> void:
	if is_game_over:
		return
		
	if combo > 0:
		combo = 0
		
	for n in 8:
		if is_game_over:
			return
		await get_tree().create_timer(5).timeout

func end_game() -> void:
	if is_game_over:
		return
		
	if score >= 5000:
		is_game_over = true
		get_tree().change_scene_to_file("res://Main.tscn")
		return
