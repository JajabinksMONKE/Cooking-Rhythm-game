extends Sprite2D

var speed = 400
var delta = 0.5

func _ready():
	self.position = Vector2(481, 459)

func _pressed():
	position = position.move_toward(Vector2(649,289), speed * delta)
	-z_index
