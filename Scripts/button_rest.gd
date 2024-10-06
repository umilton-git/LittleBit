extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))

func _on_button_pressed():
	match Global.currTod:
		Global.TOD.Day:
			Global.currTod = Global.TOD.Evening
			if Global.currStam < Global.maxStam:
				Global.currStam += 1
		Global.TOD.Evening:
			Global.currTod = Global.TOD.Night
			if Global.currStam < Global.maxStam:
				Global.currStam += 1
		Global.TOD.Night:
			Global.currTod = Global.TOD.Day
			if Global.currStam < Global.maxStam:
				Global.currStam = Global.maxStam
			Global.Day += 1
