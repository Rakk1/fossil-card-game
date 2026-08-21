extends Panel

@onready var poly = $Polygon2D

func _ready():
	print(poly.position)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		if pointWithinPolygon(event.position,poly):
			get_tree().change_scene_to_file("res://level.tscn")

func pointWithinPolygon(point,polygon):
	return Geometry2D.is_point_in_polygon(point-polygon.global_position,polygon.polygon)
