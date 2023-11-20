extends Node


var car_counter: int = 0

const PLAYER_LAYER = 0
const ROAD_LAYER = 1
const CAR_LAYER = 2

func add_car() -> void:
	car_counter += 1
	print(car_counter) 
