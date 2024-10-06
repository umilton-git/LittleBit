extends Label

func _ready():
	text = "+" + str(Global.PBagInc)
	
func _process(delta):
	text = "+" + str(Global.PBagInc)
