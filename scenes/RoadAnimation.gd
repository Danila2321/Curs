extends AnimationPlayer

func _ready():
	play("Run")


func _on_player_crash():
	stop()

func _on_player_reset():
	play("Run")
