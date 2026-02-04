extends RigidBody2D

@onready var fade = $transition

func _on_body_entered(body: Node) -> void:
	if body.name == "person":
		fade.play("fade_out")
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
	if body.name == "map":
		queue_free()
