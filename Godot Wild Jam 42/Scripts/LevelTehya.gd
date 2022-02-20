extends Node2D

var coin : PackedScene = preload("res://Scenes/Coins.tscn")
var chest : PackedScene = preload("res://Scenes/Chest.tscn")
var key : PackedScene = preload("res://Scenes/Keys.tscn")

func _ready() -> void:
	$Player.position = $StartingPos.position

	
	for i in $Coins.get_children():
		var c = coin.instance()
		c.position = i.position - Vector2(32,32)
		$Coins.add_child(c)
		i.queue_free()
	for i in $Keys.get_children():
		var c = key.instance()
		c.position = i.position - Vector2(32,32)
		$Keys.add_child(c)
		i.queue_free()
	for i in $Chests.get_children():
		var c = chest.instance()
		c.position = i.position - Vector2(32,32)
		$Chests.add_child(c)
		i.queue_free()

func _process(delta: float) -> void:
	if $Coins.get_child_count() == 0 and $Chests.chests_to_open == 0:
		GlobalVars.completed_levels[GlobalVars.current_level] = true
		
		if GlobalVars.completed_levels == [true,true,true]:
			get_tree().change_scene("res://MainMenu.tscn")
