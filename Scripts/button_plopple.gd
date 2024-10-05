extends Button

func _physics_process(delta: float) -> void:
	if is_pressed():
		Global.currStam = 3
		Global.maxStam = 3
		Global.currPwr = 3
		Global.maxPwr = 3
		
		get_tree().change_scene_to_file("res://Scenes/ui_home.tscn")
