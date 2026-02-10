extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var deg = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	deg += 0.02
	$".".rotation = sin(deg)/3
	position.y += 300*delta

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Hit")
	$"../Ben".set_meta("score",$"../Ben".get_meta("score")+1)
	self.queue_free()
