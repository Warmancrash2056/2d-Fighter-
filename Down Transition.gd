extends Base

# Transfer node for down light state attacks

export(NodePath) var down_light_node;
onready var down_light_state = get_node(down_light_node)


func input(event : InputEvent) -> Base:
	if player.animations.frame >= 3:
		if Input.is_action_just_pressed("A"):
			return down_light_state
	return null
