extends Area2D



func _on_Keys_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		monitoring = false
		GlobalVars.keys +=1
		$AudioStreamPlayer2D.play()


func _on_AudioStreamPlayer2D_finished() -> void:
	queue_free()
