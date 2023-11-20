extends CharacterBody2D


@export var gravity: int = 50
@onready var Start_position:  Vector2 = position 
@onready var G: = get_node("/root/Global")

func  _ready():
	velocity.y = 200

func _physics_process(delta: float):
	velocity.y += gravity * delta
	move_and_slide()





func _on_visible_on_screen_notifier_2d_screen_exited():
	velocity.y = 200
	position = Start_position
	G.add_car()
	

