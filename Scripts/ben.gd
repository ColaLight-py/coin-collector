extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var direction : Vector2
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"../ButtonLeft".button_pressed:
		$".".position.x = clamp(position.x-3.88, 50, 1100)
	elif $"../ButtonRight".button_pressed:
		$".".position.x = clamp(position.x+3.88, 50, 1100)
	else:
		direction = Input.get_vector("left", "right", "up", "down") * delta * 700
		$".".position.x = clamp(position.x+direction.x, 50, 1100)
