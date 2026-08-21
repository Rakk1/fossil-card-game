extends Panel
 

func _on_button_pressed() -> void:
	var newcard = duplicate()
	get_parent().add_child(newcard)
