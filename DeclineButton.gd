extends CanvasLayer
@onready var decline_button = $DeclineButton

func _ready():
	decline_button.visible = false

func show_decline_button():
	decline_button.visible = true
