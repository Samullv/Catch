extends RigidBody2D

func _on_body_entered(body: Node) -> void:
	if body.name == "person":
		get_tree().quit()
	if body.name == "map":
		queue_free()
