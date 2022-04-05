extends Area2D

export(String, FILE, "*tscn, *.scn") var target_scene

func _ready():
	pass



func _input(event):
	if event.is_action_pressed("ui_accept"):
		if get_overlapping_bodies().size() > 0:
			if !target_scene:
				print("no scene in this door")
				return
	
	
func next_level():
	var ERR = get_tree().change_scene(target_scene)
	
	if ERR != OK:
		print("something went wrong")
	Global.door_name = name
