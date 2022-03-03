extends Control


var is_paused = false setget set_is_paused

func set_is_paused(value):
	get_tree().paused = true
	
	

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		$CenterContainer/VBoxContainer/Resume.grab_focus()
		get_tree().paused = !get_tree().paused
		visible = not visible




func _on_Resume_pressed():
	get_tree().paused = not get_tree().paused
	visible = not visible




func _on_Quit_pressed():
	get_tree(). quit()




func _on_Settings_pressed():
	$CenterContainer/VBoxContainer3.visible=true
	$CenterContainer/VBoxContainer.visible=false





func _on_Fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen


func _on_Keybinds_pressed():
	pass 


func _on_Back_pressed():
	$CenterContainer/VBoxContainer3.visible=false
	$CenterContainer/VBoxContainer.visible=true
