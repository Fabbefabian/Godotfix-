extends Node2D


#den hämta noden watercliffs
onready var WaterCliffs = get_node("WaterCliffs")

#den hämtar gruppen bridges och kopplar den till funktionerna
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
