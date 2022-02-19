extends Area2D



func _on_Keys_body_entered(body: Node) -> void:
	GlobalVars.keys +=1
	$AudioStreamPlayer2D.play()


func _on_AudioStreamPlayer2D_finished() -> void:
	queue_free()
