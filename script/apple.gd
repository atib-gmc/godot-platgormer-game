extends Area2D
@onready var timer = $Timer
@onready var collision = $CollisionShape2D

@onready var apple = $"."



func _on_body_entered(body):
	collision.queue_free()
	timer.start()
	apple.move_local_y(-18)
	pass # Replace with function body.



func _on_timer_timeout():
	queue_free()
	pass # Replace with function body.
