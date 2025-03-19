extends CharacterBody2D

@export var speed = 400
var screen_size
# Put all of this into _process and follow the 2D tutorial. 

func _ready():
	screen_size = get_viewport_rect().size
func get_input():
	var input_direction = Input.get_vector("", "", "up2", "down2")
	velocity = input_direction * speed
func _physics_process(delta):
	get_input()
	move_and_slide()
	position.clamp(Vector2.ZERO, screen_size)
