extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))


func _on_button_pressed():
	Global.currStam -= Global.enempow
	if Global.currStam <= 0:
		Global.lose()
	Global.enemstamcurr -= Global.maxPwr
	if Global.enemstamcurr <= 0:
		get_tree().change_scene_to_file("res://Scenes/you_win.tscn")
