extends KinematicBody2D

onready var Animate = $AnimatedSprite;

export (int) var speed;

export (int) var accel;

func _ready() -> void:
	print("Player 1 Ready")
	
func _physics_process(delta):
	var input_vector = Vector2.ZERO
	
	input_vector = Input.get_axis()
