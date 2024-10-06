extends Node

enum Bit{PLOPPLE, WIMBLE, DISTRO}
enum TOD{Day, Evening, Night}

@onready var DayLabel = $ColorRect/DayLabel
var currentBit = Bit.PLOPPLE
var maxStam = 3
var maxPwr = 3
var currStam = 3
var currPwr = 3
var currTod = TOD.Day
var Day = 1
var Dosh = 0
var proteinprice = 15
var proteininc = 2
var stamprice = 10
var staminc = 2
var doshinc = 1
var timersecs = maxStam * 2
var workinc = 1
var PBagPrice = 100
var TMillPrice = 100
var PBagInc = 10
var TMillInc = 10
var MSimPrice = 300
var MSimInc = 1
var enemstammax = 60
var enemstamcurr = 60
var enempow = 25

func update_label(label: Label):
	label.text = str(Global.currStam) + "\\" + str(Global.maxStam)
	
func update_timersecs():
	timersecs = maxStam * 2
	
func lose():
	Global.enemstamcurr = Global.enemstammax
	Global.currStam = 1
	if Global.Day < 10:
		Global.currTod = Global.TOD.Night
		get_tree().change_scene_to_file("res://Scenes/ui_home.tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
	
