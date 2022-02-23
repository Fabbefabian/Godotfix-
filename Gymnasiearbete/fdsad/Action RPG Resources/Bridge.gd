extends StaticBody2D



signal TurnOffWaterCliffs
signal TurnOnWaterCliffs




func _on_Area2D_body_exited(_Player: KinematicBody2D):
	emit_signal("TurnOnWaterCliffs")


func _on_Area2D_body_entered(_Player: KinematicBody2D):
	emit_signal("TurnOffWaterCliffs")
