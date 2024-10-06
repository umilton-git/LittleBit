extends Label

func _ready():
	text = "$" + str(Global.proteinprice)
	
func _process(delta):
	text = "$" + str(Global.proteinprice)
