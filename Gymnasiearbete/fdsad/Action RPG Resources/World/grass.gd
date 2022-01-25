extends Node2D

func create_grass_effect():
	var Effect = load("res://fdsad/Action RPG Resources/Effects/GrassEffect.tscn")
	var grassEffect = Effect.instance()
	var world = get_tree().current_scene 
	world.add_child(grassEffect)
	grassEffect.global_position = global_position
	


func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()
