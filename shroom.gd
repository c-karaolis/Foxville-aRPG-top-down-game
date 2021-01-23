extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func interact():
	if !PlayerStats.ateShrooms:
		get_node("/root/World/CanvasLayer/Dialog").activate_dialog("Mmmm... Rejuvenating..")
		PlayerStats.ateShrooms = true
	if PlayerStats.health != PlayerStats.max_health:
		PlayerStats.health += 1
		queue_free()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
