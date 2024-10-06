extends Label

func _ready():
	text = str(Global.enemstamcurr) + "\\" + str(Global.enemstammax)
	
func _process(delta):
	text = str(Global.enemstamcurr) + "\\" + str(Global.enemstammax)
