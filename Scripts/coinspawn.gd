extends Node2D

func _ready():
	var timer = Timer.new()
	timer.wait_time = 1.7
	timer.autostart = true
	add_child(timer)
	timer.timeout.connect(_on_timer_timeout)


func _on_timer_timeout():
	randomize()
	var coin = preload("res://Scenes/Coin.tscn").instantiate()
	coin.visible = true
	coin.position.y = -25
	coin.position.x = randf_range(50, 1000)
	add_child(coin)
	
	
