extends Button
@onready var hating_easter_egg_panel = get_node("/root/Game/HatingEasterEggPanel")
func _pressed():
	hating_easter_egg_panel.visible = true
