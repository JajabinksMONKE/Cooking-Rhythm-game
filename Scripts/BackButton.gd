extends Button

func _pressed():
	get_node("/root/Main/MainMenu/CreditsPanel").visible = false
