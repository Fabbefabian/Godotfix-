extends Control


var is_paused = false setget set_is_paused

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		$CenterContainer/VBoxContainer/Resume.grab_focus()
		get_tree().paused = not get_tree().paused
		visible = not visible

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused


func _on_Resume_pressed():
	get_tree().paused = not get_tree().paused
	visible = not visible




func _on_Quit_pressed():
	get_tree(). quit()




func _on_Settings_pressed():
	pass 
