extends Label

func _ready():
	text = "$" + str(Global.stamprice)
	
func _process(delta):
	text = "$" + str(Global.stamprice)
