extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("left"):
		$platform.rotate_y(0.05)
	elif Input.is_action_pressed("right"):
		$platform.rotate_y(-0.05)
	
