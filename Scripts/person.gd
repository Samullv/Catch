extends CharacterBody2D

@export var speed: float = 300.0
var target_position: Vector2 = Vector2.ZERO
var is_moving: bool = false

func _process(_delta):
	if Input.is_key_pressed(KEY_E):
		ir_para_posicao(Vector2(500, global_position.y))
	
	if Input.is_key_pressed(KEY_Q):
		ir_para_posicao(Vector2(300, global_position.y))

func ir_para_posicao(posicao_alvo: Vector2):
	target_position = posicao_alvo
	is_moving = true

func _physics_process(_delta):
	if is_moving:
		var direction = global_position.direction_to(target_position)
		var distance = global_position.distance_to(target_position)
		
		if distance > 2:
			velocity = direction * speed
		else:
			velocity = Vector2.ZERO
			is_moving = false
		
		move_and_slide()
