extends Area2D



func _on_Fallzone_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		var go_to : int = GlobalVars.current_level - 1
		print(go_to)
		if go_to < 0:
			go_to = 0
		GlobalVars.current_level = go_to

		get_tree().change_scene(GlobalVars.levels[GlobalVars.current_level].get_path())
