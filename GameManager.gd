extends Node

var score: int = 0
var combo: int = 0

func register_hit(accuracy_diff: float) -> void:
	combo += 1
	var points: int = 100 if accuracy_diff <= 0.05 else 50
	score += points * combo
	for n in 8:
		print(score)
		await get_tree().create_timer(5).timeout
func register_miss() -> void:
	if combo > 0:
		combo = 0
	for n in 8:
		print(combo)
		await get_tree().create_timer(5).timeout
