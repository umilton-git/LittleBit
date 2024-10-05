extends Button

func _physics_process(delta: float) -> void:
	if is_pressed():
		Global.currentBit = Global.Bit.DISTRO
		Global.currStam = 4
		Global.maxStam = 4
		Global.currPwr = 2
		Global.maxPwr = 2
		get_tree().change_scene_to_file("res://Scenes/ui_home.tscn")
