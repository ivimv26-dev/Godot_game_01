extends Control

@onready var players: Array[Dictionary] = [
	{
		subviewport = $HBoxContainer/SubViewportContainer_P1/SubViewport_P1,
		camera = $HBoxContainer/SubViewportContainer_P1/SubViewport_P1/Camera2D_P1,
		# player = %Level2D/Player2D1,
	},
	{
		subviewport = $HBoxContainer/SubViewportContainer_P2/SubViewport_P2,
		camera = $HBoxContainer/SubViewportContainer_P2/SubViewport_P2/Camera2D_P2,
		# player = %Level2D/Player2D2,
	},
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	players[1].subviewport.world_2d = players[0].subviewport.world_2d


# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta: float) -> void:
#	pass
