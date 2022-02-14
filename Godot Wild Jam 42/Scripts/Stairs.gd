extends Area2D



func _on_Stairs_body_entered(body: Node) -> void:
	var go_to : int = GlobalVars.current_level + 1

	if go_to == GlobalVars.levels.size():
		go_to = 0
	GlobalVars.current_level = go_to

	get_tree().change_scene("res://Levels/Level"+str(go_to)+".tscn")
