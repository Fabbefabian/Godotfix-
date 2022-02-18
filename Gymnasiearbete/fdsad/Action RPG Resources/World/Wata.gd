extends Area2D

const TILEMAP = 1
func _on_body_entered(body):
	body.set_collision_mask_bit(TILEMAP, false)

func _on_body_exited(body):
	body.set_collision_mask_bit(TILEMAP, true)
