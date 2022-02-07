extends Control

func _ready():
	pass


func _on_Button_pressed():
	get_tree(). change_scene("res://fdsad/Action RPG Resources/World.tscn")


func _on_OptionsButton_pressed():
	var options = load("")


func _on_QuitButton_pressed():
	get_tree(). quit()
