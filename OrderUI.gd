extends CanvasLayer

@onready var order_panel = $OrderPanel
@onready var order_text = $OrderPanel/OrderText

func _ready():
	order_panel.visible = false

func show_order(order: String):
	await get_tree().create_timer(0.4).timeout
	order_text.text = order
	order_panel.visible = true

func hide_order():
	order_panel.visible = false
