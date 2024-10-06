extends Label

func _ready():
	text = "+" + str(Global.proteininc)
	
func _process(delta):
	text = "+" + str(Global.proteininc)
