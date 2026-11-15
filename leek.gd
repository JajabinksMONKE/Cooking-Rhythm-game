extends Sprite2D

var speed = 400
var delta = 3

func _ready():
	self.position = Vector2(393, 224)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if get_rect().has_point(to_local(event.position)):
			get_viewport().set_input_as_handled()
			position = position.move_toward(Vector2(1003,318), speed * delta)
			z_index = 100
