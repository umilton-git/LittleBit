extends Label

func _ready():
	text = "+" + str(Global.TMillInc)
	
func _process(delta):
	text = "+" + str(Global.TMillInc)
