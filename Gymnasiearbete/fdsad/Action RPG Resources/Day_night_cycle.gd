extends CanvasModulate


const Night_Color = Color ("#565150")
const Day_Color = Color ("#ffffff")
#hur snabbt den ändrar färgerna
const Time_Scale = 0.06

#om den börjar på natt eller dag(tidigt eller sent)
var time = 0
export var Start = false

func _process(delta: float) -> void:
	if Start == true:
		self.time += delta * Time_Scale
		self.color = Day_Color.linear_interpolate(Night_Color, abs (sin(time)))

