extends Area2D


func _on_Coins_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		monitoring = false
		GlobalVars.coins += 1
		$AudioStreamPlayer2D.play()
	


func _on_AudioStreamPlayer2D_finished() -> void:
	queue_free()
	pass # Replace with function body.
