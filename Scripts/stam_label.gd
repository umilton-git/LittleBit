extends Label

func _ready():
	update_label()

func update_label():
	text = str(Global.currStam) + "\\" + str(Global.maxStam)
