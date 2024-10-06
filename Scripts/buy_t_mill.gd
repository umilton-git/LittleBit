extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))
	
func _process(delta):
	if Global.Dosh < Global.TMillPrice || Global.currStam < Global.maxStam:
		disabled = true
	else:
		disabled = false
		
func _on_button_pressed():
	Global.Dosh -= Global.TMillPrice
	Global.maxStam +=  Global.TMillInc
	Global.update_timersecs()
	Global.TMillInc *= 2
	Global.TMillPrice += round(Global.TMillPrice * 1.5)
	Global.currStam = 1
	Global.currTod = Global.TOD.Night
	get_tree().change_scene_to_file("res://Scenes/ui_home.tscn")
	
