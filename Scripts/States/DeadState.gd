extends State
class_name DeadState

@export var game: Game
@export var ball: Ball

func enter():
	ball.is_dead = true;
	game.rotation_speed = 0.0;

func update(delta: float):
	pass
