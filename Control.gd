extends Control

@export var road: PackedScene
@onready var G: = get_node("/root/Global")


var best_result: int = 0

func _on_restart_pressed():
	get_tree().change_scene_to_file("res://scenes/road.tscn")

func _on_exit_pressed():
	get_tree().quit()
	

		

	
		
