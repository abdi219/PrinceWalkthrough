extends Node2D

const SPEED = 60
var direction = 1

@onready var ray_cast_left_purple: RayCast2D = $RayCastLeft
@onready var ray_cast_right_purple: RayCast2D = $RayCastRight
@onready var animated_sprite_purple: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right_purple.is_colliding():
		direction = -1
		animated_sprite_purple.flip_h = true 
	if ray_cast_left_purple.is_colliding():
		direction = 1
		animated_sprite_purple.flip_h = false
	position.x += direction * SPEED * delta
