extends CanvasModulate


const Night_Color = Color ("#2a2a31")
const Day_Color = Color ("#ffffff")
const Time_Scale = 0.1

var time = 0

func _process(delta: float) -> void:
	self.time += delta * Time_Scale
	self.color = Day_Color.linear_interpolate(Night_Color, abs (sin(time)))

