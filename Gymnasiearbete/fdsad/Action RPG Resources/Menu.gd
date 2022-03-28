extends Control

func _ready():
	$VBoxContainer/StartButton.grab_focus()






func _on_QuitButton_pressed():
	get_tree(). quit()


func _on_Options_pressed():
	$VBoxContainer2.visible=true
	$VBoxContainer.visible=false
	
 


func _on_Fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen


func _on_Keybinds_pressed():
	pass 


func _on_Goback_pressed():
	$VBoxContainer2.visible=false
	$VBoxContainer.visible=true


func _on_StartButton_pressed():
	get_tree(). change_scene("res://fdsad/Action RPG Resources/World.tscn")
	DayNightCycle.Start = true
	

