extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func interact():
	get_node("/root/World/CanvasLayer/Dialog").activate_dialog("No way I'm coming out... Kill the bats first.")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
