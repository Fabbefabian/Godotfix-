extends Area2D



func _on_Area2D_body_entered(body):
	if PlayerStats.health < PlayerStats.max_health:
		PlayerStats.health = PlayerStats.health +1
		queue_free()
	else:
		PlayerStats.health != PlayerStats.health +1
	
	



