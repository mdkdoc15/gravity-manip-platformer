extends CanvasLayer


onready var PauseMenu = $Panel

var is_paused : bool = false setget set_is_paused


func set_is_paused(value : bool) -> void:
	is_paused = value
	get_tree().paused = is_paused
	PauseMenu.visible = is_paused
	
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Pause"):
		self.is_paused = !is_paused


func _on_QuitButton_pressed() -> void:
	get_tree().quit()


func _on_MainMenuButton_pressed() -> void:
	
	get_tree().change_scene("res://Assets/Menus/StartMenu.tscn")


func _on_ResumeButton_pressed() -> void:
	self.is_paused = false
