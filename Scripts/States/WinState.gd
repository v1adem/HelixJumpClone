extends State
class_name WinState

@export var game: Game
@export var ball: Ball
@export var menu_state: State
@export var win: Control

func enter():
	ball.is_dead = true;
	game.rotation_speed = 0.0;
	win.visible = true

func exit():
	win.visible = false


func _on_try_again_button_pressed():
	get_tree().reload_current_scene()

func _on_exit_button_pressed():
	get_tree().quit()
