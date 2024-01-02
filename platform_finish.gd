extends Node3D

signal win

func _on_area_3d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	win.emit()
