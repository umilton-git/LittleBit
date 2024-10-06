extends Timer

func _ready():
	if not is_connected("timeout", Callable(self, "_on_timer_timeout")):
		connect("timeout", Callable(self, "_on_timer_timeout"))
	start(Global.timersecs)

func _on_timer_timeout():
	match Global.currTod:
		Global.TOD.Day:
			Global.currTod = Global.TOD.Evening
		Global.TOD.Evening:
			Global.currTod = Global.TOD.Night
	get_tree().change_scene_to_file("res://Scenes/ui_home.tscn")
