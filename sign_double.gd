extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#var new_dialog = preload("res://addons/dialogic/Nodes/Dialog.tscn")
func interact():
	get_node("/root/World/CanvasLayer/Dialog").activate_dialog("Fruit market stalls every weekend. \n=================================\n Beware of the giant mosquitos!!")
##	var new_dialog = Dialogic.start('Sign')
#	var d = new_dialog.instance()
#	d.rect_position = Vector2(150,150)
#	get_parent().add_child(d)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
