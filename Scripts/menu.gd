extends Node2D
@onready var anim = $transition
@onready var title = $title

func _ready() -> void:
	title.play("title")

func _on_start_pressed() -> void:
	anim.play("fade_out")
	await anim.animation_finished
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _on_quit_pressed() -> void:
	anim.play("fade_out")
	await anim.animation_finished
	get_tree().quit()
