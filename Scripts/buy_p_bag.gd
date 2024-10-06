extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))
	
func _process(delta):
	if Global.Dosh < Global.PBagPrice || Global.currStam < Global.maxStam:
		disabled = true
	else:
		disabled = false
		
func _on_button_pressed():
	Global.Dosh -= Global.PBagPrice
	Global.maxPwr +=  Global.PBagInc
	Global.PBagInc *= 2
	Global.PBagPrice += round(Global.PBagInc * 1.5)
	Global.currStam = 1
	Global.currTod = Global.TOD.Night
	get_tree().change_scene_to_file("res://Scenes/ui_home.tscn")
	
	
