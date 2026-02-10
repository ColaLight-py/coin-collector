extends Label

func _process(delta: float) -> void:
	$".".text = str($"../Ben".get_meta("score"))
