extends CanvasModulate


func _process(delta):
	var time = OS.get_time()
	var TimeInSeconds= time.hour * 3600 + time.minute * 25 + time.second
	var CurrentFrame = range_lerp(TimeInSeconds,0,360,0,24)
	$AnimationPlayer.play("Day_night_cycle")
	$AnimationPlayer.seek(CurrentFrame)
