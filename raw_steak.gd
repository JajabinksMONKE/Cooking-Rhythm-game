extends Sprite2D

var speed = 400
var delta = 2

func _ready():
	print_debug("fdsa")
	self.position = Vector2(481, 459)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if get_rect().has_point(to_local(event.position)):
			get_viewport().set_input_as_handled()
			position = position.move_toward(Vector2(649,289), speed * delta)
			z_index = 100
