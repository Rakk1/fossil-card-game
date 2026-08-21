extends Control

@onready var cardholder = $MarginContainer/ScrollContainer/HBoxContainer
var dragging = false
var target


func _on_button_button_down(source: BaseButton) -> void:
	dragging = true
	target = source.get_parent()


func _on_button_button_up() -> void:
	dragging = false
	target = null

func _process(_delta: float) -> void:
	if dragging:
		target.position = get_global_mouse_position() - cardholder.global_position
