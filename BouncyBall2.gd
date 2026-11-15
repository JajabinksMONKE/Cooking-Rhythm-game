extends CharacterBody2D

var BPM: float = 113.0
var beat_time: float = 60.0 / BPM
@export var gravity: float = 2837.56
@export var start_after_beats: float = 24

var bounce_strength: float = 0.0
var beat_timer: float = 0.0

func _ready() -> void:
	bounce_strength = (gravity * beat_time) / 2.0
	visible = false
	await get_tree().create_timer(beat_time * start_after_beats).timeout
	visible = true
	beat_timer = beat_time / 2.0
	velocity.y = 0.0

func _physics_process(delta: float) -> void:
	beat_timer += delta
	velocity.y += gravity * delta * 0.5
	move_and_slide()
	velocity.y += gravity * delta * 0.5
	
	if beat_timer >= beat_time:
		beat_timer -= beat_time
		velocity.y = -bounce_strength
