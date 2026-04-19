class_name Player extends CharacterBody2D

var cardinal_direction : Vector2 = Vector2.DOWN
var direction : Vector2 = Vector2.ZERO

@export var speed = 400
@export var acc = 400
@onready var state_machine : PlayerStateMachine = $StateMachine

func _ready() -> void:
	state_machine.Initialize(self)
	pass


#func get_input():
	#
	##schmovement
	#var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#print(input_direction)
	#velocity = input_direction * speed
	

func SetDirection() -> bool:
	var new_dir :Vector2 = cardinal_direction
	if direction == Vector2.ZERO:
		return false
	
	if direction.y == 0:
		new_dir = Vector2.LEFT if direction.x > 0 else Vector2.RIGHT
	elif direction.x == 0: 
		new_dir = Vector2.UP if direction.y < 0 else Vector2.RIGHT
	
	if new_dir == cardinal_direction:
		return false
	
	cardinal_direction = new_dir
	
	
	return true



func _process(delta: float) -> void:
	direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	pass

func _physics_process(delta):
	#get_input()
	move_and_slide()
