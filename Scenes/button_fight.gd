extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))
	if Global.currTod == Global.TOD.Night && Global.Day < 10:
		disabled = true
	else:
		disabled = false
	
func _process(delta):
	if Global.currTod == Global.TOD.Night && Global.Day < 10:
		disabled = true
	else:
		disabled = false

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/fight.tscn")
