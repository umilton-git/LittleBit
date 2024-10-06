extends Label

@onready var timer = get_node("../WorkTimer")

func _ready():
	update_text()

func _process(delta):
	update_text()

func update_text():
	if timer:
		text = str(round(timer.time_left))
	else:
		push_error("Timer node not found")
