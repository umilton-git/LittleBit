extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))

func _on_button_pressed():
	match Global.currTod:
		Global.TOD.Day:
			Global.currTod = Global.TOD.Evening
			if Global.currStam < Global.maxStam:
				Global.currStam += round(Global.maxStam * 0.33)
		Global.TOD.Evening:
			Global.currTod = Global.TOD.Night
			if Global.currStam < Global.maxStam:
				Global.currStam += round(Global.maxStam * 0.33)
		Global.TOD.Night:
			if Global.Day == 10:
				Global.Day = 0
				get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
			Global.currTod = Global.TOD.Day
			if Global.currStam < Global.maxStam:
				Global.currStam = Global.maxStam
			Global.Day += 1
