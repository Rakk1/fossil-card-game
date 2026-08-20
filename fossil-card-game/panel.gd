extends Panel

@onready var poly = $Polygon2D

func _ready():
	print(poly.position)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		print(event)
		print(global_position)
		pointWithinPolygon(event.position,poly)

func pointWithinPolygon(point,polygon):
	print(Geometry2D.is_point_in_polygon(point-polygon.global_position,polygon.polygon))
