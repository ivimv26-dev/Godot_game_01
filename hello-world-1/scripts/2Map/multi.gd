extends Control

@onready var players: Array[Dictionary] = [
	{
		sub_viewport = %SubViewport_P1,
		camera = %Camera2D_P1,
		# player = %Level2D/Player2D1,
	},
	{
		sub_viewport = %SubViewport_P2,
		camera = %Camera2D_P2,
		# player = %Level2D/Player2D2,
	},
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	players[1].sub_viewport.world_2d = players[0].sub_viewport.world_2d


# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta: float) -> void:
#	pass
