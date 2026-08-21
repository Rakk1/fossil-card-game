extends Control

@onready var buttons: VBoxContainer = $Buttons
@onready var settings: Panel = $Settings


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	buttons.visible = true
	settings.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://level_picker.tscn")


func _on_settings_pressed() -> void:
	buttons.visible = false
	settings.visible = true


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_back_pressed() -> void:
	buttons.visible = true
	settings.visible = false
