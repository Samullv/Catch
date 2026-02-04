extends CharacterBody2D

@onready var sprite_idle = $AnimatedIdle 
@onready var sprite_run = $AnimRun 
@export var speed: float = 500.0

var target_position: Vector2 = Vector2.ZERO
var is_moving: bool = false

func _process(_delta):
	if Input.is_key_pressed(KEY_E):
		ir_para_posicao(Vector2(500, global_position.y))
	
	if Input.is_key_pressed(KEY_Q):
		ir_para_posicao(Vector2(300, global_position.y))


	if is_moving:
		sprite_idle.visible = false
		sprite_run.visible = true
		
		if velocity.x > 0:
			sprite_run.play("right")
		else:
			sprite_run.play("left")
	else:
		sprite_idle.visible = true
		sprite_run.visible = false
		sprite_idle.play("idle")

func ir_para_posicao(posicao_alvo: Vector2):
	target_position = posicao_alvo
	is_moving = true

func _physics_process(_delta):
	if is_moving:
		var direction = global_position.direction_to(target_position)
		var distance = global_position.distance_to(target_position)
		
		if distance > 5:
			velocity = direction * speed
		else:
			velocity = Vector2.ZERO
			is_moving = false
		
		move_and_slide()
