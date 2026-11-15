extends CharacterBody2D

@export var speed: float = 400.0
var direction: Vector2 = Vector2(1, 1).normalized()

func _ready() -> void:
	velocity = direction * speed

func _physics_process(delta: float) -> void:
	var collision: KinematicCollision2D = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
