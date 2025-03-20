extends Area2D

@export var speed = 400
@export var player_id = 1
var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if player_id == 1:
		if Input.is_action_pressed("down"):
			velocity.y += 1
		if Input.is_action_pressed("up"):
			velocity.y -= 1
	else:
		if Input.is_action_pressed("down2"):
			velocity.y += 1
		if Input.is_action_pressed("up2"):
			velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	if position.y < 0:
		position.y = screen_size.y
	if position.y > screen_size.y:
		position.y = 0
	position += velocity * delta
	
