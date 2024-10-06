extends Label

func _ready():
	text = "$" + str(Global.MSimPrice)
	
func _process(delta):
	text = "$" + str(Global.MSimPrice)
