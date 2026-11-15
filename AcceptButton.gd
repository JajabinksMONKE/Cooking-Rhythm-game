extends CanvasLayer
@onready var accept_button = $AcceptButton

func _ready():
	accept_button.visible = false

func show_accept_button():
	accept_button.visible = true
