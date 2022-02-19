extends Area2D



func _on_Stairs_body_entered(body: Node) -> void:
	print("stairs")
	$AudioStreamPlayer2D.play()
	body.velocity = Vector2(0,0)

func _on_AudioStreamPlayer2D_finished() -> void:
	print("up")
	GlobalVars.current_level += 1
	get_tree().change_scene(GlobalVars.levels[GlobalVars.current_level].get_path())

