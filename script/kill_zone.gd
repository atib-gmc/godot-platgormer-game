extends Area2D
@onready var player = $"../Player"

@onready var timer = $Timer

func _on_body_entered(body):
	print("you're dead")
	timer.start()
	pass # Replace with function body.


func _on_timer_timeout():
	get_parent().get_node("Player").position = Vector2(10,-5)
	pass # Replace with function body.
