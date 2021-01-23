extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var gameOverText = get_node("/root/World/CanvasLayer/GameOver/Label")
onready var isActiveDialog = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func activate_dialog(text):
	get_tree().paused = true
	gameOverText.text = text
	self.visible = true
	isActiveDialog = true
	

func _on_TextureButton_pressed():
#	get_tree().change_scene("res://World.tscn")
#	PlayerStats.max_health = 4
#	PlayerStats.health = PlayerStats.max_health
	PlayerStats.reset()
	get_tree().reload_current_scene()
