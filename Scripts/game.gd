extends Node3D

var rotation_speed := 0.05

func _process(delta):
	if Input.is_action_pressed("left"):
		$test_lvl.rotate_y(rotation_speed)
	elif Input.is_action_pressed("right"):
		$test_lvl.rotate_y(-rotation_speed)
	
