extends Button
@onready var order_panel = get_node("/root/Game/OrderUI/OrderPanel")
@onready var accept_button = get_node("/root/Game/AcceptButton/AcceptButton")
@onready var decline_button = get_node("/root/Game/DeclineButton/DeclineButton")
@onready var order_panel_text = get_node("/root/Game/OrderUI/OrderPanel/OrderText")
@onready var hating_easter_egg_panel = get_node("/root/Game/HatingEasterEggPanel")

func _pressed():
	hating_easter_egg_panel.visible = false
	order_panel.visible = true
	order_panel_text.visible = true
	accept_button.visible = true
	decline_button.visible = true
