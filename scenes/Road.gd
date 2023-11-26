extends Node2D

@export var Cars: Array[PackedScene]
@onready var G: = get_node('/root/Global')

func  _ready():
	place_cars(G.max_cars - $Cars.get_child_count())
	G.init()
	
func _process(delta: float):
	if $Cars.get_child_count() < G.max_cars:
		place_cars(G.max_cars - $Cars.get_child_count())

func place_cars(count: int) -> void:
	for i in range(count):
		var new_car = Cars[randi() % Cars.size()].instantiate()
		new_car.position = Vector2(max(32, randi() % 608), min(-32, -randi() % 420))
		$Cars.add_child(new_car)



