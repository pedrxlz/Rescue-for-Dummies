extends Node2D

var guide_toggle = false

var protocol_sequence = ["BluePotion", "GreenGlass", "RedPotion", "PurpleGlass", "YellowPotion", "RedPotion", "RedPotion", "BluePotion", "GreenPotion", "YellowPotion", "GreenGlass"]

func _ready():
	Global.player2D = false
	var dialog = Dialogic.start("case2")
	add_child(dialog)

func _physics_process(delta):
	if (Input.is_action_just_pressed("guide") or Global.btnGreen) and guide_toggle == false:
		guide_toggle = true
		$"HUD/case-2".show()
		Global.btnGreen = false
	elif (Input.is_action_just_pressed("guide") or Global.btnGreen) and guide_toggle == true:
		guide_toggle = false
		$"HUD/case-2".hide()	
		Global.btnGreen = false
