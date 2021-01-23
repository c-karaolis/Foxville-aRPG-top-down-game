extends Area2D

onready var canInteract = false

func _process(delta):
	if canInteract && Input.is_action_just_pressed("interact"):
		print("trying to interact")
		get_owner().interact()



func _on_InteractionZone_area_entered(area):
	print("area entered: " , area)
	area.get_owner().interactButtonSprite.visible = true
	#		get_tree().current_scene.interact()
	canInteract = true


func _on_InteractionZone_area_exited(area):
	print("area LEFT: " , area)
	if area.get_owner() != null:
		area.get_owner().interactButtonSprite.visible = false
	canInteract = false
