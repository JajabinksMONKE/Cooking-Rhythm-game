extends RichTextLabel
var day = 1
var hour = 0
var min = 0
var timer = 0

func _process(delta:float) -> void:
	if timer < 3.0:
		timer += 8 * delta
	elif timer >= 3.0:
		timer = 0
		min += 1
		if min == 60:
			min = 0
			hour += 1
			if hour == 24:
				hour = 0
				day += 1

	var hour_thing
	var min_thing

	if hour < 10:
		hour_thing = "0" + str(hour)
	elif hour >= 10:
		hour_thing = str(hour)
	if min < 10:
		min_thing = "0" + str(min)
	elif min >= 10:
		min_thing = str(min)
	text = "Day " + str(day) + ", " + hour_thing + ":" + min_thing
