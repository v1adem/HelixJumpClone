extends Node3D

signal dead
signal win

func _on_platformded_2_dead():
	dead.emit()

func _on_platform_finish_win():
	win.emit()

func _on_platform_finish_2_win():
	win.emit()
