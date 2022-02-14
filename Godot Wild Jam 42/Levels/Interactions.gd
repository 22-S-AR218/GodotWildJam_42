extends Area2D
#
#


func _on_Interactions_body_entered(body: Node) -> void:
	# Find the character's position in tile coordinates
	var tile_pos = $TileMap.world_to_map(body.position)
	var tile_id = $TileMap.get_cellv(tile_pos)
	var tile_name = $TileMap.tile_set.tile_get_name(tile_id)
	print(tile_pos)
	pass # Replace with function body.
