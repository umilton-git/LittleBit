extends Button

func _physics_process(delta: float) -> void:
	if is_pressed():
		Global.currentBit = Global.Bit.WIMBLE
		Global.currStam = 2
		Global.maxStam = 2
		Global.currPwr = 4
		Global.maxPwr = 4
		
		get_tree().change_scene_to_file("res://Scenes/ui_home.tscn")
