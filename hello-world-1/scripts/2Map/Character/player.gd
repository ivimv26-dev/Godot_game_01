class_name Player extends CharacterBody2D

var cardinal_direction : Vector2 = Vector2.DOWN
var direction : Vector2 = Vector2.ZERO

@export var move_speed = 400
@export var acc = 400
@onready var state_machine : PlayerStateMachine = $StateMachine
@export var controls: PlayerControls = null

func _ready() -> void:
	state_machine.Initialize(self)
	
	print(self)
	
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
	direction.x = Input.get_action_strength(controls.move_right) - Input.get_action_strength(controls.move_left)
	direction.y = Input.get_action_strength(controls.move_down) - Input.get_action_strength(controls.move_up)
	
	velocity = direction * move_speed
	
	if direction.x > 0:
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("walk")
	elif direction.x < 0:
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("walk")
	elif direction.y > 0:
		$AnimatedSprite.play("walk_down")
	elif direction.y < 0:
		$AnimatedSprite.play("walk_up")
	
	print(get_position_delta())
	

func _physics_process(delta):
	#get_input()
	move_and_slide()
