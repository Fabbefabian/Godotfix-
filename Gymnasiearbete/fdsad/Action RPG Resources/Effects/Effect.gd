extends Node2D

onready var animatedSprite = $AnimatedSprite

func _ready():
	animatedSprite.play("Animate") 
	animatedSprite.frame = 0





func _on_AnimatedSprite_animation_finished():
	queue_free()
