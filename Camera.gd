extends Camera


onready var track: Path = get_node("%CameraTrack")
onready var monkey_ball: Spatial = get_node("%MonkeyBall")


func _physics_process(_delta: float) -> void:
	global_translation = track.to_global(track.curve.get_closest_point(track.to_local(global_translation)))
	look_at(monkey_ball.global_translation, Vector3.UP)
