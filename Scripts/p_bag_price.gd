extends Label

func _ready():
	text = "$" + str(Global.PBagPrice)
	
func _process(delta):
	text = "$" + str(Global.PBagPrice)
