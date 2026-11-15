extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.position = Vector2(0, 0)
	
func _input_event(viewport: Node, event: InputEvent, shape_idx: int):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
