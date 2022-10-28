extends KinematicBody2D

class_name Player

export (float) var gravity;

var velocity = Vector2.ZERO;

var velocity_up = Vector2.UP;

onready var animations = $AnimatedSprite;

onready var states = $"State Manager"

func _ready() -> void:
	states.init(self)
	
func _unhandled_input(event : InputEvent) -> void:
	states.input(event)
	
func _physics_process(delta : float) -> void:
	states.physics_process(delta)
	
func _process(delta : float) -> void:
	states.process(delta)
	
	


