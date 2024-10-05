extends Button

func _physics_process(delta: float) -> void:
	if is_pressed():
		Global.currentBit = Global.Bit.DISTRO
		get_tree().change_scene_to_file("res://Scenes/ui_home.tscn")
