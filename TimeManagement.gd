extends Node

var day = 1
var hour = 0
var min = 0
var timer = 0.0

func _process(delta: float) -> void:
	if timer < 3.0:
		timer += 8 * delta
	elif timer >= 3.0:
		timer = 0.0
		min += 1
		if min == 60:
			min = 0
			hour += 1
			if hour == 24:
				hour = 0
				day += 1

func get_time_text() -> String:
	var hour_thing = "0" + str(hour) if hour < 10 else str(hour)
	var min_thing = "0" + str(min) if min < 10 else str(min)
	return "Day " + str(day) + ", " + hour_thing + ":" + min_thing
