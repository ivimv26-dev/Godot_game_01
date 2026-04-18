extends Node2D

@onready var label: Label = %Label
var a = 0
var num = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass




func _on_b_1_pressed() -> void:
	if a == 0:
		label.show()
		a=1
		label.text = "hello world %d" %num
	else: 
		label.hide()
		a =0
		num = num +1
		
	
