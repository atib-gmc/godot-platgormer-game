extends CharacterBody2D
@onready var animated_sprite = $AnimatedSprite2D
@onready var zombie = $"."
@onready var ray_cast_right = $RayCastRight
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var ray_cast_left = $RayCastLeft

var direction = 40
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not ray_cast_right.is_colliding():
		direction =  -40
		animated_sprite.flip_h = true
	elif not ray_cast_left.is_colliding():
		direction = 40
		animated_sprite.flip_h = false		
	position.x += direction * delta

	animated_sprite.play("run")
	pass


#func _on_ray_cast_2d_child_entered_tree(node):
	#print(node)
	#pass # Replace with function body.

	# Cast a ray downwards to detect the platform below
