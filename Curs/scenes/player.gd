extends CharacterBody2D

@export var life: int = 3
@export var speed: int = 200
@onready var G: = get_node("/root/Global")
var direction: int = 1


func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		direction = -1
		velocity.x += direction * speed * delta
	elif  Input.is_action_pressed("ui_right"):
		direction = 1
		velocity.x += direction * speed * delta
	else:
		velocity.x = lerp(direction * speed, 0, 0.9)
	
		
	
	move_and_slide()



		










func _on_CarDetector_body_entered(body:Area2D):
	print('f')
	print('collision')
	$GPUParticles2D.emitting = true
		



	








