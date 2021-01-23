extends Control

onready var dialogText = $DialogBox/DialogText 
#get_node("DialogBox/DialogText")
var isActiveDialog = false
var firstDialog = true
var wait = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func activate_dialog(text, eventDialog=""):
	if isActiveDialog:
		return
	get_tree().paused = true
	if eventDialog != "":
		print("trying to match")
		match eventDialog:
			"first":
				print("matched at first: ", eventDialog)
				wait =600
			"second":
				wait = 500
	else:
		print("else")
		wait = 0
	print("got out of switch")
	dialogText.text = text
	self.visible = true
	isActiveDialog = true
	
	

func _input(event):
	if event is InputEventKey and event.pressed and isActiveDialog:
		print("will wait: ",wait)
		OS.delay_msec(wait)
		wait = 0
#		activate_dialog("And all this grass.. The yard is completely unattended.")
		self.visible = false
		get_tree().paused = false
		isActiveDialog = false
		print("test")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#holy batjesus! So many bats... My whiskers are tingling.
func _ready():
	activate_dialog("Someone is screaming for help in that house. :sigh: Not a good sign.","first")
	#	pass
