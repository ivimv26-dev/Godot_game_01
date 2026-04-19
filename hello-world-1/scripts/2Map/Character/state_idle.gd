class_name State_Idle extends State

@onready var walk : State = $"../Walk"

func Enter() -> void:
	#player.UpdateAnimatio("idle")
	pass

# Exits
func Exit() -> void:
	pass

# Process
func Process(_delta : float) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null

# Physics
func Physics(_delta : float) -> State:
	return null

# HandleInput
func HandleInput(_event : InputEvent) -> State:
	return null
