extends Label

func _ready():
	text = "$" + str(Global.Dosh)
	
func _process(delta):
	text = "$" + str(Global.Dosh)
