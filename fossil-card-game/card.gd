extends Control

@onready var label = $Panel/Label

func _ready():
	var card = randomcard().new()
	card.init("t rex")
	label.text = card.cardName

func _on_button_pressed() -> void:
	var newcard = duplicate()
	get_parent().add_child(newcard)
	print("asdfas")

func randomcard():
	var dir = DirAccess.open("res://cards/")
	var random = "card.gd"
	print(dir.get_files())
	while random=="card.gd" or not random.ends_with(".gd"):
		random = dir.get_files()[randi_range(0,dir.get_files().size()-1)]
		print(random)
	var script = load(dir.get_current_dir()+"/"+random)
	print(script)
	return script
