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

func update_label(label: Label):
	label.text = str(Global.currStam) + "\\" + str(Global.maxStam)
	
