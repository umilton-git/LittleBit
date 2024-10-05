extends Label

func _ready():
	update_label()

func update_label():
	text = str(Global.maxPwr)
