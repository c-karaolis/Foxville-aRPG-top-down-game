extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func interact():
	get_node("/root/World/CanvasLayer/Dialog").activate_dialog("OMG. This flower is P-O-T-E-N-T. I can't feel my teeth.")
	PlayerStats.max_health = 8
	PlayerStats.health = PlayerStats.max_health
	queue_free()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
