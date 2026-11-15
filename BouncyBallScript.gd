extends CharacterBody2D
var BPM = 113
var beat_time = (60.0 / BPM) 
@export var bounce_strength = 753.33
@export var gravity = 2837.56
@export var input_action: String = "hit_ball_1"
@export var hit_window: float = 0.12

var hit_this_beat: bool = true

var beat_timer = 0.0
func _ready() -> void:
	bounce_strength = (gravity * beat_time) / 2.0
	velocity.y = -bounce_strength
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed(input_action):
		var dist: float = min(beat_timer, beat_time - beat_timer)
		if dist <= hit_window and not hit_this_beat:
			hit_this_beat = true
		GameManager.register_hit(dist)
	else:
		GameManager.register_miss()
func _physics_process(delta):
	beat_timer += delta
	velocity.y += gravity * delta * 0.5
	move_and_slide()
	velocity.y += gravity * delta * 0.5
	if beat_timer >= beat_time * 0.5 and beat_timer - delta < beat_time * 0.5:
		if not hit_this_beat:
			GameManager.register_miss()
		hit_this_beat = false
	if beat_timer >= beat_time:
		beat_timer -= beat_time
		velocity.y = -bounce_strength
