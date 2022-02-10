extends Control

func _ready():
	pass


func _on_Fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen


func _on_Button_pressed():
	get_tree (). change_scene("res://fdsad/Action RPG Resources/Menu.tscn")
