extends Label

func _ready():
	text = "+" + str(Global.staminc)
	
func _process(delta):
	text = "+" + str(Global.staminc)
