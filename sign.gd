extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var new_dialog = preload("res://addons/dialogic/Nodes/Dialog.tscn")
func interact():
#	var new_dialog = Dialogic.start('Sign')
	var d = new_dialog.instance()
	d.rect_position = Vector2(150,150)
	get_parent().add_child(d)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
