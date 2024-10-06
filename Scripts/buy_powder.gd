extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))
	
func _process(delta):
	if Global.Dosh < Global.proteinprice:
		disabled = true
	else:
		disabled = false
		
func _on_button_pressed():
	Global.Dosh -= Global.proteinprice
	Global.maxPwr += Global.proteininc
	Global.proteininc *= 2
	Global.proteinprice *= 2
	
