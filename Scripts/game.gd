extends Node2D

@export var customer_scene: PackedScene

@onready var spawn_point = $CustomerSpawn
@onready var counter = $Background/OutdoorCounter
@onready var background = $Background/FrontDoor
@onready var order_ui = $OrderUI

func _ready():
	background.modulate.a = 0

	var background_tween = create_tween()
	background_tween.tween_property(background, "modulate:a", 1.0, 1.1)

	counter.z_index = 10

	await get_tree().create_timer(2.0).timeout

	var customer = customer_scene.instantiate()
	add_child(customer)

	customer.global_position = spawn_point.global_position
	customer.modulate.a = 0
	customer.z_index = 5

	var customer_fade = create_tween()
	customer_fade.tween_property(customer, "modulate:a", 1.0, 0.5)

	var body = customer.find_child("CharacterBody2D", true, false)
	var sprite = customer.find_child("Sprite2D", true, false)

	if body:
		body.position = Vector2.ZERO

	if sprite:
		sprite.position = Vector2.ZERO
		sprite.offset = Vector2.ZERO

	await customer.move_to_counter(counter.global_position)
	order_ui.show_order("One scallion pancake, please!")
