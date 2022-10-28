extends Node

export (NodePath) var Default_State

var Current_State : Base

func change_state(new_state : Base) -> void:
	if Current_State:
		Current_State.exit()
		
	Current_State = new_state
	Current_State.enter()

func init(player : Player) -> void:
	for child in get_children():
		child.player = player
		
		
	change_state(get_node(Default_State))

# Pass through functions for the Player to call,
# handling state changes as needed
func physics_process(delta: float) -> void:
	var new_state = Current_State.physics_process(delta)
	if new_state:
		change_state(new_state)
		print(' Processing Input as ',Current_State)
		
func input(event: InputEvent) -> void:
	var new_state = Current_State.input(event)
	if new_state:
		change_state(new_state)
		print(' Processing Input as ',Current_State)
		
func process(delta: float) -> void:
	var new_state = Current_State.process(delta)
	if new_state:
		change_state(new_state)
		print(' Processing Input as ',Current_State)
		



func _on_AnimatedSprite_animation_finished():
	if Current_State == get_node("Nuetral Light"):
		change_state($Idle)
	if Current_State == get_node("Side Light"):
		change_state($Idle)
	if Current_State == get_node("Down Light"):
		change_state($Idle)
	if Current_State == get_node("Block - Down Light Chosen"):
		change_state($Idle)
