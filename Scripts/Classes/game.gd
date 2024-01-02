extends Node3D
class_name Game

var rotation_speed := 0.05

func _process(_delta):
	if Input.is_action_pressed("left"):
		$test_lvl.rotate_y(rotation_speed)
	elif Input.is_action_pressed("right"):
		$test_lvl.rotate_y(-rotation_speed)
	
