class_name State extends Node

#Stores a reference to the player that this State belongs to
static var player: Player

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
	return null

# Physics
func Physics(_delta : float) -> State:
	return null

# HandleInput
func HandleInput(_event : InputEvent) -> State:
	return null
