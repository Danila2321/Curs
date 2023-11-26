extends Node

@onready var G: = get_node("/root/Global")

func _ready():
	$Cars/Count.set_text(str(G.car_counter))

func _process(delta):
	$Cars/Count.set_text(str(G.car_counter))
	
func _on_player_crash():
	$Lifes.remove_child(get_node("Lifes/0" % ($Lifes.get_child_count() - 1)))


		
