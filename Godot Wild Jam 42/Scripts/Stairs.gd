extends Area2D



func _on_Stairs_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		for i in get_parent().get_children():
			i.monitoring = false


		$AudioStreamPlayer2D.play()
		body.friction += 100000000000
		body.acceleration = 0
		

			


func _on_AudioStreamPlayer2D_finished() -> void:

	GlobalVars.current_level += 1
	print(GlobalVars.current_level)
	get_tree().change_scene(GlobalVars.levels[GlobalVars.current_level].get_path())

