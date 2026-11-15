extends CharacterBody2D
var BPM = 113
var beat_time = (60.0 / BPM) 
@export var bounce_strength = 753.33
@export var gravity = 2837.56

var beat_timer = 0.0
func _ready() -> void:
	bounce_strength = (gravity * beat_time) / 2.0
	velocity.y = -bounce_strength
func _physics_process(delta):
	beat_timer += delta
	velocity.y += gravity * delta * 0.5
	move_and_slide()
	velocity.y += gravity * delta * 0.5
	if beat_timer >= beat_time:
		beat_timer -= beat_time
		velocity.y = -bounce_strength
