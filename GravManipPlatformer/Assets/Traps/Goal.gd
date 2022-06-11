extends Area2D

export(String, FILE) var path

onready var sprite : AnimatedSprite = $AnimatedSprite

func _on_Goal_body_entered(body: Node) -> void:
	get_tree().change_scene(path)


func _ready() -> void:
	sprite.play("Start")
	yield(sprite, "animation_finished")
	sprite.play("Normal")

