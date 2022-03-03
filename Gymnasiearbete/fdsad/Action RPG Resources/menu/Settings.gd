extends Control

var is_paused = false setget set_is_paused


func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_Fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen


func _on_KeyBinds_pressed():
	pass 


func _on_Go_back_pressed():
	get_tree (). change_scene("res://fdsad/Action RPG Resources/menu/PauseMenu.tscn")
