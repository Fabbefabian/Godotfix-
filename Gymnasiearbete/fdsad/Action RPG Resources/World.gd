extends Node2D

#detta script 

onready var WaterCliffs = get_node("WaterCliffs")

func _ready():
	for bridge in get_tree().get_nodes_in_group("Bridges"):
		bridge.connect("TurnOffWaterCliffs", self, "TurnOffWaterCliffs" )
		bridge.connect("TurnOnWaterCliffs", self, "TurnOnWaterCliffs" )


func TurnOffWaterCliffs():
	WaterCliffs.set_collision_layer_bit(0, false)
	WaterCliffs.set_collision_mask_bit(0, false)


func TurnOnWaterCliffs():
	WaterCliffs.set_collision_layer_bit(0, true)
	WaterCliffs.set_collision_mask_bit(0, true)
