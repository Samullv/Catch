extends Node2D

@onready var anim = $transition

func _on_continue_pressed() -> void:
	anim.play("fade_out")
	await anim.animation_finished
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_exit_pressed() -> void:
	anim.play("fade_out")
	await anim.animation_finished
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
