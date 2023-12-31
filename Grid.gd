@tool
extends Control

@export var _cell_size := 16

func _draw() -> void:
	var c := Color(1, 1, 1, 0.5)
	var s := get_viewport_rect().size
	# var s := DisplayServer.window_get_size()
	for y in range(0, s.y, _cell_size):
		draw_line(Vector2(0, y), Vector2(s.x, y), c)
	for x in range(0, s.x, _cell_size):
		draw_line(Vector2(x, 0), Vector2(x, s.y), c)
