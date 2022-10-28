extends Node

class_name Base

var player : Player # Calls player script 

export (String) var Name_of_Animation

func enter() -> void:
	player.animations.play(Name_of_Animation)

func exit() -> void:
	pass
	print(Name_of_Animation, "Exited")
	
func input(event: InputEvent) -> Base:
	return null
	
func process(delta: float) -> Base:
	return null
	
func physics_process(delta: float) -> Base:
	return null

