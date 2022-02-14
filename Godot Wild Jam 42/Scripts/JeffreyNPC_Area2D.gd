extends Area2D



func _on_JeffreyNPC_Area2D_body_entered(body: Node) -> void:
	var new_dialog = Dialogic.start("Jeffrey1") 
	add_child(new_dialog)


