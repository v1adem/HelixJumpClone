extends Node3D

signal dead
signal win

func _ready():
	for node in get_tree().get_nodes_in_group("dead_plat"):
		if node is DeadPlatform:
			node.dead.connect(on_dead)

func on_dead():
	dead.emit()

func _on_platform_finish_win():
	win.emit()

func _on_platform_finish_2_win():
	win.emit()
