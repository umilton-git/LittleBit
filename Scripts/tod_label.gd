extends Label

func _ready():
	text = "Morning"
	
func _process(delta):
	match Global.currTod:
		Global.TOD.Day:
			text = "Morning"
		Global.TOD.Evening:
			text = "Evening"
		Global.TOD.Night:
			text = "Night"
		
