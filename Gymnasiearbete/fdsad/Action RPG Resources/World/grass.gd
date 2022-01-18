extends Sprite

func _process(delta):
	if Input.is_action_just_pressed("attack"):
		var Effect = load("res://fdsad/Action RPG Resources/Effects/GrassEffect.tscn")
		var grassEffect = Effect.instance()
		var world = get_tree().current_scene 
		world.add_child(grassEffect)
		grassEffect.global_position = global_position
		queue_free()
