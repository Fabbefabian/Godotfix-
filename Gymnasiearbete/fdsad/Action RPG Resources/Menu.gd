extends Control

func _ready():
	$VBoxContainer/StartButton.grab_focus()


func _on_Button_pressed():
	get_tree(). change_scene("res://fdsad/Action RPG Resources/World.tscn")


func _on_QuitButton_pressed():
	get_tree(). quit()


func _on_Options_pressed():
	var options = load("res://fdsad/Action RPG Resources/OPtions.tscn") .instance()
	get_tree (). change_scene("res://fdsad/Action RPG Resources/OPtions.tscn")
