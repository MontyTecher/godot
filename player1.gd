extends CharacterBody2D

@export var speed = 400

# Put all of this into _process and follow the 2D tutorial. 

func get_input():
	var input_direction = Input.get_vector("", "", "up1", "down1")
	velocity = input_direction * speed
func _physics_process(delta):
	get_input()
	move_and_slide()
	print("FPS: %s" % [Engine.get_frames_per_second()])
