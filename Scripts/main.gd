extends Node2D

@export var fruit_scene : PackedScene
@export var bomb_scene : PackedScene

var posicoes_x = [300, 500]

func _on_starttime_timeout() -> void:
	$Fruittimer.start()
	$Bombtimer.start()

func _on_fruittimer_timeout() -> void:
	if fruit_scene == null: return

	var fruit = fruit_scene.instantiate()
	
	var x_pos = [300, 500].pick_random()
	fruit.global_position = Vector2(x_pos, -50)
	
	
	if fruit is RigidBody2D:
		fruit.sleeping = false
		fruit.freeze = false 
	
	add_child(fruit)


func _on_bombtimer_timeout() -> void:
	if bomb_scene == null: return
	
	var bomb = bomb_scene.instantiate()
	
	var x_pos = [300, 500].pick_random()
	bomb.global_position = Vector2(x_pos, -50)
	
	
	if bomb is RigidBody2D:
		bomb.sleeping = false
		bomb.freeze = false 
	
	add_child(bomb)
