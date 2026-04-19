class_name State_Walk extends State

@export var move_speed : float = 100.0
@onready var idle : State = $"../Idle"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Enters
func Enter() -> void:
	pass

# Exits
func Exit() -> void:
	pass

# Process
func Process(_delta : float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	#if player.SetDirection*():
		#player.UpdateAnimation("walk")
	
	return null

# Physics
func Physics(_delta : float) -> State:
	return null

# HandleInput
func HandleInput(_event : InputEvent) -> State:
	return null
