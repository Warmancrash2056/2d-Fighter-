extends Base

export (NodePath) var idle;
onready var idle_state = get_node(idle)

export (NodePath) var nuetral_light_node;
onready var nuetral_light_state = get_node(nuetral_light_node)

export (NodePath) var side_light_node;
onready var side_light_state = get_node(side_light_node)

export (NodePath) var down_light_node;
onready var down_light_state = get_node(down_light_node)


export (int) var move_speed;

func enter() -> void:
	.enter()

func input(event: InputEvent) -> Base:
	if Input.is_action_just_pressed("R") || Input.is_action_just_pressed("A"):
			return side_light_state
	if Input.is_action_just_pressed("L") || Input.is_action_just_pressed("A"):
			return side_light_state
	if Input.is_action_just_pressed("A") || player.velocity.x == 0:
		return nuetral_light_state
	if Input.is_action_just_pressed("D") || Input.is_action_just_pressed("A"):
		return down_light_state
	return null
func physics_process(delta: float) -> Base:

	var move = get_movement_input()
	if move < 0:
		player.animations.flip_h = true
	elif move > 0:
		player.animations.flip_h = false
	
	player.velocity.x = move * move_speed
	player.velocity.y += player.gravity
	player.velocity = player.move_and_slide(player.velocity)
	
	if move == 0:
		return idle_state

	return null

func get_movement_input() -> int:
	if Input.is_action_pressed("L"):
		return -1
	elif Input.is_action_pressed("R"):
		return 1
	
	return 0
