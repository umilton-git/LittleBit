extends Label

func _ready():
	text = "+ $" + str(Global.MSimInc) + " Per click"
	
func _process(delta):
	text = "+ $" + str(Global.MSimInc) + " Per click"
