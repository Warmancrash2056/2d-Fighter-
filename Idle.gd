extends Base

export (NodePath) var nuetral_light;
onready var nuetral_state = get_node(nuetral_light)


export (NodePath) var side_light_node;
onready var side_light_state = get_node(side_light_node)


export (NodePath) var down_light_node;
onready var down_light_state = get_node(down_light_node)

export (NodePath) var move_node;
onready var move_state = get_node(move_node)

func enter() -> void:
	.enter()
	player.velocity.x = 0

func input(event : InputEvent) -> Base:
	if Input.is_action_just_pressed("L") or Input.is_action_just_pressed("R"):
		return move_state
		
	if Input.is_action_just_pressed("A"):
		return nuetral_state

	if Input.is_action_just_pressed("D"):
		return down_light_state		
	return null


