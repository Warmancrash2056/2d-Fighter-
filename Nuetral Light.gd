extends Base

export (NodePath) var idle;
onready var idle_state = get_node(idle)

func enter() -> void:
	.enter()
	
func physics_process(delta: float) -> Base:
	if player.animations.frame == 6:
		return idle_state
	return null

