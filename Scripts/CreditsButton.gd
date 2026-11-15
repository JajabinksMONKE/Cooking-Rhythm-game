extends Button

@onready var credits_panel = get_node("/root/Main/MainMenu/CreditsPanel")

func _pressed():
	credits_panel.visible = true
