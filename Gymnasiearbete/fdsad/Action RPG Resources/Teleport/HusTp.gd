extends Area2D

var next_scene = preload("res://fdsad/Action RPG Resources/World/HUsinterior.tscn")



func _on_Area2D_body_entered(body:Node)-> void:
	if "Player" in body.name:
		get_tree().change_scene_to(next_scene)

