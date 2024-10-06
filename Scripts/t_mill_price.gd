extends Label

func _ready():
	text = "$" + str(Global.TMillPrice)
	
func _process(delta):
	text = "$" + str(Global.TMillPrice)
