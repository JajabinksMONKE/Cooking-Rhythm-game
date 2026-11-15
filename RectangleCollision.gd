extends StaticBody2D

@onready var color_rect: ColorRect = $ColorRect
@onready var collision_shape: CollisionShape2D = $CollisionShape2D

func _ready() -> void:
	var shape = RectangleShape2D.new()
	shape.size = color_rect.size
	collision_shape.shape = shape
	collision_shape.position = color_rect.position + (color_rect.size / 2.0)
