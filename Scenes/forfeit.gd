extends Button

var was_pressed = false

func _ready():
	connect("pressed", Callable(self, "_on_button_pressed"))

func _on_button_pressed():
	Global.lose()
