extends Sprite2D

var Plopple = preload("res://Img/Bits/Plopple.png")
var Wimble = preload("res://Img/Bits/Wimble.png")
var Distro = preload ("res://Img/Bits/Distro.png")

func _ready():
	match Global.currentBit:
		Global.Bit.PLOPPLE:
			texture = Plopple
		Global.Bit.WIMBLE:
			texture = Wimble
		Global.Bit.DISTRO:
			texture = Distro
		
