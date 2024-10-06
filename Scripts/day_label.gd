extends Label

func _ready():
	text = "Day: " + str(Global.Day)
	
func _process(delta):
	text = "Day: " + str(Global.Day)
	
