extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))
	if Global.currStam < 2 || Global.currTod == Global.TOD.Night:
		disabled = true
	else:
		disabled = false
	
func _process(delta):
	if Global.currStam < 2 || Global.currTod == Global.TOD.Night:
		disabled = true
	else:
		disabled = false

func _on_button_pressed():
	Global.currStam -= round(0.5 * Global.currStam)
	get_tree().change_scene_to_file("res://Scenes/work.tscn")
