tool
extends Area2D

export(String, FILE, "*tscn, *.scn") var target_scene = ""
export(Vector2) var player_spawn_location = Vector2.ZERO


func _get_configuration_warning()-> String:
	if target_scene == "":
		return "target_scene must be set for it to work"
	else:
		return""



func _on_Area2D_body_entered(body):
	Global.player_initial_map_position = player_spawn_location
	if get_tree().change_scene(target_scene)!=OK:
		#denna skriver ut fellogg
		print("unavailable scnene!?!?!")
