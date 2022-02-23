extends Node2D




func _input(event):
	if event.is_action_pressed("pause"):
		get_tree(). change_scene("res://fdsad/Action RPG Resources/menu/PauseMenu.tscn")

