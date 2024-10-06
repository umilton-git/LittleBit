extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))
	
func _process(delta):
	if Global.Dosh < Global.stamprice:
		disabled = true
	else:
		disabled = false
		
func _on_button_pressed():
	Global.Dosh -= Global.stamprice
	Global.maxStam +=  Global.staminc
	Global.update_timersecs()
	Global.staminc *= 2
	Global.stamprice *= 2
	
