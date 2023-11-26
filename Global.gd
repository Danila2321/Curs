extends Node

const increase_over: int = 10
const Init_Max_Cars = 4
var car_counter: int = 0
var max_cars: int = 4

func init():
	max_cars = Init_Max_Cars
	car_counter = 0
	
func add_car() -> void:
	car_counter += 1
	if car_counter % increase_over == 0:
		max_cars += 1
	print(car_counter) 
	

