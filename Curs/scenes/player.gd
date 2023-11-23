extends CharacterBody2D

signal Crash()
signal Reset()

@export var life: int = 3
@export var speed: int = 700
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
		velocity.x = lerp(direction * speed, 0, 1)
	
		
	
	move_and_slide()


func _on_CarDetector_body_entered(body:Node2D):
	print('collision')
	emit_signal("Crash")
	
	$AnimatedSprite2D.show()
	$AnimatedSprite2D.play("Explosion")
	
	
	
	
	
