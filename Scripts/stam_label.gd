extends Label

func _ready():
	Global.update_label(self)
	
func _process(delta):
	Global.update_label(self)
