extends Node2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func create_grass_effect():
	var GrassEffect = load("res://GrassEffect.tscn") 
	var grassEffect = GrassEffect.instance()
	var world = get_tree().current_scene
	world.add_child(grassEffect)
	grassEffect.global_position = global_position
	queue_free()


func _on_Hurtbox_area_entered(area):
	create_grass_effect()
