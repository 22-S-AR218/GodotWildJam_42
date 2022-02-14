extends Area2D



func _on_Keys_body_entered(body: Node) -> void:
	GlobalVars.keys +=1
	queue_free()
