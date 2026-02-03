extends RigidBody2D

func _on_body_entered(body: Node) -> void:
	if body.name == "person":
		Global.score += 1
		queue_free()
	if body.name == "map":
		queue_free()
