extends Button

export(String, FILE) var path

func _on_StartButton_pressed() -> void:
	get_tree().change_scene(path)
