extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))

func _on_button_pressed():
	match Global.currTod:
		Global.TOD.Day:
			Global.currTod = Global.TOD.Evening
		Global.TOD.Evening:
			Global.currTod = Global.TOD.Night
	get_tree().change_scene_to_file("res://Scenes/ui_home.tscn")
