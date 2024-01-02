extends State
class_name PlayState

@export var game: Game
@export var ball: Ball

func enter():
	ball.is_dead = false
	game.rotation_speed = 0.05

func _on_test_lvl_dead():
	transitioned.emit(self, "dead")

func _on_test_lvl_win():
	transitioned.emit(self, "dead")
