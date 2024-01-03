extends State

@export var game: Game
@export var ball: Ball
@export var menu: Control

func enter():
	ball.is_dead = true;
	game.rotation_speed = 0.0;
	menu.visible = true

func exit():
	menu.visible = false


func _on_start_button_pressed():
	transitioned.emit(self, "play")


func _on_exit_button_pressed():
	get_tree().quit()
