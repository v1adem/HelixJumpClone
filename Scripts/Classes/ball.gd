extends CharacterBody3D
class_name Ball

@export var is_dead = false
var jump_power := 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(_delta):
	if !is_dead:
		# Add the gravity.
		if not is_on_floor():
			velocity.y -= gravity * 0.02
		else:
			velocity.y += jump_power
			get_node("AnimationPlayer").play("jumping")
	
	move_and_slide()
